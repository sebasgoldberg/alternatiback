unit Recurso;

interface

uses
  jpeg, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, ComCtrls, Grids, DBGrids, Buttons, DBCtrls,
  SG_ComboBox, SG_CheckListBox, Db, DBTables, {EDBImage, }ExtCtrls;

type
  TFormRecurso = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    EditID: TEdit;
    EditNombre: TEdit;
    EditApellido: TEdit;
    DateTimePickerFechaNacimiento: TDateTimePicker;
    EditDocumentoRG: TEdit;
    EditDocumentoCPF: TEdit;
    EditAltura: TEdit;
    EditPeso: TEdit;
    EditCalzado: TEdit;
    EditTallePantalon: TEdit;
    EditTalleCamisa: TEdit;
    EditDireccion: TEdit;
    Label35: TLabel;
    EditCodigoPostal: TEdit;
    Label36: TLabel;
    EditBarrio: TEdit;
    Label37: TLabel;
    EditTelefonoParticular: TEdit;
    Label38: TLabel;
    EditTelefonoMovil: TEdit;
    Label39: TLabel;
    EditResponsable: TEdit;
    Label40: TLabel;
    Label25: TLabel;
    EditMail: TEdit;
    Label26: TLabel;
    EditCuentaBancaria: TEdit;
    CheckBoxManeja: TCheckBox;
    CheckBoxTieneRegistro: TCheckBox;
    GroupBox2: TGroupBox;
    DBGridTrabajosRealizados: TDBGrid;
    BitBtnCrear: TBitBtn;
    BitBtnVer: TBitBtn;
    BitBtnModificar: TBitBtn;
    BitBtnBorrar: TBitBtn;
    Label17: TLabel;
    CheckBoxTrabajaComoExtra: TCheckBox;
    EditComoNosConocio: TEdit;
    BitBtnAceptar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    SG_ComboBoxPiel: TSG_ComboBox;
    SG_ComboBoxCiudad: TSG_ComboBox;
    SG_ComboBoxEstado: TSG_ComboBox;
    SG_ComboBoxTalle: TSG_ComboBox;
    SG_ComboBoxPelo: TSG_ComboBox;
    SG_ComboBoxOjos: TSG_ComboBox;
    SG_ComboBoxEstadoDientes: TSG_ComboBox;
    SG_CheckListBoxClaveExternaDeportes: TSG_CheckListBoxClaveExterna;
    SG_CheckListBoxClaveExternaIdioma: TSG_CheckListBoxClaveExterna;
    SG_CheckListBoxClaveExternaInstrumento: TSG_CheckListBoxClaveExterna;
    SG_CheckListBoxClaveExternaDanza: TSG_CheckListBoxClaveExterna;
    DateTimePickerFechaIngreso: TDateTimePicker;
    Label18: TLabel;
    DataSourceTrabajosRealizados: TDataSource;
    QueryTrabajosRealizados: TQuery;
    TableImagenRecurso: TTable;
    TableImagenRecursoid: TIntegerField;
    TableImagenRecursorecurso_id: TIntegerField;
    TableImagenRecursoimagen: TBlobField;
    OpenDialogImagen: TOpenDialog;
    GroupBox3: TGroupBox;
    BitBtnAnterior: TBitBtn;
    BitBtnAgregar: TBitBtn;
    BitBtnEliminar: TBitBtn;
    BitBtnSiguiente: TBitBtn;
    ScrollBoxImagenRecurso: TScrollBox;
    ImageRecurso: TImage;
    Label27: TLabel;
    SG_ComboBoxSexo: TSG_ComboBoxSexo;
    EditNextel: TEdit;
    Label28: TLabel;
    EditTelefonoParticularAlternativo1: TEdit;
    Label29: TLabel;
    EditTelefonoParticularAlternativo2: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    EditTelefonoMovilAlternativo1: TEdit;
    Label32: TLabel;
    EditTelefonoMovilAlternativo2: TEdit;
    EditObservaciones: TEdit;
    Label33: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnAceptarClick(Sender: TObject);
    procedure BitBtnAceptarClickCrear(Sender: TObject);
    procedure BitBtnAceptarClickVer(Sender: TObject);
    procedure BitBtnAceptarClickModificar(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnCrearClick(Sender: TObject);
    procedure BitBtnVerClick(Sender: TObject);
    procedure BitBtnModificarClick(Sender: TObject);
    procedure BitBtnBorrarClick(Sender: TObject);
    procedure QueryTrabajosRealizadosAfterClose(DataSet: TDataSet);
    procedure QueryTrabajosRealizadosAfterOpen(DataSet: TDataSet);
    procedure BitBtnAnteriorClick(Sender: TObject);
    procedure BitBtnSiguienteClick(Sender: TObject);
    procedure BitBtnEliminarClick(Sender: TObject);
    procedure TableImagenRecursoAfterScroll(DataSet: TDataSet);
    procedure BitBtnAgregarClick(Sender: TObject);

  private
    { Private declarations }
    procedure obtenerDatos;
    procedure cargarImagen;

  public
    { Public declarations }
    class function crearFormRecurso:TFormRecurso;
    class procedure crearRecurso;
    class procedure verRecurso(id:integer);
    class procedure modificarRecurso(id:integer);
    class procedure eliminarRecurso(id:integer);
    procedure cargarComboBox;
    procedure validarDatos;
    procedure crear;
    procedure modificar;
    procedure refrescarGrillaTrabajosRealizados;
    procedure setEstadoBotonesGrillaTrabajoRealizado(activo:boolean);
    procedure refrescarImagenesRecurso;

  end;

var
  FormRecurso: TFormRecurso;

implementation

{$R *.DFM}

uses
  TrabajoRealizado,
  SG_Edit,
  SG_Date,
  SG_CheckBox,
  SG_DataBase,
  SG_Messages;

class function TFormRecurso.crearFormRecurso:TFormRecurso;
begin

  Application.CreateForm(TFormRecurso,Result);

end;

procedure TFormRecurso.validarDatos;
begin

  SG_Edit.validarDatoIngresado(Self.EditNombre,'Nombre');
  SG_Edit.validarDatoIngresado(Self.EditApellido,'Apellido');

  if Self.DateTimePickerFechaNacimiento.Date>Date then
    raise Exception.Create('La Fecha de Nacimiento no puede ser posterior a '+
      'la fecha del día');

  if getCodigoComboBox(Self.SG_ComboBoxSexo)='' then
    raise Exception.create('El valor ingresado para el parámetro Sexo es '+
      'inválido');

  Self.SG_comboBoxPiel.validarCodigo('Piel',true);

  Self.SG_ComboBoxCiudad.validarCodigo('Ciudad');
  Self.SG_ComboBoxEstado.validarCodigo('Estado');

  SG_Edit.validarDatoIngresado(Self.EditTelefonoParticular,
    'Telefono Particular');
  SG_Edit.validarDatoNumerico(Self.EditTelefonoParticular,
    'Telefono Particular');
  SG_Edit.validarDatoNumerico(Self.EditTelefonoParticularAlternativo1,
    'Telefono Particular Alternativo 1');
  SG_Edit.validarDatoNumerico(Self.EditTelefonoParticularAlternativo2,
    'Telefono Particular Alternativo 2');

  SG_Edit.validarDatoIngresado(Self.EditTelefonoMovil,'Telefono Movil');
  SG_Edit.validarDatoNumerico(Self.EditTelefonoMovil,'Telefono Movil');
  SG_Edit.validarDatoNumerico(Self.EditTelefonoMovilAlternativo1,
    'Telefono Movil Alternativo 1');
  SG_Edit.validarDatoNumerico(Self.EditTelefonoMovilAlternativo2,
    'Telefono Movil Alternativo 2');

  SG_Edit.validarDatoIngresado(Self.EditResponsable,'Responsable');

  SG_Edit.validarDatoNumericoConDecimales(Self.EditAltura,'Altura');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditPeso,'Peso');

  Self.SG_ComboBoxTalle.validarCodigo('Talle');

  Self.SG_ComboBoxPelo.validarCodigo('Pelo');
  Self.SG_ComboBoxOjos.validarCodigo('Ojos');

  SG_Edit.validarDatoNumericoConDecimales(Self.EditCalzado,'Calzado');

  Self.SG_ComboBoxEstadoDientes.validarCodigo('Estado dientes');

  SG_Edit.validarDatoNumericoConDecimales(Self.EditTallePantalon,
    'Talle Pantalon');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditTalleCamisa,'Talle Camisa');

  {
  SG_Edit.validarDatoIngresado(Self.EditDireccion,'Direccion');
  SG_Edit.validarDatoIngresado(Self.EditCodigoPostal,'Codigo Postal');
  SG_Edit.validarDatoIngresado(Self.EditBarrio,'Barrio');
  SG_Edit.validarDatoIngresado(Self.EditTelefonoParticular,
    'Telefono Particular');
  SG_Edit.validarDatoIngresado(Self.EditTelefonoMovil,'Telefono Movil');
  SG_Edit.validarDatoIngresado(Self.EditDocumentoRG,'Documento RG');
  SG_Edit.validarDatoIngresado(Self.EditDocumentoCPF,'Documento CPF');
  SG_Edit.validarDatoIngresado(Self.EditAltura,'Altura');
  SG_Edit.validarDatoIngresado(Self.EditPeso,'Peso');
  SG_Edit.validarDatoIngresado(Self.EditCalzado,'Calzado');
  SG_Edit.validarDatoIngresado(Self.EditTallePantalon,'Talle Pantalon');
  SG_Edit.validarDatoIngresado(Self.EditTalleCamisa,'Talle Camisa');
  }

  if Self.EditAltura.Text='' then
    Self.EditAltura.Text:='0';

  if Self.EditPeso.Text='' then
    Self.EditPeso.Text:='0';

  if Self.EditTallePantalon.Text='' then
    Self.EditTallePantalon.Text:='0';

  if Self.EditTalleCamisa.Text='' then
    Self.EditTalleCamisa.Text:='0';

  if Self.EditCalzado.Text='' then
    Self.EditCalzado.Text:='0';

