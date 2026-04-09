unit UAtividadeM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMensagem = class(TForm)
    btnOk: TButton;
    btnCancel: TButton;
    lbltexto: TLabel;
    procedure lbltextoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.dfm}

procedure TfrmMensagem.lbltextoClick(Sender: TObject);
var
   mensagem : integer;
begin
     Mensagem :=MessageBox(Application.Handle,
     'Selecione uma opção para exibir seu valor', 'Saída',1);

     ShowMessage('Retorno =' + IntToStr(Mensagem))
end;

end.
