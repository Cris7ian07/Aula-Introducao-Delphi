unit UAtividade43;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAtividade43 = class(TForm)
    lblnome: TLabel;
    edtnome: TEdit;
    lblvhora: TLabel;
    edtvhora: TEdit;
    lblhorames: TLabel;
    edthorames: TEdit;
    btncalcularsalario: TButton;
    procedure btncalcularsalarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Atividade43: TAtividade43;

implementation

{$R *.dfm}

procedure TAtividade43.btncalcularsalarioClick(Sender: TObject);
begin
var
 nome, mensagem : String;
 // vhora : Real;
 // horames :Real;
  //erro : Boolean
begin
 nome := edtnome.Text;
 //vhora := StrToFloatDef(edtvhora.Text, 0);
 //horames := StrToFloatDef(edthorames.Text,0);
// erro := False;
 mensagem := 'verifique o erro:' +  sLineBreak;
 //  if (vhora = 0) and (horames = 0) then
begin
  //  erro := True;
   // if vhora = 0  then
begin
   // if( edtvhora.Text =  FloatToStr (vhora))then
 begin
   mensagem := 'Não digite zero,vhora' + sLineBreak;
 end;
end;
   //if horames = 0  then
 begin
     //if( edthorames.Text =  FloatToStr (horames))then
 end;
end;
 end;
end;

end.
