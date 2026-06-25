unit UAtividade66;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade66 = class(TForm)
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtsenha: TEdit;
    btnTestelogin: TButton;
    procedure btnTesteloginClick(Sender: TObject);
  private
    { Private declarations }
    procedure  ValidarAcesso (SenhaDigitada,UsuarioDigitado: string);
  public
    { Public declarations }
  end;

var
  frmAtividade66: TfrmAtividade66;

implementation

{$R *.dfm}

{ TfrmAtividade66 }

procedure TfrmAtividade66.btnTesteloginClick(Sender: TObject);
begin
  validarAcesso(edtUsuario.Text, edtSenha.Text);
end;

procedure TfrmAtividade66.ValidarAcesso(SenhaDigitada, Usuariodigitado: string);
var
 Usuario_Correto, Senha_Correta : string;
begin
 Usuario_Correto := ' admin';
 Senha_Correta := '1234';
begin
    if (SenhaDigitada = Senha_Correta) and (UsuarioDigitado = Usuario_Correto) then
    begin
    Application.MessageBox(pChar('Usuario e senha correto!') ,'Acesso autorizado', MB_OK + MB_ICONINFORMATION);
    end
    else
    begin
     Application.MessageBox(pChar('Usuario e senha incorreto!') ,'Não autorizado',  MB_OK +MB_ICONINFORMATION);

end;

end;

end;
end.