end;

procedure TFormRecurso.cargarComboBox;
begin
  Self.SG_ComboBoxSexo.cargar;
  Self.SG_ComboBoxCiudad.cargarValores;
  Self.SG_ComboBoxEstado.cargarValores;
  Self.SG_ComboBoxEstadoDientes.cargarValores;
  Self.SG_ComboBoxOjos.cargarValores;
  Self.SG_ComboBoxPelo.cargarValores;
  Self.SG_comboBoxPiel.cargarValores;
  Self.SG_ComboBoxTalle.cargarValores;
end;

procedure TFormRecurso.FormCreate(Sender: TObject);
begin
  Self.cargarComboBox;
  Self.DateTimePickerFechaNacimiento.date:=date;
  Self.DateTimePickerFechaIngreso.date:=date;
end;

procedure TFormRecurso.FormActivate(Sender: TObject);
begin
  Self.SG_CheckListBoxClaveExternaDeportes.cargarValoresClave(Self.EditID.Text);
  Self.SG_CheckListBoxClaveExternaIdioma.cargarValoresClave(Self.EditID.Text);
  Self.SG_CheckListBoxClaveExternaInstrumento.cargarValoresClave(
    Self.EditID.Text);
  Self.SG_CheckListBoxClaveExternaDanza.cargarValoresClave(Self.EditID.Text);
  self.WindowState:=wsMaximized;
