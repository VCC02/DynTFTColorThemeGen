{   DynTFT  - graphic components for microcontrollers
    Copyright (C) 2017 VCC
    release date: 29 Dec 2017
    author: VCC

    This file is part of DynTFT project.

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"),
    to deal in the Software without restriction, including without limitation
    the rights to use, copy, modify, merge, publish, distribute, sublicense,
    and/or sell copies of the Software, and to permit persons to whom the
    Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
    DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
    OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
}

unit DynTFTColorThemeGenSelForm;

{$mode delphi}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ComCtrls, StdCtrls, ColorBox, ValEdit, Buttons, Grids, Menus, LCLType,
  ExtDlgs;

type

  TComponentColor = record
    ColorConsts: TStringList;
    SourceFileName: string; //reserved for future use
  end;

  TComponentColorArr = array of TComponentColor;

  { TfrmDynTFTColorThemeGenSel }

  TfrmDynTFTColorThemeGenSel = class(TForm)
    btnAddColor: TButton;
    btnMoveColorDown: TButton;
    btnUpdateColor: TButton;
    btnDeleteColor: TButton;
    btnBrowseDynTFTColorThemeInc: TButton;
    btnMoveColorUp: TButton;
    btnUpdateConstant: TButton;
    btnColorFromList: TButton;
    btnGetFromOutput: TButton;
    btnSetBackgroundColor: TButton;
    btnPrintDynTFTScreen: TButton;
    chkEditableConstName: TCheckBox;
    chkSaveThemeFilesWhenSavingProject: TCheckBox;
    chkHighlightGroupBoxes: TCheckBox;
    chkAutoUpdateSelected: TCheckBox;
    colcmbCurrentColorConstant: TColorBox;
    ColorDialog1: TColorDialog;
    collstCommonColors: TColorListBox;
    grpColorSelector: TGroupBox;
    grpComponentNameDecoder: TGroupBox;
    grpComponents: TGroupBox;
    grpDynTFTColorThemeIncGenerator: TGroupBox;
    lblProjectThemeDir: TLabel;
    lbeSavingThemePrefix: TLabeledEdit;
    lbeThemeName: TLabeledEdit;
    lbeColorConstName: TLabeledEdit;
    lbeComponentNameSuffix: TLabeledEdit;
    lbeComponentNamePrefix: TLabeledEdit;
    lblListItemHeight: TLabel;
    lblThemeColors: TLabel;
    lblNote: TLabel;
    lbeDynTFTColorThemeInc: TLabeledEdit;
    lbeColorName: TLabeledEdit;
    lbeHEXBGR: TLabeledEdit;
    lbeHEXRGB: TLabeledEdit;
    lblB: TLabel;
    lblR: TLabel;
    lblG: TLabel;
    MenuItem_Project: TMenuItem;
    MenuItem_NewStyleDialog: TMenuItem;
    MenuItem_OldStyleDialog: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem_ExportColors: TMenuItem;
    MenuItem_ImportColors: TMenuItem;
    MenuItem_Exit: TMenuItem;
    MenuItem_ProjectTheme: TMenuItem;
    MenuItem_LiveTheme: TMenuItem;
    MenuItem_ResetPrefixAndSuffix: TMenuItem;
    MenuItem_SaveProjectTheme: TMenuItem;
    MenuItem_SaveLiveTheme: TMenuItem;
    MenuItem_NewProject: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem_OpenProject: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem_SaveProject: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem_SaveProjectAs: TMenuItem;
    MenuItem9: TMenuItem;
    mmTheme: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    pnlColor: TPanel;
    pmComponents: TPopupMenu;
    pmIncLoader: TPopupMenu;
    rdgrpColorListStorage: TRadioGroup;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    spdbtnGenerateListFromIncs: TSpeedButton;
    tmrUpdateColCmb: TTimer;
    tmrSetPanelColor: TTimer;
    tmrStartup: TTimer;
    trbListItemHeight: TTrackBar;
    trbB: TTrackBar;
    trbR: TTrackBar;
    trbG: TTrackBar;
    vallstComponentColors: TValueListEditor;
    vallstComponents: TValueListEditor;
    procedure btnAddColorClick(Sender: TObject);
    procedure btnBrowseDynTFTColorThemeIncClick(Sender: TObject);
    procedure btnColorFromListClick(Sender: TObject);
    procedure btnDeleteColorClick(Sender: TObject);
    procedure btnGetFromOutputClick(Sender: TObject);
    procedure btnMoveColorDownClick(Sender: TObject);
    procedure btnMoveColorUpClick(Sender: TObject);
    procedure btnPrintDynTFTScreenClick(Sender: TObject);
    procedure btnSetBackgroundColorClick(Sender: TObject);
    procedure btnUpdateColorClick(Sender: TObject);
    procedure btnUpdateConstantClick(Sender: TObject);
    procedure chkEditableConstNameChange(Sender: TObject);
    procedure chkHighlightGroupBoxesChange(Sender: TObject);
    procedure collstCommonColorsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbeColorNameChange(Sender: TObject);
    procedure lbeDynTFTColorThemeIncChange(Sender: TObject);
    procedure lbeSavingThemePrefixChange(Sender: TObject);
    procedure lbeThemeNameChange(Sender: TObject);
    procedure MenuItem_ProjectClick(Sender: TObject);
    procedure MenuItem_ExitClick(Sender: TObject);
    procedure MenuItem_NewStyleDialogClick(Sender: TObject);
    procedure MenuItem_OldStyleDialogClick(Sender: TObject);
    procedure MenuItem_SaveProjectAsClick(Sender: TObject);
    procedure MenuItem_SaveProjectClick(Sender: TObject);
    procedure MenuItem_OpenProjectClick(Sender: TObject);
    procedure MenuItem_NewProjectClick(Sender: TObject);
    procedure MenuItem_ResetPrefixAndSuffixClick(Sender: TObject);
    procedure MenuItem_SaveProjectThemeClick(Sender: TObject);
    procedure MenuItem_SaveLiveThemeClick(Sender: TObject);
    procedure pnlColorDblClick(Sender: TObject);
    procedure rdgrpColorListStorageClick(Sender: TObject);
    procedure spdbtnGenerateListFromIncsClick(Sender: TObject);
    procedure tmrSetPanelColorTimer(Sender: TObject);
    procedure tmrStartupTimer(Sender: TObject);
    procedure tmrUpdateColCmbTimer(Sender: TObject);
    procedure trbListItemHeightChange(Sender: TObject);
    procedure trbRGBChange(Sender: TObject);
    procedure vallstComponentColorsDblClick(Sender: TObject);
    procedure vallstComponentColorsSelection(Sender: TObject; aCol,
      aRow: Integer);
    procedure vallstComponentsSelection(Sender: TObject; aCol, aRow: Integer);
  private
    FComponentColors: TComponentColorArr;
    FInitialCmbColorCount: Integer;

    FProjectPath: string;
    FProjectIncSrcFolder: string;
    FProjectModified: Boolean;
    FIncLoaderDialogStyle: Boolean;

    procedure SetProjectModified(Value: Boolean);

    procedure LoadSettingsFromIni;
    procedure SaveSettingsToIni;

    function GetAllColorsConstName(AConstName: string): string;
    procedure UpdatePanelColorFromColorDialog;

    function ColorNameExistsInList(AColorName: string; AColorList: TColorListBox; ExcludeIndex: Integer = -1): Boolean;
    function ColorNameExistsInColCmb(AColorName: string; AColorComboBox: TColorBox; ExcludeIndex: Integer = -1): Boolean;
    function ColorExistsInList(AColor: TColor; AColorList: TColorListBox; ExcludeIndex: Integer = -1): Boolean;
    function ColorExistsInColCmb(AColor: TColor; AColorComboBox: TColorBox; ExcludeIndex: Integer = -1): Boolean;

    procedure LoadColorConsts(APathToSrcComponentsColorThemeIncs: string);
    procedure DisplayColorConstants(ACompIndex: Integer);
    procedure SaveUserColors(ABaseDir: string);
    procedure SaveThemeFiles(AThemeDirName: string);
    procedure SaveThemeFilesWithVars(AThemeDirName: string);  //for live theme
    procedure SaveProjectThemeFiles;
    procedure SaveLiveThemeFiles;  //Live theme is the collection of color constants and variables (and the files which contain them)
    procedure SaveLiveColors; //DynTFTColorThemeGenLiveColors.pas contains an array of pointers to color variables.
    function GetThemeDirName: string;
    procedure AddCustomColorsToColCmb;
    procedure UpdateProjectThemeDirLabel;
    procedure UpdateLiveColorArrayWithSelectedColor(ComponentIndex, ColorIndex: Integer);
    procedure RemoveIllegalCharactersFromLBE(ALabeledEdit: TLabeledEdit; AllowDot: Boolean);

    procedure AddDynColExtension;
    procedure NewDynColProject;
    procedure LoadDynColProject;
    procedure SaveDynColProject;
    procedure LoadIncFilesToProject;

    property ProjectModified: Boolean read FProjectModified write SetProjectModified;
  public

  end;

