object frmAtividade66: TfrmAtividade66
  Left = 0
  Top = 0
  Caption = 'Atividade 66'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 45
  object lblUsuario: TLabel
    Left = 24
    Top = 24
    Width = 108
    Height = 45
    Caption = 'Usu'#225'rio'
  end
  object lblSenha: TLabel
    Left = 24
    Top = 96
    Width = 108
    Height = 45
    Caption = 'Senha'
  end
  object edtUsuario: TEdit
    Left = 160
    Top = 21
    Width = 265
    Height = 48
    TabOrder = 0
  end
  object edtsenha: TEdit
    Left = 160
    Top = 96
    Width = 265
    Height = 45
    TabOrder = 1
  end
  object btnTestelogin: TButton
    Left = 96
    Top = 176
    Width = 281
    Height = 49
    Caption = 'Teste Login'
    TabOrder = 2
    OnClick = btnTesteloginClick
  end
end
