object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 253
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 64
    Top = 160
    Width = 153
    Height = 25
    Caption = 'Show Country Name'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 32
    Width = 153
    Height = 25
    Caption = 'set GB (enum)'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 63
    Width = 153
    Height = 25
    Caption = 'set BE (enum)'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 224
    Top = 32
    Width = 153
    Height = 25
    Caption = 'set GB (Service)'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 224
    Top = 63
    Width = 153
    Height = 25
    Caption = 'set BE Service)'
    TabOrder = 4
    OnClick = Button5Click
  end
end
