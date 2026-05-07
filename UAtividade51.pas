unit UAtividade51;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade51 = class(TForm)
    btnclick: TButton;
    procedure btnclickClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade51: TfrmAtividade51;

implementation

{$R *.dfm}

procedure TfrmAtividade51.btnclickClick(Sender: TObject);
var
  inicio, fim, i, j: Integer;
  resultado: String;
begin

  inicio := StrToInt(InputBox('Entrada', 'Digite o valor inicial:', '1'));
  fim := StrToInt(InputBox('Entrada', 'Digite o valor final:', '10'));


  for i := inicio to fim do
  begin
    resultado := 'Tabuada do ' + IntToStr(i) + ':' + #13#10;

    for j := 1 to 10 do
    begin
      resultado := resultado +
        IntToStr(i) + ' x ' + IntToStr(j) + ' = ' + IntToStr(i * j) + #13#10;
    end;


    ShowMessage(resultado);
  end;
end;
  end.