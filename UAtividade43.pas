unit UAtividade43;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAtividade43 = class(TForm)
    lblnome: TLabel;
    edtnome: TEdit;
    lblValorHora: TLabel;
    edtvalorhora: TEdit;
    lblhorames: TLabel;
    edthoras: TEdit;
    btncalcularsalario: TButton;
    lblFunc: TLabel;
    lblSalarioBruto: TLabel;
    lblIR: TLabel;
    lblINSS: TLabel;
    lblSindicato: TLabel;
    lblFGTS: TLabel;
    lblTotalDesc: TLabel;
    lblLiquido: TLabel;
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
var
  valorHora, horas, salarioBruto: Double;

  function CalcularIR(salario: Double): Double;
  begin
    if salario <= 1900 then
      Result := 0
    else if salario <= 3500 then
      Result := salario * 0.05
    else if salario <= 7500 then
      Result := salario * 0.10
    else
      Result := salario * 0.20;
  end;

  function CalcularINSS(salario: Double): Double;
  begin
    Result := salario * 0.10;
  end;

  function CalcularSindicato(salario: Double): Double;
  begin
    Result := salario * 0.03;
  end;

  function CalcularFGTS(salario: Double): Double;
  begin
    Result := salario * 0.11;
  end;

  function CalcularLiquido(salario: Double): Double;
  var
    ir, inss, sindicato: Double;
  begin
    ir := CalcularIR(salario);
    inss := CalcularINSS(salario);
    sindicato := CalcularSindicato(salario);
    Result := salario - (ir + inss + sindicato);
  end;

  procedure MostrarResultado(salarioBruto: Double);
  var
    ir, inss, sindicato, fgts, liquido, totalDesc: Double;
  begin
    ir := CalcularIR(salarioBruto);
    inss := CalcularINSS(salarioBruto);
    sindicato := CalcularSindicato(salarioBruto);
    fgts := CalcularFGTS(salarioBruto);

    totalDesc := ir + inss + sindicato;
    liquido := CalcularLiquido(salarioBruto);

    lblFunc.Caption := 'Funcionário: ' + edtNome.Text;
    lblSalarioBruto.Caption := 'Salário Bruto: R$ ' + FormatFloat('0.00', salarioBruto);
    lblIR.Caption := '(-) IR: R$ ' + FormatFloat('0.00', ir);
    lblINSS.Caption := '(-) INSS: R$ ' + FormatFloat('0.00', inss);
    lblSindicato.Caption := '(-) Sindicato: R$ ' + FormatFloat('0.00', sindicato);
    lblFGTS.Caption := 'FGTS (11%): R$ ' + FormatFloat('0.00', fgts);
    lblTotalDesc.Caption := 'Total de Descontos: R$ ' + FormatFloat('0.00', totalDesc);
    lblLiquido.Caption := 'Salário Líquido: R$ ' + FormatFloat('0.00', liquido);
  end;

begin
  valorHora := StrToFloatDef(edtValorHora.Text, 0);
  horas := StrToFloatDef(edtHoras.Text, 0);
  salarioBruto := valorHora * horas;

  MostrarResultado(salarioBruto);
end;
end.
