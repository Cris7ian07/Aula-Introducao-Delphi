unit UAtividade49;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade49 = class(TForm)
    btnclick: TButton;
    procedure btnclickClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade49: TfrmAtividade49;

implementation

{$R *.dfm}

procedure TfrmAtividade49.btnclickClick(Sender: TObject);
var
  valorInicial, valorFinal, divisor: Integer;
  i: Integer;
  encontrado: Boolean;
begin

  valorInicial := StrToInt(InputBox('Entrada', 'Digite o valor inicial:', '0'));
  valorFinal := StrToInt(InputBox('Entrada', 'Digite o valor final:', '0'));
  divisor := StrToInt(InputBox('Entrada', 'Digite o valor divisor:', '1'));

  encontrado := False;


  for i := valorInicial to valorFinal do
  begin
    if (i mod divisor = 0) then
    begin
      ShowMessage('Primeiro número divisível encontrado: ' + IntToStr(i));
      encontrado := True;
      Break;
    end;
  end;

  if not encontrado then
    ShowMessage('Nenhum número divisível foi encontrado nessa faixa.');
end;
end.