unit FormMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, CheckLst, Buttons, Grids, DBGrids, Db,
  DBTables, SG_ComboBox, Menus, SG_CheckListBox;

type
  TFormAlternativa = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditID: TEdit;
    EditNombre: TEdit;
    EditApellido: TEdit;
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
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    EditDocumentoRG: TEdit;
    EditDocumentoCPF: TEdit;
    Label25: TLabel;
    EditAlturaDesde: TEdit;
    EditAlturaHasta: TEdit;
    Label26: TLabel;
    EditPesoDesde: TEdit;
    EditPesoHasta: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    EditCalzadoDesde: TEdit;
    Label29: TLabel;
    EditCalzadoHasta: TEdit;
    Label30: TLabel;
    EditTallePantalonHasta: TEdit;
    Label31: TLabel;
    EditTallePantalonDesde: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    EditTalleCamisaDesde: TEdit;
    Label34: TLabel;
    EditTalleCamisaHasta: TEdit;
    GroupBox2: TGroupBox;
    BitBtnBuscar: TBitBtn;
    BitBtnLimpiar: TBitBtn;
    DBGridRecursos: TDBGrid;
    Database: TDatabase;
    BitBtnCrear: TBitBtn;
    BitBtnVer: TBitBtn;
    BitBtnModificar: TBitBtn;
    BitBtnBorrar: TBitBtn;
    Label35: TLabel;
    DataSourceRecursos: TDataSource;
    QueryRecursos: TQuery;
    SG_ComboBoxPiel: TSG_ComboBox;
    SG_ComboBoxCiudad: TSG_ComboBox;
    SG_ComboBoxEstado: TSG_ComboBox;
    SG_ComboBoxTalle: TSG_ComboBox;
    SG_ComboBoxPelo: TSG_ComboBox;
    SG_ComboBoxOjos: TSG_ComboBox;
    SG_ComboBoxEstadoDientes: TSG_ComboBox;
    SG_CheckListBoxDeportes: TSG_CheckListBox;
    SG_CheckListBoxIdiomas: TSG_CheckListBox;
    SG_CheckListBoxInstrumentos: TSG_CheckListBox;
    SG_CheckListBoxDanzas: TSG_CheckListBox;
    SG_ComboBoxBitManeja: TSG_ComboBoxBit;
    SG_ComboBoxBitTieneRegistro: TSG_ComboBoxBit;
    SG_ComboBoxBitTrabajaComoExtra: TSG_ComboBoxBit;
    Label36: TLabel;
    Label4: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    EditEdadHasta: TEdit;
    EditEdadDesde: TEdit;
    SG_ComboBoxSexo: TSG_ComboBoxSexo;
    BitBtnEnviarFotosMail: TBitBtn;
    ButtonExcel: TButton;
    procedure FormActivate(Sender: TObject);
    procedure BitBtnCrearClick(Sender: TObject);
    procedure BitBtnBuscarClick(Sender: TObject);
    procedure BitBtnLimpiarClick(Sender: TObject);
    procedure BitBtnVerClick(Sender: TObject);
    procedure BitBtnModificarClick(Sender: TObject);
    procedure BitBtnBorrarClick(Sender: TObject);
    procedure QueryRecursosAfterOpen(DataSet: TDataSet);
    procedure QueryRecursosAfterClose(DataSet: TDataSet);
    procedure BitBtnEnviarFotosMailClick(Sender: TObject);
    procedure ButtonExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure refrescarGrillaRecursos;
    procedure validarParametros;
    procedure setEstadoBotonesGrillaRecurso(activo:boolean);

  end;

var
  FormAlternativa: TFormAlternativa;

implementation

{$R *.DFM}

uses
  Recurso,
  SG_DataBase,
  SG_Messages,
  SG_Date,
  SG_Edit,
  MailFotos,
  SG_Excel;

const
  C_ALTERNATIVA='Alternativa';

