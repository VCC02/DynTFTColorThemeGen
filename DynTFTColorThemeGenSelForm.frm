object frmDynTFTColorThemeGenSel: TfrmDynTFTColorThemeGenSel
  Left = 446
  Height = 536
  Top = 239
  Width = 1000
  Caption = 'DynTFT ColorThemeGen - Color Selector'
  ClientHeight = 516
  ClientWidth = 1000
  Constraints.MinHeight = 536
  Constraints.MinWidth = 1000
  Menu = mmTheme
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  LCLVersion = '6.5'
  object pnlColor: TPanel
    Left = 288
    Height = 121
    Hint = 'Double click to select a color'
    Top = 232
    Width = 122
    Caption = 'Current Color'
    Color = 14605511
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnDblClick = pnlColorDblClick
  end
  object trbB: TTrackBar
    Left = 0
    Height = 25
    Top = 232
    Width = 236
    Max = 255
    OnChange = trbRGBChange
    Position = 0
    TabOrder = 1
  end
  object trbG: TTrackBar
    Left = 0
    Height = 25
    Top = 258
    Width = 236
    Max = 255
    OnChange = trbRGBChange
    Position = 0
    TabOrder = 2
  end
  object trbR: TTrackBar
    Left = 0
    Height = 25
    Top = 284
    Width = 236
    Max = 255
    OnChange = trbRGBChange
    Position = 0
    TabOrder = 3
  end
  object lblB: TLabel
    Left = 240
    Height = 15
    Top = 232
    Width = 19
    Caption = 'B: 0'
    ParentColor = False
  end
  object lblG: TLabel
    Left = 240
    Height = 15
    Top = 258
    Width = 20
    Caption = 'G: 0'
    ParentColor = False
  end
  object lblR: TLabel
    Left = 240
    Height = 15
    Top = 284
    Width = 19
    Caption = 'R: 0'
    ParentColor = False
  end
  object lbeHEXBGR: TLabeledEdit
    Left = 8
    Height = 23
    Top = 330
    Width = 96
    Color = clInactiveCaption
    EditLabel.AnchorSideLeft.Control = lbeHEXBGR
    EditLabel.AnchorSideRight.Control = lbeHEXBGR
    EditLabel.AnchorSideRight.Side = asrBottom
    EditLabel.AnchorSideBottom.Control = lbeHEXBGR
    EditLabel.Left = 8
    EditLabel.Height = 15
    EditLabel.Top = 312
    EditLabel.Width = 96
    EditLabel.Caption = 'HEX BGR 32-bit'
    EditLabel.ParentColor = False
    ReadOnly = True
    TabOrder = 4
  end
  object lbeHEXRGB: TLabeledEdit
    Left = 128
    Height = 23
    Top = 330
    Width = 96
    Color = clInactiveCaption
    EditLabel.AnchorSideLeft.Control = lbeHEXRGB
    EditLabel.AnchorSideRight.Control = lbeHEXRGB
    EditLabel.AnchorSideRight.Side = asrBottom
    EditLabel.AnchorSideBottom.Control = lbeHEXRGB
    EditLabel.Left = 128
    EditLabel.Height = 15
    EditLabel.Top = 312
    EditLabel.Width = 96
    EditLabel.Caption = 'HEX RGB 16-bit'
    EditLabel.ParentColor = False
    ReadOnly = True
    TabOrder = 5
  end
  object collstCommonColors: TColorListBox
    Left = 792
    Height = 246
    Top = 242
    Width = 200
    ColorRectWidth = 16
    Style = []
    ItemHeight = 16
    OnClick = collstCommonColorsClick
    TabOrder = 6
  end
  object lbeColorName: TLabeledEdit
    Left = 416
    Height = 23
    Top = 242
    Width = 248
    EditLabel.AnchorSideLeft.Control = lbeColorName
    EditLabel.AnchorSideRight.Control = lbeColorName
    EditLabel.AnchorSideRight.Side = asrBottom
    EditLabel.AnchorSideBottom.Control = lbeColorName
    EditLabel.Left = 416
    EditLabel.Height = 15
    EditLabel.Top = 224
    EditLabel.Width = 248
    EditLabel.Caption = 'Color Name'
    EditLabel.ParentColor = False
    TabOrder = 7
    OnChange = lbeColorNameChange
  end
  object btnAddColor: TButton
    Left = 416
    Height = 25
    Top = 266
    Width = 96
    Caption = 'Add Color'
    OnClick = btnAddColorClick
    TabOrder = 8
  end
  object btnUpdateColor: TButton
    Left = 416
    Height = 25
    Top = 296
    Width = 96
    Caption = 'Update Color'
    OnClick = btnUpdateColorClick
    TabOrder = 9
  end
  object btnDeleteColor: TButton
    Left = 416
    Height = 25
    Top = 328
    Width = 96
    Caption = 'Delete Color'
    OnClick = btnDeleteColorClick
    TabOrder = 10
  end
  object chkAutoUpdateSelected: TCheckBox
    Left = 520
    Height = 19
    Hint = 'If checked, the selected color from the list is automatically updated by any color change.'
    Top = 266
    Width = 134
    Caption = 'Auto Update Selected'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
  end
  object grpDynTFTColorThemeIncGenerator: TGroupBox
    Left = 0
    Height = 128
    Top = 360
    Width = 784
    Caption = 'DynTFTColorTheme.inc Generator - Destination files'
    ClientHeight = 108
    ClientWidth = 780
    TabOrder = 12
    object lbeDynTFTColorThemeInc: TLabeledEdit
      Left = 8
      Height = 23
      Hint = 'Location of DynTFTColorTheme.inc'
      Top = 48
      Width = 400
      EditLabel.AnchorSideLeft.Control = lbeDynTFTColorThemeInc
      EditLabel.AnchorSideRight.Control = lbeDynTFTColorThemeInc
      EditLabel.AnchorSideRight.Side = asrBottom
      EditLabel.AnchorSideBottom.Control = lbeDynTFTColorThemeInc
      EditLabel.Left = 8
      EditLabel.Height = 15
      EditLabel.Top = 30
      EditLabel.Width = 400
      EditLabel.Caption = 'DynTFTColorTheme.inc'
      EditLabel.ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = lbeDynTFTColorThemeIncChange
    end
    object lblNote: TLabel
      Left = 8
      Height = 15
      Top = 5
      Width = 397
      Caption = 'This is where the color theme will be saved. The inc files will be overwritten.'
      ParentColor = False
    end
    object rdgrpColorListStorage: TRadioGroup
      Left = 456
      Height = 87
      Hint = 'This is where theme color will be saved, both in 32-bit and 16-bit formats.'#13#10'Even if the colors are stored in DynTFTColorTheme.inc file, the UserColors.inc has to be present.'
      Top = 0
      Width = 176
      AutoFill = True
      Caption = 'Color List Storage'
      ChildSizing.LeftRightSpacing = 6
      ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
      ChildSizing.EnlargeVertical = crsHomogenousChildResize
      ChildSizing.ShrinkHorizontal = crsScaleChilds
      ChildSizing.ShrinkVertical = crsScaleChilds
      ChildSizing.Layout = cclLeftToRightThenTopToBottom
      ChildSizing.ControlsPerLine = 1
      ClientHeight = 67
      ClientWidth = 172
      ItemIndex = 0
      Items.Strings = (
        'UserColors.inc'
        'DynTFTColorTheme.inc'
      )
      OnClick = rdgrpColorListStorageClick
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object btnBrowseDynTFTColorThemeInc: TButton
      Left = 416
      Height = 23
      Hint = 'Select location of DynTFTColorTheme.inc file. The UserColors.inc file will be saved near DynTFTColorTheme.inc.'#13#10'Right-click for options.'
      Top = 48
      Width = 33
      Caption = '...'
      OnClick = btnBrowseDynTFTColorThemeIncClick
      ParentShowHint = False
      PopupMenu = pmIncLoader
      ShowHint = True
      TabOrder = 2
    end
    object lbeThemeName: TLabeledEdit
      Left = 640
      Height = 23
      Top = 64
      Width = 128
      EditLabel.AnchorSideLeft.Control = lbeThemeName
      EditLabel.AnchorSideRight.Control = lbeThemeName
      EditLabel.AnchorSideRight.Side = asrBottom
      EditLabel.AnchorSideBottom.Control = lbeThemeName
      EditLabel.Left = 640
      EditLabel.Height = 15
      EditLabel.Top = 46
      EditLabel.Width = 128
      EditLabel.Caption = 'Theme Name'
      EditLabel.ParentColor = False
      TabOrder = 3
      Text = 'NewTheme'
      OnChange = lbeThemeNameChange
    end
    object lbeSavingThemePrefix: TLabeledEdit
      Left = 640
      Height = 23
      Top = 16
      Width = 128
      EditLabel.AnchorSideLeft.Control = lbeSavingThemePrefix
      EditLabel.AnchorSideRight.Control = lbeSavingThemePrefix
      EditLabel.AnchorSideRight.Side = asrBottom
      EditLabel.AnchorSideBottom.Control = lbeSavingThemePrefix
      EditLabel.Left = 640
      EditLabel.Height = 15
      EditLabel.Top = -2
      EditLabel.Width = 128
      EditLabel.Caption = 'Theme Name Prefix'
      EditLabel.ParentColor = False
      TabOrder = 4
      Text = 'User'
      OnChange = lbeSavingThemePrefixChange
    end
    object lblProjectThemeDir: TLabel
      Left = 8
      Height = 15
      Top = 88
      Width = 98
      Caption = 'Project Theme Dir:'
      ParentColor = False
    end
  end
  object lblThemeColors: TLabel
    Left = 792
    Height = 15
    Top = 224
    Width = 77
    Caption = 'Theme Colors:'
    ParentColor = False
  end
  object trbListItemHeight: TTrackBar
    Left = 616
    Height = 25
    Top = 296
    Width = 102
    Max = 64
    Min = 16
    OnChange = trbListItemHeightChange
    Position = 22
    TabOrder = 13
  end
  object lblListItemHeight: TLabel
    Left = 616
    Height = 15
    Top = 328
    Width = 102
    Caption = 'List Item Height: 16'
    ParentColor = False
  end
  object btnMoveColorUp: TButton
    Left = 520
    Height = 25
    Top = 296
    Width = 88
    Caption = 'Move Up'
    OnClick = btnMoveColorUpClick
    TabOrder = 14
  end
  object btnMoveColorDown: TButton
    Left = 520
    Height = 25
    Top = 328
    Width = 88
    Caption = 'Move Down'
    OnClick = btnMoveColorDownClick
    TabOrder = 15
  end
  object grpComponents: TGroupBox
    Left = 0
    Height = 216
    Top = 0
    Width = 512
    Caption = 'Components'
    ClientHeight = 196
    ClientWidth = 508
    ParentShowHint = False
    TabOrder = 16
    object grpComponentNameDecoder: TGroupBox
      Left = 392
      Height = 144
      Hint = 'The component name is extracted as the string between the prefix and the suffix.'
      Top = -8
      Width = 112
      Caption = 'Name Decoder'
      ClientHeight = 124
      ClientWidth = 108
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object lbeComponentNamePrefix: TLabeledEdit
        Left = 8
        Height = 23
        Hint = 'This string is used to decode the name of the component type. It default to the DynTFT system color prefix.'#13#10'Use the DynTFT system color prefix if you load system color inc files.'#13#10'Use your prefix if you load your inc files.'
        Top = 16
        Width = 96
        EditLabel.AnchorSideLeft.Control = lbeComponentNamePrefix
        EditLabel.AnchorSideRight.Control = lbeComponentNamePrefix
        EditLabel.AnchorSideRight.Side = asrBottom
        EditLabel.AnchorSideBottom.Control = lbeComponentNamePrefix
        EditLabel.Left = 8
        EditLabel.Height = 15
        EditLabel.Top = -2
        EditLabel.Width = 96
        EditLabel.Caption = 'Prefix'
        EditLabel.ParentColor = False
        TabOrder = 0
        Text = 'DynTFT'
      end
      object lbeComponentNameSuffix: TLabeledEdit
        Left = 8
        Height = 23
        Top = 64
        Width = 96
        EditLabel.AnchorSideLeft.Control = lbeComponentNameSuffix
        EditLabel.AnchorSideRight.Control = lbeComponentNameSuffix
        EditLabel.AnchorSideRight.Side = asrBottom
        EditLabel.AnchorSideBottom.Control = lbeComponentNameSuffix
        EditLabel.Left = 8
        EditLabel.Height = 15
        EditLabel.Top = 46
        EditLabel.Width = 96
        EditLabel.Caption = 'Suffix'
        EditLabel.ParentColor = False
        TabOrder = 1
        Text = '_SysColors.inc'
      end
      object btnGetFromOutput: TButton
        Left = 8
        Height = 25
        Hint = 'Both the prefix and the suffix can be set by using the output values (Project Theme Name editboxes).'#13#10'Right-click for options.'
        Top = 96
        Width = 96
        Caption = 'Get from output'
        OnClick = btnGetFromOutputClick
        PopupMenu = pmComponents
        TabOrder = 2
      end
    end
    object vallstComponents: TValueListEditor
      Left = 8
      Height = 182
      Top = 8
      Width = 376
      FixedCols = 0
      RowCount = 2
      TabOrder = 1
      OnSelection = vallstComponentsSelection
      KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goAutoAddRows, goRowSelect, goAlwaysShowEditor, goThumbTracking, goDblClickAutoSize]
      ColWidths = (
        64
        308
      )
    end
    object spdbtnGenerateListFromIncs: TSpeedButton
      Left = 392
      Height = 46
      Hint = 'The list of components and their color constants can be loaded by pointing to the folder where the .inc files are stored.'#13#10'Right-click for options.'
      Top = 144
      Width = 112
      Caption = 'GenerateListFromIncs'
      OnClick = spdbtnGenerateListFromIncsClick
      ShowHint = True
      ParentShowHint = False
      PopupMenu = pmIncLoader
    end
  end
  object grpColorSelector: TGroupBox
    Left = 520
    Height = 216
    Top = 0
    Width = 480
    Caption = 'Color Selector'
    ClientHeight = 196
    ClientWidth = 476
    TabOrder = 17
    object vallstComponentColors: TValueListEditor
      Left = 8
      Height = 128
      Top = 0
      Width = 464
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
      OnDblClick = vallstComponentColorsDblClick
      OnSelection = vallstComponentColorsSelection
      KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goAutoAddRows, goRowSelect, goAlwaysShowEditor, goThumbTracking, goDblClickAutoSize]
      ColWidths = (
        64
        396
      )
    end
    object colcmbCurrentColorConstant: TColorBox
      Left = 304
      Height = 22
      Top = 168
      Width = 168
      Selected = clForeground
      Style = []
      ItemHeight = 16
      TabOrder = 1
    end
    object lbeColorConstName: TLabeledEdit
      Left = 8
      Height = 23
      Top = 167
      Width = 288
      EditLabel.AnchorSideLeft.Control = lbeColorConstName
      EditLabel.AnchorSideRight.Control = lbeColorConstName
      EditLabel.AnchorSideRight.Side = asrBottom
      EditLabel.AnchorSideBottom.Control = lbeColorConstName
      EditLabel.Left = 8
      EditLabel.Height = 15
      EditLabel.Top = 149
      EditLabel.Width = 288
      EditLabel.Caption = 'Color Const Name'
      EditLabel.ParentColor = False
      Enabled = False
      TabOrder = 2
    end
    object btnUpdateConstant: TButton
      Left = 304
      Height = 25
      Top = 136
      Width = 168
      Caption = 'Update Selected Constant'
      OnClick = btnUpdateConstantClick
      TabOrder = 3
    end
    object chkEditableConstName: TCheckBox
      Left = 152
      Height = 19
      Hint = 'If checked, the color constant name is updated when updating color from "Update Selected Constant" button.'#13#10'This setting is global, so it is saved in application''s ini file.'
      Top = 133
      Width = 97
      Caption = 'Editable Name'
      OnChange = chkEditableConstNameChange
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
  end
  object chkHighlightGroupBoxes: TCheckBox
    Left = 792
    Height = 19
    Hint = 'When checked, a light yellow background is displayed under groupboxes.'#13#10'This setting is saved in application''s ini file.'
    Top = 489
    Width = 136
    Caption = 'Highlight GroupBoxes'
    OnChange = chkHighlightGroupBoxesChange
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
  end
  object btnColorFromList: TButton
    Left = 672
    Height = 25
    Hint = 'Set the R, G, B color components to the value of selected color from Color Selector.'
    Top = 241
    Width = 112
    Caption = 'Color From List'
    OnClick = btnColorFromListClick
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
  end
  object chkSaveThemeFilesWhenSavingProject: TCheckBox
    Left = 464
    Height = 19
    Hint = 'If checked, the project inc files are saved when saving project (dyncol).'#13#10'This setting is saved in application''s ini file.'
    Top = 489
    Width = 222
    Caption = 'Save Theme Files When Saving Project'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 20
  end
  object btnSetBackgroundColor: TButton
    Left = 0
    Height = 25
    Top = 489
    Width = 168
    Caption = 'Preview Background Color'
    OnClick = btnSetBackgroundColorClick
    TabOrder = 21
  end
  object btnPrintDynTFTScreen: TButton
    Left = 184
    Height = 25
    Top = 489
    Width = 147
    Caption = 'Print DynTFT Screen...'
    OnClick = btnPrintDynTFTScreenClick
    TabOrder = 22
  end
  object ColorDialog1: TColorDialog
    Color = clBlack
    CustomColors.Strings = (
      'ColorA=000000'
      'ColorB=000080'
      'ColorC=008000'
      'ColorD=008080'
      'ColorE=800000'
      'ColorF=800080'
      'ColorG=808000'
      'ColorH=808080'
      'ColorI=C0C0C0'
      'ColorJ=0000FF'
      'ColorK=00FF00'
      'ColorL=00FFFF'
      'ColorM=FF0000'
      'ColorN=FF00FF'
      'ColorO=FFFF00'
      'ColorP=FFFFFF'
      'ColorQ=C0DCC0'
      'ColorR=F0CAA6'
      'ColorS=F0FBFF'
      'ColorT=A4A0A0'
    )
    Left = 816
    Top = 320
  end
  object tmrStartup: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrStartupTimer
    Left = 816
    Top = 264
  end
  object tmrSetPanelColor: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrSetPanelColorTimer
    Left = 920
    Top = 264
  end
  object OpenDialog1: TOpenDialog
    FileName = 'DynTFTColorTheme.inc'
    Filter = 'Include files (*.inc)|*.inc|All files (*.*)|*.*'
    Left = 816
    Top = 376
  end
  object SelectDirectoryDialog1: TSelectDirectoryDialog
    Filter = 'Include files (*.inc)|*.inc|All files (*.*)|*.*'
    FilterIndex = 0
    Options = [ofOldStyleDialog, ofEnableSizing, ofViewDetail]
    Left = 920
    Top = 320
  end
  object tmrUpdateColCmb: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrUpdateColCmbTimer
    Left = 920
    Top = 432
  end
  object SaveDialog1: TSaveDialog
    FileName = 'DynTFTColorTheme.inc'
    Filter = 'Include files (*.inc)|*.inc|All files (*.*)|*.*'
    Left = 920
    Top = 376
  end
  object mmTheme: TMainMenu
    Left = 816
    Top = 432
    object MenuItem_Project: TMenuItem
      Caption = 'Project'
      OnClick = MenuItem_ProjectClick
      object MenuItem_NewProject: TMenuItem
        Caption = 'New Project'
        OnClick = MenuItem_NewProjectClick
      end
      object MenuItem3: TMenuItem
        Caption = '-'
      end
      object MenuItem_OpenProject: TMenuItem
        Caption = 'Open Project  and component inc files...'
        OnClick = MenuItem_OpenProjectClick
      end
      object MenuItem5: TMenuItem
        Caption = '-'
      end
      object MenuItem_SaveProject: TMenuItem
        Caption = 'Save Project'
        OnClick = MenuItem_SaveProjectClick
      end
      object MenuItem7: TMenuItem
        Caption = '-'
      end
      object MenuItem_SaveProjectAs: TMenuItem
        Caption = 'Save Project As...'
        OnClick = MenuItem_SaveProjectAsClick
      end
      object MenuItem9: TMenuItem
        Caption = '-'
      end
      object MenuItem8: TMenuItem
        Caption = '-'
      end
      object MenuItem_ImportColors: TMenuItem
        Caption = 'Import Colors...'
        Enabled = False
      end
      object MenuItem2: TMenuItem
        Caption = '-'
      end
      object MenuItem_ExportColors: TMenuItem
        Caption = 'Export Colors...'
        Enabled = False
      end
      object MenuItem4: TMenuItem
        Caption = '-'
      end
      object MenuItem6: TMenuItem
        Caption = '-'
      end
      object MenuItem_Exit: TMenuItem
        Caption = 'Exit Application'
        OnClick = MenuItem_ExitClick
      end
    end
    object MenuItem_ProjectTheme: TMenuItem
      Caption = 'Project Theme'
      object MenuItem_SaveProjectTheme: TMenuItem
        Caption = 'Save'
        OnClick = MenuItem_SaveProjectThemeClick
      end
    end
    object MenuItem_LiveTheme: TMenuItem
      Caption = 'Live Theme'
      object MenuItem_SaveLiveTheme: TMenuItem
        Caption = 'Save'
        OnClick = MenuItem_SaveLiveThemeClick
      end
    end
  end
  object pmComponents: TPopupMenu
    Left = 312
    Top = 96
    object MenuItem_ResetPrefixAndSuffix: TMenuItem
      Caption = 'Reset Prefix And Suffix'
      OnClick = MenuItem_ResetPrefixAndSuffixClick
    end
  end
  object SaveDialog2: TSaveDialog
    Filter = 'DynTFT color theme files (*.dyncol)|*.dyncol|All files (*.*)|*.*'
    Left = 400
    Top = 456
  end
  object OpenDialog2: TOpenDialog
    Filter = 'DynTFT color theme files (*.dyncol)|*.dyncol|All files (*.*)|*.*'
    Left = 320
    Top = 456
  end
  object pmIncLoader: TPopupMenu
    Left = 312
    Top = 152
    object MenuItem_OldStyleDialog: TMenuItem
      Caption = 'Old Style Dialog'
      Checked = True
      GroupIndex = 100
      RadioItem = True
      OnClick = MenuItem_OldStyleDialogClick
    end
    object MenuItem_NewStyleDialog: TMenuItem
      Caption = 'New Style Dialog'
      GroupIndex = 100
      RadioItem = True
      OnClick = MenuItem_NewStyleDialogClick
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    Filter = 'Portable Network Graphic (*.png)|*.png|Bitmaps (*.bmp)|*.bmp|All files (*.*)|*.*'
    Left = 208
    Top = 432
  end
end