var
  frmDynTFTColorThemeGenSel: TfrmDynTFTColorThemeGenSel;
  ScreenBackgroundColor: TColor;

implementation

{$R *.frm}

uses
  IniFiles, TFT, Math, DynTFTUtils, DynTFTConsts, DynTFTColorThemeGenLiveColors, DynTFTBaseDrawing,
  DynTFTColorThemeGenMainForm, DynTFTColorThemeGenScreenForm;

const
  CDirSeparator = {$IFDEF Windows} '\' {$ELSE} '/' {$ENDIF};
  CColorConstAssignSeparator = ' = ';
  CLiveThemeDir: string = 'DynTFT_ThemeGenColors';

{ TfrmDynTFTColorThemeGenSel }


procedure TfrmDynTFTColorThemeGenSel.LoadSettingsFromIni;
var
  Ini: TMemIniFile;
begin
  Ini := TMemIniFile.Create(ExtractFilePath(ParamStr(0)) + Application.Title + '.ini');
  try
    Left := Ini.ReadInteger('ColorThemeGenWindow', 'Left', Left);
    Top := Ini.ReadInteger('ColorThemeGenWindow', 'Top', Top);
    Width := Ini.ReadInteger('ColorThemeGenWindow', 'Width', Width);
    Height := Ini.ReadInteger('ColorThemeGenWindow', 'Height', Height);

    chkAutoUpdateSelected.Checked := Ini.ReadBool('ColorThemeGenWindow', 'chkAutoUpdateSelected.Checked', chkAutoUpdateSelected.Checked);
    trbListItemHeight.Position := Ini.ReadInteger('ColorThemeGenWindow', 'trbListItemHeight.Position', 16);
    chkHighlightGroupBoxes.Checked := Ini.ReadBool('ColorThemeGenWindow', 'chkHighlightGroupBoxes.Checked', chkHighlightGroupBoxes.Checked);
    chkSaveThemeFilesWhenSavingProject.Checked := Ini.ReadBool('ColorThemeGenWindow', 'chkSaveThemeFilesWhenSavingProject.Checked', chkSaveThemeFilesWhenSavingProject.Checked);

    FIncLoaderDialogStyle := Ini.ReadBool('ColorThemeGenWindow', 'IncLoaderDialogStyle', False);
    if FIncLoaderDialogStyle then
    begin
      SelectDirectoryDialog1.Options := SelectDirectoryDialog1.Options - [ofOldStyleDialog];
      pmIncLoader.Items.Items[1].Checked := True;
    end
    else
    begin
      SelectDirectoryDialog1.Options := SelectDirectoryDialog1.Options + [ofOldStyleDialog];
      pmIncLoader.Items.Items[0].Checked := True;
    end;

    chkEditableConstName.Checked := Ini.ReadBool('ColorThemeGenWindow', 'chkEditableConstName.Checked', chkEditableConstName.Checked);
    lbeColorConstName.Enabled := chkEditableConstName.Checked;

    if chkEditableConstName.Checked then
      vallstComponentColors.FixedCols := 0
    else
      vallstComponentColors.FixedCols := 1;
  finally
    Ini.Free;
  end;
end;


procedure TfrmDynTFTColorThemeGenSel.SaveSettingsToIni;
var
  Ini: TMemIniFile;
begin
  Ini := TMemIniFile.Create(ExtractFilePath(ParamStr(0)) + Application.Title + '.ini');
  try
    Ini.WriteInteger('ColorThemeGenWindow', 'Left', Left);
    Ini.WriteInteger('ColorThemeGenWindow', 'Top', Top);
    Ini.WriteInteger('ColorThemeGenWindow', 'Width', Width);
    Ini.WriteInteger('ColorThemeGenWindow', 'Height', Height);

    Ini.WriteBool('ColorThemeGenWindow', 'chkAutoUpdateSelected.Checked', chkAutoUpdateSelected.Checked);
    Ini.WriteInteger('ColorThemeGenWindow', 'trbListItemHeight.Position', trbListItemHeight.Position);
    Ini.WriteBool('ColorThemeGenWindow', 'chkHighlightGroupBoxes.Checked', chkHighlightGroupBoxes.Checked);
    Ini.WriteBool('ColorThemeGenWindow', 'chkSaveThemeFilesWhenSavingProject.Checked', chkSaveThemeFilesWhenSavingProject.Checked);

    Ini.WriteBool('ColorThemeGenWindow', 'IncLoaderDialogStyle', FIncLoaderDialogStyle);
    Ini.WriteBool('ColorThemeGenWindow', 'chkEditableConstName.Checked', chkEditableConstName.Checked);

    Ini.UpdateFile;
  finally
    Ini.Free;
  end;
end;


procedure TfrmDynTFTColorThemeGenSel.SetProjectModified(Value: Boolean);
begin
  if FProjectModified <> Value then
    FProjectModified := Value;

  Caption := 'DynTFT ColorThemeGen - Color Selector';

  if FProjectPath <> '' then
  begin
    if FProjectModified then
      Caption := Caption + ' - (modified) ' + FProjectPath
    else
      Caption := Caption + ' - ' + FProjectPath;
  end
  else
    if FProjectModified then
      Caption := Caption + ' - (modified)';
end;


function TfrmDynTFTColorThemeGenSel.GetAllColorsConstName(AConstName: string): string;
begin
  Result := 'CL_All_' + lbeComponentNamePrefix.Text + AConstName + '_Colors';
end;


procedure TfrmDynTFTColorThemeGenSel.UpdatePanelColorFromColorDialog;
begin
  pnlColor.Color := ColorDialog1.Color;
  trbB.Position := (pnlColor.Color shr 16) and $FF;
  trbG.Position := (pnlColor.Color shr 8) and $FF;
  trbR.Position := (pnlColor.Color shr 0) and $FF;

  lbeHEXBGR.Text := IntToHex(pnlColor.Color, 8);
  lbeHEXRGB.Text := IntToHex(TrueColorTo16bitColor(pnlColor.Color), 4);
end;


//case sensitive IndexOf
function ColorNameExistsInItems(AColorName: string; AItems: TStrings; ExcludeIndex: Integer = -1): Boolean;
var
  i: Integer;
  AColorNameUpperCase: string;
begin
  Result := False;
  AColorNameUpperCase := UpperCase(AColorName);

  for i := 0 to AItems.Count - 1 do
    if i <> ExcludeIndex then
      if UpperCase(AItems.Strings[i]) = AColorNameUpperCase then
      begin
        Result := True;
        Exit;
      end;
end;


function TfrmDynTFTColorThemeGenSel.ColorNameExistsInList(AColorName: string; AColorList: TColorListBox; ExcludeIndex: Integer = -1): Boolean;
begin
  Result := ColorNameExistsInItems(AColorName, AColorList.Items, ExcludeIndex);
end;


function TfrmDynTFTColorThemeGenSel.ColorNameExistsInColCmb(AColorName: string; AColorComboBox: TColorBox; ExcludeIndex: Integer = -1): Boolean;
begin
  Result := ColorNameExistsInItems(AColorName, AColorComboBox.Items, ExcludeIndex);
end;


function TfrmDynTFTColorThemeGenSel.ColorExistsInList(AColor: TColor; AColorList: TColorListBox; ExcludeIndex: Integer = -1): Boolean;
var
  i: Integer;
begin
  Result := False;

  for i := 0 to AColorList.Count - 1 do
    if i <> ExcludeIndex then
      if AColorList.Colors[i] = AColor then
      begin
        Result := True;
        Exit;
      end;
end;


function TfrmDynTFTColorThemeGenSel.ColorExistsInColCmb(AColor: TColor; AColorComboBox: TColorBox; ExcludeIndex: Integer = -1): Boolean;
var
  i: Integer;
begin
  Result := False;

  for i := 0 to AColorComboBox.Items.Count - 1 do
    if i <> ExcludeIndex then
      if AColorComboBox.Colors[i] = AColor then
      begin
        Result := True;
        Exit;
      end;
end;


{This function removes all lines which do not contain the CColorConstAssignSeparator string.}
procedure RemoveExtraContentFromIncConstants(AIncFileContent: TStringList);
var
  i: Integer;
begin
  for i := AIncFileContent.Count - 1 downto 0 do
    if Pos(CColorConstAssignSeparator, AIncFileContent.Strings[i]) = 0 then
      AIncFileContent.Delete(i)
    else
      AIncFileContent.Strings[i] := Trim(AIncFileContent.Strings[i]);
end;


procedure TfrmDynTFTColorThemeGenSel.LoadColorConsts(APathToSrcComponentsColorThemeIncs: string);
var
  i: Integer;
  AIncFileContent: TStringList;
begin
  SetLength(FComponentColors, vallstComponents.RowCount - 1);

  for i := 1 to vallstComponents.RowCount - 1 do
  begin
    FComponentColors[i - 1].SourceFileName := vallstComponents.Cells[0, i];
    FComponentColors[i - 1].ColorConsts := TStringList.Create;
    AIncFileContent := TStringList.Create;
    try
      AIncFileContent.LoadFromFile(APathToSrcComponentsColorThemeIncs + CDirSeparator + vallstComponents.Cells[0, i]);

      RemoveExtraContentFromIncConstants(AIncFileContent); //removes all lines which do not contain the CColorConstAssignSeparator string.
      FComponentColors[i - 1].ColorConsts.Text := AIncFileContent.Text;
    finally
      AIncFileContent.Free;
    end;
  end;