end;

procedure TFormRecurso.BitBtnAceptarClick(Sender: TObject);
begin
  // Se asigna en forma dinamica el handler dependiendo de la accion a realizar:
  // creación, visualización, modificación.
end;

procedure TFormRecurso.crear;
var
  consulta:string;
begin

  Self.validarDatos;

  consulta:=
    'INSERT INTO recurso '+
      '(nombre, '+
      'apellido, '+
      'fecha_nacimiento, '+
      'sexo, '+
      'piel_id, '+
      'direccion, '+
      'codigo_postal, '+
      'barrio, '+
      'ciudad_id, '+
      'estado_id, '+
      'telefono_particular, '+
      'tel_particular_alt_1, '+
      'tel_particular_alt_2, '+
      'telefono_movil, '+
      'telefono_movil_alternativo_1, '+
      'telefono_movil_alternativo_2, '+
      'nextel, '+
      'responsable, '+
      'documento_RG, '+
      'documento_CPF, '+
      'altura, '+
      'peso, '+
      'talle_id, '+
      'pelo_id, '+
      'ojos_id, '+
      'calzado, '+
      'estado_dientes_id, '+
      'talle_pantalon, '+
      'talle_camisa, '+
      'mail, '+
      'cuenta_bancaria, '+
      'indicador_maneja, '+
      'indicador_tiene_registro, '+
      'fecha_ingreso, '+
      'trabaja_como_extra, '+
      'como_nos_conocio, '+
      'observaciones) '+
    'VALUES '+
      '('+QuotedStr(Self.EditNombre.Text)+', '+
      QuotedStr(Self.EditApellido.Text)+', '+
      delphiDateToSqlDate(Self.DateTimePickerFechaNacimiento.Date)+', '+
      QuotedStr(Self.SG_ComboBoxSexo.toChar)+', '+
      Self.SG_ComboBoxPiel.getCodigo+', '+
      QuotedStr(Self.EditDireccion.Text)+', '+
      QuotedStr(Self.EditCodigoPostal.Text)+', '+
      QuotedStr(Self.EditBarrio.Text)+', '+
      Self.SG_ComboBoxCiudad.getCodigo+', '+
      Self.SG_ComboBoxEstado.getCodigo+', '+
      QuotedStr(Self.EditTelefonoParticular.Text)+', '+
      QuotedStr(Self.EditTelefonoParticularAlternativo1.Text)+', '+
      QuotedStr(Self.EditTelefonoParticularAlternativo2.Text)+', '+
      QuotedStr(Self.EditTelefonoMovil.Text)+', '+
      QuotedStr(Self.EditTelefonoMovilAlternativo1.Text)+', '+
      QuotedStr(Self.EditTelefonoMovilAlternativo2.Text)+', '+
      QuotedStr(Self.EditNextel.Text)+', '+
      QuotedStr(Self.EditResponsable.Text)+', '+
      QuotedStr(Self.EditDocumentoRG.Text)+', '+
      QuotedStr(Self.EditDocumentoCPF.Text)+', '+
      Self.EditAltura.Text+', '+
      Self.EditPeso.Text+', '+
      Self.SG_ComboBoxTalle.getCodigo+', '+
      Self.SG_ComboBoxPelo.getCodigo+', '+
      Self.SG_ComboBoxOjos.getCodigo+', '+
      Self.EditCalzado.Text+', '+
      Self.SG_ComboBoxEstadoDientes.getCodigo+', '+
      Self.EditTallePantalon.Text+', '+
      Self.EditTalleCamisa.Text+', '+
      QuotedStr(Self.EditMail.Text)+', '+
      QuotedStr(Self.EditCuentaBancaria.Text)+', '+
      getCheckBoxSQLValue(Self.CheckBoxManeja)+', '+
      getCheckBoxSQLValue(Self.CheckBoxTieneRegistro)+', '+
      delphiDateToSqlDate(Self.DateTimePickerFechaIngreso.date)+', '+
      getCheckBoxSQLValue(Self.CheckBoxTrabajaComoExtra)+', '+
      QuotedStr(Self.EditComoNosConocio.Text)+', '+
      QuotedStr(Self.EditObservaciones.Text)+') ';

  TSG_DataBase.getInstance.execQuery(consulta);

  Self.EditID.Text:=IntToStr(TSG_DataBase.getInstance.getClaveInsertada);

  Self.SG_CheckListBoxClaveExternaDeportes.saveCodigosTablaPrincipal(
    Self.EditID.Text);
  Self.SG_CheckListBoxClaveExternaIdioma.saveCodigosTablaPrincipal(
    Self.EditID.Text);
  Self.SG_CheckListBoxClaveExternaInstrumento.saveCodigosTablaPrincipal(
    Self.EditID.Text);
  Self.SG_CheckListBoxClaveExternaDanza.saveCodigosTablaPrincipal(
    Self.EditID.Text);