procedure TFormAlternativa.FormActivate(Sender: TObject);
begin

  //TSG_DataBase.getInstance.conectar(C_ALTERNATIVA,false,'sgoldberg','cerebrin');
  TSG_DataBase.getInstance.conectar(C_ALTERNATIVA,true);

  Self.SG_ComboBoxSexo.cargar;
  Self.SG_ComboBoxPiel.cargarValores;
  Self.SG_ComboBoxCiudad.cargarValores;
  Self.SG_ComboBoxEstado.cargarValores;
  Self.SG_ComboBoxTalle.cargarValores;
  Self.SG_ComboBoxPelo.cargarValores;
  Self.SG_ComboBoxOjos.cargarValores;
  Self.SG_ComboBoxEstadoDientes.cargarValores;
  Self.SG_ComboBoxBitManeja.cargar;
  Self.SG_ComboBoxBitTieneRegistro.cargar;
  Self.SG_ComboBoxBitTrabajaComoExtra.cargar;

  Self.SG_CheckListBoxDeportes.cargarValores;
  Self.SG_CheckListBoxIdiomas.cargarValores;
  Self.SG_CheckListBoxInstrumentos.cargarValores;
  Self.SG_CheckListBoxDanzas.cargarValores;

  self.WindowState:=wsMaximized;

end;

procedure TFormAlternativa.refrescarGrillaRecursos;
var
  consulta:string;
  fechaNacimientoDesde:TDate;
  fechaNacimientoHasta:TDate;
