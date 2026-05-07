unit UAtividade52;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade52 = class(TForm)
    btnclick: TButton;
    procedure btnclickClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade52: TfrmAtividade52;

implementation

{$R *.dfm}

procedure TfrmAtividade52.btnclickClick(Sender: TObject);
var
  num, i, fatorial: Integer;
begin

  num := StrToInt(InputBox('Entrada', 'Digite um número:', '0'));


  fatorial := 1;


  for i := num downto 1 do
  begin
    fatorial := fatorial * i;
  end;


  ShowMessage('O fatorial de ' + IntToStr(num) +
              ' é: ' + IntToStr(fatorial));
end;
end.