end;

procedure TFormRecurso.modificar;
var
  consulta:string;
begin

  Self.validarDatos;

  consulta:=
    'update recurso '+
    'set '+
      'nombre = '+QuotedStr(Self.EditNombre.Text)+', '+
      'apellido = '+QuotedStr(Self.EditApellido.Text)+', '+
      'fecha_nacimiento = '+delphiDateToSqlDate(
        Self.DateTimePickerFechaNacimiento.Date)+', '+
      'sexo = '+QuotedStr(Self.SG_ComboBoxSexo.toChar)+', '+
      'piel_id = '+Self.SG_ComboBoxPiel.getCodigo+', '+
      'direccion = '+QuotedStr(Self.EditDireccion.Text)+', '+
      'codigo_postal = '+QuotedStr(Self.EditCodigoPostal.Text)+', '+
      'barrio = '+QuotedStr(Self.EditBarrio.Text)+', '+
      'ciudad_id = '+Self.SG_ComboBoxCiudad.getCodigo+', '+
      'estado_id = '+Self.SG_ComboBoxEstado.getCodigo+', '+
      'telefono_particular = '+QuotedStr(Self.EditTelefonoParticular.Text)+', '+
      'tel_particular_alt_1 = '+
        QuotedStr(Self.EditTelefonoParticularAlternativo1.Text)+', '+
      'tel_particular_alt_2 = '+
        QuotedStr(Self.EditTelefonoParticularAlternativo2.Text)+', '+
      'telefono_movil = '+QuotedStr(Self.EditTelefonoMovil.Text)+', '+
      'telefono_movil_alternativo_1 = '+
        QuotedStr(Self.EditTelefonoMovilAlternativo1.Text)+', '+
      'telefono_movil_alternativo_2 = '+
        QuotedStr(Self.EditTelefonoMovilAlternativo2.Text)+', '+
      'nextel = '+QuotedStr(Self.EditNextel.Text)+', '+
      'responsable = '+QuotedStr(Self.EditResponsable.Text)+', '+
      'documento_RG = '+QuotedStr(Self.EditDocumentoRG.Text)+', '+
      'documento_CPF = '+QuotedStr(Self.EditDocumentoCPF.Text)+', '+
      'altura = '+Self.EditAltura.Text+', '+
      'peso = '+Self.EditPeso.Text+', '+
      'talle_id = '+Self.SG_ComboBoxTalle.getCodigo+', '+
      'pelo_id = '+Self.SG_ComboBoxPelo.getCodigo+', '+
      'ojos_id = '+Self.SG_ComboBoxOjos.getCodigo+', '+
      'calzado = '+Self.EditCalzado.Text+', '+
      'estado_dientes_id = '+Self.SG_ComboBoxEstadoDientes.getCodigo+
        ', '+
      'talle_pantalon = '+Self.EditTallePantalon.Text+', '+
      'talle_camisa = '+Self.EditTalleCamisa.Text+', '+
      'mail = '+QuotedStr(Self.EditMail.Text)+', '+
      'cuenta_bancaria = '+QuotedStr(Self.EditCuentaBancaria.Text)+', '+
      'indicador_maneja = '+getCheckBoxSQLValue(Self.CheckBoxManeja)+', '+
      'indicador_tiene_registro = '+getCheckBoxSQLValue(Self.CheckBoxTieneRegistro)+', '+
      'fecha_ingreso = '+delphiDateToSqlDate(Self.DateTimePickerFechaIngreso.date)+', '+
      'trabaja_como_extra = '+getCheckBoxSQLValue(Self.CheckBoxTrabajaComoExtra)+', '+
      'como_nos_conocio = '+QuotedStr(Self.EditComoNosConocio.Text)+', '+
      'observaciones = '+QuotedStr(Self.EditObservaciones.Text)+' '+
    'where id = '+Self.EditID.Text;

  TSG_DataBase.getInstance.execQuery(consulta);

  Self.SG_CheckListBoxClaveExternaDeportes.saveCodigosTablaPrincipal(
    Self.EditID.Text);
  Self.SG_CheckListBoxClaveExternaIdioma.saveCodigosTablaPrincipal(
    Self.EditID.Text);
  Self.SG_CheckListBoxClaveExternaInstrumento.saveCodigosTablaPrincipal(
    Self.EditID.Text);
  Self.SG_CheckListBoxClaveExternaDanza.saveCodigosTablaPrincipal(
    Self.EditID.Text);