begin

  consulta:=
    'select distinct '+
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
      'left join deporte_recurso DER '+
      'on R.id = DER.recurso_id '+
      'left join idioma_recurso IDR '+
      'on R.id = IDR.recurso_id '+
      'left join instrumento_recurso INR '+
      'on R.id = INR.recurso_id '+
      'left join danza_recurso DAR '+
      'on R.id = DAR.recurso_id '+
    'where 0=0 ';

  if Self.EditID.Text<>'' then
    consulta:=consulta+
      'and R.id = '+Self.EditID.Text+' ';

  if Self.EditNombre.Text<>'' then
    consulta:=consulta+
      'and R.nombre like '+QuotedStr('%'+Self.EditNombre.Text+'%')+' ';
  if Self.EditApellido.Text<>'' then
    consulta:=consulta+
      'and upper(R.apellido) like '+QuotedStr('%'+Self.EditApellido.Text+'%')+' ';

  if Self.EditEdadHasta.Text<>'' then
  begin
    //and fecha_nacimiento > fechaDelDia-edadHasta
    fechaNacimientoDesde:=addYears(Date,-StrToInt(Self.EditEdadHasta.Text)-1);
    consulta:=consulta+
      'and fecha_nacimiento > '+delphiDateToSqlDate(
        fechaNacimientoDesde)+' ';
  end;

  if Self.EditEdadHasta.Text<>'' then
  begin
    //and fecha_nacimiento < fechaDelDia-edadDesde
    fechaNacimientoHasta:=addYears(Date,-StrToInt(Self.EditEdadDesde.Text));
    consulta:=consulta+
      'and fecha_nacimiento <= '+delphiDateToSqlDate(
        fechaNacimientoHasta)+' ';
  end;

  if getCodigoComboBox(Self.SG_ComboBoxSexo)<>'' then
    consulta:=consulta+
      'and R.sexo = '+QuotedStr(Self.SG_ComboBoxSexo.toChar)+
        ' ';

  if Self.SG_ComboBoxPiel.getCodigo<>'null' then
    consulta:=consulta+
      'and R.piel_id = '+Self.SG_ComboBoxPiel.getCodigo+' ';

  if Self.SG_ComboBoxCiudad.getCodigo<>'null' then
    consulta:=consulta+
      'and R.ciudad_id = '+Self.SG_ComboBoxCiudad.getCodigo+' ';

  if Self.SG_ComboBoxEstado.getCodigo<>'null' then
    consulta:=consulta+
      'and R.estado_id = '+Self.SG_ComboBoxEstado.getCodigo+' ';

  if Self.EditDocumentoRG.Text<>'' then
    consulta:=consulta+
      'and R.documento_RG = '+QuotedStr(Self.EditDocumentoRG.Text)+' ';

  if Self.EditDocumentoCPF.Text<>'' then
    consulta:=consulta+
      'and R.documento_CPF = '+QuotedStr(Self.EditDocumentoCPF.Text)+' ';

  if Self.EditAlturaDesde.Text<>'' then
    consulta:=consulta+
      'and R.altura >= '+Self.EditAlturaDesde.Text+' ';

  if Self.EditAlturaHasta.Text<>'' then
    consulta:=consulta+
      'and R.altura <= '+Self.EditAlturaHasta.Text+' ';

  if Self.EditPesoDesde.Text<>'' then
    consulta:=consulta+
      'and R.peso >= '+Self.EditPesoDesde.Text+' ';

  if Self.EditPesoHasta.Text<>'' then
    consulta:=consulta+
      'and R.peso <= '+Self.EditPesoHasta.Text+' ';

  if Self.SG_ComboBoxTalle.getCodigo<>'null' then
    consulta:=consulta+
      'and R.talle_id = '+Self.SG_ComboBoxTalle.getCodigo+' ';

  if Self.SG_ComboBoxPelo.getCodigo<>'null' then
    consulta:=consulta+
      'and R.pelo_id = '+Self.SG_ComboBoxPelo.getCodigo+' ';

  if Self.SG_ComboBoxOjos.getCodigo<>'null' then
    consulta:=consulta+
      'and R.ojos_id = '+Self.SG_ComboBoxOjos.getCodigo+' ';

  if Self.EditCalzadoDesde.Text<>'' then
    consulta:=consulta+
      'and calzado >= '+Self.EditCalzadoDesde.Text+' ';

  if Self.EditCalzadoHasta.Text<>'' then
    consulta:=consulta+
      'and calzado <= '+Self.EditCalzadoHasta.Text+' ';

  if Self.SG_ComboBoxEstadoDientes.getCodigo<>'null' then
    consulta:=consulta+
      'and R.estado_dientes_id = '+Self.SG_ComboBoxEstadoDientes.getCodigo+' ';

  if Self.EditTallePantalonDesde.Text<>'' then
    consulta:=consulta+
      'and R.talle_pantalon >= '+Self.EditTallePantalonDesde.Text+' ';

  if Self.EditTallePantalonHasta.Text<>'' then
    consulta:=consulta+
      'and R.talle_pantalon <= '+Self.EditTallePantalonHasta.Text+' ';

  if Self.EditTalleCamisaDesde.Text<>'' then
    consulta:=consulta+
      'and R.talle_camisa >= '+Self.EditTalleCamisaDesde.Text+' ';

  if Self.EditTalleCamisaHasta.Text<>'' then
    consulta:=consulta+
      'and R.talle_camisa <= '+Self.EditTalleCamisaHasta.Text+' ';

  if getCodigoComboBox(Self.SG_ComboBoxBitManeja)<>'' then
    consulta:=consulta+
      'and R.indicador_maneja = '+Self.SG_ComboBoxBitManeja.toBit+' ';

  if getCodigoComboBox(Self.SG_ComboBoxBitTieneRegistro)<>'' then
    consulta:=consulta+
      'and R.indicador_tiene_registro = '+
        Self.SG_ComboBoxBitTieneRegistro.toBit+' ';

  if getCodigoComboBox(Self.SG_ComboBoxBitTrabajaComoExtra)<>'' then
    consulta:=consulta+
      'and R.trabaja_como_extra = '+Self.SG_ComboBoxBitTrabajaComoExtra.toBit+
        ' ';

  consulta:=consulta+
    Self.SG_CheckListBoxDeportes.getWhereCondition('DER.deporte_id');

  consulta:=consulta+
    Self.SG_CheckListBoxIdiomas.getWhereCondition('IDR.idioma_id');

  consulta:=consulta+
    Self.SG_CheckListBoxInstrumentos.getWhereCondition('INR.instrumento_id');

  consulta:=consulta+
    Self.SG_CheckListBoxDanzas.getWhereCondition('DAR.danza_id');

  TSG_DataBase.getInstance.openQuery(consulta,Self.QueryRecursos);

