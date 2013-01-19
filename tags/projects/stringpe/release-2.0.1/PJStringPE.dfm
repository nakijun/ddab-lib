object PJStringPEDlg: TPJStringPEDlg
  Left = 645
  Top = 163
  Width = 505
  Height = 470
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'String & TCaption editor'
  Color = clBtnFace
  Constraints.MinHeight = 394
  Constraints.MinWidth = 468
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  HelpFile = 'PJMessageDialog.hlp'
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object toolBar: TToolBar
    Left = 0
    Top = 0
    Width = 489
    Height = 33
    BorderWidth = 2
    Caption = 'toolBar'
    Images = imageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object tbSelectAll: TToolButton
      Left = 0
      Top = 2
      Action = actSelectAll
    end
    object tbClearText: TToolButton
      Left = 23
      Top = 2
      Action = actClear
    end
    object tbSeparator1: TToolButton
      Left = 46
      Top = 2
      Width = 8
      Caption = 'tbSeparator1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tbPasteOver: TToolButton
      Left = 54
      Top = 2
      Action = actPasteOver
    end
    object tbCopyAll: TToolButton
      Left = 77
      Top = 2
      Action = actCopyAll
    end
    object tbSeparator2: TToolButton
      Left = 100
      Top = 2
      Width = 8
      Caption = 'tbSeparator2'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tbUndo: TToolButton
      Left = 108
      Top = 2
      Action = actUndo
    end
    object tbSeparator3: TToolButton
      Left = 131
      Top = 2
      Width = 8
      Caption = 'tbSeparator3'
      Enabled = False
      ImageIndex = 7
      Style = tbsSeparator
    end
    object tbLoad: TToolButton
      Left = 139
      Top = 2
      Action = actLoad
    end
    object tbSave: TToolButton
      Left = 162
      Top = 2
      Action = actSave
    end
    object tbSeparator4: TToolButton
      Left = 185
      Top = 2
      Width = 8
      Caption = 'tbSeparator4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tbHelp: TToolButton
      Left = 193
      Top = 2
      Action = actHelp
    end
  end
  object edText: TMemo
    Left = 0
    Top = 33
    Width = 489
    Height = 359
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object pnlButton: TPanel
    Left = 0
    Top = 392
    Width = 489
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      489
      40)
    object btnOK: TButton
      Left = 323
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
    object btnCancel: TButton
      Left = 406
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 2
    end
    object cbWordWrap: TCheckBox
      Left = 8
      Top = 6
      Width = 119
      Height = 27
      Anchors = [akLeft, akBottom]
      Caption = 'Word &Wrap'#13#10
      TabOrder = 0
      OnClick = cbWordWrapClick
    end
  end
  object dlgOpen: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 24
    Top = 80
  end
  object dlgSave: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 24
    Top = 128
  end
  object actionList: TActionList
    Images = imageList
    Left = 24
    Top = 176
    object actLoad: TAction
      Caption = 'actLoad'
      Hint = 'Load from file'
      ImageIndex = 2
      ShortCut = 16460
      OnExecute = actLoadExecute
    end
    object actSave: TAction
      Caption = 'actSave'
      Hint = 'Save to file'
      ImageIndex = 1
      ShortCut = 16467
      OnExecute = actSaveExecute
    end
    object actClear: TAction
      Caption = 'actClear'
      Hint = 'Clear all text'
      ImageIndex = 3
      ShortCut = 16430
      OnExecute = actClearExecute
    end
    object actSelectAll: TAction
      Caption = 'actSelectAll'
      Hint = 'Select all text'
      ImageIndex = 0
      ShortCut = 16449
      OnExecute = actSelectAllExecute
      OnUpdate = actSelectAllUpdate
    end
    object actPasteOver: TAction
      Caption = 'actPasteOver'
      Hint = 'Paste over text'
      ImageIndex = 5
      ShortCut = 24662
      OnExecute = actPasteOverExecute
      OnUpdate = actPasteOverUpdate
    end
    object actCopyAll: TAction
      Caption = 'actCopyAll'
      Hint = 'Copy all text'
      ImageIndex = 4
      ShortCut = 24643
      OnExecute = actCopyAllExecute
      OnUpdate = actCopyAllUpdate
    end
    object actUndo: TAction
      Caption = 'actUndo'
      Hint = 'Undo'
      ImageIndex = 6
      ShortCut = 16474
      OnExecute = actUndoExecute
      OnUpdate = actUndoUpdate
    end
    object actHelp: TAction
      Caption = 'actHelp'
      Hint = 'Online help'
      ImageIndex = 7
      ShortCut = 112
      OnExecute = actHelpExecute
    end
  end
  object imageList: TImageList
    Left = 24
    Top = 224
    Bitmap = {
      494C010108000900240010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000046A0B90046A0
      B90046A0B90046A0B90046A0B90046A0B90046A0B90046A0B90046A0B90046A0
      B90046A0B9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CB6413000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D5500006D5500006D5500006D5500006D5500006D5500000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50000000000000000000000000046A0B90007F3FC0007F3
      FC0007F3FC0007F3FC0007F3FC0007F3FC0007F3FC0007F3FC0007F3FC0007F3
      FC0007F3FC0046A0B90000000000000000000000000000000000000000000000
      0000000000000000000000000000D5730A00DD861C00F4DBC100000000000000
      0000000000000000000000000000000000000000000000000000000000006D55
      00006D550000EFD39900EED19900EDD09900EDCE9900EDCD9900ECCB99006D55
      00006D5500000000000000000000000000000000000000000000000000000000
      000000000000A5A5A5006FFDFD00D5A0870094FCFC00D5A0870094FCFC00D5A0
      870094FCFC00D5A08700A5A5A500000000000000000046A0B90011E6F900BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB0011E6
      F90011E6F90046A0B90000000000000000000000000000000000000000000000
      000000000000FCF8F600DCA17F00D7740900E58C0000DF830D00EFC89900FEFC
      FA000000000000000000000000000000000000000000000000006D550000F0D8
      9900EFD69900D7950000D6910000D48D0000D3890000D2850000D1820000ECCB
      9900ECCA99006D550000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E00A5A5A500D5A0870090F8F800C0C0C000C0C0C00090F8F800C0C0
      C00090F8F80090F8F800A5A5A500000000000000000046A0B900BBBBBB00F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600BBBBBB00EFEFEF00BBBB
      BB0018DDF60046A0B9000000000000000000000000000000000000000000FDFC
      FC00DEAD9200D17D3700D97D0B00E28A0700E58C0400E1830100DD7A0700E8AC
      6900FCF6EF00000000000000000000000000000000006D550000F1DB9900DAA1
      0000D99D0000D8990000D7950000D6910000D48D0000D3890000D2850000D182
      0000D07E0000ECCA99006D55000000000000000000008E8E8E00FAFAFA00FAFA
      FA00FAFAFA00A5A5A5006CFAFA008EF7F7008EF7F7008EF7F7008EF7F7008EF7
      F7008EF7F700D5A08700A5A5A500000000000000000046A0B900BBBBBB00D5A0
      870077FFFC00D38F6E0077FFFC00D5A0870077FFFC00BBBBBB00FFFFFF00FFFF
      FF00BBBBBB0046A0B90000000000000000000000000000000000F9F3F100C77A
      5200D97D0D00EB9C0F00EA9B0900E9980A00E58F0C00E1850A00EAAD3300E29A
      3200F1C79C00000000000000000000000000000000006D550000F1DC9900DCA5
      0000DAA10000D99D0000D8990000FFFFFF00FFFFFF00D48D0000D3890000D285
      0000D1820000ECCB99006D55000000000000000000008E8E8E00F2F2F200C0C0
      C000C0C0C000A5A5A500D5A087008CF5F500C0C0C0008CF5F500C0C0C000C0C0
      C0008CF5F5008CF5F500A5A5A500000000000000000046A0B900BBBBBB0077FF
      FC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC00BBBBBB00BBBB
      BB00BBBBBB0046A0B900000000000000000000000000FDFBFB00CE907200DB83
      1400F2AD1C00EFAA1D00F2C04700EFB84200E8961300F2C25800DB923F00E8B9
      9A00000000000000000000000000000000006D550000F3E09B00DEAC0000DDA8
      0000DCA50000DAA10000D99D0000FFFFFF00FFFFFF00D6910000D48D0000D389
      0000D2850000D1820000ECCB99006D550000000000008E8E8E00EFEFEF00EFEF
      EF00EFEFEF00A5A5A5006CFAFA008EF7F7008EF7F7008EF7F7008EF7F7008EF7
      F7008EF7F700D5A08700A5A5A500000000000000000046A0B900BBBBBB00D38F
      6E0077FFFC00C0C0C000C0C0C000C0C0C00077FFFC00C0C0C00077FFFC00D38F
      6E00BBBBBB0046A0B900000000000000000000000000E2C1B200CA6C1400F6BD
      2C00F2B82D00E9AF4600D3803E00E3A13E00F8D67800DD985E00F2DBD0000000
      0000000000000000000000000000000000006D550000F4E39E00E1B20400DEAC
      0000DDA80000DCA50000DAA10000D99D0000D8990000D7950000D6910000D48D
      0000D3890000D2850000EDCD99006D550000000000008E8E8E00EBEBEB00C0C0
      C000EBEBEB00A5A5A500D5A087006DFBFB00C0C0C000C0C0C00090F8F800C0C0
      C00090F8F80090F8F800A5A5A500000000000000000046A0B900BBBBBB0077FF
      FC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC0077FF
      FC00BBBBBB0046A0B900000000000000000000000000C47A4E00ECAB2D00F5C3
      3B00ECB03600DA9D7600E8C2AB00E7B56600DC9D5F00FAF3EF00000000000000
      0000000000000000000000000000000000006D550000F6E6A200E4B90D00E1B2
      0400DEAC0000DDA80000DCA50000FFFFFF00FFFFFF00D8990000D7950000D691
      0000D48D0000D3890000EDCE99006D550000000000008E8E8E00EFEFEF00EFEF
      EF00EFEFEF00A5A5A5006EFCFC0091FAFA0091FAFA0091FAFA0091FAFA0091FA
      FA0091FAFA00D5A08700A5A5A500000000000000000046A0B900BBBBBB00D5A0
      870077FFFC00C0C0C000C0C0C00077FFFC00C0C0C000C0C0C00077FFFC00D5A0
      8700BBBBBB0046A0B900000000000000000000000000CB793900F5C74600F8CC
      4800DB8C2700F1DBD00000000000D88F5A00000000000000000000000000F6DC
      B600F7DEB500F8E2B300FBEBC600000000006D550000F7E9A700E8C11700E4B9
      0D00E1B20400DEAC0000DDA80000FFFFFF00FFFFFF00FFFFFF00D8990000D795
      0000D6910000D48D0000EDD099006D550000000000008E8E8E00F2F2F200C0C0
      C000C0C0C000A5A5A500D5A0870093FBFB00D5A087006FFCFC00D5A0870093FB
      FB00A5A5A500A5A5A500A5A5A500000000000000000046A0B900BBBBBB0077FF
      FC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC0077FF
      FC00BBBBBB0046A0B900000000000000000000000000D3873F00F6CF5600FAD3
      5700DB8F3D000000000000000000000000000000000000000000F5D9B600EAA2
      2D00F3C34800F4C64900F5CA5B00000000006D550000F9EDAD00ECC92400E8C1
      1700E4B90D00E1B20400DEAC0000DDA80000DCA50000FFFFFF00FFFFFF00D899
      0000D7950000D6910000EED199006D550000000000008E8E8E00F5F5F500F5F5
      F500F5F5F500A5A5A500FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00A5A5
      A500EBEBEB00EBEBEB00A5A5A500000000000000000046A0B900BBBBBB00D38F
      6E0077FFFC00D5A0870077FFFC00D38F6E0077FFFC00D5A0870077FFFC00D38F
      6E00BBBBBB0046A0B900000000000000000000000000C8763C00F9D76100FEE0
      6900E2A03700EBCBBB0000000000000000000000000000000000F4D6B300F1BD
      4600FADD6800F9D86600F5CA5C00000000006D550000FBF0B200F0D13100ECC9
      2400E8C11700FFFFFF00FFFFFF00DEAC0000DDA80000FFFFFF00FFFFFF00D99D
      0000D8990000D7950000EFD399006D550000000000008E8E8E00F8F8F800C0C0
      C000F8F8F800A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5
      A500FFFFFF00A5A5A50000000000000000000000000046A0B900BBBBBB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BBBBBB0046A0B900000000000000000000000000CC8D6900EDBB4B00FFEA
      7A00F9D76600D4874300F6E7DE000000000000000000F9ECDF00EAAE5200FADB
      6900FCE07300F8D86B00F6D37F0000000000000000006D550000FBF0B200F0D1
      3100ECC92400E8C11700FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCA50000DAA1
      0000D99D0000EFD699006D55000000000000000000008E8E8E00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5000000000000000000000000000000000046A0B90002FAFE00BBBB
      BB00426E9C00426E9C00426E9C00426E9C00426E9C00426E9C00426E9C00BBBB
      BB0002FAFE0046A0B900000000000000000000000000EEDBD300C7773700FFEF
      8700FEEA8000FADD7100DD923B00E2A56600E6AC6800E8A94100FBDE7200FDE6
      7D00FDE98E00F4C85F00FCF2DB0000000000000000006D550000FCF3B700F4D9
      3E00F0D13100ECC92400E8C11700E4B90D00E1B20400DEAC0000DDA80000DCA5
      0000DAA10000F0D899006D55000000000000000000008E8E8E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008E8E8E00FFFFFF008E8E8E00000000000000
      0000000000000000000000000000000000000000000046A0B90000FCFF00426E
      9C00D0F9FE0014E3F80014E3F80014E3F80014E3F80014E3F800D0F9FE00426E
      9C0000FCFF0046A0B90000000000000000000000000000000000DBB09E00DC9C
      4500FFF69B00FFF08F00FFF08A00FCE27500FCE27500FFED8700FFEC8D00FFEF
      9F00F3CE6B00F8DEAC00000000000000000000000000000000006D550000FCF3
      B700FBF0B200F0D13100ECC92400E8C11700E4B90D00E1B20400DEAC0000F1DC
      9900F1DB99006D550000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E0000000000000000000000
      000000000000000000000000000000000000000000000000000046A0B90046A0
      B900426E9C00CCFEFF00CCFEFF00CCFEFF00CCFEFF00CCFEFF00426E9C0046A0
      B90046A0B900000000000000000000000000000000000000000000000000D8A6
      9200D9944900F8E08D00FFF8A900FFF5AB00FFF5AC00FFF4AC00FBE59A00F1C2
      6600F5D39E000000000000000000000000000000000000000000000000006D55
      00006D550000FBF0B200F9EDAD00F7E9A700F6E6A200F4E39E00F3E09B006D55
      00006D5500000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000426E9C00426E9C00426E9C00426E9C00426E9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFD9CF00DCA37900DD9B5800E7B26200EABA6500E7B06300EEC08300F9E9
      D200000000000000000000000000000000000000000000000000000000000000
      0000000000006D5500006D5500006D5500006D5500006D5500006D5500000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A00000000000A0A0
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000AF000000AF0000000000000000000000
      0000000000000000AF000000AF00000000000000000000000000000000008E8D
      8E008E8E8E008E8E8E008E8E8E008E8E8E00A0A0A00000000000FFFFFF000000
      00008E8E8E00C51EFE0000000000000000000000000000000000826C3100826C
      3100AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAE
      AE00826C3100826C310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000AF008282F0000505E0000000AF00000000000000
      00000000AF000505E0008282F0000000AF0000000000000000008E8E8E00F9F9
      F900D9A68C0077FFFC0000000000A0A0A00000000000FFFFFF000000000077FF
      FC00D8A58C008E8E8E00000000000000000000000000826C3100E6B33C00826C
      3100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00826C3100E6B33C00826C3100000000000000000000000000000000006AB2
      C6006AB2C6006AB2C6006AB2C6006AB2C6006AB2C6006AB2C6006AB2C6006AB2
      C6006AB2C6006AB2C60000000000000000000000000000000000000000008E8E
      8E008E8E8E00909090008E8E8E000000AF008686F8000C0CF0000000AF000000
      AF000C0CF0008686F8000000AF000000000000000000000000008E8E8E00BF7E
      660077FFFC00C0C0C0000000000000000000FFFFFF0000000000BDBDBD0078F7
      F40077FFFC008E8E8E00000000000000000000000000826C3100DB972700826C
      3100FCFCFC00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00FCFC
      FC00826C3100DB972700826C31000000000000000000000000006AB2C6004CEE
      FB004CEEFB004CEEFB004CEEFB004CEEFB004CEEFB004CEEFB004CEEFB004CEE
      FB004CEEFB004CEEFB006AB2C6000000000000000000000000008E8E8E00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA000000AF008D8DFE001B1BFD001B1B
      FD008D8DFE000000AF00000000000000000000000000000000008E8E8E0077FF
      FC0077FFFC0077FFFC0000000000FFFFFF00FFFFFF0000000000000000000000
      0000BF7E66008E8E8D00000000000000000000000000826C3100D07D1200826C
      3100F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800826C3100D07D1200826C310000000000000000006AB2C6006AB2C6002DD1
      EA002DD1EA002DD1EA002DD1EA002DD1EA002DD1EA002DD1EA002DD1EA002DD1
      EA0053E5F80053E5F8006AB2C6000000000000000000000000008E8E8E00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000000AF003737FF003737
      FF000000AF0093939300000000000000000000000000000000008E8E8E00D8A5
      8C0077FFFC00C0C0C00000000000FFFFFF00FFFFFF00FFFFFF000000000077FF
      FC0077FFFC008E8E8E00000000000000000000000000826C3100CC6F0200826C
      3100F3F3F300C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200F3F3
      F300826C3100CC6F0200826C3100000000006AB2C6000CEDFB006AB2C60013E3
      F80013E3F80013E3F80013E3F80013E3F80013E3F80013E3F80013E3F80013E3
      F8002BD4EB0050E8F9006AB2C6000000000000000000000000008E8E8E00EAEA
      EA00C0C0C000C2C2C200EAEAEA00C2C2C2000000AF005E5EFF00AFAFFF00AFAF
      FF005E5EFF000000AF00000000000000000000000000000000008E8E8E0077FF
      FC0077FFFC0077FFFC0000000000FFFFFF00FFFFFF000000000077FFFC0077FF
      FC00D5A087008E8E8D00000000000000000000000000826C3100CE710000826C
      3100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100826C3100CE710000826C3100000000006AB2C60018DEF6006AB2C60013E5
      F80013E5F80013E5F80013E5F80013E5F80013E5F80013E5F80013E5F800288F
      6E00288F6E004DEDFB006AB2C6000000000000000000000000008E8E8E00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB000000AF008686FF00C3C3FF000000AF000000
      AF00C3C3FF008686FF000000AF000000000000000000000000008E8E8E00BF7E
      660077FFFC00C0C0C00000000000FFFFFF000000000077FFFC00C0C0C00077FF
      FC0077FFFC008E8E8E00000000000000000000000000826C3100D3790000D379
      0000826C3100826C3100826C3100826C3100826C3100826C3100826C3100826C
      3100D3790000D3790000826C3100000000006AB2C60018DDF6006AB2C6000EEA
      FA000EEAFA000EEAFA000EEAFA000EEAFA000EEAFA000EEAFA00288F6E0062FF
      D80062FFD800288F6E006AB2C6000000000000000000000000008E8E8E00ECEC
      EC00C0C0C000ECECEC000000AF00D1D1FF00D1D1FF000000AF00C2C2C200ECEC
      EC000000AF00D1D1FF00D1D1FF000000AF0000000000000000008E8E8E0077FF
      FC0077FFFC0077FFFC00000000000000000077FFFC0077FFFC0077FFFC0077FF
      FC00BF7E66008E8E8D00000000000000000000000000826C3100DA850000DA85
      0000DA850000DA850000DA850000DA850000DA850000DA850000DA850000DA85
      0000DA850000DA850000826C3100000000006AB2C60016E0F7006AB2C60009F1
      FC0009F1FC0009F1FC0009F1FC0009F1FC0009F1FC0009F1FC00288F6E002DEE
      BE002DEEBE00288F6E006AB2C6000000000000000000000000008E8E8E00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF000000AF000000AF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF000000AF000000AF000000000000000000000000008E8E8E00BF7E
      660077FFFC00C0C0C00077FFFC00C0C0C0007BFBF800C0C0C000C0C0C00077FF
      FC0077FFFC008E8E8E00000000000000000000000000826C3100E3930000E393
      0000826C3100826C3100826C3100826C3100826C3100826C3100826C3100826C
      3100E3930000E3930000826C3100000000006AB2C60011E6F9006AB2C600CDFD
      FF00CDFDFF00CDFDFF00CDFDFF00CDFDFF00CDFDFF00CDFDFF00288F6E0000DF
      A80000DFA800288F6E006AB2C6000000000000000000000000008E8E8E00F2F2
      F200C0C0C000C0C0C000C0C0C000F2F2F200C0C0C000C0C0C000F2F2F200C0C0
      C000F2F2F2008E8E8E00000000000000000000000000000000008E8E8E0077FF
      FC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC0077FFFC008E8E8E008E8E
      8E008E8E8E008E8E8E00000000000000000000000000826C3100EBA30000826C
      3100D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2
      D200826C3100EBA30000826C3100000000006AB2C6000CECFB000CECFB006AB2
      C6006AB2C6006AB2C6006AB2C6006AB2C6006AB2C600288F6E00288F6E000CE3
      AE000CE3AE00288F6E00288F6E000000000000000000000000008E8E8E00F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F5008E8E8E00000000000000000000000000000000008E8E8E00BF7E
      660077FFFC00D5A0870077FFFC00C07E660077FFFC008E8E8E00EAEAEA00EBEB
      EB00EBEBEB008E8E8E00000000000000000000000000826C3100F3B20000826C
      3100DDDDDD00DDDDDD00DDDDDD00DDDDDD006E6E6E006E6E6E00DDDDDD00DDDD
      DD00826C3100F3B20000826C3100000000006AB2C60007F3FC0007F3FC0007F3
      FC0007F3FC0007F3FC00CDFDFE00CDFDFE00288F6E00AAF8E5002AEDBD002AED
      BD002AEDBD002AEDBD00AAF8E500288F6E0000000000000000008E8E8E00F8F8
      F800C0C0C000C0C0C000F8F8F800C0C0C000F8F8F800F8F8F8008E8E8E008E8E
      8E008E8E8E008E8E8E00000000000000000000000000000000008E8E8E00FCFC
      FC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD008E8E8E00F4F4F400F5F5
      F5008E8E8E00C51EFE00000000000000000000000000826C3100FABE0000826C
      3100DDDDDD00DDDDDD00DDDDDD00DDDDDD006E6E6E006E6E6E00DDDDDD00DDDD
      DD00826C3100FDDF8000826C3100000000006AB2C60003F8FE0003F8FE0003F8
      FE0003F8FE0003F8FE006AB2C6006AB2C6006AB2C600288F6E00B7FCEB004BF8
      CD004BF8CD00B7FCEB00288F6E000000000000000000000000008E8E8E00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB008E8E8E00EBEBEB00EBEB
      EB00EBEBEB008E8E8E00000000000000000000000000000000008E8E8E00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008E8E8E00FEFEFE008E8E
      8E00C51EFE0000000000000000000000000000000000826C3100FFE38000C1B6
      9800F9F9F900F9F9F900F9F9F900F9F9F900BCBCBC00BCBCBC00F9F9F900F9F9
      F900C1B69800826C310000000000000000006AB2C600CCFEFF00CCFEFF00CCFE
      FF00CCFEFF00CCFEFF006AB2C600000000000000000000000000288F6E00C0FF
      EF00C0FFEF00288F6E00000000000000000000000000000000008E8E8E00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD008F8F8F00F5F5F500F5F5
      F5008E8E8E000000000000000000000000000000000000000000000000008E8D
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E00C51E
      FE00000000000000000000000000000000000000000000000000826C3100826C
      3100AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAE
      AE00826C3100000000000000000000000000000000006AB2C6006AB2C6006AB2
      C6006AB2C6006AB2C6000000000000000000000000000000000000000000288F
      6E00288F6E0000000000000000000000000000000000000000008E8E8E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008E8E8E00FFFFFF008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFC007FEFFF81FFC038003FE3FE007
      F8018003F80FC003C0018003E007800180018003C007800180018003800F0000
      80018003801F000080018003803F00008001800382E100008001800387C10000
      8001800383C1000080038003818180018007800380018001803F8003C003C003
      C07FC007E007E007FFFFF83FF00FF81FFF8FFFFFFFFFFE79E003C003FFFFFC30
      C0038001E003E001C0038001C001C003C00380018001C003C00380010001C003
      C00380010001C001C00380010001C000C00380010001C001C00380010001C003
      C00380010001C003C00380010000C003C00380010001C003C007800301C3C007
      E00FC00783E7C00FFFFFFFFFFFFFE01F00000000000000000000000000000000
      000000000000}
  end
end