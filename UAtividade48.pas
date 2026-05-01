unit UAtividade48;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade48 = class(TForm)
    btnclick: TButton;
    procedure btnclickClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade48: TfrmAtividade48;

implementation

{$R *.dfm}

procedure TfrmAtividade48.btnclickClick(Sender: TObject);
var
 numero : integer;
 soma :  integer;
 contador : integer;
 media :real;
begin
 soma := 0;
 contador := 0;

  numero := StrToInt(InputBox('entrar','digite um numero(0 para sair):',''));
   if (numero <> 0) then
begin
    soma := soma + numero;
    contador :=contador + 1;
     numero := StrToInt(InputBox('entrar','digite um numero(0 para sair):',''));
end;
 if contador > 0 then
  media := soma / contador
  else
  media := 0;

  ShowMessage('quantidade: ' +  IntToStr(contador));
  ShowMessage('soma: ' +  IntToStr(soma));
  ShowMessage('media: ' + FloatToStr(media));
end;

end.