end;


function GetColorConstantNameFromDefinition(AConstantDef: string): string;
begin
  Result := Copy(Trim(AConstantDef), 1, Pos(CColorConstAssignSeparator, AConstantDef) - 1);
end;


function GetColorConstantValueFromDefinition(AConstantDef: string): string;
begin
  Result := Copy(Trim(AConstantDef), Pos(CColorConstAssignSeparator, AConstantDef) + Length(CColorConstAssignSeparator), MaxInt);
  Delete(Result, Pos(';', Result), MaxInt);
end;


procedure TfrmDynTFTColorThemeGenSel.DisplayColorConstants(ACompIndex: Integer);
var
  i: Integer;
begin
  if (ACompIndex < 0) or (ACompIndex > Length(FComponentColors) - 1) then
  begin
    vallstComponentColors.RowCount := 1;
    Exit;
  end;

  vallstComponentColors.RowCount := FComponentColors[ACompIndex].ColorConsts.Count + 1;

  for i := 0 to FComponentColors[ACompIndex].ColorConsts.Count - 1 do
  begin
    vallstComponentColors.Cells[0, i + 1] := GetColorConstantNameFromDefinition(FComponentColors[ACompIndex].ColorConsts.Strings[i]);
    vallstComponentColors.Cells[1, i + 1] := GetColorConstantValueFromDefinition(FComponentColors[ACompIndex].ColorConsts.Strings[i]);
  end;

  vallstComponentColors.AutoSizeColumns;
end;


procedure TfrmDynTFTColorThemeGenSel.SaveUserColors(ABaseDir: string);
var
  AFileName: string;
  i: Integer;
  AColorAsText: string;
  UserColorsList: TStringList;
begin
  AFileName := ABaseDir + rdgrpColorListStorage.Items.Strings[rdgrpColorListStorage.ItemIndex];

  UserColorsList := TStringList.Create;
  try
    if rdgrpColorListStorage.ItemIndex = 1 then
    begin
      UserColorsList.LoadFromFile(AFileName);
      UserColorsList.Add('');
      UserColorsList.Add('const');
    end;

    for i := 0 to collstCommonColors.Count - 1 do
    begin
      AColorAsText := '  ' + collstCommonColors.Items.Strings[i] + ' = {$IFDEF IsDesktop} $' + IntToHex(collstCommonColors.Colors[i], 8) + ';' +
                      ' {$ELSE} $' + IntToHex(TrueColorTo16bitColor(collstCommonColors.Colors[i]), 4) + '; {' + '$ENDIF}';

      UserColorsList.Add(AColorAsText);
    end;

    UserColorsList.SaveToFile(AFileName);
  finally
    UserColorsList.Free;
  end;
end;


procedure TfrmDynTFTColorThemeGenSel.SaveThemeFiles(AThemeDirName: string);
var
  i, j: Integer;
  ACompList, AColorConstList: TStringList;
  AFileName: string;
begin
  if Length(FComponentColors) = 0 then
  begin
    MessageDlg('Nothing to save.', mtInformation, [mbOK], 0);
    Exit;
  end;

  if not DirectoryExists(ExtractFilePath(lbeDynTFTColorThemeInc.Text) + AThemeDirName) then
  begin
    try
      CreateDir(ExtractFilePath(lbeDynTFTColorThemeInc.Text) + AThemeDirName);
    except
    end;
  end;

  ACompList := TStringList.Create;
  try
    for i := 1 to vallstComponents.RowCount - 1 do
    begin
      AFileName := AThemeDirName + CDirSeparator + lbeSavingThemePrefix.Text + vallstComponents.Cells[1, i] + '_' + lbeThemeName.Text + 'Colors.inc';
      ACompList.Add('  {$I ' + AFileName + '}');

      AFileName := ExtractFilePath(lbeDynTFTColorThemeInc.Text) + AThemeDirName + CDirSeparator + ExtractFileName(AFileName);

      AColorConstList := TStringList.Create;
      try
        if FComponentColors[i - 1].ColorConsts.Count > 0 then
        begin
          for j := 0 to FComponentColors[i - 1].ColorConsts.Count - 1 do
            AColorConstList.Add(FComponentColors[i - 1].ColorConsts.Strings[j]);
        end;

        AColorConstList.SaveToFile(AFileName);
      finally
        AColorConstList.Free;
      end;
    end;

    ACompList.SaveToFile(lbeDynTFTColorThemeInc.Text);
  finally
    ACompList.Free;
  end;

  SaveUserColors(ExtractFilePath(lbeDynTFTColorThemeInc.Text));  //call here to make sure it is called after adding content to DynTFTColorTheme.inc
end;


procedure TfrmDynTFTColorThemeGenSel.SaveThemeFilesWithVars(AThemeDirName: string); //for live theme
var
  i, j: Integer;
  ACompList, AColorConstList: TStringList;
  AFileName, s, s1, ComponentVarName: string;
begin
  ACompList := TStringList.Create;
  try
    for i := 0 to Length(FComponentColors) - 1 do
      ACompList.Add('  ' + GetAllColorsConstName(vallstComponents.Cells[1, i + 1]) + 'Count = ' + IntToStr(FComponentColors[i].ColorConsts.Count) + ';');

    ACompList.Add('');
    ACompList.Add('var');

    for i := 1 to vallstComponents.RowCount - 1 do
    begin
      AFileName := AThemeDirName + CDirSeparator + 'DynTFT' + vallstComponents.Cells[1, i] + '_ThemeGenColors.inc';
      ACompList.Add('  {$I ' + AFileName + '}');

      AFileName := ExtractFilePath(ParamStr(0)) + AFileName;
      AColorConstList := TStringList.Create;
      try
        ComponentVarName := GetAllColorsConstName(vallstComponents.Cells[1, i]);

        //generate an array of color constants
        if FComponentColors[i - 1].ColorConsts.Count > 0 then
        begin
          //s1 := ComponentVarName + ': array[0..' + IntToStr(FComponentColors[i - 1].ColorConsts.Count - 1) + '] of TColor = (';
          s1 := ComponentVarName + ': array[0..' + ComponentVarName + 'Count - 1] of TColor = (';
          for j := 0 to FComponentColors[i - 1].ColorConsts.Count - 1 do
          begin
            s := FComponentColors[i - 1].ColorConsts.Strings[j];
            s1 := s1 + Copy(s, Pos(CColorConstAssignSeparator, s) + Length(CColorConstAssignSeparator), MaxInt);
            Delete(s1, Pos(';', s1), MaxInt); //this will also remove comments (if any)
            s1 := s1 + ', ';
          end;
          Delete(s1, Length(s1) - 1, 2); //delete the last ', '
          s1 := s1 + ');';
          AColorConstList.Add(s1);
          AColorConstList.Add('');
        end;

        //generate standard constants as variables at absolute addresses from above generated array
        for j := 0 to FComponentColors[i - 1].ColorConsts.Count - 1 do
        begin
          s := FComponentColors[i - 1].ColorConsts.Strings[j];
          s := Copy(s, 1, Pos(CColorConstAssignSeparator, s) - 1) + ': TColor absolute ' + ComponentVarName + '[' + IntToStr(j) + '];';

          AColorConstList.Add(s);
        end;

        AColorConstList.SaveToFile(AFileName);
      finally
        AColorConstList.Free;
      end;
    end;

    ACompList.SaveToFile(ExtractFilePath(ParamStr(0)) + 'DynTFTColorTheme.inc');
  finally
    ACompList.Free;
  end;

  SaveUserColors(ExtractFilePath(ParamStr(0)));  //call here to make sure it is called after adding content to DynTFTColorTheme.inc
end;


procedure TfrmDynTFTColorThemeGenSel.SaveProjectThemeFiles;
begin
  if lbeDynTFTColorThemeInc.Text = '' then
  begin
    MessageDlg('A browse dialog will open to allow specifying where to save DynTFTColorTheme.inc.', mtInformation, [mbOK], 0);
    repeat
      if SelectDirectoryDialog1.Execute then
        lbeDynTFTColorThemeInc.Text := SelectDirectoryDialog1.FileName + CDirSeparator + 'DynTFTColorTheme.inc';

      if lbeDynTFTColorThemeInc.Text = ExtractFileName(lbeDynTFTColorThemeInc.Text) then
        lbeDynTFTColorThemeInc.Text := ''; //reset if not full path

    until lbeDynTFTColorThemeInc.Text > '';
  end;

  if not DirectoryExists(ExtractFileDir(lbeDynTFTColorThemeInc.Text)) then
    btnBrowseDynTFTColorThemeIncClick(nil);

  if not DirectoryExists(ExtractFileDir(lbeDynTFTColorThemeInc.Text)) then
  begin
    try
      CreateDir(ExtractFileDir(lbeDynTFTColorThemeInc.Text));
    except
    end;
  end;

  if not DirectoryExists(ExtractFileDir(lbeDynTFTColorThemeInc.Text)) then //check again  - although this shouldn't happen
  begin
    MessageDlg('Can''t save project theme files, because the directory for inc file does not exist.', mtError, [mbOK], 0);
    Exit;
  end;

  if Length(FComponentColors) = 0 then
  begin
    MessageDlg('Nothing to save.', mtInformation, [mbOK], 0);
    Exit;
  end;

  SaveThemeFiles(GetThemeDirName);
  MessageDlg('Project theme saved successfully. Please recompile that project to use the new colors.', mtInformation, [mbOK], 0);
