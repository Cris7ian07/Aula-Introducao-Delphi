object Atividade43: TAtividade43
  Left = 0
  Top = 0
  Caption = 'frmAtividade43'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 45
  object lblnome: TLabel
    Left = 72
    Top = 32
    Width = 90
    Height = 38
    Caption = 'Nome :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblvhora: TLabel
    Left = 72
    Top = 96
    Width = 105
    Height = 45
    Caption = 'VHora :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblhorames: TLabel
    Left = 72
    Top = 168
    Width = 153
    Height = 45
    Caption = 'Hora m'#234's :'
  end
  object edtnome: TEdit
    Left = 208
    Top = 32
    Width = 161
    Height = 53
    TabOrder = 0
  end
  object edtvhora: TEdit
    Left = 208
    Top = 96
    Width = 161
    Height = 53
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edthorames: TEdit
    Left = 248
    Top = 165
    Width = 121
    Height = 53
    TabOrder = 2
  end
  object btncalcularsalario: TButton
    Left = 96
    Top = 240
    Width = 241
    Height = 49
    Caption = 'Calcular Sal'#225'rio'
    TabOrder = 3
    OnClick = btncalcularsalarioClick
  end
end
