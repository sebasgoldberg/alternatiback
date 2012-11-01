unit MailFotos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, OleServer, Outlook8, Db, DBTables;

type
  TFormMailFotos = class(TForm)
    Label1: TLabel;
    EditDestinatario: TEdit;
    EditAsunto: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    MemoCuerpo: TMemo;
    GroupBox2: TGroupBox;
    DBGridRecursos: TDBGrid;
    BitBtnVer: TBitBtn;
    BitBtnAceptar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    DataSourceRecursos: TDataSource;
    QueryRecursos: TQuery;
    OutlookApplication: TOutlookApplication;
    procedure BitBtnAceptarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnVerClick(Sender: TObject);
  private
    { Private declarations }
    procedure addFotosToMail(mail:Variant);
  public
    { Public declarations }
    class procedure enviarMailFotos(consulta:string);
  end;

var
  FormMailFotos: TFormMailFotos;

implementation

{$R *.DFM}

uses
  SG_Database,
  Recurso;

class procedure TFormMailFotos.enviarMailFotos(consulta:string);
var
  mailFotos:TFormMailFotos;
begin

  Application.CreateForm(TFormMailFotos,mailFotos);

  TSG_DataBase.getInstance.openQuery(consulta,mailFotos.QueryRecursos);

  mailFotos.ShowModal;

end;

procedure TFormMailFotos.addFotosToMail(mail:Variant);
var
  consulta:string;
  query:TQuery;
  blob:TBlobField;
  fileName:string;
  i:integer;
begin

  consulta:=
    'select imagen '+
    'from imagen_recurso '+
    'where recurso_id = '+IntToStr(Self.QueryRecursos['id']);

  query:=TSG_DataBase.getInstance.openQuery(consulta);

  try

    query.First;
    i:=0;

    while not query.Eof do
    begin

      i:=i+1;

      fileName:=ExtractFilePath(ParamStr(0))+
        Self.QueryRecursos['nombre']+'_'+Self.QueryRecursos['apellido']+
        '_'+FormatDateTime('dd-mm-yyyy',Self.QueryRecursos['fecha_nacimiento'])+
        '_'+IntToStr(i)+'.jpg';


      blob:=TBlobField(query.FieldByName('imagen'));

      blob.SaveToFile(fileName);

      mail.Attachments.add(fileName);

      DeleteFile(fileName);

      query.Next;

    end;

  finally

    query.Free;

  end;

end;

procedure TFormMailFotos.BitBtnAceptarClick(Sender: TObject);
var
  mail:Variant;
  i:integer;
begin

  if Self.EditDestinatario.Text='' then
    raise Exception.create('El destinatario es obligatorio');

  if Self.EditAsunto.Text='' then
    raise Exception.create('El asunto es obligatorio');

  if Self.MemoCuerpo.Text='' then
    raise Exception.create('El cuerpo es obligatorio');

  if Self.DBGridRecursos.SelectedRows.Count=0 then
    raise Exception.create('No se han seleccionado recursos');

  mail:=self.OutlookApplication.CreateItem(olMailItem);

  mail.Recipients.Add(Self.EditDestinatario.Text);

  mail.Subject:=Self.EditAsunto.Text;

  mail.Body:=Self.MemoCuerpo.Text;

  for i:=0 to Self.DBGridRecursos.SelectedRows.Count-1 do
  begin

    Self.DBGridRecursos.DataSource.DataSet.GotoBookmark(
      pointer(Self.DBGridRecursos.SelectedRows.Items[i]));

    Self.addFotosToMail(mail);

  end;

  mail.Send;

  Self.Close;

end;

procedure TFormMailFotos.BitBtnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormMailFotos.BitBtnVerClick(Sender: TObject);
begin
  TFormRecurso.verRecurso(Self.QueryRecursos['id']);
end;

end.