end;


procedure TfrmDynTFTColorThemeGenSel.SaveLiveThemeFiles;
begin
  if (vallstComponents.RowCount < 2) or ((vallstComponents.RowCount >= 2) and (vallstComponents.Cells[1, 1] = '')) then
  begin
    MessageDlg('No valid components found in the list. Please add some components and add color constants to them.', mtError, [mbOK], 0);
    Exit;
  end;

  try
    if not DirectoryExists(ExtractFilePath(ParamStr(0)) + CLiveThemeDir) then
      CreateDir(ExtractFilePath(ParamStr(0)) + CLiveThemeDir);
  except
    on E: Exception do
      MessageDlg('Error creating directory: ' + #13#10 + ExtractFilePath(ParamStr(0)) + CLiveThemeDir + #13#10 + 'Details: ' + E.Message, mtError, [mbOK], 0);
  end;

  try
    SaveThemeFilesWithVars(CLiveThemeDir);
    MessageDlg('Live theme saved successfully. Please recompile ' + Application.Title + ' to use the new colors.', mtInformation, [mbOK], 0);
  except
    on E: Exception do
      MessageDlg('Error saving live theme.' + #13#10 + 'Details: ' + E.Message, mtError, [mbOK], 0);
  end;
end;


function IncFileHasDynTFTColorConstants(AIncFileContent: TStringList): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := 0 to AIncFileContent.Count - 1 do
    if Pos('CL_DynTFT', AIncFileContent.Strings[i]) = 1 then
    begin
      Result := True;
      Exit;
    end;
end;


procedure LoadComponentNamesFromIncFiles(ADirectory: string; AValueList: TValueListEditor);
var
  ASearchResult, i: Integer;
  ASearchRec: TSearchRec;
  AStringList: TStringList;
begin
  AValueList.RowCount := 1;
  AStringList := TStringList.Create;
  try
    ASearchResult := FindFirst(ADirectory + CDirSeparator + '*.inc', faAnyFile xor faDirectory, ASearchRec);
    while ASearchResult = 0 do
    begin
      if (ASearchRec.Name <> '.') and (ASearchRec.Name <> '..') then
        if UpperCase(ExtractFileExt(ASearchRec.Name)) = '.INC' then
          AStringList.Add(ASearchRec.Name);

      ASearchResult := FindNext(ASearchRec);
    end;

    AStringList.Sort;

    AValueList.RowCount := AStringList.Count + 1;
    for i := 0 to AStringList.Count - 1 do
      AValueList.Cells[0, i + 1] := AStringList.Strings[i];

    //MessageDlg('List of inc files.' + #13#10 + AStringList.Text, mtWarning, [mbOK], 0);
  finally
    AStringList.Free;
  end;

  //AValueList.SortColRow(True, 0);  //do not use this, because it can freeze !
end;


procedure FilterComponentNamesByColorExistence(ADirectory, NamePrefix, NameSuffix: string; AValueList: TValueListEditor);
var
  i: Integer;
  s: string;
  AStringList: TStringList;
begin
  //check files if they contain colors
  for i := AValueList.RowCount - 1 downto 1 do
  begin
    AStringList := TStringList.Create;
    try
      AStringList.LoadFromFile(ADirectory + CDirSeparator + AValueList.Cells[0, i]);
      if not IncFileHasDynTFTColorConstants(AStringList) then
        AValueList.DeleteRow(i)
      else
      begin
        s := AValueList.Cells[0, i];
        s := Copy(s, Length(NamePrefix) + 1, MaxInt);
        s := Copy(s, 1, Pos(NameSuffix, s) - 1);
        AValueList.Cells[1, i] := s;
      end;
    finally
      AStringList.Free;
    end;
  end;

  AValueList.AutoSizeColumns;
end;


procedure TfrmDynTFTColorThemeGenSel.SaveLiveColors;
var
  AFileName, s: string;
  i: Integer;
  AStringList: TStringList;
begin
  AFileName := ExtractFilePath(ParamStr(0)) + 'DynTFTColorThemeGenLiveColors.pas';

  s := '';
  for i := 1 to vallstComponents.RowCount - 1 do
    s := s + '@' + GetAllColorsConstName(vallstComponents.Cells[1, i]) + ',' + #13#10;

  Delete(s, Length(s) - 1, 3); //delete last ','#13#10

  AStringList := TStringList.Create;
  try
    AStringList.Add('unit DynTFTColorThemeGenLiveColors;');
    AStringList.Add('');
    AStringList.Add('interface');
    AStringList.Add('');
    AStringList.Add('uses');
    AStringList.Add('  DynTFTConsts, Graphics;');
    AStringList.Add('');
    AStringList.Add('type');
    AStringList.Add('  TColorArray = array[0..0] of TColor;');
    AStringList.Add('  PColorArray = ^TColorArray;');
    AStringList.Add('');
    AStringList.Add('var');
    AStringList.Add('  LiveColors: array[0..' + IntToStr(Length(FComponentColors) - 1) + '] of PColorArray = (');
    for i := 1 to vallstComponents.RowCount - 1 do
    begin
      s := '    @' + GetAllColorsConstName(vallstComponents.Cells[1, i]);
      if i < vallstComponents.RowCount - 1 then
        s := s + ',';
      AStringList.Add(s);
    end;
    AStringList.Add('  );');

    AStringList.Add('');

    AStringList.Add('  LiveColorsConstCount: array[0..' + IntToStr(Length(FComponentColors) - 1) + '] of Integer = (');
    for i := 1 to vallstComponents.RowCount - 1 do
    begin
      s := '    ' + GetAllColorsConstName(vallstComponents.Cells[1, i]) + 'Count';
      if i < vallstComponents.RowCount - 1 then
        s := s + ',';
      AStringList.Add(s);
    end;
    AStringList.Add('  );');

    AStringList.Add('');

    AStringList.Add('implementation');
    AStringList.Add('');
    AStringList.Add('end.');

    AStringList.SaveToFile(AFileName);
  finally
    AStringList.Free;
  end;
end;


function TfrmDynTFTColorThemeGenSel.GetThemeDirName: string;
begin
  Result := lbeSavingThemePrefix.Text + '_' + lbeThemeName.Text + 'Colors';
end;


procedure TfrmDynTFTColorThemeGenSel.AddCustomColorsToColCmb;
var
  i: Integer;
  s: string;
begin
  //Not a nice way to add colors, but looking at the TCustomColorBox.GetColor method, it seems this is how it should be done. TCustomColorBox.SetColorList is an example.
  colcmbCurrentColorConstant.AddItem('CLLIGHTGRAY', TObject(PtrInt(CL_LIGHTGRAY)));
  colcmbCurrentColorConstant.AddItem('CLLIGHTBLUE', TObject(PtrInt(CL_LIGHTBLUE)));
  colcmbCurrentColorConstant.AddItem('CLMEDGRAY', TObject(PtrInt(CL_MEDGRAY)));
  colcmbCurrentColorConstant.AddItem('CLDARKGRAY', TObject(PtrInt(CL_DARKGRAY)));
  colcmbCurrentColorConstant.AddItem('CLHIGHLIGHT', TObject(PtrInt(CL_HIGHLIGHT)));

  FInitialCmbColorCount := colcmbCurrentColorConstant.Items.Count;

  for i := 0 to colcmbCurrentColorConstant.Items.Count - 1 do
  begin
    s := UpperCase(colcmbCurrentColorConstant.Items.Strings[i]);
    Insert('_', s, 3);
    colcmbCurrentColorConstant.Items.Strings[i] := s;
  end;
end;


procedure TfrmDynTFTColorThemeGenSel.UpdateProjectThemeDirLabel;
var
  AThemeDirName: string;
begin
  AThemeDirName := GetThemeDirName;
  lblProjectThemeDir.Caption := 'Project Theme Dir: ' + ExtractFilePath(lbeDynTFTColorThemeInc.Text) + AThemeDirName + CDirSeparator;
end;


procedure TfrmDynTFTColorThemeGenSel.UpdateLiveColorArrayWithSelectedColor(ComponentIndex, ColorIndex: Integer);
var
  ColorName: string;
  IndexInCmb: Integer;
begin
  try
    if ComponentIndex < 0 then
      Exit;

    if ColorIndex < 0 then
      Exit;

    if ComponentIndex > Length(LiveColors) - 1 then
    begin
      DynTFT_DebugConsole('Can''t update LiveColors array. ComponentIndex is greater than array length - 1. ComponentIndex = ' + IntToStr(ComponentIndex) + '  Length = ' + IntToStr(Length(LiveColors)));
      Exit;
    end;

    if ColorIndex > LiveColorsConstCount[ComponentIndex] - 1 then
    begin
      DynTFT_DebugConsole('Can''t update LiveColors array. ColorIndex is greater than color constants count - 1. ColorIndex = ' + IntToStr(ColorIndex) + '  Count = ' + IntToStr(LiveColorsConstCount[ComponentIndex]));
      Exit;
    end;

    ColorName := GetColorConstantValueFromDefinition(FComponentColors[ComponentIndex].ColorConsts.Strings[ColorIndex]); //vallstComponentColors.Cells[1, ColorIndex + 1];
    if ColorName = '' then
      Exit;

    IndexInCmb := colcmbCurrentColorConstant.Items.IndexOf(ColorName);
    if IndexInCmb > -1 then
    begin
      //DynTFT_DebugConsole('ComponentIndex = ' + IntToStr(ComponentIndex) + '   ColorIndex = ' + IntToStr(ColorIndex) + '   IndexInCmb = ' + IntToStr(IndexInCmb) + '   ColorName = '  + ColorName);
      LiveColors[ComponentIndex]^[ColorIndex] := colcmbCurrentColorConstant.Colors[IndexInCmb];
    end;
  except
  end;
end;


procedure TfrmDynTFTColorThemeGenSel.RemoveIllegalCharactersFromLBE(ALabeledEdit: TLabeledEdit; AllowDot: Boolean);
var
  i: Integer;
  s: string;
  AllowedCharacters: set of Char;
begin
  AllowedCharacters := ['0'..'9', 'a'..'z', 'A'..'Z', '_'];
  if AllowDot then
    AllowedCharacters := AllowedCharacters + ['.'];

  s := ALabeledEdit.Text;
  for i := Length(s) downto 1 do
    if not (s[i] in AllowedCharacters) then
      Delete(s, i, 1);

  ALabeledEdit.Text := s;
end;


procedure TfrmDynTFTColorThemeGenSel.AddDynColExtension;
begin
  if FProjectPath = '' then
    Exit;

  if LowerCase(ExtractFileExt(FProjectPath)) <> '.dyncol' then
    FProjectPath := FProjectPath + '.dyncol';
end;


procedure TfrmDynTFTColorThemeGenSel.NewDynColProject;
var
  i: Integer;
begin
  FProjectPath := '';
  ProjectModified := False;
  FProjectIncSrcFolder := '';

  vallstComponentColors.Clear;
  vallstComponents.Clear;
  vallstComponentColors.RowCount := 1;
  vallstComponents.RowCount := 1;

  for i := 0 to Length(FComponentColors) - 1 do
    FreeAndNil(FComponentColors[i].ColorConsts);

  SetLength(FComponentColors, 0);

  lbeComponentNamePrefix.Text := 'DynTFT';
  lbeComponentNameSuffix.Text := '_SysColors.inc';
  lbeSavingThemePrefix.Text := 'User';
  lbeThemeName.Text := 'NewTheme';

  lbeDynTFTColorThemeInc.Text := '';

  vallstComponentColors.Repaint;
  vallstComponents.Repaint;

  if collstCommonColors.Count > 0 then
    if MessageDlg('Do you want to clear the list of user defined theme colors as well?', mtCustom, [mbYes, mbNo], 0) = mrYes then
    begin
      colcmbCurrentColorConstant.Clear;

      collstCommonColors.Clear;
      colcmbCurrentColorConstant.Style := colcmbCurrentColorConstant.Style - [cbStandardColors];  //first remove
      colcmbCurrentColorConstant.Style := colcmbCurrentColorConstant.Style + [cbStandardColors];  //then add
      AddCustomColorsToColCmb;
    end;
end;


procedure TfrmDynTFTColorThemeGenSel.LoadDynColProject;
const
  CReturnSeparator = {$IFDEF Windows} '\' {$ELSE} '/' {$ENDIF};
var
  Ini: TMemIniFile;
  i, n, ColorValue: Integer;
  ColorName: string;
  TempName: string;
begin
  Ini := TMemIniFile.Create(FProjectPath);
  try
    FProjectIncSrcFolder := Ini.ReadString('Files', 'ProjectIncSrcFolder', '');
    lbeDynTFTColorThemeInc.Text := Ini.ReadString('Files', 'DynTFTColorThemeInc', '');

    if not DirectoryExists(FProjectIncSrcFolder) then
    begin
      MessageDlg('Select directory with .inc files (component colors).', 'The directory, containing color themes, cannot be found. A directory browse dialog will open, to allow pointing to the proper directory.', mtInformation, [mbOK], 'Colors');

      SelectDirectoryDialog1.InitialDir := FProjectIncSrcFolder;

      TempName := FProjectIncSrcFolder;
      if (TempName <> '') and (TempName[Length(TempName)] = CReturnSeparator) then
        Delete(TempName, Length(TempName), 1);

      SelectDirectoryDialog1.Title := 'Select directory with component .inc files: ' + ExtractFileName(TempName);
      SelectDirectoryDialog1.FileName := ExtractFileName(TempName);

      if not SelectDirectoryDialog1.Execute then
        Exit;

      FProjectIncSrcFolder := SelectDirectoryDialog1.FileName;
    end;

    if not FileExists(lbeDynTFTColorThemeInc.Text) then
    begin
      TempName := lbeDynTFTColorThemeInc.Text;
      if (TempName <> '') and (TempName[Length(TempName)] = CReturnSeparator) then
        Delete(TempName, Length(TempName), 1);

      MessageDlg('Select DynTFTColorTheme.inc file.', 'The ' + ExtractFileName(TempName) + ' file cannot be found. A file browse dialog will open, to allow pointing to the proper file.', mtInformation, [mbOK], 'Colors');
      OpenDialog1.Title := 'Select (DynTFTColorTheme.inc file): ' + ExtractFileName(TempName);
      OpenDialog1.FileName := ExtractFileName(TempName);

      if not OpenDialog1.Execute then
        Exit;

      lbeDynTFTColorThemeInc.Text := OpenDialog1.FileName;
    end;

    lbeComponentNamePrefix.Text := Ini.ReadString('Names', 'ComponentNamePrefix', '');  //leave default value to '', to allow this kind of values
    lbeComponentNameSuffix.Text := Ini.ReadString('Names', 'ComponentNameSuffix', '');  //leave default value to '', to allow this kind of values

    lbeSavingThemePrefix.Text := Ini.ReadString('Names', 'SavingThemePrefix', 'User');
    lbeThemeName.Text := Ini.ReadString('Names', 'ThemeName', 'NewTheme');

    rdgrpColorListStorage.ItemIndex := Ini.ReadInteger('Options', 'ColorListStorage', 0);

    n := Ini.ReadInteger('Colors', 'UserColorCount', 0);
    for i := 0 to n - 1 do
    begin
      ColorName := Ini.ReadString('Colors', 'ColorName_' + IntToStr(i), 'CL_' + IntToStr(i));
      ColorValue := Ini.ReadInteger('Colors', 'ColorValue_' + IntToStr(i), CL_BLACK);

      collstCommonColors.AddItem(ColorName, TObject(PtrInt(ColorValue)));
    end;
  finally
    Ini.Free;
  end;

  LoadIncFilesToProject;
  ProjectModified := False;
  tmrUpdateColCmb.Enabled := True;
end;


procedure TfrmDynTFTColorThemeGenSel.SaveDynColProject;
var
  AStringList: TStringList;
  Ini: TMemIniFile;
  i: Integer;
begin
  AddDynColExtension;

  if (FProjectPath = '') or (FProjectPath = '.dyncol') then
    if SaveDialog2.Execute then
    begin
      FProjectPath := SaveDialog2.FileName;
      if FProjectPath = '' then
      begin
        MessageDlg('Invalid filename. Please save again.', mtError, [mbOK], 0);
        Exit;
      end;
    end
    else
      Exit;

  AddDynColExtension;

  if chkSaveThemeFilesWhenSavingProject.Checked then
    SaveProjectThemeFiles;  //this will set the lbeDynTFTColorThemeInc path if empty

  //clear ini, then save !
  AStringList := TStringList.Create;
  try
    AStringList.SaveToFile(FProjectPath);
  finally
    AStringList.Free;
  end;

  FProjectIncSrcFolder := ExtractFilePath(lbeDynTFTColorThemeInc.Text) + GetThemeDirName;

  Ini := TMemIniFile.Create(FProjectPath);
  try
    Ini.WriteString('Files', 'ProjectIncSrcFolder', FProjectIncSrcFolder);
    Ini.WriteString('Files', 'DynTFTColorThemeInc', lbeDynTFTColorThemeInc.Text);

    Ini.WriteString('Names', 'ComponentNamePrefix', lbeComponentNamePrefix.Text);  //leave default value to '', to allow this kind of values
    Ini.WriteString('Names', 'ComponentNameSuffix', lbeComponentNameSuffix.Text);  //leave default value to '', to allow this kind of values

    Ini.WriteString('Names', 'SavingThemePrefix', lbeSavingThemePrefix.Text);
    Ini.WriteString('Names', 'ThemeName', lbeThemeName.Text);

    Ini.WriteInteger('Options', 'ColorListStorage', rdgrpColorListStorage.ItemIndex);

    Ini.WriteInteger('Colors', 'UserColorCount', collstCommonColors.Count);
    for i := 0 to collstCommonColors.Count - 1 do
    begin
      Ini.WriteString('Colors', 'ColorName_' + IntToStr(i), collstCommonColors.ColorNames[i]);
      Ini.WriteInteger('Colors', 'ColorValue_' + IntToStr(i), collstCommonColors.Colors[i]);
    end;

    Ini.UpdateFile;
  finally
    Ini.Free;
  end;

  ProjectModified := False;
end;


procedure TfrmDynTFTColorThemeGenSel.LoadIncFilesToProject;
begin
  LoadComponentNamesFromIncFiles(FProjectIncSrcFolder, vallstComponents);
  FilterComponentNamesByColorExistence(FProjectIncSrcFolder, lbeComponentNamePrefix.Text, lbeComponentNameSuffix.Text, vallstComponents);
  LoadColorConsts(FProjectIncSrcFolder);
end;


procedure TfrmDynTFTColorThemeGenSel.tmrUpdateColCmbTimer(Sender: TObject);
var
  i, j, InitialItemIndex: Integer;
begin
  tmrUpdateColCmb.Enabled := False;
  InitialItemIndex := colcmbCurrentColorConstant.ItemIndex;
  for i := colcmbCurrentColorConstant.Items.Count - 1 downto FInitialCmbColorCount do
    colcmbCurrentColorConstant.Items.Delete(i);

  for i := 0 to collstCommonColors.Count - 1 do
    colcmbCurrentColorConstant.AddItem(collstCommonColors.Items.Strings[i], TObject(PtrInt(collstCommonColors.Colors[i])));

  if InitialItemIndex < colcmbCurrentColorConstant.Items.Count then
    colcmbCurrentColorConstant.ItemIndex := InitialItemIndex;

  for i := 0 to Length(FComponentColors) - 1 do
  begin
    for j := 0 to FComponentColors[i].ColorConsts.Count - 1 do
      UpdateLiveColorArrayWithSelectedColor(i, j);
  end;

  DynTFTRepaintScreenComponents(1, CNORMALREPAINT, nil);
  RepaintLastMessageBoxInstance;
end;


procedure TfrmDynTFTColorThemeGenSel.pnlColorDblClick(Sender: TObject);
begin
  ColorDialog1.Color := pnlColor.Color;
  if not ColorDialog1.Execute then
    Exit;

  UpdatePanelColorFromColorDialog;
end;


procedure TfrmDynTFTColorThemeGenSel.rdgrpColorListStorageClick(Sender: TObject);
begin
  ProjectModified := True;
end;


procedure TfrmDynTFTColorThemeGenSel.spdbtnGenerateListFromIncsClick(Sender: TObject);
begin
  if not SelectDirectoryDialog1.Execute then
    Exit;

  FProjectIncSrcFolder := SelectDirectoryDialog1.FileName;

  LoadIncFilesToProject;

  ProjectModified := True;
end;


procedure TfrmDynTFTColorThemeGenSel.tmrSetPanelColorTimer(Sender: TObject);
begin
  tmrSetPanelColor.Enabled := False;
  pnlColor.Color := RGB(trbR.Position, trbG.Position, trbB.Position);
  lblB.Caption := 'B: ' + IntToStr(trbB.Position);
  lblG.Caption := 'G: ' + IntToStr(trbG.Position);
  lblr.Caption := 'R: ' + IntToStr(trbR.Position);

  lbeHEXBGR.Text := IntToHex(pnlColor.Color, 8);
  lbeHEXRGB.Text := IntToHex(TrueColorTo16bitColor(pnlColor.Color), 4);

  if chkAutoUpdateSelected.Checked then
    if collstCommonColors.ItemIndex > -1 then
    begin
      collstCommonColors.Colors[collstCommonColors.ItemIndex] := pnlColor.Color;
      tmrUpdateColCmb.Enabled := True;
      ProjectModified := True;
    end;
end;


procedure TfrmDynTFTColorThemeGenSel.FormCreate(Sender: TObject);
begin
  tmrStartup.Enabled := True;
  trbB.Position := $DE;
  trbG.Position := $DC;
  trbR.Position := $C7;

  vallstComponentColors.Cells[0, 0] := 'Component Color Item';
  vallstComponentColors.Cells[1, 0] := 'Color Constant';
  vallstComponentColors.ColWidths[0] := Max(vallstComponentColors.ColWidths[0], Canvas.TextWidth(vallstComponentColors.Cells[0, 0]) + 10);

  vallstComponentColors.FixedCols := 0;
  SetLength(FComponentColors, 0);

  vallstComponents.Cells[0, 0] := 'Source File';
  vallstComponents.Cells[1, 0] := 'Component Name';
  vallstComponents.FixedCols := 1;

  colcmbCurrentColorConstant.Style := colcmbCurrentColorConstant.Style - [cbStandardColors];
  colcmbCurrentColorConstant.Style := colcmbCurrentColorConstant.Style + [cbStandardColors];
  AddCustomColorsToColCmb;

  spdbtnGenerateListFromIncs.Caption := 'Generate list'#13#10'from .inc files...';

  FProjectPath := '';
  FProjectModified := False;
  FProjectIncSrcFolder := '';
  FIncLoaderDialogStyle := False; //Leave false

  ScreenBackgroundColor := pnlColor.Color;
end;


procedure TfrmDynTFTColorThemeGenSel.FormDestroy(Sender: TObject);
var
  i: Integer;
  Res: TModalResult;
begin
  try
    SaveSettingsToIni;
  except
  end;

  try
    for i := 0 to Length(FComponentColors) - 1 do
      FreeAndNil(FComponentColors[i].ColorConsts);

    SetLength(FComponentColors, 0);
  except
  end;

  if FProjectModified then
  begin
    Res := MessageDlg('This project is modified. Do you want to save it before closing?', mtConfirmation, [mbYes, mbNo], 0);

    if Res = mrYes then
      SaveDynColProject;
  end;
end;


procedure TfrmDynTFTColorThemeGenSel.lbeDynTFTColorThemeIncChange(Sender: TObject);
begin
  UpdateProjectThemeDirLabel;
end;


procedure TfrmDynTFTColorThemeGenSel.lbeSavingThemePrefixChange(Sender: TObject);
begin
  RemoveIllegalCharactersFromLBE(Sender as TLabeledEdit, False);
  UpdateProjectThemeDirLabel;
end;


procedure TfrmDynTFTColorThemeGenSel.lbeThemeNameChange(Sender: TObject);
begin
  RemoveIllegalCharactersFromLBE(Sender as TLabeledEdit, False);
  UpdateProjectThemeDirLabel;
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_ProjectClick(Sender: TObject);
begin
  if chkSaveThemeFilesWhenSavingProject.Checked then
  begin
    MenuItem_SaveProject.Caption := 'Save Project and component inc files';
    MenuItem_SaveProjectAs.Caption := 'Save Project and component inc files, As...';
  end
  else
  begin
    MenuItem_SaveProject.Caption := 'Save Project';
    MenuItem_SaveProjectAs.Caption := 'Save Project As...';
  end;
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_NewProjectClick(Sender: TObject);
var
  Res: TModalResult;
begin
  if FProjectModified then
  begin
    Res := MessageDlg('This project is modified. Do you want to save it before making a new one?', mtConfirmation, [mbYes, mbNo], 0);

    if Res = mrYes then
      SaveDynColProject;
  end;

  NewDynColProject;
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_OpenProjectClick(Sender: TObject);
var
  Res: TModalResult;
begin
  if not OpenDialog2.Execute then
    Exit;

  if FProjectModified then
  begin
    Res := MessageDlg('This project is modified. Do you want to save it before making a new one?', mtConfirmation, [mbYes, mbNo], 0);

    if Res = mrYes then
      SaveDynColProject;
  end;

  NewDynColProject; //make sure loading a new project is done with clean lists
  FProjectPath := OpenDialog2.FileName;
  LoadDynColProject;
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_SaveProjectClick(Sender: TObject);
begin
  SaveDynColProject;
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_SaveProjectAsClick(Sender: TObject);
var
  Res: TModalResult;
begin
  if SaveDialog2.Execute then
  begin
    FProjectPath := SaveDialog2.FileName;
    if FProjectPath = '' then
    begin
      MessageDlg('Invalid filename. Please save again.', mtError, [mbOK], 0);
      Exit;
    end;
  end
  else
    Exit;

  AddDynColExtension;

  while FileExists(FProjectPath) do
  begin
    Res := MessageDlg('This file already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0);
    if Res = mrNo then
    begin
      if SaveDialog2.Execute then
      begin
        FProjectPath := SaveDialog2.FileName;
        if (FProjectPath = '') or (FProjectPath = '.dyncol') then
        begin
          MessageDlg('Invalid filename. Please save again.', mtError, [mbOK], 0);
          Exit;
        end;

        AddDynColExtension;
      end;
    end
    else
      Break;
  end;

  SaveDynColProject;
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_ExitClick(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_NewStyleDialogClick(
  Sender: TObject);
begin
  FIncLoaderDialogStyle := True;
  SelectDirectoryDialog1.Options := SelectDirectoryDialog1.Options - [ofOldStyleDialog];
  (Sender as TMenuItem).Checked := True; //for some reason, this has to be manually set
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_OldStyleDialogClick(
  Sender: TObject);
begin
  FIncLoaderDialogStyle := False;
  SelectDirectoryDialog1.Options := SelectDirectoryDialog1.Options + [ofOldStyleDialog];
  (Sender as TMenuItem).Checked := True; //for some reason, this has to be manually set
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_ResetPrefixAndSuffixClick(
  Sender: TObject);
begin
  lbeComponentNamePrefix.Text := 'DynTFT';
  lbeComponentNameSuffix.Text := '_SysColors.inc';
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_SaveProjectThemeClick(Sender: TObject);
begin
  SaveProjectThemeFiles;
end;


procedure TfrmDynTFTColorThemeGenSel.MenuItem_SaveLiveThemeClick(Sender: TObject);
begin
  SaveLiveThemeFiles;
  SaveLiveColors;
end;


function ColorNameIsValid(AColorName: string; DisplayMessageDialog: Boolean = True): Boolean;
var
  TrimmedName: string;
  i: Integer;
begin
  Result := False;
  TrimmedName := Trim(AColorName);

  if TrimmedName = '' then
  begin
    if DisplayMessageDialog then
      MessageDlg('Color name can''t be empty.', mtError, [mbOK], 0);
    Exit;
  end;

  if Pos(' ', TrimmedName) > 0 then
  begin
    if DisplayMessageDialog then
      MessageDlg('Color name can''t contain blanks.', mtError, [mbOK], 0);
    Exit;
  end;

  if TrimmedName[1] in ['0'..'9'] then
  begin
    if DisplayMessageDialog then
      MessageDlg('Color name can''t start with a number.', mtError, [mbOK], 0);
    Exit;
  end;

  if not (UpCase(TrimmedName[1]) in ['A'..'Z', '_']) then
  begin
    if DisplayMessageDialog then
      MessageDlg('Color name should start with a letter or an underscore.', mtError, [mbOK], 0);
    Exit;
  end;

  for i := 2 to Length(TrimmedName) do
    if not (UpCase(TrimmedName[i]) in ['0'..'9', 'A'..'Z', '_']) then
    begin
      if DisplayMessageDialog then
        MessageDlg('Color name contains illegal characters, like:' + #13#10 + TrimmedName[i], mtError, [mbOK], 0);
      Exit;
    end;

  Result := True;
end;


procedure TfrmDynTFTColorThemeGenSel.lbeColorNameChange(Sender: TObject);
begin
  if ColorNameIsValid(lbeColorName.Text, False) then
    lbeColorName.Font.Color := clDefault
  else
    lbeColorName.Font.Color := clRed;
end;


procedure TfrmDynTFTColorThemeGenSel.btnAddColorClick(Sender: TObject);
begin
  if not ColorNameIsValid(lbeColorName.Text) then
    Exit;

  if ColorNameExistsInList(lbeColorName.Text, collstCommonColors) then
  begin
    MessageDlg('This color name already exists.', mtError, [mbOK], 0);
    Exit;
  end;

  if ColorNameExistsInColCmb(lbeColorName.Text, colcmbCurrentColorConstant) then
  begin
    MessageDlg('This color name already exists among the predefined constants.', mtError, [mbOK], 0);
    Exit;
  end;

  if ColorExistsInList(pnlColor.Color, collstCommonColors) then
    if MessageDlg('This color already exists. Do you want to add it again under "' + lbeColorName.Text + '" name?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

  collstCommonColors.Items.Add(lbeColorName.Text);
  collstCommonColors.Colors[collstCommonColors.Items.Count - 1] := pnlColor.Color;
  collstCommonColors.ItemIndex := collstCommonColors.Items.Count - 1;
  tmrUpdateColCmb.Enabled := True;
  ProjectModified := True;
end;


procedure TfrmDynTFTColorThemeGenSel.btnUpdateColorClick(Sender: TObject);
var
  ExcludeIndex: Integer;
  i, j: Integer;
  s: string;
  AColConstName, AColConstValue, AOldColConstValue: string;
begin
  if not ColorNameIsValid(lbeColorName.Text) then
    Exit;

  if collstCommonColors.Count = 0 then
  begin
    MessageDlg('No color exists. Please add a color first.', mtError, [mbOK], 0);
    Exit;
  end;

  if collstCommonColors.ItemIndex = -1 then
  begin
    MessageDlg('No color is selected to be updated. Please select a color.', mtError, [mbOK], 0);
    Exit;
  end;

  if ColorNameExistsInList(lbeColorName.Text, collstCommonColors, collstCommonColors.ItemIndex) then
  begin
    MessageDlg('This color name already exists.', mtError, [mbOK], 0);
    Exit;
  end;

  ExcludeIndex := colcmbCurrentColorConstant.Items.IndexOf(collstCommonColors.Items.Strings[collstCommonColors.ItemIndex]);
  if ColorNameExistsInColCmb(lbeColorName.Text, colcmbCurrentColorConstant, ExcludeIndex) then
  begin
    MessageDlg('This color name already exists among the predefined constants.', mtError, [mbOK], 0);
    Exit;
  end;

  if ColorExistsInList(pnlColor.Color, collstCommonColors, collstCommonColors.ItemIndex) then
    if MessageDlg('This color already exists. Do you want to update the selected color under "' + lbeColorName.Text + '" name?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

  if ColorExistsInColCmb(pnlColor.Color, colcmbCurrentColorConstant) then
    if MessageDlg('This color already exists as a predefined constant. Do you want to update the selected color under "' + lbeColorName.Text + '" name?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

  AOldColConstValue := collstCommonColors.Items.Strings[collstCommonColors.ItemIndex];
  collstCommonColors.Items.Strings[collstCommonColors.ItemIndex] := lbeColorName.Text;
  collstCommonColors.Colors[collstCommonColors.ItemIndex] := pnlColor.Color;
  
  for i := 0 to Length(FComponentColors) - 1 do
  begin
    for j := 0 to FComponentColors[i].ColorConsts.Count - 1 do
      if Pos(AOldColConstValue, FComponentColors[i].ColorConsts.Strings[j]) > 0 then
      begin
        AColConstName := GetColorConstantNameFromDefinition(FComponentColors[i].ColorConsts.Strings[j]);
        //AColConstValue := GetColorConstantValueFromDefinition(FComponentColors[i].ColorConsts.Strings[j]);
        AColConstValue := lbeColorName.Text;

        s := FComponentColors[i].ColorConsts.Strings[j];
        s := Copy(s, Pos(';', s) + 1, MaxInt); //extract comment (if any)

        FComponentColors[i].ColorConsts.Strings[j] := AColConstName + ' = ' + AColConstValue + ';' + s;
      end;
  end;

  vallstComponentColors.RowCount := 1;
  vallstComponentColors.Repaint;

  DisplayColorConstants(vallstComponents.Selection.Top - 1);

  tmrUpdateColCmb.Enabled := True;
  ProjectModified := True;
end;


procedure TfrmDynTFTColorThemeGenSel.btnUpdateConstantClick(Sender: TObject);
var
  s: string;
  AColConstName, AColConstValue: string;
begin
  if (vallstComponentColors.RowCount <= 1) or ((vallstComponentColors.RowCount <= 2) and (vallstComponentColors.Cells[0, 1] = '')) then
  begin
    MessageDlg('No color constant exists. Please select a component to load its color constants.', mtError, [mbOK], 0);
    Exit;
  end;

  if not ColorNameIsValid(lbeColorConstName.Text) then
    Exit;

  if vallstComponentColors.Selection.Top = -1 then
  begin
    MessageDlg('No color constant is selected to be updated. Please select a constant.', mtError, [mbOK], 0);
    Exit;
  end;

  AColConstName := lbeColorConstName.Text;
  AColConstValue := colcmbCurrentColorConstant.Text;

  s := FComponentColors[vallstComponents.Selection.Top - 1].ColorConsts.Strings[vallstComponentColors.Selection.Top - 1];
  s := Copy(s, Pos(';', s) + 1, MaxInt); //extract comment (if any)

  FComponentColors[vallstComponents.Selection.Top - 1].ColorConsts.Strings[vallstComponentColors.Selection.Top - 1] := AColConstName + ' = ' + AColConstValue + ';' + s;

  if chkEditableConstName.Checked then
    vallstComponentColors.Cells[0, vallstComponentColors.Selection.Top] := AColConstName;

  vallstComponentColors.Cells[1, vallstComponentColors.Selection.Top] := AColConstValue;

  UpdateLiveColorArrayWithSelectedColor(vallstComponents.Selection.Top - 1, vallstComponentColors.Selection.Top - 1);
  ProjectModified := True;

  try
    ScreenBackgroundColor := CL_DynTFTScreen_Background;
    DynTFTAllComponentsContainer[1].ScreenColor := CL_DynTFTScreen_Background;
    DynTFTRepaintScreen(1, CNORMALREPAINT, nil);

    RepaintLastMessageBoxInstance;
  except
    DynTFT_DebugConsole('DynTFT is not initialized.');
  end;

  if not frmDynTFTColorThemeGenMain.tmrSimulator.Enabled then
    DynTFT_DebugConsole('Please start the simulator to draw components.');
end;


procedure TfrmDynTFTColorThemeGenSel.chkEditableConstNameChange(Sender: TObject);
begin
  lbeColorConstName.Enabled := chkEditableConstName.Checked;

  if chkEditableConstName.Checked then
    vallstComponentColors.FixedCols := 0
  else
    vallstComponentColors.FixedCols := 1;
end;


procedure TfrmDynTFTColorThemeGenSel.chkHighlightGroupBoxesChange(
  Sender: TObject);
var
  AColor: TColor;
begin
  if chkHighlightGroupBoxes.Checked then
    AColor := $00B0FFFF
  else
    AColor := clDefault;

  grpDynTFTColorThemeIncGenerator.Color := AColor;
  grpComponents.Color := AColor;
  grpColorSelector.Color := AColor;
end;


procedure TfrmDynTFTColorThemeGenSel.btnDeleteColorClick(Sender: TObject);
begin
  if collstCommonColors.Count = 0 then
    Exit;

  if collstCommonColors.ItemIndex = -1 then
  begin
    MessageDlg('No color is selected to be deleted. Please select a color.', mtError, [mbOK], 0);
    Exit;
  end;

  if MessageDlg('Are you sure you want to delete the selected color?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    collstCommonColors.Items.Delete(collstCommonColors.ItemIndex);
    collstCommonColors.ItemIndex := collstCommonColors.Items.Count - 1;
    tmrUpdateColCmb.Enabled := True;
    ProjectModified := True;
  end;
end;


procedure TfrmDynTFTColorThemeGenSel.btnGetFromOutputClick(Sender: TObject);
begin
  lbeComponentNamePrefix.Text := lbeSavingThemePrefix.Text;
  lbeComponentNameSuffix.Text := '_' + lbeThemeName.Text + 'Colors.inc';

  RemoveIllegalCharactersFromLBE(lbeComponentNamePrefix, False);
  RemoveIllegalCharactersFromLBE(lbeComponentNameSuffix, True);
end;


procedure TfrmDynTFTColorThemeGenSel.btnMoveColorUpClick(Sender: TObject);
var
  SelectedItem: Integer;
begin
  if collstCommonColors.ItemIndex < 1 then
    Exit;

  SelectedItem := collstCommonColors.ItemIndex;
  collstCommonColors.Items.Move(collstCommonColors.ItemIndex, collstCommonColors.ItemIndex - 1);
  collstCommonColors.ItemIndex := SelectedItem - 1;
  tmrUpdateColCmb.Enabled := True;
  ProjectModified := True;
end;


procedure TfrmDynTFTColorThemeGenSel.btnPrintDynTFTScreenClick(Sender: TObject);
var
  SelectedExt: string;
begin
  if not SavePictureDialog1.Execute then
    Exit;

  case SavePictureDialog1.FilterIndex of
    1: SelectedExt := '.png';
    2: SelectedExt := '.bmp';
  else
    SelectedExt := '.bmp';
  end;

  if UpperCase(ExtractFileExt(SavePictureDialog1.FileName)) <> UpperCase(SelectedExt) then
    SavePictureDialog1.FileName := SavePictureDialog1.FileName + SelectedExt;

  frmDynTFTColorThemeGenScreen.imgScreen.Picture.SaveToFile(SavePictureDialog1.FileName, ExtractFileExt(SavePictureDialog1.FileName));
end;


procedure TfrmDynTFTColorThemeGenSel.btnSetBackgroundColorClick(Sender: TObject);
begin
  try
    ScreenBackgroundColor := pnlColor.Color;
    DynTFTAllComponentsContainer[1].ScreenColor := pnlColor.Color;
    DynTFTRepaintScreen(1, CNORMALREPAINT, nil);

    RepaintLastMessageBoxInstance;
  except
    DynTFT_DebugConsole('DynTFT is not initialized.');
  end;

  if not frmDynTFTColorThemeGenMain.tmrSimulator.Enabled then
    DynTFT_DebugConsole('Please start the simulator to draw components.');
end;


procedure TfrmDynTFTColorThemeGenSel.btnMoveColorDownClick(Sender: TObject);
var
  SelectedItem: Integer;
begin
  if collstCommonColors.ItemIndex < 0 then
    Exit;

  if collstCommonColors.ItemIndex = collstCommonColors.Count - 1 then
    Exit;

  SelectedItem := collstCommonColors.ItemIndex;
  collstCommonColors.Items.Move(collstCommonColors.ItemIndex, collstCommonColors.ItemIndex + 1);
  collstCommonColors.ItemIndex := SelectedItem + 1;
  tmrUpdateColCmb.Enabled := True;
  ProjectModified := True;
end;


procedure TfrmDynTFTColorThemeGenSel.btnBrowseDynTFTColorThemeIncClick(Sender: TObject);
begin
  if DirectoryExists(ExtractFilePath(lbeDynTFTColorThemeInc.Text)) then
    SaveDialog1.InitialDir := ExtractFilePath(lbeDynTFTColorThemeInc.Text);

  if not SaveDialog1.Execute then
    Exit;

  lbeDynTFTColorThemeInc.Text := SaveDialog1.FileName;
end;


procedure TfrmDynTFTColorThemeGenSel.btnColorFromListClick(Sender: TObject);
var
  ColorName: string;
  ColorIndex: Integer;
begin
  ColorName := vallstComponentColors.Cells[1, vallstComponentColors.Selection.Top];

  if ColorName = '' then
  begin
    MessageDlg('No valid color is selected in Color Selector.', mtError, [mbOK], 0);
    Exit;
  end;

  ColorIndex := colcmbCurrentColorConstant.Items.IndexOf(ColorName);
  if ColorIndex = -1 then
  begin
    MessageDlg('Selected color (' + ColorName + ') does not appear in the list of possible colors. If this is a custom color, please load the .dyncol project where it was defined.', mtError, [mbOK], 0);
    Exit;
  end;

  //debug message
  //MessageDlg('Selected: ' + ColorName + ' = ' + IntToHex(colcmbCurrentColorConstant.Colors[ColorIndex], 8), mtInformation, [mbOK], 0);

  ColorDialog1.Color := colcmbCurrentColorConstant.Colors[ColorIndex];
  UpdatePanelColorFromColorDialog;
end;


procedure TfrmDynTFTColorThemeGenSel.collstCommonColorsClick(Sender: TObject);
begin
  if collstCommonColors.ItemIndex = -1 then
    Exit;
  ColorDialog1.Color := collstCommonColors.Selected;
  UpdatePanelColorFromColorDialog;
  lbeColorName.Text := collstCommonColors.Items.Strings[collstCommonColors.ItemIndex];
end;


procedure TfrmDynTFTColorThemeGenSel.tmrStartupTimer(Sender: TObject);
begin
  tmrStartup.Enabled := False;
  Show;
  LoadSettingsFromIni;
  UpdateProjectThemeDirLabel;

  if ParamCount > 0 then
    if FileExists(ParamStr(1)) then
    begin
      NewDynColProject; //make sure loading a new project is done with clean lists
      FProjectPath := ParamStr(1);
      LoadDynColProject;
    end;
end;


procedure TfrmDynTFTColorThemeGenSel.trbListItemHeightChange(Sender: TObject);
var
  SelectedItem: Integer;
begin
  SelectedItem := collstCommonColors.ItemIndex;

  collstCommonColors.ItemHeight := trbListItemHeight.Position;
  collstCommonColors.ColorRectWidth := trbListItemHeight.Position;
  lblListItemHeight.Caption := 'List Item Height: ' + IntToStr(trbListItemHeight.Position);

  collstCommonColors.ItemIndex := SelectedItem;
end;


procedure TfrmDynTFTColorThemeGenSel.trbRGBChange(Sender: TObject);
begin
  tmrSetPanelColor.Enabled := True;
end;


procedure TfrmDynTFTColorThemeGenSel.vallstComponentColorsDblClick(
  Sender: TObject);
begin
  colcmbCurrentColorConstant.DroppedDown := True;
end;


procedure TfrmDynTFTColorThemeGenSel.vallstComponentColorsSelection(
  Sender: TObject; aCol, aRow: Integer);
begin
  if vallstComponentColors.RowCount < 1 then
    Exit;

  lbeColorConstName.Text := vallstComponentColors.Cells[0, aRow];
  colcmbCurrentColorConstant.ItemIndex := colcmbCurrentColorConstant.Items.IndexOf(vallstComponentColors.Cells[1, aRow]);
end;


procedure TfrmDynTFTColorThemeGenSel.vallstComponentsSelection(Sender: TObject;
  aCol, aRow: Integer);
begin
  vallstComponentColors.RowCount := 1;
  vallstComponentColors.Repaint;

  DisplayColorConstants(aRow - 1);
  vallstComponentColorsSelection(nil, 0, 1);
end;

end.

