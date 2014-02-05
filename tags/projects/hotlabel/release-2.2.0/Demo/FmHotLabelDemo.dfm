object DemoForm: TDemoForm
  Left = 412
  Top = 173
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'TPJHotLabel Test'
  ClientHeight = 265
  ClientWidth = 475
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  object hlIndex: TPJHotLabel
    Left = 147
    Top = 10
    Width = 231
    Height = 19
    Hint = 'Visit the DelphiDabbler.com home page.'
    Caption = 'http://www.delphidabbler.com/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -16
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = [fsUnderline]
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clRed
    HighlightFont.Height = -16
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsBold, fsUnderline]
    HighlightURL = True
    URL = 'http://www.delphidabbler.com/'
  end
  object lblIndex: TLabel
    Left = 10
    Top = 10
    Width = 134
    Height = 19
    Caption = 'List of articles on '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object hlArticles: TPJHotLabel
    Left = 10
    Top = 39
    Width = 59
    Height = 15
    Caption = 'Articles list'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsUnderline]
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = [fsUnderline]
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clRed
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HintStyle = hsURL
    URL = 'http://www.delphidabbler.com/articles'
  end
  object hlArticle1: TPJHotLabel
    Left = 30
    Top = 59
    Width = 397
    Height = 15
    Caption = 'How a non-windowed component can receive messages from Windows.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = []
    TrackVisits = True
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clNavy
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HighlightURL = True
    HintStyle = hsCustom
    URL = 'http://www.delphidabbler.com/articles?article=1'
    OnCustomHint = HotLabelArticleHint
  end
  object hlArticle2: TPJHotLabel
    Left = 30
    Top = 79
    Width = 264
    Height = 15
    Caption = 'How to store files inside an executable program.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = []
    TrackVisits = True
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clNavy
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HighlightURL = True
    HintStyle = hsCustom
    URL = 'http://www.delphidabbler.com/articles?article=2'
    OnCustomHint = HotLabelArticleHint
  end
  object hlArticle3: TPJHotLabel
    Left = 30
    Top = 98
    Width = 316
    Height = 15
    Caption = 'How to read data embedded in your program'#39's resources.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = []
    TrackVisits = True
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clNavy
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HighlightURL = True
    HintStyle = hsCustom
    URL = 'http://www.delphidabbler.com/articles?article=3'
    OnCustomHint = HotLabelArticleHint
  end
  object hlArticle4: TPJHotLabel
    Left = 30
    Top = 118
    Width = 295
    Height = 15
    Caption = 'How to remember a window'#39's size, state and position.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = []
    TrackVisits = True
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clNavy
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HighlightURL = True
    HintStyle = hsCustom
    URL = 'http://www.delphidabbler.com/articles?article=4'
    OnCustomHint = HotLabelArticleHint
  end
  object hlArticle5: TPJHotLabel
    Left = 30
    Top = 138
    Width = 382
    Height = 15
    Caption = 
      'How to write filters that extend the functionality of the TStrea' +
      'm classes.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = []
    TrackVisits = True
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clNavy
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HighlightURL = True
    HintStyle = hsCustom
    URL = 'http://www.delphidabbler.com/articles?article=5'
    OnCustomHint = HotLabelArticleHint
  end
  object hlArticle6: TPJHotLabel
    Left = 30
    Top = 158
    Width = 208
    Height = 15
    Caption = 'How to access environment variables.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = []
    TrackVisits = True
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clNavy
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HighlightURL = True
    HintStyle = hsCustom
    URL = 'http://www.delphidabbler.com/articles?article=6'
    OnCustomHint = HotLabelArticleHint
  end
  object hlArticle7: TPJHotLabel
    Left = 30
    Top = 177
    Width = 267
    Height = 15
    Caption = 'How to dynamically add data to an executable file'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = []
    TrackVisits = True
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clNavy
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HighlightURL = True
    HintStyle = hsCustom
    URL = 'http://www.delphidabbler.com/articles?article=7'
    OnCustomHint = HotLabelArticleHint
  end
  object hlArticle8: TPJHotLabel
    Left = 30
    Top = 197
    Width = 230
    Height = 15
    Caption = 'How to detect the types of executable files.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = []
    TrackVisits = True
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clNavy
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HighlightURL = True
    HintStyle = hsCustom
    URL = 'http://www.delphidabbler.com/articles?article=8'
    OnCustomHint = HotLabelArticleHint
  end
  object hlArticle9: TPJHotLabel
    Left = 30
    Top = 217
    Width = 338
    Height = 15
    Caption = 'How to get notified when the content of the clipboard changes.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    CaptionIsURL = False
    VisitedFont.Charset = DEFAULT_CHARSET
    VisitedFont.Color = clBlue
    VisitedFont.Height = -12
    VisitedFont.Name = 'Arial'
    VisitedFont.Style = []
    TrackVisits = True
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clNavy
    HighlightFont.Height = -12
    HighlightFont.Name = 'Arial'
    HighlightFont.Style = [fsUnderline]
    HighlightURL = True
    HintStyle = hsCustom
    URL = 'http://www.delphidabbler.com/articles?article=9'
    OnCustomHint = HotLabelArticleHint
  end
end