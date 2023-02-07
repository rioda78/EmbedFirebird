object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 424
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnkonek: TButton
    Left = 232
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Konek'
    TabOrder = 0
    OnClick = btnkonekClick
  end
  object Memo1: TMemo
    Left = 0
    Top = 272
    Width = 618
    Height = 152
    Align = alBottom
    TabOrder = 1
  end
  object EDDB: TLabeledEdit
    Left = 64
    Top = 123
    Width = 465
    Height = 23
    EditLabel.Width = 58
    EditLabel.Height = 15
    EditLabel.Caption = 'DATABASE'#39
    TabOrder = 2
    Text = 
      'C:\Users\rioda\Documents\GitHub\EmbedFirebird\Win32\Debug\TESTDB' +
      '.FDB'
  end
  object koneksi: TUniConnection
    ProviderName = 'interBase'
    Port = 3050
    LoginPrompt = False
    Left = 72
    Top = 160
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 304
    Top = 224
  end
end
