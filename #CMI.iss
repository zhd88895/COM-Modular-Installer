﻿; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "COM Modular Installer"
#define MyAppVersion "2.5.17"
#define MyAppURL "https://krypto5863.github.io/COM-Modular-Installer/"
#define MyAppUpdates "https://github.com/krypto5863/COM-Modular-Installer/releases"
#define MyAppSupport "https://github.com/krypto5863/COM-Modular-Installer/issues"
#define MinimumVersion 22500
#define CRMinimumVersion 32500
#define CRStartVersion 30000

#define LMMT false

#define TargetApp "\COM3D2.exe"
#define WrongTarget '\CM3D2.exe'
#define Assembly "COM3D2x64_Data\Managed\Assembly-CSharp.dll"
#define AppLine "COM3D2.exe"

#define UpdateSite1 "http://com3d2.jp/update/"
#define UpdateSite2 "https://com3d2.world/r18/update/"
#define UpdateSite3 "https://com3d2.jp/com3d25/update/index.html#update"
#define UpdateFile "com3d2_up%s%s%s"

#define UpdateFetch1 "http://p2-dl0.kisskiss.tv/com3d2/update/"
#define UpdateFetch2 "http://7.242.238.202.static.iijgio.jp/"

#define ManifestLink "https://raw.githubusercontent.com/krypto5863/COM-Modular-Installer/master/manifest.txt"

#define EnglishRegistry "Software\KISS\CUSTOM ORDER MAID3D 2"
#define JapRegistry "Software\KISS\カスタムオーダーメイド3D2"

#define ShortName "CMI"

#define HelperDLL "CMIHelper.dll"

#define SrcDir "CMI"
#define SrcDirFiles "CMI\#NoneCREdit"

