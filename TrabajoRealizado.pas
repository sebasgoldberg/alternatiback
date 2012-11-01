unit TrabajoRealizado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, SG_ComboBox;

type
  TFormTrabajoRealizado = class(TForm)
    GroupBox1: TGroupBox;
    BitBtnAceptar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    EditID: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditProducto: TEdit;
    Label3: TLabel;
    EditProductora: TEdit;
    Label4: TLabel;
    EditCache: TEdit;
    Label5: TLabel;
    DateTimePickerFechaTrabajo: TDateTimePicker;
    Label6: TLabel;
    DateTimePickerFechaPago: TDateTimePicker;
    Label7: TLabel;
    SG_ComboBoxRol: TSG_ComboBox;
    EditIdRecurso: TEdit;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnAceptarClick(Sender: TObject);
    procedure BitBtnAceptarClickCrear(Sender: TObject);
    procedure BitBtnAceptarClickVer(Sender: TObject);
    procedure BitBtnAceptarClickModificar(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);

  private
    { Private declarations }
    procedure obtenerDatos;

  public
    { Public declarations }
    class function crearFormTrabajoRealizado:TFormTrabajoRealizado;
    class procedure crearTrabajoRealizado(idRecurso:integer);
    class procedure verTrabajoRealizado(id:integer);
    class procedure modificarTrabajoRealizado(id:integer);
    class procedure eliminarTrabajoRealizado(id:integer);
    procedure cargarComboBox;
    procedure validarDatos;
    procedure crear;
    procedure modificar;


  end;

var
  FormTrabajoRealizado:TFormTrabajoRealizado;

implementation

{$R *.DFM}

uses
  SG_DataBase,
  SG_Edit,
  SG_Date,
  dbtables;

procedure TFormTrabajoRealizado.validarDatos;
begin

  SG_Edit.validarDatoIngresado(Self.EditProducto,'Producto');
  Self.SG_ComboBoxRol.validarCodigo('Rol');
  SG_Edit.validarDatoIngresado(Self.EditCache,'Cache');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditCache,'Cache');
  SG_Edit.validarDatoIngresado(Self.EditProductora,'Productora');

end;

class function TFormTrabajoRealizado.crearFormTrabajoRealizado:
  TFormTrabajoRealizado;
begin

  Application.CreateForm(TFormTrabajoRealizado,Result);

end;

class procedure TFormTrabajoRealizado.crearTrabajoRealizado(idRecurso:integer);
var
  trabajoRealizado:TFormTrabajoRealizado;
begin

  trabajoRealizado:=TFormTrabajoRealizado.crearFormTrabajoRealizado;

  try

    trabajoRealizado.EditIdRecurso.Text:=IntToStr(idRecurso);
    trabajoRealizado.BitBtnAceptar.OnClick:=
      trabajoRealizado.BitBtnAceptarClickCrear;

    trabajoRealizado.ShowModal;

  finally

    trabajoRealizado.free;

  end;

end;

class procedure TFormTrabajoRealizado.verTrabajoRealizado(id:integer);
var
  trabajoRealizado:TFormTrabajoRealizado;
begin

  trabajoRealizado:=TFormTrabajoRealizado.crearFormTrabajoRealizado;

  try

    trabajoRealizado.EditID.Text:=IntToStr(id);

    trabajoRealizado.BitBtnAceptar.OnClick:=
      trabajoRealizado.BitBtnAceptarClickVer;

    trabajoRealizado.obtenerDatos;

    trabajoRealizado.ShowModal;

  finally

    trabajoRealizado.free;

  end;

end;

class procedure TFormTrabajoRealizado.modificarTrabajoRealizado(id:integer);
var
  trabajoRealizado:TFormTrabajoRealizado;
begin

  trabajoRealizado:=TFormTrabajoRealizado.crearFormTrabajoRealizado;

  try

    trabajoRealizado.EditID.Text:=IntToStr(id);

    trabajoRealizado.BitBtnAceptar.OnClick:=
      trabajoRealizado.BitBtnAceptarClickModificar;

    trabajoRealizado.obtenerDatos;

    trabajoRealizado.ShowModal;

  finally

    trabajoRealizado.free;

  end;

end;

class procedure TFormTrabajoRealizado.eliminarTrabajoRealizado(id:integer);
var
  consulta:string;