end;

procedure TFormAlternativa.validarParametros;
begin

  SG_Edit.validarDatoNumerico(Self.EditID,'ID');
  SG_Edit.validarDatoNumerico(Self.EditEdadDesde,'Edad Desde');
  SG_Edit.validarDatoNumerico(Self.EditEdadHasta,'Edad Hasta');
  SG_Edit.validarDatoNumerico(Self.EditDocumentoRG,'Documento RG');
  SG_Edit.validarDatoNumerico(Self.EditDocumentoCPF,'Documento CPF');

  SG_Edit.validarDatoNumericoConDecimales(Self.EditAlturaDesde,'Altura Desde');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditAlturaHasta,'Altura Hasta');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditPesoDesde,'Peso Desde');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditPesoHasta,'Peso Hasta');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditCalzadoDesde,
    'Calzado Desde');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditCalzadoHasta,
    'Calzado Hasta');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditTallePantalonDesde,
    'Talle Pantalon Desde');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditTallePantalonHasta,
    'Talle Pantalon Hasta');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditTalleCamisaDesde,
    'Talle Camisa Desde');
  SG_Edit.validarDatoNumericoConDecimales(Self.EditTalleCamisaHasta,
    'Talle Camisa Hasta');

end;

procedure TFormAlternativa.BitBtnBuscarClick(Sender: TObject);
begin
  Self.validarParametros;
  Self.refrescarGrillaRecursos;
end;

procedure TFormAlternativa.BitBtnLimpiarClick(Sender: TObject);
begin
  Self.QueryRecursos.Close;
end;

procedure TFormAlternativa.BitBtnCrearClick(Sender: TObject);
begin
  TFormRecurso.crearRecurso;

  if Self.QueryRecursos.Active=true then
    Self.refrescarGrillaRecursos;
end;

procedure TFormAlternativa.BitBtnVerClick(Sender: TObject);
begin
  TFormRecurso.verRecurso(Self.QueryRecursos['id']);
end;

procedure TFormAlternativa.BitBtnModificarClick(Sender: TObject);
begin
  TFormRecurso.modificarRecurso(Self.QueryRecursos['id']);

  if Self.QueryRecursos.Active=true then
    Self.refrescarGrillaRecursos;
end;

procedure TFormAlternativa.BitBtnBorrarClick(Sender: TObject);
begin

  if SG_Messages.yesNoQuestion('¿Realmente desea eliminar permanentemente el '+
    'recurso '+Self.QueryRecursos['nombre']+' '+Self.QueryRecursos['apellido']+
    '?') then
  begin

    TFormRecurso.eliminarRecurso(Self.QueryRecursos['id']);


    if Self.QueryRecursos.Active=true then
      Self.refrescarGrillaRecursos;
      
  end;
end;

procedure TFormAlternativa.setEstadoBotonesGrillaRecurso(activo:boolean);
begin

  Self.BitBtnVer.Enabled:=activo;
  Self.BitBtnModificar.Enabled:=activo;
  Self.BitBtnBorrar.Enabled:=activo;
  Self.BitBtnEnviarFotosMail.Enabled:=activo;

end;

procedure TFormAlternativa.QueryRecursosAfterOpen(DataSet: TDataSet);
begin
  if Self.QueryRecursos.RecordCount=0 then
    Self.setEstadoBotonesGrillaRecurso(false)
  else
    Self.setEstadoBotonesGrillaRecurso(true);
end;

procedure TFormAlternativa.QueryRecursosAfterClose(DataSet: TDataSet);
begin
  Self.setEstadoBotonesGrillaRecurso(false);
end;

procedure TFormAlternativa.BitBtnEnviarFotosMailClick(Sender: TObject);
begin
  TFormMailFotos.enviarMailFotos(Self.QueryRecursos.sql.Text);
end;



procedure TFormAlternativa.ButtonExcelClick(Sender: TObject);
begin
  Excel2007(Self.DBGridRecursos.DataSource.DataSet,'Alternativa');
end;

end.
