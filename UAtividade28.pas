unit UAtividade28;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade28 = class(TForm)
    lbllogin: TLabel;
    edtusuario: TEdit;
    lblnome: TLabel;
    lblsenha: TLabel;
    edtsenha: TEdit;
    btnacessar: TButton;
    procedure btnacessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade28: TfrmAtividade28;

implementation

{$R *.dfm}

procedure TfrmAtividade28.btnacessarClick(Sender: TObject);
begin
var
 senha, usuario : string;
begin
   usuario := edtusuario.text;
   senha := edtsenha.text;
   if (usuario = 'user01 and senha = 147') then
   begin
   ShowMessage ('Acesso Liberado');
   end
   else
   begin
      ShowMessage ('Acesso Negado');
   end;

end;
end;

end.
