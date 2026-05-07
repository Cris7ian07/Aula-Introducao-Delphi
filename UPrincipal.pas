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
    frm43Salario: TButton;
    btnAtividade47: TButton;
    btnAtividade48: TButton;
    btnAtividade49: TButton;
    btnAtividade50: TButton;
    btnAtividade51: TButton;
    btnAtividade52: TButton;
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnAtividade01Click(Sender: TObject);
    procedure btnAtividade27Click(Sender: TObject);
    procedure btnAtividade28Click(Sender: TObject);
    procedure btnMensagemClick(Sender: TObject);
    procedure frm43SalarioClick(Sender: TObject);
    procedure btnAtividade47Click(Sender: TObject);
    procedure btnAtividade48Click(Sender: TObject);
    procedure btnAtividade49Click(Sender: TObject);
    procedure btnAtividade50Click(Sender: TObject);
    procedure btnAtividade51Click(Sender: TObject);
    procedure btnAtividade52Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UExemplo01, UAtividade01, UAtividade27, UAtividade28, UAtividadeM,
  UAtividade43, U43Salario, UAtividade47, UAtividade48, UAtividade49,
  UAtividade50, UAtividade51, UAtividade52;



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

procedure TfrmPrincipal.btnAtividade47Click(Sender: TObject);
begin
 frmAtividade47.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade48Click(Sender: TObject);
begin
  frmAtividade48.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade49Click(Sender: TObject);
begin
 frmAtividade49.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade50Click(Sender: TObject);
begin
 frmAtividade50.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade51Click(Sender: TObject);
begin
  frmAtividade51.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade52Click(Sender: TObject);
begin
  frmAtividade52.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo01Click(Sender: TObject);
begin
  frmExemplo01.ShowModal;
end;

procedure TfrmPrincipal.btnMensagemClick(Sender: TObject);
begin
 frmMensagem.ShowModal;
end;

procedure TfrmPrincipal.frm43SalarioClick(Sender: TObject);
begin
 Atividade43.ShowModal;
end;

end.
