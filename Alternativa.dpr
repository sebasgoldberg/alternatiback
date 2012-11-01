program Alternativa;

uses
  Forms,
  FormMain in 'FormMain.pas' {FormAlternativa},
  Recurso in 'Recurso.pas' {FormRecurso},
  TrabajoRealizado in 'TrabajoRealizado.pas' {FormTrabajoRealizado},
  MailFotos in 'MailFotos.pas' {FormMailFotos},
  SG_Valor in '..\lib\delphi\SG_Valor.pas' {FormValor};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormAlternativa, FormAlternativa);
  Application.Run;
end.
