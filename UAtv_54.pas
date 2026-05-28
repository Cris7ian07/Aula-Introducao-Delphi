unit UAtv_54;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAtv_54 = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    lblIdade: TLabel;
    edtIdade: TEdit;
    rgpSexo: TRadioGroup;
    mmoRegistros: TMemo;
    gpbDados: TGroupBox;
    lblNmRegistro: TLabel;
    lblTtHomens: TLabel;
    lblTtMulheres: TLabel;
    lblMaiorIdade: TLabel;
    lblMenorIdade: TLabel;
    lblMediaIdade: TLabel;
    lblNmRegistroV: TLabel;
    lblTtHomensV: TLabel;
    lblTtMulheresV: TLabel;
    lblMaiorIdadeV: TLabel;
    lblMenorIdadeV: TLabel;
    lblMediaIdadeV: TLabel;
    btnInserirDados: TButton;
    btnLimparDados: TButton;
    procedure btnInserirDadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nome, sexo : String;
    registros, idade, qtdHomens, qtdMulheres, idadeMais, idadeMenos, somaIdade : Integer;
    media : Real;
  end;

var
  frmAtv_54: TfrmAtv_54;

implementation

{$R *.dfm}

procedure TfrmAtv_54.btnInserirDadosClick(Sender: TObject);
var
  sexo : String;
  idade : Integer;

begin


  if edtNome.Text = '' then
  begin
    ShowMessage('Digite o nome');
    edtNome.SetFocus;
    Exit;
  end;


  if edtIdade.Text = '' then
  begin
    ShowMessage('Digite a idade');
    edtIdade.SetFocus;
    Exit;
  end;


  if rgpSexo.ItemIndex = -1 then
  begin
    ShowMessage('Selecione o sexo');
    Exit;
  end;

  idade := StrToInt(edtIdade.Text);


  if rgpSexo.ItemIndex = 0 then
  begin
    sexo := 'Masculino';
    qtdHomens := qtdHomens + 1;
  end
  else
  begin
    sexo := 'Feminino';
    qtdMulheres := qtdMulheres + 1;
  end;


  registros := registros + 1;


  somaIdade := somaIdade + idade;


  if idade > idadeMais then
    idadeMais := idade;


  if (idadeMenos = 0) or (idade < idadeMenos) then
    idadeMenos := idade;


  media := somaIdade / registros;


  mmoRegistros.Lines.Add('Cadastro nº: ' + IntToStr(registros));
  mmoRegistros.Lines.Add('Nome: ' + edtNome.Text);
  mmoRegistros.Lines.Add('Idade: ' + IntToStr(idade));
  mmoRegistros.Lines.Add('Sexo: ' + sexo);
  mmoRegistros.Lines.Add('');


  lblNmRegistroV.Caption := IntToStr(registros);
  lblTtHomensV.Caption := IntToStr(qtdHomens);
  lblTtMulheresV.Caption := IntToStr(qtdMulheres);
  lblMaiorIdadeV.Caption := IntToStr(idadeMais);
  lblMenorIdadeV.Caption := IntToStr(idadeMenos);
  lblMediaIdadeV.Caption := FloatToStrF(media, ffFixed, 10, 2);


  edtNome.Clear;
  edtIdade.Clear;

  rgpSexo.ItemIndex := -1;

  edtNome.SetFocus;



  mmoRegistros.Clear;

  registros := 0;
  qtdHomens := 0;
  qtdMulheres := 0;
  idadeMais := 0;
  idadeMenos := 0;
  somaIdade := 0;
  media := 0;

  lblNmRegistroV.Caption := '0';
  lblTtHomensV.Caption := '0';
  lblTtMulheresV.Caption := '0';
  lblMaiorIdadeV.Caption := '0';
  lblMenorIdadeV.Caption := '0';
  lblMediaIdadeV.Caption := '0';

end;

end.
