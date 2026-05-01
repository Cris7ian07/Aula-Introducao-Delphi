unit UAtividade47;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade47 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btnclick: TButton;
    lblresultado: TLabel;
    procedure btnclickClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade47: TfrmAtividade47;

implementation

{$R *.dfm}

procedure TfrmAtividade47.btnclickClick(Sender: TObject);
var
   edt:array[1..6] of integer;
   i: integer;


   pares, impares,entrada: string;
begin
   pares := '';
   impares := '';

   edt[1] := StrToInt(edt1.Text);
   edt[2] := StrToInt(edt2.Text);
   edt[3] := StrToInt(edt3.Text);
   edt[4] := StrToInt(edt4.Text);
   edt[5] := StrToInt(edt5.Text);
   edt[6] := StrToInt(edt6.Text);
   for i := 1 to 6 do
  begin

        if (edt[i] mod 2 = 0) then
      pares := pares + IntToStr(edt[i]) + ' '
    else
      impares := impares + IntToStr(edt[i]) + ' ';
  end;

   lblresultado.Caption := 'Pares: ' + pares + ' | Ímpares: ' + impares;
end;

end.
