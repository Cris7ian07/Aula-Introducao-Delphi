unit U43Salario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm43Salario = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    lblValorHora: TLabel;
    edtValorHora: TEdit;
    lblHoraMes: TLabel;
    edtHorasMes: TEdit;
    btnCalcularSalario: TButton;
    lblFunc: TLabel;
    lblSalarioBruto: TLabel;
    lblIR: TLabel;
    lblINSS: TLabel;
    lblSindicato: TLabel;
    lblFGTS: TLabel;
    lblTotalDesc: TLabel;
    lblLiquido: TLabel;
    procedure lblFuncClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm43Salario: Tfrm43Salario;

implementation

{$R *.dfm}

procedure Tfrm43Salario.lblFuncClick(Sender: TObject);
var
  valorHora, horas, salBruto, ir, inss, sindicato, fgts, totalDesc, liquido: Double;
  percIR: Integer;
begin

  valorHora := StrToFloatDef(edtValorHora.Text, 0);
  horas := StrToFloatDef(edtHorasMes.Text, 0);
  salBruto := valorHora * horas;


  if salBruto <= 900 then percIR := 0
  else if salBruto <= 1500 then percIR := 5
  else if salBruto <= 2500 then percIR := 10
  else percIR := 20;


  ir        := salBruto * (percIR / 100);
  inss      := salBruto * 0.11;
  sindicato := salBruto * 0.03;
  fgts      := salBruto * 0.11;


  totalDesc := ir + inss + sindicato;
  liquido   := salBruto - totalDesc;


  lblSalarioBruto.Caption := 'Salário Bruto: R$ ' + FormatFloat('#,##0.00', salBruto);
  lblIR.Caption           := '(-) IR (' + IntToStr(percIR) + '%): R$ ' + FormatFloat('#,##0.00', ir);
  lblINSS.Caption         := '(-) INSS (11%): R$ ' + FormatFloat('#,##0.00', inss);
  lblFGTS.Caption         := 'FGTS (11%): R$ ' + FormatFloat('#,##0.00', fgts);
  lblTotalDesc.Caption    := 'Total de descontos: R$ ' + FormatFloat('#,##0.00', totalDesc);
  lblLiquido.Caption      := 'Salário Líquido: R$ ' + FormatFloat('#,##0.00', liquido);
end;
end.
