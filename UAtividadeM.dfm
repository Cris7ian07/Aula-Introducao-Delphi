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
  object lbltexto: TLabel
    Left = 72
    Top = 48
    Width = 211
    Height = 25
    Caption = 'Mensagem de informa'#231#227'o'
    OnClick = lbltextoClick
  end
  object btnOk: TButton
    Left = 72
    Top = 96
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
  end
  object btnCancel: TButton
    Left = 208
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
  end
end
