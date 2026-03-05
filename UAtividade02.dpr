program UAtividade02;

uses
  Vcl.Forms,
  UPrincipal in 'J:\2º Módulo\DES\Turma A\Aula-Introducao-Delphi\UPrincipal.pas' {frmPrincipal},
  UExemplo01 in 'J:\2º Módulo\DES\Turma A\Aula-Introducao-Delphi\UExemplo01.pas' {frmExemplo01},
  UAtividade01 in 'J:\2º Módulo\DES\Turma A\Aula-Introducao-Delphi\UAtividade01.pas' {frmAtividade01},
  UExemplo02 in 'J:\2º Módulo\DES\Turma A\Aula-Introducao-Delphi\UExemplo02.pas' {frmExemplo02};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmExemplo01, frmExemplo01);
  Application.CreateForm(TfrmAtividade01, frmAtividade01);
  Application.CreateForm(TfrmExemplo02, frmExemplo02);
  Application.Run;
end.
