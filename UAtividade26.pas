unit UAtividade26;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade26 = class(TForm)
    edtnome: TEdit;
    edtidade: TEdit;
    edtmensagem: TEdit;
    btnidade: TButton;
    lblnome: TLabel;
    lblidade: TLabel;
    procedure btnidadeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade26: TfrmAtividade26;

implementation

{$R *.dfm}

procedure TfrmAtividade26.btnidadeClick(Sender: TObject);
var
  idadeAtual, idadeDepois: integer;
begin
   idadeAtual := StrToInt(edtidade.Text);
   idadeDepois := idadeAtual + 25;

   edtmensagem.Text := edtnome.Text
   + ' Daqui a 25 anos você vai ter '
   + IntToStr(idadeDepois)  + ' anos! ';



end;

end.
