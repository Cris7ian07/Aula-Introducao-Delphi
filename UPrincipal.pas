unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnExemplo01: TButton;
    btnAtividade01: TButton;
    btnExemplo02: TButton;
    btnAtividade02: TButton;
    btnAtividade27: TButton;
    btnAtividade28: TButton;
    btnMensagem: TButton;
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnAtividade01Click(Sender: TObject);
    procedure btnAtividade27Click(Sender: TObject);
    procedure btnAtividade28Click(Sender: TObject);
    procedure btnMensagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UExemplo01, UAtividade01, UAtividade27, UAtividade28, UAtividadeM;



procedure TfrmPrincipal.btnAtividade01Click(Sender: TObject);
begin
  frmAtividade01.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade27Click(Sender: TObject);
begin
   frmAtividade27.ShowModal

end;

procedure TfrmPrincipal.btnAtividade28Click(Sender: TObject);
begin
      frmAtividade28.ShowModal
end;

procedure TfrmPrincipal.btnExemplo01Click(Sender: TObject);
begin
  frmExemplo01.ShowModal;
end;

procedure TfrmPrincipal.btnMensagemClick(Sender: TObject);
begin
 frmMensagem.ShowModal;
end;

end.