end;

{
Carga la imagen del campo 'imagen' de la tabla de imagenes.
}
procedure TFormRecurso.cargarImagen;
var
  blob:TBlobField;
  fileName:string;
begin

  fileName:=Self.EditID.Text+FormatDateTime('yyyymmddhhmmss',date)+'.jpg';

  blob:=TBlobField(Self.TableImagenRecurso.FieldByName('imagen'));

  blob.SaveToFile(fileName);

  Self.ImageRecurso.Picture.LoadFromFile(fileName);

  DeleteFile(fileName);

end;

procedure TFormRecurso.refrescarImagenesRecurso;
begin

  Self.TableImagenRecurso.close;
  Self.TableImagenRecurso.Filter:='recurso_id = '+Self.EditID.Text;
  Self.TableImagenRecurso.Filtered:=true;
  Self.TableImagenRecurso.open;
  Self.TableImagenRecurso.First;

  if not Self.TableImagenRecurso.Eof then
  begin
    Self.cargarImagen;
    Self.ImageRecurso.Visible:=true;
  end
  else
    Self.ImageRecurso.Visible:=false;

end;

procedure TFormRecurso.obtenerDatos;
var
  consulta:string;
  query:TQuery;
begin

  consulta:=
    'select '+
      'R.id, '+
      'R.nombre, '+
      'R.apellido, '+
      'R.fecha_nacimiento, '+
      'R.sexo, '+
      'piel.descripcion as piel, '+
      'R.direccion, '+
      'R.codigo_postal, '+
      'R.barrio, '+
      'ciudad.descripcion as ciudad, '+
      'estado.descripcion as estado, '+
      'R.telefono_particular, '+
      'R.tel_particular_alt_1, '+
      'R.tel_particular_alt_2, '+
      'R.telefono_movil, '+
      'telefono_movil_alternativo_1, '+
      'telefono_movil_alternativo_2, '+
      'R.nextel, '+
      'R.responsable, '+
      'R.documento_RG, '+
      'R.documento_CPF, '+
      'R.altura, '+
      'R.peso, '+
      'talle.descripcion as talle, '+
      'pelo.descripcion as pelo, '+
      'ojos.descripcion as ojos, '+
      'R.calzado, '+
      'estado_dientes.descripcion as estado_dientes, '+
      'R.talle_pantalon, '+
      'R.talle_camisa, '+
      'R.mail, '+
      'R.cuenta_bancaria, '+
      'R.indicador_maneja, '+
      'R.indicador_tiene_registro, '+
      'R.fecha_ingreso, '+
      'R.trabaja_como_extra, '+
      'R.como_nos_conocio, '+
      'R.observaciones '+
    'from '+
      'recurso as R left join piel '+
      'on R.piel_id = piel.id '+
      'left join ciudad '+
      'on R.ciudad_id = ciudad.id '+
      'left join estado '+
      'on R.estado_id = estado.id '+
      'left join talle '+
      'on R.talle_id = talle.id '+
      'left join pelo '+
      'on R.pelo_id = pelo.id '+
      'left join ojos '+
      'on R.ojos_id = ojos.id '+
      'left join estado_dientes '+
      'on R.estado_dientes_id = estado_dientes.id '+
    'where R.id = '+Self.EditID.Text;

  query:=TSG_DataBase.getInstance.openQuery(consulta);
  
  try

    query.First;
  
    Self.EditNombre.Text:=query['nombre'];
    Self.EditApellido.Text:=query['apellido'];
    Self.DateTimePickerFechaNacimiento.Date:=query['fecha_nacimiento'];
    Self.SG_ComboBoxSexo.setValorSeleccionado(query['sexo']);
    Self.SG_ComboBoxPiel.seleccionar(query['piel']);
    Self.EditDireccion.Text:=query['direccion'];
    Self.EditCodigoPostal.Text:=query['codigo_postal'];
    Self.EditBarrio.Text:=query['barrio'];
    Self.SG_ComboBoxCiudad.seleccionarConNull(query,'ciudad');
    Self.SG_ComboBoxEstado.seleccionarConNull(query,'estado');
    Self.EditTelefonoParticular.Text:=query['telefono_particular'];
    Self.EditTelefonoParticularAlternativo1.Text:=
      query['tel_particular_alt_1'];
    Self.EditTelefonoParticularAlternativo2.Text:=
      query['tel_particular_alt_2'];
    Self.EditTelefonoMovil.Text:=query['telefono_movil'];
    Self.EditTelefonoMovilAlternativo1.Text:=
      query['telefono_movil_alternativo_1'];
    Self.EditTelefonoMovilAlternativo2.Text:=
      query['telefono_movil_alternativo_2'];
    Self.EditNextel.Text:=query['nextel'];
    Self.EditResponsable.Text:=query['responsable'];
    Self.EditDocumentoRG.Text:=query['documento_RG'];
    Self.EditDocumentoCPF.Text:=query['documento_CPF'];
    Self.EditAltura.Text:=FloatToStr(query['altura']);
    Self.EditPeso.Text:=FloatToStr(query['peso']);
    Self.SG_ComboBoxTalle.seleccionarConNull(query,'talle');
    Self.SG_ComboBoxPelo.seleccionarConNull(query,'pelo');
    Self.SG_ComboBoxOjos.seleccionarConNull(query,'ojos');
    Self.EditCalzado.Text:=FloatToStr(query['calzado']);
    Self.SG_ComboBoxEstadoDientes.seleccionarConNull(query,'estado_dientes');
    Self.EditTallePantalon.Text:=FloatToStr(query['talle_pantalon']);
    Self.EditTalleCamisa.Text:=FloatToStr(query['talle_camisa']);
    Self.EditMail.Text:=query['mail'];
    Self.EditCuentaBancaria.Text:=query['cuenta_bancaria'];
    Self.CheckBoxManeja.Checked:=query['indicador_maneja'];
    Self.CheckBoxTieneRegistro.Checked:=query['indicador_tiene_registro'];
    Self.DateTimePickerFechaIngreso.date:=query['fecha_ingreso'];
    Self.CheckBoxTrabajaComoExtra.Checked:=query['trabaja_como_extra'];
    Self.EditComoNosConocio.Text:=query['como_nos_conocio'];
    Self.EditObservaciones.Text:=query['observaciones'];

    Self.SG_CheckListBoxClaveExternaDeportes.cargarValoresClave(
      QuotedStr(Self.EditID.Text));
    Self.SG_CheckListBoxClaveExternaIdioma.cargarValoresClave(
      QuotedStr(Self.EditID.Text));
    Self.SG_CheckListBoxClaveExternaInstrumento.cargarValoresClave(
      QuotedStr(Self.EditID.Text));
    Self.SG_CheckListBoxClaveExternaDanza.cargarValoresClave(
      QuotedStr(Self.EditID.Text));

    Self.refrescarGrillaTrabajosRealizados;

    Self.refrescarImagenesRecurso;

  finally

    query.Free;

  end;

