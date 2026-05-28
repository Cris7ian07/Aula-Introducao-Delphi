unit Ucomponentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCadastro = class(TForm)
    edtNome: TEdit;
    edtEndereco: TEdit;
    lblNome: TLabel;
    lblEndereço: TLabel;
    gpbSexo: TGroupBox;
    rbtMasc: TRadioButton;
    rbtFem: TRadioButton;
    cbbCidade: TComboBox;
    gpbFrutas: TGroupBox;
    ccbMaca: TCheckBox;
    ccbBanana: TCheckBox;
    ccbUva: TCheckBox;
    ccbMorango: TCheckBox;
    ccbPitaia: TCheckBox;
    ccbManga: TCheckBox;
    mmoRegistros: TMemo;
    btnCadastrar: TButton;
    btnLimpar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    nRegistro : Integer;

  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

procedure TfrmCadastro.btnCadastrarClick(Sender: TObject);
var
  sexo, frutas : String;
  registro : Integer;

begin


  if edtNome.Text = '' then
  begin
    ShowMessage('Nome nao preenchido');
    edtNome.SetFocus;
    Exit;
  end;


  if edtEndereco.Text = '' then
  begin
    ShowMessage(' Endereco nao preenchido');
    edtEndereco.SetFocus;
    Exit;
  end;


  if (rbtMasc.Checked = False) and
     (rbtFem.Checked = False) then
  begin
    ShowMessage('Selecione o sexo');
    Exit;
  end;


  if cbbCidade.ItemIndex = -1 then
  begin
    ShowMessage('Selecione uma cidade');
    cbbCidade.SetFocus;
    Exit;
  end;


  if rbtMasc.Checked then
    sexo := 'Masculino'
  else
    sexo := 'Feminino';


  frutas := '';

  if ccbMaca.Checked then
    frutas := frutas + 'Maca ';

  if ccbBanana.Checked then
    frutas := frutas + 'Banana ';

  if ccbUva.Checked then
    frutas := frutas + 'Uva ';

  if ccbMorango.Checked then
    frutas := frutas + 'Morango ';

  if ccbPitaia.Checked then
    frutas := frutas + 'Pitaia ';

  if ccbManga.Checked then
    frutas := frutas + 'Manga ';

  if frutas = '' then
    frutas := 'Nenhuma fruta selecionada';


  registro := mmoRegistros.Lines.Count + 1;


  mmoRegistros.Lines.Add('Registro nº ' + IntToStr(registro));
  mmoRegistros.Lines.Add('Nome: ' + edtNome.Text);
  mmoRegistros.Lines.Add('Endereco: ' + edtEndereco.Text);
  mmoRegistros.Lines.Add('Sexo: ' + sexo);
  mmoRegistros.Lines.Add('Cidade: ' + cbbCidade.Text);
  mmoRegistros.Lines.Add('Fruta(s) favorita(s): ' + frutas);
  mmoRegistros.Lines.Add('');


  edtNome.Clear;
  edtEndereco.Clear;

  rbtMasc.Checked := False;
  rbtFem.Checked := False;

  cbbCidade.ItemIndex := -1;

  ccbMaca.Checked := False;
  ccbBanana.Checked := False;
  ccbUva.Checked := False;
  ccbMorango.Checked := False;
  ccbPitaia.Checked := False;
  ccbManga.Checked := False;

  edtNome.SetFocus;

end;
end.
