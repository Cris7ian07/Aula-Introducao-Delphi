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
  num, soma, contador: Integer;
  media: Real;
begin
  soma := 0;
  contador := 0;


  num := StrToInt(InputBox('Entrada', 'Digite um número (0 para sair):', '0'));


  while num <> 0 do
  begin
    soma := soma + num;
    contador := contador + 1;


    num := StrToInt(InputBox('Entrada', 'Digite outro número (0 para sair):', '0'));
  end;


  if contador > 0 then
    media := soma / contador
  else
    media := 0;


  ShowMessage(
    'Quantidade de números: ' + IntToStr(contador) + #13#10 +
    'Soma: ' + IntToStr(soma) + #13#10 +
    'Média: ' + FloatToStr(media)
  );
end;
end.
