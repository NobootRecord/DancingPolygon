object Form1: TForm1
  Left = 195
  Top = 160
  Width = 818
  Height = 647
  Caption = 'Dancing Polygon'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 120
  TextHeight = 16
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 801
    Height = 601
    IncrementalDisplay = True
    PopupMenu = PopupMenu1
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 216
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 144
    object A1: TMenuItem
      Caption = 'About...'
      OnClick = A1Click
    end
    object S2: TMenuItem
      Caption = 'Fill a figure...'
      Checked = True
      OnClick = S2Click
    end
    object C1: TMenuItem
      Caption = 'Leave a track...'
      Checked = True
      OnClick = C1Click
    end
    object S1: TMenuItem
      Caption = 'Select color...'
      OnClick = S1Click
    end
    object C2: TMenuItem
      Caption = 'Shimmer with colors...'
      Checked = True
      OnClick = C2Click
    end
    object E2: TMenuItem
      Caption = 'Export as Bitmap...'
      OnClick = E2Click
    end
    object P1: TMenuItem
      Caption = 'Pause...'
      OnClick = P1Click
    end
    object R1: TMenuItem
      Caption = 'Reset...'
      OnClick = R1Click
    end
    object E1: TMenuItem
      Caption = 'Quit...'
      OnClick = E1Click
    end
  end
  object ColorDialog1: TColorDialog
    Left = 392
    Top = 160
  end
  object SavePictureDialog1: TSavePictureDialog
    Filter = 'Bitmap|*.bmp'
    Options = [ofReadOnly, ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Export as Bitmap...'
    Left = 168
    Top = 216
  end
end
