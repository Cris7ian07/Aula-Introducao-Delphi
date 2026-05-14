object frmExemplo02: TfrmExemplo02
  Left = 0
  Top = 0
  Caption = 'Exemplo 02'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblsinal: TLabel
    Left = 144
    Top = 43
    Width = 17
    Height = 15
    Caption = '+'
  end
  object edtvlr1: TEdit
    Left = 0
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtvlr2: TEdit
    Left = 200
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object btnresultado: TButton
    Left = 360
    Top = 39
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = btnresultadoClick
  end
end