#define ModDir "\Mod"
[Setup]
OutputBaseFilename={#MyAppName} {#MyAppVersion}
OutputDir=Compiled_EXE

; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8143E460-C581-40B8-9D11-2FFC2DD35ADF}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppSupport}
AppUpdatesURL={#MyAppUpdates}

PrivilegesRequired=admin
SetupLogging=yes
Uninstallable=no

Compression=lzma2/ultra64
SolidCompression=yes
LZMAUseSeparateProcess=yes
LZMANumBlockThreads=4
LZMABlockSize=92153

DisableDirPage=no
DefaultDirName={#MyAppName}
DirExistsWarning=no
AppendDefaultDirName=no

LicenseFile={#SrcDir}\Documentation\license.txt
InfoBeforeFile={#SrcDir}\Documentation\info.txt

WizardStyle=modern
SetupIconFile={#SrcDir}\UI\Icon.ico
WizardSmallImageFile={#SrcDir}\UI\Icon.bmp
WizardSizePercent=150

//Banner Images.
[Files]
Source: "{#SrcDir}\UI\rabbit.bmp"; Flags: dontcopy
Source: "{#SrcDir}\UI\kite.bmp"; Flags: dontcopy
Source: "{#SrcDir}\UI\kry.bmp"; Flags: dontcopy
Source: "{#SrcDir}\UI\pain.bmp"; Flags: dontcopy
Source: "{#SrcDir}\UI\joco.bmp"; Flags: dontcopy
Source: "{#SrcDir}\UI\shin.bmp"; Flags: dontcopy
[/Files]

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl, {#SrcDir}\Messages\English.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "chinesesimplified"; MessagesFile: "{#SrcDir}\Messages\ChineseSimplifiedDefault.isl, {#SrcDir}\Messages\Simplified_ChineseCMI.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl, {#SrcDir}\Messages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "icelandic"; MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl, {#SrcDir}\Messages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Types]
Name:"compact"; Description:{cm:TypeCompact}
Name:"full"; Description:{cm:TypeFull};
Name:"eng"; Description:{cm:TypeEng}
Name:"notr"; Description:{cm:TypeNoTr}
Name:"pic"; Description:{cm:TypePic}
Name:"hen"; Description:{cm:TypeHen}
Name:"self"; Description:{cm:TypeSelf}
Name:"custom"; Description:{cm:TypeCustom}; Flags:iscustom
Name:"preset"; Description:{cm:TypePreset};
Name:"none"; Description:{cm:TypeNone};

[Components]

Name: bepinex; Description: {cm:BepinEx}; Types: full notr compact eng pic self hen; Flags: checkablealone
Name: bepinexPlugs; Description: BepInEx Plugins; Types: full notr compact eng pic self hen; Flags: checkablealone

	Name: bepinexPlugs/addyot; Description: AddYotogiSliderSE2; Types: Full compact eng notr hen self;
	Name: bepinexPlugs/AdvMatMod; Description: AdvancedMaterialModifier; Types: self;
	Name: bepinexPlugs/autosave; Description: AutoSave; Types: Full eng notr hen self;
	Name: bepinexPlugs/cameracon; Description:CameraControlEx; Types:full pic eng notr self;
	Name: bepinexPlugs/choosypreset; Description:ChoosyPreset; Types:full pic eng notr self;
	Name: bepinexPlugs/ConfigMan; Description: ConfigurationManager; Types: full notr compact eng pic self hen;
	Name: bepinexPlugs/UPCheck; Description: CMIUpdateChecker; Types: full notr compact eng pic self hen;
	Name: bepinexPlugs/EditBodyLoadFix; Description: EditBodyLoadFix; Types:full notr compact eng pic self hen;
	Name: bepinexPlugs/ExErrorHandle; Description: ExtendedErrorHandling; Types:full notr compact eng pic self hen;
	Name: bepinexPlugs/ExPresetMan; Description: ExtendedPresetManagement; Types:full notr compact eng pic self hen;
	Name: bepinexPlugs/FPSCount; Description: FPSCounter; Types: self;
	Name: bepinexPlugs/FPSUn; Description: FPSUnlock; Types: self;
	Name: bepinexPlugs/GearFix; Description: GearMenuFix; Types:full notr compact eng pic self hen;
	Name: bepinexPlugs/InBlock; Description: InputHotkeyBlock; Types: full notr compact eng pic self hen;
	Name: bepinexPlugs/meidophoto; Description: MeidoPhotoStudio; Types: full notr eng pic self;
		Name: bepinexPlugs/meidophoto/Poses; Description: 1900 Poses for MPS; Flags: dontinheritcheck;

	Name: bepinexPlugs/modref; Description: ModRefresh; Types:full pic self eng notr;
	Name: bepinexPlugs/OptIMGUI; Description: OptimizeIMGUI; Types: Full notr compact eng pic self hen;
	Name: bepinexPlugs/scriptloader; Description: ScriptLoader; Types: Full notr compact eng pic self hen;
		Name: bepinexPlugs/scriptloader/oldsubs; Description: Add Subs to Old Yotogi Script;
		Name: bepinexPlugs/scriptloader/allprivate; Description: All Maids In Private Mode Script;
		Name: bepinexPlugs/scriptloader/charactersortredux; Description: Character Edit Sort Redux Script; Types: Full notr eng self hen;
		Name: bepinexPlugs/scriptloader/dumpinfo; Description: DumpGameInfo Script; Types: Full notr compact eng pic self hen;
		Name: bepinexPlugs/scriptloader/blinkstop; Description: EditBlinkStop Script; Types: Full notr eng pic self hen;
		Name: bepinexPlugs/scriptloader/editname; Description: EditableNames Script; Types: Full notr compact eng pic self hen;
		Name: bepinexPlugs/scriptloader/enascout; Description: Enable Scout Mode Script;
		Name: bepinexPlugs/scriptloader/fastfade; Description: FastFade Script; Types: Full notr eng pic self hen;
		Name: bepinexPlugs/scriptloader/forceschedule; Description: ForceScheduleEvents Script;
		Name: bepinexPlugs/scriptloader/unlockmemories; Description: MemoriesModeUnlock Script;
		Name: bepinexPlugs/scriptloader/morenames; Description: MoreRandomNames Script; Types: Full notr eng hen;
		Name: bepinexPlugs/scriptloader/nameext; Description: NameExtender Script; Types: Full compact eng notr pic self hen;
		Name: bepinexPlugs/scriptloader/savesettings; Description: SaveSettingsInGame Script; Types: Full compact eng notr pic self hen;
		Name: bepinexPlugs/scriptloader/skiplogo; Description: SkipStartLogo Script; Types: Full notr compact eng pic self hen;
		Name: bepinexPlugs/scriptloader/thumbs; Description: Load Small Thumbs Script;
		Name: bepinexPlugs/scriptloader/quickedit; Description: Quick Edit Scene Script;
		Name: bepinexPlugs/scriptloader/redupe; Description: Report Dupes Script; Types: Full compact eng notr pic self hen;
		Name: bepinexPlugs/scriptloader/unlockskills; Description: Unlock All Skills;
		Name: bepinexPlugs/scriptloader/wrapmode; Description: Wrap Mode Extend Script; Types: Full compact eng notr pic self hen;

		Name: bepinexPlugs/ShapekeyMaster; Description: ShapekeyMaster; Types: Full notr compact eng pic self hen;
		Name: bepinexPlugs/ShiftClick; Description: ShiftClickExplorer; Types: Full notr compact eng pic self hen;

	Name: bepinexPlugs/ShortMenu; Description: ShortMenuLoader; Types: Full notr compact eng pic self hen;
	Name: bepinexPlugs/ShortVanilla; Description: ShortMenuVanillaDatabase; Types: Full notr compact eng pic self hen;
	Name: bepinexPlugs/ShortStart; Description: ShortStartLoader; Types: Full notr compact eng pic self hen;

	Name: bepinexPlugs/Translations; Description:{cm:TranslationPlugs}; Types: Full compact pic self hen;
		Name: bepinexPlugs/Translations/i18nEx; Description: i18nEx;  Types: full compact pic self hen;
			Name: bepinexPlugs/Translations/i18nEx/extrans; Description:{cm:ExtraTrans}; Types:full compact self pic hen;
				
		Name: bepinexPlugs/Translations/resredir; Description: Resource Redirector;
			Name: bepinexPlugs/Translations/resredir/xuat; Description: XUnity AutoTranslator; Types: full compact pic self hen;

	Name: bepinexPlugs/UndressUtil; Description: UndressUtil; Types: Full notr compact eng pic self hen;

Name: ModExt; Description: Modding Extensions;
    Name: ModExt/modloader; Description: ModLoader; Flags: exclusive; Types: full compact eng notr pic hen;
	Name: ModExt/MaidLoader; Description: MaidLoader; Flags: exclusive; Types: self;

Name: Patchers; Description: Patchers; types: full compact eng pic self hen;

	Name: Patchers/autocon; Description: AutoConverter; Types: full compact eng notr pic self hen;
	Name: Patchers/bodycat; Description: BodyCategoryAdd; Types: full compact eng notr pic self hen;
	Name: Patchers/extsave; Description: ExternalSaveData; Types: Full self pic eng notr hen; Flags: checkablealone;
		Name: Patchers/extsave/vibemaid; Description:VibeYourMaid;
	Name: Patchers/extsave/maidvoice; Description: MaidVoicePitch; Types: full self pic eng notr hen; Flags: checkablealone;
		Name: Patchers/extsave/maidvoice/addmod; Description: AddModsSlider; Types: full self pic eng notr hen; Flags: checkablealone;
			Name: Patchers/extsave/maidvoice/addmod/distort; Description: DistortCorrect; Types:full self pic eng notr hen; Flags: checkablealone;
			Name: Patchers/extsave/maidvoice/addmod/eyelashesalpha; Description:EyelashesAlpha; Types:; Flags: checkablealone;
			Name: Patchers/extsave/maidvoice/addmod/seperateeye; Description:SeperateEyeParams; Types:full self pic eng notr hen; Flags: checkablealone;
	Name: Patchers/facetype; Description: FaceType; Types:full compact self pic eng notr hen;
	Name: Patchers/imgui; Description: IMGUITranslationLoader; types: full compact eng pic hen; Flags: checkablealone;
		Name: Patchers/imgui/translations; Description: {cm:IMGUITrans}; Types:full compact eng pic self hen;
	Name: Patchers/neighuncen; Description: NeighUncensor; Types: full compact eng notr pic self hen;
	Name: Patchers/ntrlight; Description: NTRLight; Types:;
	Name: Patchers/rgbpal; Description: RGBPalette;

Name: plugins; Description: Unityinjector Plugins; Types: full compact;
	Name: plugins/accex; Description: AlwaysColorChangeEX; Types: full self pic eng notr hen;
	Name: plugins/eraseout; Description: AutoEraseOutline; types: full pic eng notr hen;
	Name: plugins/camerautil; Description: CameraUtility; Types: Full pic self eng notr hen;
	Name: plugins/colorhelp; Description: ColorPaletteHelper; Types:full self pic eng notr hen;
	Name: plugins/conwindow; Description:ConsistentWindowPosition; Types:full self pic eng notr hen;
	Name: plugins/nyou; Description:CustomNyou(Why...);
	Name: plugins/dancecamadjust; Description:DanceCameraAdjust;
	Name: plugins/dressdam; Description:DressDamage; Types:self pic;
	Name: plugins/editmenufilt; Description: EditMenuFilter; Types:full self pic eng notr hen;
	Name: plugins/editselanim; Description: EditMenuSelectedAnime; Types:full self pic eng notr hen;
	Name: plugins/editundo; Description:EditSceneUndo;
	Name: plugins/emoears; Description:EmotionalEars(and tails); Types:self; Flags:checkablealone;
	Name: plugins/emoears/aho; Description:{cm:EmoEarsAhoge}; Types:; Flags:dontinheritcheck
	Name: plugins/emoears/mod; Description:{cm:EmoEarsMod}; Types:self; Flags:dontinheritcheck
	Name: plugins/extendrender; Description:ExtendRenderingRange; Types:full eng notr self pic;
	Name: plugins/extendrender/config; Description:x10 Extend Config; Types:self; Flags:dontinheritcheck
	Name: plugins/halfundress; Description:HalfUnDressing; Types:full eng notr hen; Flags:dontinheritcheck;
	Name: plugins/inout; Description:InOutAnimation; Types:full eng notr self hen;
	Name: plugins/lookmaid; Description:LookAtYourMaid; Flags:dontinheritcheck
	Name: plugins/lookmaster; Description:LookAtYourMaster; Flags:dontinheritcheck
	Name: plugins/mirror; Description:Mirror Props; Types:full eng notr;
	Name: plugins/mtacc; Description: MtAccelerator;
		Name: plugins/mtacc/AllScene; Description: AllScene Version;
	Name: plugins/normexcite; Description:NormalizeExcite; Types:full eng notr self hen;
	Name: plugins/notecolor; Description:NoteColor; Types:full self eng notr hen; Flags:dontinheritcheck
	Name: plugins/NPRShader; Description:NPRShader; Types:;
	Name: plugins/NPRShader/LightConfig; Description:{cm:NPRLightConfig}; Types:; Flags:dontinheritcheck
	Name: plugins/objexp; Description:ObjectExplorer; Types:full self eng notr pic;
	Name: plugins/partsedit; Description:PartsEdit; Types:full pic self eng notr;
	Name: plugins/personaledit; Description:PersonalizedEditSceneSettings; Types:full pic self eng notr hen;
	Name: plugins/plugmanage; Description:PluginManager; Types:full pic eng notr;
	Name: plugins/rhythmoption; Description: RhythmExtraOption; Types:full eng notr self hen; Flags:dontinheritcheck
	Name: plugins/pngplace; Description:PNGPlacement; Types:full pic self eng notr; Flags: checkablealone;
	Name: plugins/pngplace/expng; Description:{cm:PNGPlaceExtraPNG}; Types:full self pic eng notr; Flags: dontinheritcheck
	Name: plugins/propitem; Description:PropMyItem; Types:full eng notr pic;
	Name: plugins/scenecap; Description:SceneCapture; Types:full pic self eng notr; Flags: checkablealone;
	Name: plugins/scenecap/mpmats; Description:Modified Pmats; Flags: dontinheritcheck
	Name: plugins/scenecap/VR; Description:VR Ini File; Flags: dontinheritcheck
	Name: plugins/seieki; Description:Seieki; Types:pic;
	Name: plugins/shaderchange; Description:ShaderChange; Types:full pic self eng notr;
	Name: plugins/shapeanimator; Description:ShapeAnimator;
	Name: plugins/shapeanimator/norm; Description:Standard SA; Flags: exclusive;
	Name: plugins/shapeanimator/doc; Description:Doc's SA; Flags: exclusive;
	Name: plugins/SKAcc; Description:SKAccelerator; Types:full pic self eng notr hen;
	Name: plugins/skillcomshort; Description:SkillCommandShortCut; Types:full eng notr hen;
	Name: plugins/slimeshade; Description:SlimeShader; Types:;
	Name: plugins/smoothanim; Description: SmoothAnimation; Types:self;
	Name: plugins/TexLoad; Description:TextureLoader; Types:self;
		Name: plugins/TexLoad/PostLoad; Description:PosterLoader; Types:self;
	Name: plugins/toukaScreen; Description:ToukaScreenShot; Types:full pic self eng notr;
	Name: plugins/voicenorm; Description:VoiceNormalizer; Types:full self eng notr hen;
	Name: plugins/xtms; Description:XTMasterSlave+; Types:full eng notr self hen; Flags:dontinheritcheck;
		Name: plugins/xtms/XTFutaBody; Description:XTFutaBody; Flags:dontinheritcheck
		Name: plugins/xtms/XTFutaAccessories; Description:XTFutaAccessories;
	Name: plugins/yotutil; Description:YotogiUtil; Types:full eng notr;

Name: misc; Description:{cm:MiscFiles}; Types: full compact;
	Name:misc/dlccheck; Description:DLC Checker (Kry Fork); Types:Full compact eng notr self pic;
	Name:misc/sybarc; Description:Sybaris Arc Editor; Types:Full compact eng notr self pic;
	Name:misc/mmposes; Description:{cm:StudioPoses};
	Name:misc/bgnei; Description:{cm:AddMoreBG}; Types:Full eng notr self pic;
	Name:misc/uncensor; Description:{cm:Uncensor}; Types:full eng notr compact self pic hen;
	Name:misc/uncensormale; Description:{cm:UncensorMale}; Types:full eng notr compact self pic hen;
	Name:misc/extrauncensormale; Description:{cm:ExtraUncensorMale}; Types:full eng notr compact self pic hen;
	Name:misc/LoMobBody; Description:LoMobChara; Types:full eng notr compact self pic hen;
	Name:misc/maidfiddle; Description:{cm:MaidFiddler}; Flags: dontinheritcheck;

[Tasks]

Name:reg; Description:{cm:FixRegistry}; Check: NOT IsEmptyFolder();

Name:clean; Description:{cm:Clean}; GroupDescription:{cm:CleanGroup}; Flags:unchecked
	Name:clean/moveold; Description:{cm:MoveOld}; Flags:checkablealone exclusive
		Name:clean/moveold/mods; Description:{cm:MoveOldMods}; Flags:unchecked dontinheritcheck
		Name:clean/moveold/config; Description:{cm:PlaceConfigBack}; Flags:unchecked dontinheritcheck; Check: NOT IsEmptyFolder();
	Name:clean/deleteold; Description:{cm:DeleteOld}; Flags:unchecked exclusive checkablealone
		Name:clean/deleteold/mods; Description:{cm:DeleteOldMods}; Flags:unchecked dontinheritcheck
		Name:clean/deleteold/old; Description: {cm:DeleteOldInstalls}; Flags:unchecked dontinheritcheck

Name:readonly; Description: {cm:RemoveReadOnly}; GroupDescription:{cm:RemoveReadOnlyGroup}; Check: NOT IsEmptyFolder();

[InstallDelete]

Type:filesandordirs; Name: "{app}\Sybaris"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\opengl32.dll"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\BepinEX"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\i18nEx"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\scripts"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\IMG"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\doorstop_config.ini"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\winhttp.dll"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\version.dll"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\EngSybarisArcEditor.exe"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\SybarisArcEditor.exe"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\COM3D2 DlC Checker.exe"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\IMGUITranslationLoader"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\CMI Documentation"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\CMI.ver"; Tasks:clean/deleteold;

Type:filesandordirs; Name: "{app}\Mod\Extra Desk Items"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\Mirror_props"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\PhotMot_NEI"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\PhotoBG_NEI"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\PhotoBG_OBJ_NEI"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\Pose_sample"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\[CMI]Uncensors"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\[CMI]PosterLoader"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\[CMI]XTFutaAccessories"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\TextureUncensors"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\EmotionalEars"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\MultipleMaidsPose"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\CinemacicBloom_StreakPmats(SceneCapture)"; Tasks:clean/deleteold/mods;

Type:filesandordirs; Name: "{app}\OldInstall*"; Tasks:clean/deleteold/old;

[Run]
Filename: "{tmp}\MaidFiddlerSetup.exe"; Flags: runasoriginaluser skipifdoesntexist waituntilterminated; StatusMsg: {cm:MFInstall}
Filename: "https://forms.gle/PrXjqck2dQYMHvyY8"; Flags: shellexec runasoriginaluser postinstall; Description: {cm:Survey}
Filename: "https://github.com/krypto5863/COM-Modular-Installer/releases"; Flags: shellexec runasoriginaluser postinstall unchecked; Description: {cm:OfficialPage}

[Registry]
Root: HKCU; Subkey: "{#JapRegistry}"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Check: NOT IsEmptyFolder() AND NOT GetIsCR() AND NOT IsEngSimple(ExpandConstant('{app}')); Tasks:reg
Root: HKCU; Subkey: "{#EnglishRegistry}"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Check: NOT IsEmptyFolder() AND NOT GetIsCR() AND IsEngSimple(ExpandConstant('{app}')); Tasks:reg

//Very large, moved to secondary script to make management easier.
#include "CMI\files.iss"
//Very large, moved to tertiary script to make management easier.
#include "code.iss"