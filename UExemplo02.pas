unit UExemplo02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo02 = class(TForm)
    edtvlr1: TEdit;
    edtvlr2: TEdit;
    lblsinal: TLabel;
    btnresultado: TButton;
    procedure btnresultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo02: TfrmExemplo02;

implementation

{$R *.dfm}

procedure TfrmExemplo02.btnresultadoClick(Sender: TObject);
var
n1,n2, total : Integer;
begin
     n1 := StrToInt(edtvlr1.Text);
     n2 := StrToInt(edtvlr2.Text);
      total := n1 + n2;
      btnresultado.Caption := IntToStr(total);
end;

end.