end;

procedure TFormRecurso.BitBtnAceptarClickCrear(Sender: TObject);
begin
  Self.crear;
  Self.Close;
  TFormRecurso.modificarRecurso(StrToInt(Self.EditID.Text));
end;

procedure TFormRecurso.BitBtnAceptarClickVer(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormRecurso.BitBtnAceptarClickModificar(Sender: TObject);
begin
  Self.modificar;
  Self.Close;
end;

procedure TFormRecurso.BitBtnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

class procedure TFormRecurso.crearRecurso;
var
  recurso:TFormRecurso;
begin

  recurso:=TFormRecurso.crearFormRecurso;

  try

    recurso.BitBtnCrear.Enabled:=False;
    recurso.BitBtnVer.Enabled:=False;
    recurso.BitBtnModificar.Enabled:=False;
    recurso.BitBtnBorrar.Enabled:=False;

    recurso.BitBtnAnterior.Enabled:=False;
    recurso.BitBtnAgregar.Enabled:=False;
    recurso.BitBtnEliminar.Enabled:=False;
    recurso.BitBtnSiguiente.Enabled:=False;

    recurso.BitBtnAceptar.OnClick:=recurso.BitBtnAceptarClickCrear;

    recurso.ShowModal;

  finally

    recurso.free;

  end;
end;

class procedure TFormRecurso.verRecurso(id:integer);
var
  recurso:TFormRecurso;
begin

  recurso:=TFormRecurso.crearFormRecurso;

  try

    recurso.EditID.Text:=IntToStr(id);
    recurso.BitBtnCrear.Enabled:=False;
    recurso.BitBtnModificar.Enabled:=False;
    recurso.BitBtnBorrar.Enabled:=False;

    recurso.BitBtnAgregar.Enabled:=False;
    recurso.BitBtnEliminar.Enabled:=False;

    recurso.BitBtnAceptar.OnClick:=recurso.BitBtnAceptarClickVer;

    recurso.obtenerDatos;
  
    recurso.ShowModal;

  finally

    recurso.Free;

  end;

end;

class procedure TFormRecurso.modificarRecurso(id:integer);
var
  recurso:TFormRecurso;
begin

  recurso:=TFormRecurso.crearFormRecurso;

  try

    recurso.EditID.Text:=IntToStr(id);
    recurso.BitBtnAceptar.OnClick:=recurso.BitBtnAceptarClickModificar;
  
    recurso.obtenerDatos;

    recurso.ShowModal;

  finally

    recurso.Free;

  end;

end;

class procedure TFormRecurso.eliminarRecurso(id:integer);
var
  consulta:string;
  idRecurso:string;
begin

  idRecurso:=IntToStr(id);

  consulta:=
    'delete '+
    'from danza_recurso '+
    'where recurso_id = '+idRecurso+' '+

    'delete '+
    'from deporte_recurso '+
    'where recurso_id = '+idRecurso+' '+

    'delete '+
    'from idioma_recurso '+
    'where recurso_id = '+idRecurso+' '+

    'delete '+
    'from imagen_recurso '+
    'where recurso_id = '+idRecurso+' '+

    'delete '+
    'from instrumento_recurso '+
    'where recurso_id = '+idRecurso+' '+

    'delete '+
    'from trabajo_realizado_recurso '+
    'where recurso_id = '+idRecurso+' '+

    'delete '+
    'from recurso '+
    'where id = '+idRecurso;

  TSG_DataBase.getInstance.execQuery(consulta);

end;

procedure TFormRecurso.refrescarGrillaTrabajosRealizados;
var
  consulta:string;
begin

  consulta:=
    'select '+
      'TR.id, '+
      'TR.producto, '+
      'rol.descripcion as rol, '+
      'TR.fecha_trabajo, '+
      'TR.cache, '+
      'TR.productora, '+
      'TR.fecha_pago '+
    'from '+
      'trabajo_realizado_recurso as TR left join rol '+
      'on TR.rol_id = rol.id '+
    'where TR.recurso_id = '+Self.EditID.Text;


  TSG_DataBase.getInstance.openQuery(consulta,Self.QueryTrabajosRealizados);

end;

procedure TFormRecurso.BitBtnCrearClick(Sender: TObject);
begin
  TFormTrabajoRealizado.crearTrabajoRealizado(StrToInt(Self.EditID.text));
  Self.refrescarGrillaTrabajosRealizados;
end;

procedure TFormRecurso.BitBtnVerClick(Sender: TObject);
begin
  TFormTrabajoRealizado.verTrabajoRealizado(
    Self.QueryTrabajosRealizados['id']);
end;

procedure TFormRecurso.BitBtnModificarClick(Sender: TObject);
begin
  TFormTrabajoRealizado.modificarTrabajoRealizado(
    Self.QueryTrabajosRealizados['id']);
  Self.refrescarGrillaTrabajosRealizados;
end;

procedure TFormRecurso.BitBtnBorrarClick(Sender: TObject);
begin

  if SG_Messages.yesNoQuestion('¿Realmente desea eliminar permanentemente el '+
    'trabajo '+IntToStr(Self.QueryTrabajosRealizados['id'])+'?') then
  begin

    TFormTrabajoRealizado.eliminarTrabajoRealizado(
      Self.QueryTrabajosRealizados['id']);

    Self.refrescarGrillaTrabajosRealizados;

  end;

end;

procedure TFormRecurso.setEstadoBotonesGrillaTrabajoRealizado(activo:boolean);
begin
  Self.BitBtnVer.Enabled:=activo;

  if Self.BitBtnCrear.Enabled then
  begin
    Self.BitBtnModificar.Enabled:=activo;
    Self.BitBtnBorrar.Enabled:=activo;
  end;
  
end;

procedure TFormRecurso.QueryTrabajosRealizadosAfterClose(
  DataSet: TDataSet);
begin
  Self.setEstadoBotonesGrillaTrabajoRealizado(false);
end;

procedure TFormRecurso.QueryTrabajosRealizadosAfterOpen(DataSet: TDataSet);
begin
  if Self.QueryTrabajosRealizados.RecordCount=0 then
    Self.setEstadoBotonesGrillaTrabajoRealizado(false)
  else
    Self.setEstadoBotonesGrillaTrabajoRealizado(true);
end;

procedure TFormRecurso.BitBtnAnteriorClick(Sender: TObject);
begin
  Self.TableImagenRecurso.Prior;
  Self.cargarImagen;
end;

procedure TFormRecurso.BitBtnSiguienteClick(Sender: TObject);
begin
  Self.TableImagenRecurso.Next;
  Self.cargarImagen;
end;



procedure TFormRecurso.BitBtnEliminarClick(Sender: TObject);
begin

  if Self.TableImagenRecurso.RecordCount>0 then
  begin
    Self.TableImagenRecurso.Delete;
    Self.refrescarImagenesRecurso;
  end;
  
end;

procedure TFormRecurso.TableImagenRecursoAfterScroll(DataSet: TDataSet);
begin

  if Self.BitBtnAgregar.Enabled then
  begin
    if Self.TableImagenRecurso.RecordCount=0 then
      Self.BitBtnEliminar.Enabled:=false
    else
      Self.BitBtnEliminar.Enabled:=true;
  end;

end;

procedure TFormRecurso.BitBtnAgregarClick(Sender: TObject);
var
  blob:TBlobField;
begin

  if not Self.OpenDialogImagen.Execute then
    exit;

  if not FileExists(Self.OpenDialogImagen.FileName) then
    raise Exception.Create('El archivo seleccionado es inexistente');

  Self.TableImagenRecurso.Insert;

  Self.TableImagenRecurso['recurso_id']:=StrToInt(Self.EditID.Text);

  blob:=TBlobField(self.TableImagenRecurso.FieldByName('imagen'));

  blob.LoadFromFile(Self.OpenDialogImagen.FileName);

  Self.TableImagenRecurso.Post;

  //ImageRecurso.Picture.LoadFromFile(Self.OpenDialogImagen.FileName);

  Self.refrescarImagenesRecurso;

end;

end.
