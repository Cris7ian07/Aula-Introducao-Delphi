object Atividade43: TAtividade43
  Left = 0
  Top = 0
  Caption = 'frmAtividade43'
  ClientHeight = 510
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 25
  object lblnome: TLabel
    Left = 8
    Top = 8
    Width = 60
    Height = 25
    Caption = 'Nome :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblValorHora: TLabel
    Left = 8
    Top = 47
    Width = 65
    Height = 25
    Caption = '$ Hora :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblhorames: TLabel
    Left = 8
    Top = 90
    Width = 89
    Height = 25
    Caption = 'Hora m'#234's :'
  end
  object lblFunc: TLabel
    Left = 8
    Top = 184
    Width = 119
    Height = 25
    Caption = ' Funcion'#225'rio:  '
  end
  object lblSalarioBruto: TLabel
    Left = 8
    Top = 223
    Width = 118
    Height = 25
    Caption = 'Sal'#225'rio Bruto: '
  end
  object lblIR: TLabel
    Left = 8
    Top = 254
    Width = 40
    Height = 25
    Caption = '(-)IR:'
  end
  object lblINSS: TLabel
    Left = 8
    Top = 285
    Width = 73
    Height = 25
    Caption = '(-) INSS: '
  end
  object lblSindicato: TLabel
    Left = 8
    Top = 316
    Width = 107
    Height = 25
    Caption = '(-) Sindicato:'
  end
  object lblFGTS: TLabel
    Left = 8
    Top = 347
    Width = 109
    Height = 25
    Caption = ' FGTS (11%): '
  end
  object lblTotalDesc: TLabel
    Left = 8
    Top = 378
    Width = 162
    Height = 25
    Caption = 'Total de Descontos:'
  end
  object lblLiquido: TLabel
    Left = 8
    Top = 409
    Width = 130
    Height = 25
    Caption = 'Sal'#225'rio L'#237'quido:'
  end
  object edtnome: TEdit
    Left = 74
    Top = 8
    Width = 161
    Height = 33
    TabOrder = 0
  end
  object edtvalorhora: TEdit
    Left = 76
    Top = 47
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
  object edthoras: TEdit
    Left = 114
    Top = 90
    Width = 121
    Height = 33
    TabOrder = 2
  end
  object btncalcularsalario: TButton
    Left = 56
    Top = 129
    Width = 241
    Height = 49
    Caption = 'Calcular Sal'#225'rio'
    TabOrder = 3
    OnClick = btncalcularsalarioClick
  end
end
