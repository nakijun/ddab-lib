object DemoForm: TDemoForm
  Left = 300
  Top = 122
  BorderStyle = bsDialog
  Caption = 'Clipboard Viewer Component Demo'
  ClientHeight = 513
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 15
  object Button1: TButton
    Left = 10
    Top = 10
    Width = 159
    Height = 31
    Caption = 'View Clipboard Text'
    Enabled = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 54
    Width = 655
    Height = 459
    Align = alBottom
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object PJCBViewer1: TPJCBViewer
    OnClipboardChanged = PJCBViewer1ClipboardChanged
    Left = 424
    Top = 8
  end
end
