object frmMensagem: TfrmMensagem
  Left = 0
  Top = 0
  Caption = 'Mensagem'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnOk: TButton
    Left = 72
    Top = 56
    Width = 105
    Height = 65
    Caption = 'messageBox'
    TabOrder = 0
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 208
    Top = 56
    Width = 97
    Height = 65
    Caption = 'inputbox'
    TabOrder = 1
  end
end
