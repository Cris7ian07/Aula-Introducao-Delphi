object frm43Salario: Tfrm43Salario
  Left = 0
  Top = 0
  Caption = '43 Salario'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 21
  object lblNome: TLabel
    Left = 8
    Top = 16
    Width = 43
    Height = 21
    Caption = 'Nome'
  end
  object lblValorHora: TLabel
    Left = 8
    Top = 64
    Width = 47
    Height = 21
    Caption = '$ Hora'
  end
  object lblHoraMes: TLabel
    Left = 8
    Top = 120
    Width = 67
    Height = 21
    Caption = 'Hora M'#234's'
  end
  object lblFunc: TLabel
    Left = 8
    Top = 208
    Width = 85
    Height = 21
    Caption = 'Funcion'#225'rio:'
    OnClick = lblFuncClick
  end
  object lblSalarioBruto: TLabel
    Left = 8
    Top = 235
    Width = 97
    Height = 21
    Caption = 'Sal'#225'rio Bruto: '
  end
  object lblIR: TLabel
    Left = 8
    Top = 262
    Width = 41
    Height = 21
    Caption = '(-) IR: '
  end
  object lblINSS: TLabel
    Left = 8
    Top = 289
    Width = 69
    Height = 21
    Caption = ' (-) INSS:  '
  end
  object lblSindicato: TLabel
    Left = 8
    Top = 316
    Width = 87
    Height = 21
    Caption = '(-) Sindicato:'
  end
  object lblFGTS: TLabel
    Left = 8
    Top = 351
    Width = 84
    Height = 21
    Caption = 'FGTS (11%):'
  end
  object lblTotalDesc: TLabel
    Left = 8
    Top = 378
    Width = 132
    Height = 21
    Caption = 'Total de Descontos:'
  end
  object lblLiquido: TLabel
    Left = 8
    Top = 405
    Width = 111
    Height = 21
    Caption = 'Sal'#225'rio L'#237'quido: '
  end
  object edtNome: TEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 29
    TabOrder = 0
  end
  object edtValorHora: TEdit
    Left = 72
    Top = 61
    Width = 121
    Height = 29
    TabOrder = 1
  end
  object edtHorasMes: TEdit
    Left = 81
    Top = 117
    Width = 121
    Height = 29
    TabOrder = 2
  end
  object btnCalcularSalario: TButton
    Left = 144
    Top = 168
    Width = 129
    Height = 33
    Caption = 'Calcular Sal'#225'rio'
    TabOrder = 3
  end
end
