//The following script file has a rather large function for using 7zip to unzip files via the installer. It was moved to a seperate script to make things easier.

[Code]
type
  AssetRecord = record
    Name: string;
    Link: string;
    Output: string;
    File: string;
    FetchL: Boolean;
    SearchString: string;
    Version: string;
end;

TListOfAssets = array of AssetRecord;

function TryGetAssetIndexByName(const ListOfAssets: TListOfAssets; const Name: string; out Value: integer): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to GetArrayLength(ListOfAssets) - 1 do
    if ListOfAssets[I].Name = Name then
    begin
      Result := True;
      Value := I;
      Exit;
    end;
end;

procedure AddToListOfAssets(var ListOfAssets: TListOfAssets; const Name: String; const Link: String; const Output: String; const File: String; const FetchL: Boolean; const SearchString: String; const Version: String);
var
  I: Integer;
begin
  SetArrayLength(ListOfAssets, GetArrayLength(ListOfAssets) + 1)

  ListOfAssets[GetArrayLength(ListOfAssets) - 1].Name := Name;
  ListOfAssets[GetArrayLength(ListOfAssets) - 1].Link := Link;
  ListOfAssets[GetArrayLength(ListOfAssets) - 1].Output := Output;
  ListOfAssets[GetArrayLength(ListOfAssets) - 1].File := File;
  ListOfAssets[GetArrayLength(ListOfAssets) - 1].FetchL := FetchL;
  ListOfAssets[GetArrayLength(ListOfAssets) - 1].SearchString := SearchString;
  ListOfAssets[GetArrayLength(ListOfAssets) - 1].Version := Version;
end;

procedure DownloadAssets();
var
  pre : WideString;
	suf : WideString;
	dlink: WideString;
  links: TListOfAssets;
  I: integer;
  downloadDone: boolean;
  ProgressPage: TOutputProgressWizardPage;
begin

  Log('Creating list of Assets to Download.');

	DownloadPage.Clear();
  //These have more conditions and require version specific links and care.
  AddToListOfAssets(links , 'bepinexPlugs/MuteBack', 'BepInEx/BepInEx.Utility', '' ,'MuteInBackground.zip', true, 'MuteInBackground', '');
  AddToListOfAssets(links , 'bepinexPlugs/RunUniEdit', 'ManlyMarco/RuntimeUnityEditor', '' ,'RuntimeUnityEditor.zip', true, 'RuntimeUnityEditor', '');
	AddToListOfAssets(links , 'bepinexPlugs/OptIMGUI', 'BepInEx/BepInEx.Utility', '' ,'BepInEx.OptimizeIMGUI.v1.0.zip', true, 'OptimizeIMGUI', '');
