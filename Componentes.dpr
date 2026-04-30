program Componentes;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UExemplo01 in 'UExemplo01.pas' {frmExemplo01},
  UAtividade01 in 'UAtividade01.pas' {frmAtividade01},
  UAtividade27 in 'UAtividade27.pas' {frmAtividade27},
  UAtividade28 in 'UAtividade28.pas' {frmAtividade28},
  UAtividadeM in 'UAtividadeM.pas' {frmMensagem},
  UAtividade43 in 'UAtividade43.pas' {Atividade43},
  U43Salario in 'U43Salario.pas' {frm43Salario},
  UAtividade47 in 'UAtividade47.pas' {frmAtividade47};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmExemplo01, frmExemplo01);
  Application.CreateForm(TfrmAtividade01, frmAtividade01);
  Application.CreateForm(TfrmAtividade27, frmAtividade27);
  Application.CreateForm(TfrmAtividade28, frmAtividade28);
  Application.CreateForm(TfrmMensagem, frmMensagem);
  Application.CreateForm(TAtividade43, Atividade43);
  Application.CreateForm(Tfrm43Salario, frm43Salario);
  Application.CreateForm(TfrmAtividade47, frmAtividade47);
  Application.Run;
end.
