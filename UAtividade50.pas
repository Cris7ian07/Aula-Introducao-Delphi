unit UAtividade50;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade50 = class(TForm)
    btnclick: TButton;
    procedure btnclickClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade50: TfrmAtividade50;

implementation

{$R *.dfm}

procedure TfrmAtividade50.btnclickClick(Sender: TObject);
var
  num, i: Integer;
  ehPrimo: Boolean;
begin

  num := StrToInt(InputBox('Entrada', 'Digite um número inteiro:', '0'));


  if num <= 1 then
  begin
    ShowMessage('Não é número primo.');
    Exit;
  end;

  ehPrimo := True;


  for i := 2 to num - 1 do
  begin
    if (num mod i = 0) then
    begin
      ehPrimo := False;
      Break;
    end;
  end;


  if ehPrimo then
    ShowMessage('É número primo.')
  else
    ShowMessage('Não é número primo.');
end;
end.