begin

  consulta:=
    'delete '+
    'from trabajo_realizado_recurso '+
    'where id = '+IntToStr(id);

  TSG_DataBase.getInstance.execQuery(consulta);

end;

procedure TFormTrabajoRealizado.cargarComboBox;
begin
  Self.SG_ComboBoxRol.cargarValores;
end;


procedure TFormTrabajoRealizado.FormCreate(Sender: TObject);
begin
  Self.cargarComboBox;
  Self.DateTimePickerFechaTrabajo.date:=date;
  Self.DateTimePickerFechaPago.date:=date;
end;

procedure TFormTrabajoRealizado.BitBtnAceptarClick(Sender: TObject);
begin
  // Se asigna en forma dinamica el handler dependiendo de la accion a realizar:
  // creación, visualización, modificación.
end;

procedure TFormTrabajoRealizado.crear;
var
  consulta:string;
begin

  Self.validarDatos;

  consulta:=
    'INSERT INTO trabajo_realizado_recurso '+
      '(recurso_id, '+
      'producto, '+
      'rol_id, '+
      'fecha_trabajo, '+
      'cache, '+
      'productora, '+
      'fecha_pago) '+
    'VALUES '+
      '('+Self.EditIdRecurso.Text+', '+
      QuotedStr(Self.EditProducto.Text)+', '+
      QuotedStr(Self.SG_ComboBoxRol.getCodigo)+', '+
      delphiDateToSqlDate(Self.DateTimePickerFechaTrabajo.Date)+', '+
      Self.EditCache.Text+', '+
      QuotedStr(Self.EditProductora.Text)+', '+
      delphiDateToSqlDate(Self.DateTimePickerFechaPago.Date)+') ';

  TSG_DataBase.getInstance.execQuery(consulta);

  Self.EditID.Text:=IntToStr(TSG_DataBase.getInstance.getClaveInsertada);

end;

procedure TFormTrabajoRealizado.modificar;
var
  consulta:string;
begin

  Self.validarDatos;

  consulta:=
    'update trabajo_realizado_recurso '+
    'set '+
      'producto = '+QuotedStr(Self.EditProducto.Text)+', '+
      'rol_id = '+Self.SG_ComboBoxRol.getCodigo+', '+
      'fecha_trabajo = '+delphiDateToSqlDate(
        Self.DateTimePickerFechaTrabajo.Date)+', '+
      'cache = '+Self.EditCache.Text+', '+
      'productora = '+QuotedStr(Self.EditProductora.Text)+', '+
      'fecha_pago = '+delphiDateToSqlDate(
        Self.DateTimePickerFechaPago.Date)+' '+
    'where id = '+Self.EditID.Text;

  TSG_DataBase.getInstance.execQuery(consulta);

end;

procedure TFormTrabajoRealizado.BitBtnAceptarClickCrear(Sender: TObject);
begin
  Self.crear;
  Self.Close;
end;

procedure TFormTrabajoRealizado.BitBtnAceptarClickVer(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormTrabajoRealizado.BitBtnAceptarClickModificar(Sender: TObject);
begin
  Self.modificar;
  Self.Close;
end;

procedure TFormTrabajoRealizado.obtenerDatos;
var
  consulta:string;
  query:TQuery;
begin

  consulta:=
    'select '+
      'TR.recurso_id, '+
      'TR.producto, '+
      'rol.descripcion as rol, '+
      'TR.fecha_trabajo, '+
      'TR.cache, '+
      'TR.productora, '+
      'TR.fecha_pago '+
    'from '+
      'trabajo_realizado_recurso as TR left join rol '+
      'on TR.rol_id = rol.id '+
    'where TR.id = '+Self.EditID.Text;

  query:=TSG_DataBase.getInstance.openQuery(consulta);

  try

    query.First;

    Self.EditIdRecurso.Text:=query['recurso_id'];
    Self.EditProducto.Text:=query['producto'];
    Self.SG_ComboBoxRol.seleccionar(query['rol']);
    Self.DateTimePickerFechaTrabajo.date:=query['fecha_trabajo'];
    Self.EditCache.Text:=FloatToStr(query['cache']);
    Self.EditProductora.Text:=query['productora'];
    Self.DateTimePickerFechaPago.date:=query['fecha_pago'];

  finally

    query.Free;

  end;

end;

procedure TFormTrabajoRealizado.BitBtnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

end.
