object Form2: TForm2
  Left = 474
  Top = 269
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Options'
  ClientHeight = 173
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 123
    Height = 16
    Caption = 'Dancing Polygon 1.0'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 247
    Height = 16
    Caption = 'Written in pure Delphi 7 by NobootRecord'
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 56
    Width = 257
    Height = 17
    Caption = 'Solid brush'
    TabOrder = 0
  end
  object CheckBox2: TCheckBox
    Left = 8
    Top = 80
    Width = 257
    Height = 17
    Caption = 'Clear canvas after drawing'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 104
    Width = 265
    Height = 25
    Caption = 'Select a color'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 136
    Width = 265
    Height = 25
    Caption = 'Restart'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ColorDialog1: TColorDialog
    Left = 200
    Top = 8
  end
end
