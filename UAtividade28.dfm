object frmAtividade28: TfrmAtividade28
  Left = 0
  Top = 0
  Caption = 'Atividade28'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbllogin: TLabel
    Left = 120
    Top = 16
    Width = 35
    Height = 15
    Caption = 'LOGIN'
  end
  object lblnome: TLabel
    Left = 40
    Top = 74
    Width = 43
    Height = 15
    Caption = 'Usuario:'
  end
  object lblsenha: TLabel
    Left = 40
    Top = 103
    Width = 35
    Height = 15
    Caption = 'Senha:'
  end
  object edtusuario: TEdit
    Left = 112
    Top = 71
    Width = 129
    Height = 23
    TabOrder = 0
  end
  object edtsenha: TEdit
    Left = 112
    Top = 100
    Width = 129
    Height = 23
    TabOrder = 1
  end
  object btnacessar: TButton
    Left = 128
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Acessar'
    TabOrder = 2
    OnClick = btnacessarClick
  end
end
