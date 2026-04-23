unit U43Salario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm43 = class(TForm)
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
  frm43: Tfrm43;

implementation

{$R *.dfm}

procedure Tfrm43.lblFuncClick(Sender: TObject);
var
  valorHora, horas, salBruto, ir, inss, sindicato, fgts, totalDesc, liquido: Double;
  percIR: Integer;
begin
  // 1. Entrada de dados
  valorHora := StrToFloatDef(edtValorHora.Text, 0);
  horas := StrToFloatDef(edtHorasMes.Text, 0);
  salBruto := valorHora * horas;

  // 2. Lógica do IR (conforme regra padrão desse exercício)
  if salBruto <= 900 then percIR := 0
  else if salBruto <= 1500 then percIR := 5
  else if salBruto <= 2500 then percIR := 10
  else percIR := 20;

  // 3. Cálculos de taxas (baseado na sua imagem)
  ir        := salBruto * (percIR / 100);
  inss      := salBruto * 0.11; // 11% conforme o PDF
  sindicato := salBruto * 0.03; // 3% conforme o PDF
  fgts      := salBruto * 0.11; // 11% conforme o PDF

  // 4. Totais (Lembrando: FGTS não é descontado do salário)
  totalDesc := ir + inss + sindicato;
  liquido   := salBruto - totalDesc;

  // 5. Exibição dos resultados (Labels)
  lblSalarioBruto.Caption := 'Salário Bruto: R$ ' + FormatFloat('#,##0.00', salBruto);
  lblIR.Caption           := '(-) IR (' + IntToStr(percIR) + '%): R$ ' + FormatFloat('#,##0.00', ir);
  lblINSS.Caption         := '(-) INSS (11%): R$ ' + FormatFloat('#,##0.00', inss);
  lblFGTS.Caption         := 'FGTS (11%): R$ ' + FormatFloat('#,##0.00', fgts);
  lblTotalDesc.Caption    := 'Total de descontos: R$ ' + FormatFloat('#,##0.00', totalDesc);
  lblLiquido.Caption      := 'Salário Líquido: R$ ' + FormatFloat('#,##0.00', liquido);
end;
end.
