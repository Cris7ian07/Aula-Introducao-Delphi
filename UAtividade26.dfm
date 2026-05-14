object frmAtividade26: TfrmAtividade26
  Left = 0
  Top = 0
  Caption = 'Atividade 26'
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
    Left = 48
    Top = 59
    Width = 104
    Height = 45
    Caption = 'Nome :'
  end
  object lblidade: TLabel
    Left = 40
    Top = 115
    Width = 96
    Height = 45
    Caption = 'Idade :'
  end
  object edtnome: TEdit
    Left = 168
    Top = 56
    Width = 185
    Height = 39
    TabOrder = 0
  end
  object edtidade: TEdit
    Left = 168
    Top = 117
    Width = 161
    Height = 43
    TabOrder = 1
  end
  object edtmensagem: TEdit
    Left = 24
    Top = 200
    Width = 592
    Height = 53
    TabOrder = 2
  end
  object btnidade: TButton
    Left = 384
    Top = 84
    Width = 185
    Height = 53
    Caption = 'Exibir Idade'
    TabOrder = 3
    OnClick = btnidadeClick
  end
end
