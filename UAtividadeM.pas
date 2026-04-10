unit UAtividadeM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMensagem = class(TForm)
    btnOk: TButton;
    btnCancel: TButton;

    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.dfm}

procedure TfrmMensagem.btnOkClick(Sender: TObject);
begin
var
   mensagem : integer;
begin
     mensagem := MessageBox(Application.Handle,
     'Selecione uma opção para exibir seu valor', 'Saída',3);
      if (mensagem = idyes) then
      begin
        MessageBox(Application.Handle,
     'retorno = idyes', 'Saída',0)
     end
      else
      if (mensagem = idno) then
      begin
        MessageBox(Application.Handle,
      'retorno = idno', 'Saída',0)
       end
      else
      if (mensagem = idcancel) then
      begin
        MessageBox(Application.Handle,
      'retorno = idcancel', 'Saída',0)
      end;
      end;

end;







end.