#if LMMT == false
	AddToListOfAssets(links , 'bepinex', 'DeathWeasel1337/COM3D2_Plugins', '' ,'COM3D2.API.v1.0.zip', true, 'COM3D2.API', '');
	AddToListOfAssets(links , 'bepinex', 'JustAGuest4168/CM3D2.Toolkit', 'BepInEx\plugins\' ,'CM3D2.Toolkit.Guest4168Branch.dll', true, 'CM3D2.Toolkit', '');
	AddToListOfAssets(links , 'bepinexPlugs/InBlock', 'DeathWeasel1337/COM3D2_Plugins', '' ,'InputHotkeyBlock.zip', true, 'InputHotkeyBlock', '');
  AddToListOfAssets(links , 'bepinexPlugs/FixEyeMov', '01010101lzy/gettapped/releases', '' ,'FixEyeMov.zip', true, 'FixEyeMov', '');
  //These can be fetched straight from the latest releases.
  AddToListOfAssets(links , 'bepinexPlugs/addyot', 'Vin-meido/COM3D2.AddYotogiSliderSE.Plugin', '' ,'COM3D2.AddYotogiSliderSE2.Plugin.zip', false, 'COM3D2.AddYotogiSliderSE2.Plugin.zip', '');
  AddToListOfAssets(links , 'bepinexPlugs/autosave', 'Pain-Brioche/COM3D2.AutoSave', 'BepInEx\plugins\' ,'COM3D2.AutoSave.dll', false, '', '');
  AddToListOfAssets(links , 'bepinexPlugs/ConfigMan', 'BepInEx/BepInEx.ConfigurationManager', '' ,'ConfigManager.zip', false, '', '');
  AddToListOfAssets(links , 'bepinexPlugs/FPSCount', 'ManlyMarco/FPSCounter', '' ,'FPSCounter.zip', false, '', '');
	AddToListOfAssets(links , 'bepinexPlugs/ShiftClick', 'krypto5863/COM3D2.ShiftClickExplorer', 'BepInEx\plugins\' ,'COM3D2.ShiftClickExplorer.dll', false, '', '');
  AddToListOfAssets(links , 'bepinexPlugs/ShapekeyMaster', 'krypto5863/COM3D2.ShapekeyMaster', 'BepInEx\plugins\' ,'COM3D2.ShapekeyMaster.Plugin.dll', false, '', '');
  AddToListOfAssets(links , 'bepinexPlugs/ShortMenu', 'krypto5863/COM3D2.ShortMenuLoader', '' ,'ShortMenuLoader.zip', false, '', '');
	AddToListOfAssets(links , 'bepinexPlugs/ShortVanilla', 'krypto5863/COM3D2.ShortMenuVanillaDatabase', '' ,'ShortMenuVanillaDatabase.zip', false, '', '');
	AddToListOfAssets(links , 'bepinexPlugs/ExErrorHandle', 'krypto5863/COM3D2.ExtendedErrorHandling', 'BepInEx\plugins\' ,'COM3D2.ExtendedErrorHandling.dll', false, '', '');
	AddToListOfAssets(links , 'bepinexPlugs/ExPresetMan', 'krypto5863/COM3D2.ExtendedPresetManagement', 'BepInEx\plugins\' ,'COM3D2.ExtendedPresetManagement.dll', false, '', '');
  //AddToListOfAssets(links , 'bepinex', 'sinai-dev/UniverseLib', '' ,'COM3D2.UndressUtil.zip', false, 'COM3D2.UndressUtil.zip', '');
  AddToListOfAssets(links , 'bepinexPlugs/UndressUtil', 'Vin-meido/COM3D2.UndressUtil', '' ,'COM3D2.UndressUtil.zip', false, 'COM3D2.UndressUtil.zip', '');
  AddToListOfAssets(links , 'ext/dlccheck', 'krypto5863/COM3D2_DLC_Checker', '' ,'COM3D2 DLC Checker.exe', false, '', '');
  AddToListOfAssets(links , 'ext/maidfiddle', 'denikson/COM3D2.MaidFiddler', '' ,'MFInstall.exe', false, '', '');

	
	if IsCR then
	begin
		AddToListOfAssets(links , 'bepinexPlugs/AdvMatMod', 'krypto5863/COM3d2-AdvancedMaterialModifier', 'BepInEx\plugins\' ,'COM3D2.AdvancedMaterialModifier.Plugin.dll', true, '', '1.1.3');
	end else
		AddToListOfAssets(links , 'bepinexPlugs/AdvMatMod', 'krypto5863/COM3d2-AdvancedMaterialModifier', 'BepInEx\plugins\' ,'COM3D2.AdvancedMaterialModifier.Plugin.dll', false, '', '');
	begin
	end;
#endif

  ProgressPage := CreateOutputProgressPage('Processing External Assets', 'External downloads are being discovered, retrieved and processed.');

  try

    ProgressPage.Show();

    for  i := 0 to GetArrayLength(links) - 1 do
    begin
      if (WizardIsComponentSelected(links[i].Name)) then
      begin

        ProgressPage.SetText('Looking for file links in GitHub releases...', links[i].Link);

        Log('Fetching releases for ' + links[i].Name);
      
        if (links[i].FetchL) then
        begin   
          FetchDRelease(links[i].Link, links[i].SearchString, links[i].Version, dlink);
        end 
        else
        begin
          FetchDRelease(links[i].Link, links[i].SearchString, '' , dlink);
        end;

        Log('Fetched release for ' + links[i].Name + ' adding to DLs.');
		
        DownloadPage.Add(dlink, links[i].Output + links[i].File, '');

        ProgressPage.SetProgress(i + 1, GetArrayLength(links));

      end;
    end;

  finally
    ProgressPage.Hide();
  end

  Log('Initiating downloads...');
	
  DownloadPage.Show;

  while downloadDone = false do
  begin
    try
      try
        DownloadPage.Download;
        DownloadDone := true
      except
        if SuppressibleMsgBox(CustomMessage('AssetDownloadFailed'), mbError, MB_YESNO, IDNO) = IDNO then
        begin
          DownloadDone := true
        end
        else
        begin
          DownloadDone := false
        end
      end;
    finally
      DownloadPage.Hide;
    end
  end;
  
  Log('Downloads complete. Unzipping now...');

  try

    ProgressPage.Show();

    for  i := 0 to GetArrayLength(links) - 1 do
    begin

      if (StringContains(links[i].File, '.zip')) AND (FileExists(ExpandConstant('{tmp}\') + links[i].File)) then
      begin
      
        Log('Unzipping ' + links[i].File);

        ProgressPage.SetText('Extracting...', links[i].File);

        DoUnzip(ExpandConstant('{tmp}\') + links[i].File, ExpandConstant('{tmp}'));

      end;

      ProgressPage.SetProgress(i + 1, GetArrayLength(links));

    end;

    Log('Asset downloader has completed. Congratulations.');
  finally
    ProgressPage.Hide();
  end
end;
[/Code]