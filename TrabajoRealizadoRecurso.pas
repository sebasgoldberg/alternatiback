unit TrabajoRealizadoRecurso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls;

type
  TFormTrabajoRealizadoRecurso = class(TForm)
    GroupBox1: TGroupBox;
    BitBtnAceptar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    EditID: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditNombre: TEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    ComboBoxPiel: TComboBox;
    Label5: TLabel;
    DateTimePickerFechaTrabajo: TDateTimePicker;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    class function crearFormTrabajoRealizadoRecurso:TFormTrabajoRealizadoRecurso;
    class procedure crearTrabajoRealizadoRecurso;

  end;

var
  FormTrabajoRealizadoRecurso:TFormTrabajoRealizadoRecurso;

implementation

{$R *.DFM}

class function crearFormTrabajoRealizadoRecurso:TFormTrabajoRealizadoRecurso;
begin

  Application.CreateForm(TFormTrabajoRealizadoRecurso,Result);

end;

class procedure crearTrabajoRealizadoRecurso;
var
  trabajoRealizado:TFormTrabajoRealizadoRecurso;
begin

  trabajoRealizado:=TFormTrabajoRealizadoRecurso.crearFormRecurso;
  trabajoRealizado.ShowModal;

end;

end.
