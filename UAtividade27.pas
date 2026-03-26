unit UAtividade27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade27 = class(TForm)
    edttexto1: TEdit;
    edttexto2: TEdit;
    edttexto3: TEdit;
    edttexto4: TEdit;
    lblnota1: TLabel;
    lblnota2: TLabel;
    lblnota3: TLabel;
    lblnota4: TLabel;
    lblmedia: TLabel;
    lblNome: TLabel;
    edtnome: TEdit;
    btnmedia: TButton;
    edtmedia: TEdit;
    edttexto: TEdit;
    procedure btnmediaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade27: TfrmAtividade27;

implementation

{$R *.dfm}

procedure TfrmAtividade27.btnmediaClick(Sender: TObject);
var
n1, n2, n3, n4, media:Double;
begin
    n1:= StrToFloat(edttexto1.text);
    n2:= StrToFloat(edttexto2.text);
    n3:= StrToFloat(edttexto3.text);
    n4:= StrToFloat(edttexto4.text);
    media:= (n1+n2+n3+n4)/4;
    edtmedia.Text :=  FloatToStr(media);
end;

end.
