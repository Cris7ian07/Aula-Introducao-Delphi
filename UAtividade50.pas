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
  numero, i: Integer;
  Primo: Boolean;
begin

  numero := StrToInt(InputBox('Entrada', 'Digite um número inteiro:', '0'));


  if numero <= 1 then
  begin
    ShowMessage('Não é número primo.');
    Exit;
  end;

  Primo := True;


  for i := 2 to numero - 1 do
  begin
    if (numero mod i = 0) then
    begin
      Primo := False;
      Break;
    end;
  end;


  if Primo then
    ShowMessage('É número primo.')
  else
    ShowMessage('Não é número primo.');
end;
end.