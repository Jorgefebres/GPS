<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<?xml-stylesheet type="text/xsl" href="is.xsl" ?>
<!DOCTYPE msi [
   <!ELEMENT msi   (summary,table*)>
   <!ATTLIST msi version    CDATA #REQUIRED>
   <!ATTLIST msi xmlns:dt   CDATA #IMPLIED
                 codepage   CDATA #IMPLIED
                 compression (MSZIP|LZX|none) "LZX">
   
   <!ELEMENT summary       (codepage?,title?,subject?,author?,keywords?,comments?,
                            template,lastauthor?,revnumber,lastprinted?,
                            createdtm?,lastsavedtm?,pagecount,wordcount,
                            charcount?,appname?,security?)>
                            
   <!ELEMENT codepage      (#PCDATA)>
   <!ELEMENT title         (#PCDATA)>
   <!ELEMENT subject       (#PCDATA)>
   <!ELEMENT author        (#PCDATA)>
   <!ELEMENT keywords      (#PCDATA)>
   <!ELEMENT comments      (#PCDATA)>
   <!ELEMENT template      (#PCDATA)>
   <!ELEMENT lastauthor    (#PCDATA)>
   <!ELEMENT revnumber     (#PCDATA)>
   <!ELEMENT lastprinted   (#PCDATA)>
   <!ELEMENT createdtm     (#PCDATA)>
   <!ELEMENT lastsavedtm   (#PCDATA)>
   <!ELEMENT pagecount     (#PCDATA)>
   <!ELEMENT wordcount     (#PCDATA)>
   <!ELEMENT charcount     (#PCDATA)>
   <!ELEMENT appname       (#PCDATA)>
   <!ELEMENT security      (#PCDATA)>                            
                                
   <!ELEMENT table         (col+,row*)>
   <!ATTLIST table
                name        CDATA #REQUIRED>

   <!ELEMENT col           (#PCDATA)>
   <!ATTLIST col
                 key       (yes|no) #IMPLIED
                 def       CDATA #IMPLIED>
                 
   <!ELEMENT row            (td+)>
   
   <!ELEMENT td             (#PCDATA)>
   <!ATTLIST td
                 href       CDATA #IMPLIED
                 dt:dt     (string|bin.base64) #IMPLIED
                 md5        CDATA #IMPLIED>
]>
<msi version="2.0" xmlns:dt="urn:schemas-microsoft-com:datatypes" codepage="65001">
	
	<summary>
		<codepage>1252</codepage>
		<title>Installation Database</title>
		<subject></subject>
		<author>##ID_STRING2##</author>
		<keywords>Installer,MSI,Database</keywords>
		<comments>Contact:  Your local administrator</comments>
		<template>Intel;1033</template>
		<lastauthor>Administrator</lastauthor>
		<revnumber>{CA7CD803-9E12-4910-A17F-F2ECB7A0A921}</revnumber>
		<lastprinted/>
		<createdtm>06/21/1999 08:00</createdtm>
		<lastsavedtm>07/14/2000 11:50</lastsavedtm>
		<pagecount>200</pagecount>
		<wordcount>0</wordcount>
		<charcount/>
		<appname>InstallShield Express</appname>
		<security>1</security>
	</summary>
	
	<table name="ActionText">
		<col key="yes" def="s72">Action</col>
		<col def="L64">Description</col>
		<col def="L128">Template</col>
		<row><td>Advertise</td><td>##IDS_ACTIONTEXT_Advertising##</td><td/></row>
		<row><td>AllocateRegistrySpace</td><td>##IDS_ACTIONTEXT_AllocatingRegistry##</td><td>##IDS_ACTIONTEXT_FreeSpace##</td></row>
		<row><td>AppSearch</td><td>##IDS_ACTIONTEXT_SearchInstalled##</td><td>##IDS_ACTIONTEXT_PropertySignature##</td></row>
		<row><td>BindImage</td><td>##IDS_ACTIONTEXT_BindingExes##</td><td>##IDS_ACTIONTEXT_File##</td></row>
		<row><td>CCPSearch</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td/></row>
		<row><td>CostFinalize</td><td>##IDS_ACTIONTEXT_ComputingSpace3##</td><td/></row>
		<row><td>CostInitialize</td><td>##IDS_ACTIONTEXT_ComputingSpace##</td><td/></row>
		<row><td>CreateFolders</td><td>##IDS_ACTIONTEXT_CreatingFolders##</td><td>##IDS_ACTIONTEXT_Folder##</td></row>
		<row><td>CreateShortcuts</td><td>##IDS_ACTIONTEXT_CreatingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut##</td></row>
		<row><td>DeleteServices</td><td>##IDS_ACTIONTEXT_DeletingServices##</td><td>##IDS_ACTIONTEXT_Service##</td></row>
		<row><td>DuplicateFiles</td><td>##IDS_ACTIONTEXT_CreatingDuplicate##</td><td>##IDS_ACTIONTEXT_FileDirectorySize##</td></row>
		<row><td>FileCost</td><td>##IDS_ACTIONTEXT_ComputingSpace2##</td><td/></row>
		<row><td>FindRelatedProducts</td><td>##IDS_ACTIONTEXT_SearchForRelated##</td><td>##IDS_ACTIONTEXT_FoundApp##</td></row>
		<row><td>GenerateScript</td><td>##IDS_ACTIONTEXT_GeneratingScript##</td><td>##IDS_ACTIONTEXT_1##</td></row>
		<row><td>ISLockPermissionsCost</td><td>##IDS_ACTIONTEXT_ISLockPermissionsCost##</td><td/></row>
		<row><td>ISLockPermissionsInstall</td><td>##IDS_ACTIONTEXT_ISLockPermissionsInstall##</td><td/></row>
		<row><td>InstallAdminPackage</td><td>##IDS_ACTIONTEXT_CopyingNetworkFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize##</td></row>
		<row><td>InstallFiles</td><td>##IDS_ACTIONTEXT_CopyingNewFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize2##</td></row>
		<row><td>InstallODBC</td><td>##IDS_ACTIONTEXT_InstallODBC##</td><td/></row>
		<row><td>InstallSFPCatalogFile</td><td>##IDS_ACTIONTEXT_InstallingSystemCatalog##</td><td>##IDS_ACTIONTEXT_FileDependencies##</td></row>
		<row><td>InstallServices</td><td>##IDS_ACTIONTEXT_InstallServices##</td><td>##IDS_ACTIONTEXT_Service2##</td></row>
		<row><td>InstallValidate</td><td>##IDS_ACTIONTEXT_Validating##</td><td/></row>
		<row><td>LaunchConditions</td><td>##IDS_ACTIONTEXT_EvaluateLaunchConditions##</td><td/></row>
		<row><td>MigrateFeatureStates</td><td>##IDS_ACTIONTEXT_MigratingFeatureStates##</td><td>##IDS_ACTIONTEXT_Application##</td></row>
		<row><td>MoveFiles</td><td>##IDS_ACTIONTEXT_MovingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize3##</td></row>
		<row><td>PatchFiles</td><td>##IDS_ACTIONTEXT_PatchingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize4##</td></row>
		<row><td>ProcessComponents</td><td>##IDS_ACTIONTEXT_UpdateComponentRegistration##</td><td/></row>
		<row><td>PublishComponents</td><td>##IDS_ACTIONTEXT_PublishingQualifiedComponents##</td><td>##IDS_ACTIONTEXT_ComponentIDQualifier##</td></row>
		<row><td>PublishFeatures</td><td>##IDS_ACTIONTEXT_PublishProductFeatures##</td><td>##IDS_ACTIONTEXT_FeatureColon##</td></row>
		<row><td>PublishProduct</td><td>##IDS_ACTIONTEXT_PublishProductInfo##</td><td/></row>
		<row><td>RMCCPSearch</td><td>##IDS_ACTIONTEXT_SearchingQualifyingProducts##</td><td/></row>
		<row><td>RegisterClassInfo</td><td>##IDS_ACTIONTEXT_RegisterClassServer##</td><td>##IDS_ACTIONTEXT_ClassId##</td></row>
		<row><td>RegisterComPlus</td><td>##IDS_ACTIONTEXT_RegisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppIdAppTypeRSN##</td></row>
		<row><td>RegisterExtensionInfo</td><td>##IDS_ACTIONTEXT_RegisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension2##</td></row>
		<row><td>RegisterFonts</td><td>##IDS_ACTIONTEXT_RegisterFonts##</td><td>##IDS_ACTIONTEXT_Font##</td></row>
		<row><td>RegisterMIMEInfo</td><td>##IDS_ACTIONTEXT_RegisterMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension##</td></row>
		<row><td>RegisterProduct</td><td>##IDS_ACTIONTEXT_RegisteringProduct##</td><td>##IDS_ACTIONTEXT_1b##</td></row>
		<row><td>RegisterProgIdInfo</td><td>##IDS_ACTIONTEXT_RegisteringProgIdentifiers##</td><td>##IDS_ACTIONTEXT_ProgID2##</td></row>
		<row><td>RegisterTypeLibraries</td><td>##IDS_ACTIONTEXT_RegisterTypeLibs##</td><td>##IDS_ACTIONTEXT_LibId##</td></row>
		<row><td>RegisterUser</td><td>##IDS_ACTIONTEXT_RegUser##</td><td>##IDS_ACTIONTEXT_1c##</td></row>
		<row><td>RemoveDuplicateFiles</td><td>##IDS_ACTIONTEXT_RemovingDuplicates##</td><td>##IDS_ACTIONTEXT_FileDir##</td></row>
		<row><td>RemoveEnvironmentStrings</td><td>##IDS_ACTIONTEXT_UpdateEnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction2##</td></row>
		<row><td>RemoveExistingProducts</td><td>##IDS_ACTIONTEXT_RemoveApps##</td><td>##IDS_ACTIONTEXT_AppCommandLine##</td></row>
		<row><td>RemoveFiles</td><td>##IDS_ACTIONTEXT_RemovingFiles##</td><td>##IDS_ACTIONTEXT_FileDir2##</td></row>
		<row><td>RemoveFolders</td><td>##IDS_ACTIONTEXT_RemovingFolders##</td><td>##IDS_ACTIONTEXT_Folder1##</td></row>
		<row><td>RemoveIniValues</td><td>##IDS_ACTIONTEXT_RemovingIni##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue##</td></row>
		<row><td>RemoveODBC</td><td>##IDS_ACTIONTEXT_RemovingODBC##</td><td/></row>
		<row><td>RemoveRegistryValues</td><td>##IDS_ACTIONTEXT_RemovingRegistry##</td><td>##IDS_ACTIONTEXT_KeyName##</td></row>
		<row><td>RemoveShortcuts</td><td>##IDS_ACTIONTEXT_RemovingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut1##</td></row>
		<row><td>Rollback</td><td>##IDS_ACTIONTEXT_RollingBack##</td><td>##IDS_ACTIONTEXT_1d##</td></row>
		<row><td>RollbackCleanup</td><td>##IDS_ACTIONTEXT_RemovingBackup##</td><td>##IDS_ACTIONTEXT_File2##</td></row>
		<row><td>SelfRegModules</td><td>##IDS_ACTIONTEXT_RegisteringModules##</td><td>##IDS_ACTIONTEXT_FileFolder##</td></row>
		<row><td>SelfUnregModules</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td>##IDS_ACTIONTEXT_FileFolder2##</td></row>
		<row><td>SetODBCFolders</td><td>##IDS_ACTIONTEXT_InitializeODBCDirs##</td><td/></row>
		<row><td>StartServices</td><td>##IDS_ACTIONTEXT_StartingServices##</td><td>##IDS_ACTIONTEXT_Service3##</td></row>
		<row><td>StopServices</td><td>##IDS_ACTIONTEXT_StoppingServices##</td><td>##IDS_ACTIONTEXT_Service4##</td></row>
		<row><td>UnmoveFiles</td><td>##IDS_ACTIONTEXT_RemovingMoved##</td><td>##IDS_ACTIONTEXT_FileDir3##</td></row>
		<row><td>UnpublishComponents</td><td>##IDS_ACTIONTEXT_UnpublishQualified##</td><td>##IDS_ACTIONTEXT_ComponentIdQualifier2##</td></row>
		<row><td>UnpublishFeatures</td><td>##IDS_ACTIONTEXT_UnpublishProductFeatures##</td><td>##IDS_ACTIONTEXT_Feature##</td></row>
		<row><td>UnpublishProduct</td><td>##IDS_ACTIONTEXT_UnpublishingProductInfo##</td><td/></row>
		<row><td>UnregisterClassInfo</td><td>##IDS_ACTIONTEXT_UnregisterClassServers##</td><td>##IDS_ACTIONTEXT_ClsID##</td></row>
		<row><td>UnregisterComPlus</td><td>##IDS_ACTIONTEXT_UnregisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppId##</td></row>
		<row><td>UnregisterExtensionInfo</td><td>##IDS_ACTIONTEXT_UnregisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension##</td></row>
		<row><td>UnregisterFonts</td><td>##IDS_ACTIONTEXT_UnregisteringFonts##</td><td>##IDS_ACTIONTEXT_Font2##</td></row>
		<row><td>UnregisterMIMEInfo</td><td>##IDS_ACTIONTEXT_UnregisteringMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension2##</td></row>
		<row><td>UnregisterProgIdInfo</td><td>##IDS_ACTIONTEXT_UnregisteringProgramIds##</td><td>##IDS_ACTIONTEXT_ProgID##</td></row>
		<row><td>UnregisterTypeLibraries</td><td>##IDS_ACTIONTEXT_UnregTypeLibs##</td><td>##IDS_ACTIONTEXT_Libid2##</td></row>
		<row><td>WriteEnvironmentStrings</td><td>##IDS_ACTIONTEXT_EnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction##</td></row>
		<row><td>WriteIniValues</td><td>##IDS_ACTIONTEXT_WritingINI##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue2##</td></row>
		<row><td>WriteRegistryValues</td><td>##IDS_ACTIONTEXT_WritingRegistry##</td><td>##IDS_ACTIONTEXT_KeyNameValue##</td></row>
	</table>

	<table name="AdminExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>InstallAdminPackage</td><td/><td>3900</td><td>InstallAdminPackage</td><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>4010</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdminUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AdminWelcome</td><td/><td>1010</td><td>AdminWelcome</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>50</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1020</td><td>SetupProgress</td><td/></row>
	</table>

	<table name="AdvtExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>4910</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdvtUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="AppId">
		<col key="yes" def="s38">AppId</col>
		<col def="S255">RemoteServerName</col>
		<col def="S255">LocalService</col>
		<col def="S255">ServiceParameters</col>
		<col def="S255">DllSurrogate</col>
		<col def="I2">ActivateAtStorage</col>
		<col def="I2">RunAsInteractiveUser</col>
	</table>

	<table name="AppSearch">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="s72">Signature_</col>
	</table>

	<table name="BBControl">
		<col key="yes" def="s50">Billboard_</col>
		<col key="yes" def="s50">BBControl</col>
		<col def="s50">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L50">Text</col>
	</table>

	<table name="Billboard">
		<col key="yes" def="s50">Billboard</col>
		<col def="s38">Feature_</col>
		<col def="S50">Action</col>
		<col def="I2">Ordering</col>
	</table>

	<table name="Binary">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<row><td>ISExpHlp.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\ISExpHlp.dll</td></row>
		<row><td>ISSELFREG.DLL</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\isregsvr.dll</td></row>
		<row><td>NewBinary1</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\banner.jpg</td></row>
		<row><td>NewBinary10</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CompleteSetupIco.ibd</td></row>
		<row><td>NewBinary11</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary12</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DestIcon.ibd</td></row>
		<row><td>NewBinary13</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\NetworkInstall.ico</td></row>
		<row><td>NewBinary14</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DontInstall.ico</td></row>
		<row><td>NewBinary15</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Install.ico</td></row>
		<row><td>NewBinary16</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallFirstUse.ico</td></row>
		<row><td>NewBinary17</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallPartial.ico</td></row>
		<row><td>NewBinary18</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallStateMenu.ico</td></row>
		<row><td>NewBinary2</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\New.ibd</td></row>
		<row><td>NewBinary3</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Up.ibd</td></row>
		<row><td>NewBinary4</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\WarningIcon.ibd</td></row>
		<row><td>NewBinary5</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\welcome.jpg</td></row>
		<row><td>NewBinary6</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary7</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\ReinstIco.ibd</td></row>
		<row><td>NewBinary8</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\RemoveIco.ibd</td></row>
		<row><td>NewBinary9</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\SetupIcon.ibd</td></row>
		<row><td>SetAllUsers.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\SetAllUsers.dll</td></row>
	</table>

	<table name="BindImage">
		<col key="yes" def="s72">File_</col>
		<col def="S255">Path</col>
	</table>

	<table name="CCPSearch">
		<col key="yes" def="s72">Signature_</col>
	</table>

	<table name="CheckBox">
		<col key="yes" def="s72">Property</col>
		<col def="S64">Value</col>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td></row>
		<row><td>LAUNCHPROGRAM</td><td>1</td></row>
		<row><td>LAUNCHREADME</td><td>1</td></row>
	</table>

	<table name="Class">
		<col key="yes" def="s38">CLSID</col>
		<col key="yes" def="s32">Context</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_Default</col>
		<col def="L255">Description</col>
		<col def="S38">AppId_</col>
		<col def="S255">FileTypeMask</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="S32">DefInprocHandler</col>
		<col def="S255">Argument</col>
		<col def="s38">Feature_</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="ComboBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="CompLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s38">ComponentId</col>
		<col def="I2">Type</col>
	</table>

	<table name="Complus">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="I2">ExpType</col>
	</table>

	<table name="Component">
		<col key="yes" def="s72">Component</col>
		<col def="S38">ComponentId</col>
		<col def="s72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">Condition</col>
		<col def="S72">KeyPath</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISScanAtBuildFile</col>
		<col def="S255">ISRegFileToMergeAtBuild</col>
		<col def="S0">ISDotNetInstallerArgsInstall</col>
		<col def="S0">ISDotNetInstallerArgsCommit</col>
		<col def="S0">ISDotNetInstallerArgsUninstall</col>
		<col def="S0">ISDotNetInstallerArgsRollback</col>
		<row><td>Antlr3.Runtime.dll</td><td>{C675A190-26F1-4D54-91DA-64A321B70748}</td><td>BIN2</td><td>2</td><td/><td>antlr3.runtime.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Antlr3.Runtime.dll1</td><td>{DF47BC56-970E-4183-9FF1-5A0C4103FFCE}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>antlr3.runtime.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Antlr3.Runtime.dll2</td><td>{93577E09-ED9A-4CAE-96B0-939E323CC99C}</td><td>LIB20</td><td>2</td><td/><td>antlr3.runtime.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>{89E3436C-2B52-4DBD-A3BE-229BB96AEBF8}</td><td>BIN2</td><td>2</td><td/><td>aspnet.scriptmanager.jquery.1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AspNet.ScriptManager.jQuery.UI.Combined.dll1</td><td>{CE5DDA1C-D87B-4973-8081-381068012DD5}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>aspnet.scriptmanager.jquery.3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AspNet.ScriptManager.jQuery.UI.Combined.dll2</td><td>{B74A6BFD-6B1C-49DE-BD1F-5F47E1311906}</td><td>NET401</td><td>2</td><td/><td>aspnet.scriptmanager.jquery.8</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AspNet.ScriptManager.jQuery.UI.Combined.dll3</td><td>{9C8CB84F-0F7D-4F68-9333-F4602FE25EBF}</td><td>NET451</td><td>2</td><td/><td>aspnet.scriptmanager.jquery.9</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AspNet.ScriptManager.jQuery.dll</td><td>{DA8799A8-EB31-419E-8482-71CC8FADB7CD}</td><td>BIN2</td><td>2</td><td/><td>aspnet.scriptmanager.jquery.</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AspNet.ScriptManager.jQuery.dll1</td><td>{2DB60661-B719-4C6B-A333-B3E6B2526CD8}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>aspnet.scriptmanager.jquery.2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AspNet.ScriptManager.jQuery.dll2</td><td>{A69378DB-4EE0-4586-A28D-E0BA68856700}</td><td>NET40</td><td>2</td><td/><td>aspnet.scriptmanager.jquery.5</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AspNet.ScriptManager.jQuery.dll3</td><td>{AFAC1DC9-37F6-4BAD-9A52-BB1F957E45A8}</td><td>NET45</td><td>2</td><td/><td>aspnet.scriptmanager.jquery.6</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaDatos.dll</td><td>{9591D384-603D-49A3-BCFC-504DFA9A64B0}</td><td>DEBUG</td><td>2</td><td/><td>capadatos.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaDatos.dll1</td><td>{AF4D8FA8-F77C-47EE-9CB4-EDFA4B7AAE97}</td><td>DEBUG1</td><td>2</td><td/><td>capadatos.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaDatos.dll2</td><td>{46E7F3E4-936A-4526-886B-F1E7A09454D8}</td><td>DEBUG2</td><td>2</td><td/><td>capadatos.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaDatos.dll3</td><td>{818FAC30-6845-41E8-9B04-9DED2903FAEF}</td><td>RELEASE1</td><td>2</td><td/><td>capadatos.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaDatos.dll4</td><td>{5B255599-9055-4F47-8875-2FE783ADDA1F}</td><td>BIN2</td><td>2</td><td/><td>capadatos.dll4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaDatos.dll5</td><td>{C530F9A2-A5E7-477A-A13E-23A9BA7FF03A}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>capadatos.dll5</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaNegocio.dll</td><td>{EEB53B30-4F20-4B4A-AB59-8362CBEC99D2}</td><td>DEBUG2</td><td>2</td><td/><td>capanegocio.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaNegocio.dll1</td><td>{A80704FD-5D29-48FD-A8D9-23C2B34F7DD7}</td><td>RELEASE1</td><td>2</td><td/><td>capanegocio.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaNegocio.dll2</td><td>{AF971FA9-A0BE-421B-9072-2C3CE55279E8}</td><td>DEBUG3</td><td>2</td><td/><td>capanegocio.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaNegocio.dll3</td><td>{AA13FB05-C5A2-4D94-B99E-7F9D23ECE7F2}</td><td>RELEASE2</td><td>2</td><td/><td>capanegocio.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaNegocio.dll4</td><td>{CA35A449-5240-44AA-8AC3-3802EFFEAB21}</td><td>BIN2</td><td>2</td><td/><td>capanegocio.dll4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaNegocio.dll5</td><td>{2176B8F8-51B4-4EDA-8685-241FCE224FDB}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>capanegocio.dll5</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaPresentacion.dll</td><td>{356C55A2-528E-4F91-931E-73D027B598B1}</td><td>BIN2</td><td>2</td><td/><td>capapresentacion.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaPresentacion.dll1</td><td>{C588CA71-129F-4196-90A7-6A2AB82409D3}</td><td>DEBUG4</td><td>2</td><td/><td>capapresentacion.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CapaPresentacion.dll2</td><td>{02800258-8AF2-493A-A2EE-C8BC9C72507B}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>capapresentacion.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.AspNet.dll</td><td>{81B94C70-0CDA-45F5-9D3F-A891F13B38F1}</td><td>BIN2</td><td>2</td><td/><td>dotnetopenauth.aspnet.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.AspNet.dll1</td><td>{90E80CBD-B0D5-4DC0-BF04-E6496FBBFA14}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>dotnetopenauth.aspnet.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.AspNet.dll2</td><td>{89C74211-B8ED-4A1C-92FD-AF63CE2B5607}</td><td>NET40_FULL</td><td>2</td><td/><td>dotnetopenauth.aspnet.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.Core.dll</td><td>{94A91BBB-FEA0-49F6-9C2A-04441897E7D4}</td><td>BIN2</td><td>2</td><td/><td>dotnetopenauth.core.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.Core.dll1</td><td>{4B3067A0-4DD3-45DE-96E6-9662FC595138}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>dotnetopenauth.core.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.Core.dll2</td><td>{26C664AF-2787-45A2-B7EA-7E7365045B1D}</td><td>NET40_FULL1</td><td>2</td><td/><td>dotnetopenauth.core.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OAuth.Consumer.dll</td><td>{6F7BD02C-962A-4F1D-A0AC-58748D4089BB}</td><td>BIN2</td><td>2</td><td/><td>dotnetopenauth.oauth.consume</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OAuth.Consumer.dll1</td><td>{3062A118-CFCA-4E62-B1EA-4E543E68B438}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>dotnetopenauth.oauth.consume2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OAuth.Consumer.dll2</td><td>{E4731260-D4E6-4D47-B0BB-F0F59F2EC65E}</td><td>NET40_FULL2</td><td>2</td><td/><td>dotnetopenauth.oauth.consume4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OAuth.dll</td><td>{B30BD429-39D7-4241-B5BD-2DBD448987F3}</td><td>BIN2</td><td>2</td><td/><td>dotnetopenauth.oauth.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OAuth.dll1</td><td>{4D44E484-3183-4F2A-87B1-CE333AEA6F47}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>dotnetopenauth.oauth.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OAuth.dll2</td><td>{0655541D-8B9A-4944-AA28-78EC3E58821A}</td><td>NET40_FULL3</td><td>2</td><td/><td>dotnetopenauth.oauth.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OpenId.RelyingParty.dll</td><td>{706912AF-782F-4445-9BB9-C075DF656706}</td><td>BIN2</td><td>2</td><td/><td>dotnetopenauth.openid.relyin</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OpenId.RelyingParty.dll1</td><td>{FD5F221B-FE05-4F88-AEB4-7891E0464EAF}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>dotnetopenauth.openid.relyin2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OpenId.RelyingParty.dll2</td><td>{C065F7D9-4B7A-4654-9479-179AF8E9D46F}</td><td>NET40_FULL5</td><td>2</td><td/><td>dotnetopenauth.openid.relyin4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OpenId.dll</td><td>{DE98CDB6-BAC2-4114-8668-1F930017CF21}</td><td>BIN2</td><td>2</td><td/><td>dotnetopenauth.openid.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OpenId.dll1</td><td>{170A89F4-52E9-4083-A575-6A0210200848}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>dotnetopenauth.openid.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DotNetOpenAuth.OpenId.dll2</td><td>{26F030CF-A3C8-4429-9EF9-0FBCABDD965B}</td><td>NET40_FULL4</td><td>2</td><td/><td>dotnetopenauth.openid.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.PowerShell.Utility.dll</td><td>{9CD27590-647F-44CA-A743-CB1C08C70E37}</td><td>TOOLS</td><td>2</td><td/><td>entityframework.powershell.u</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.PowerShell.dll</td><td>{24A467CF-C536-40D9-A615-B650C57C48CA}</td><td>TOOLS</td><td>2</td><td/><td>entityframework.powershell.d</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.dll</td><td>{9C1D6577-F211-4AAE-80B6-3C59080CBDB1}</td><td>BIN2</td><td>2</td><td/><td>entityframework.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.dll1</td><td>{F3543DD3-8292-4522-A60F-7753077E8CED}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>entityframework.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.dll2</td><td>{64DD6971-6D4C-43AD-BB0B-9E28F52C328B}</td><td>NET402</td><td>2</td><td/><td>entityframework.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.dll3</td><td>{D5460249-322F-43A6-BE83-5D21D0E01FC1}</td><td>NET452</td><td>2</td><td/><td>entityframework.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.resources.dll</td><td>{A03BDB94-B3C7-40EE-AE1B-69FB537323ED}</td><td>ES</td><td>2</td><td/><td>entityframework.resources.dl</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.resources.dll1</td><td>{D8AC49A9-9E8B-4E6D-9E7B-0481FD94D039}</td><td>ES1</td><td>2</td><td/><td>entityframework.resources.dl1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.resources.dll2</td><td>{A1B20762-FA53-42B2-A8AA-89B9AD200B18}</td><td>ES2</td><td>2</td><td/><td>entityframework.resources.dl2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.resources.dll3</td><td>{13B99C01-4213-492E-BED9-88269B0E6478}</td><td>ES3</td><td>2</td><td/><td>entityframework.resources.dl3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EntityFramework.resources.dll4</td><td>{D0D49CE7-D217-46B5-867B-784042187339}</td><td>ES4</td><td>2</td><td/><td>entityframework.resources.dl4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td>{16A87F5C-3A6A-4BD4-9CB2-183568F122CD}</td><td>GPS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td>{71C5D392-C5F3-4D05-9304-15363A296991}</td><td>CAPADATOS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td>{56CAF46D-F468-4D10-9D50-EAA2E5E39767}</td><td>BIN1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT100</td><td>{29452FD7-EB3E-4392-8E18-B996BB9432C5}</td><td>CONTENT3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT101</td><td>{D9B3A864-1F6F-4C4E-95E1-8F46150B5F90}</td><td>CONTENT4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT102</td><td>{F642BC85-9830-47CD-8079-A56DF1422E52}</td><td>THEMES1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT103</td><td>{156BDD8A-B587-4380-8B29-997C177C562B}</td><td>BASE1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT104</td><td>{F2A18FDB-7F58-4063-8D7D-003DDB6EB5E2}</td><td>IMAGES3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT105</td><td>{6FEB3FAA-FF8C-4E96-B37A-460B912EAD18}</td><td>MINIFIED1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT106</td><td>{D5683219-EE08-47C1-A361-AA395FAB00C0}</td><td>IMAGES4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT107</td><td>{3AEFC398-C80A-43DD-AA51-599D2D4E50EA}</td><td>SCRIPTS2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT108</td><td>{B43E7C90-4D9F-419E-87DE-BC71C93A4582}</td><td>MICROSOFT.ASPNET.MEMBERSHIP.OPENAUTH.1.0.0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT109</td><td>{7FB2F4CF-5090-4966-B132-E5C3E17631D7}</td><td>LIB10</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td>{83A73B85-910C-4493-AAC6-7E4E2191B82C}</td><td>DEBUG2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT110</td><td>{C5183DA9-2E21-4714-93FB-56317457E4DF}</td><td>NET404</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT111</td><td>{5234C6B6-ED3D-4509-A214-A8D8AFCA0A63}</td><td>ES5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT112</td><td>{8ECE84B2-5B45-420C-AB16-E805878357EE}</td><td>NET454</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT113</td><td>{C5AF77F8-231C-4677-951D-E684717C3BAB}</td><td>ES6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT114</td><td>{1264382B-FFF2-420A-8BE4-DA1D14113E07}</td><td>MICROSOFT.ASPNET.MEMBERSHIP.OPENAUTH.ES.1.0.0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT115</td><td>{FAF641D9-340D-4FB2-80F9-1E0AD9C5DC3F}</td><td>LIB11</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT116</td><td>{3FD88C44-3153-495D-959A-2366F2FF507B}</td><td>NET405</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT117</td><td>{EE76A003-4467-4BD8-B4D1-24C585F95471}</td><td>ES7</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT118</td><td>{2F1C2299-7FBE-435E-AC60-C38DC20DD5FC}</td><td>NET455</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT119</td><td>{3899F029-441D-4B0B-9269-2CAA2B00BD76}</td><td>ES8</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td>{4F213E32-CF5B-481A-8E6C-5A227D74F5B1}</td><td>RELEASE1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT120</td><td>{7598B140-D0E3-486C-817A-2EE70E039920}</td><td>MICROSOFT.ASPNET.PROVIDERS.CORE.1.1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT121</td><td>{04758577-40D1-4627-9933-AAF7DC6A52CF}</td><td>LIB12</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT122</td><td>{3AED1332-292E-491C-9644-E888E27B0BCB}</td><td>NET406</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT123</td><td>{6C542B4B-7F09-4FF8-AED3-2CB499FFA906}</td><td>ES9</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT124</td><td>{E7AFFD5E-0889-4D96-A2D0-83325E59569E}</td><td>MICROSOFT.ASPNET.PROVIDERS.CORE.ES.1.1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT125</td><td>{2AAFAF67-1154-43CE-8F18-A3238D0F0EDB}</td><td>LIB13</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT126</td><td>{90D66A28-8792-4624-B2C6-5656B6AE4BD6}</td><td>NET407</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT127</td><td>{E4E43285-B6ED-44D9-AC5A-832F4CF55419}</td><td>ES10</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT128</td><td>{2EC2A18E-334C-4F5C-85FC-3022D9ADCA3D}</td><td>MICROSOFT.ASPNET.PROVIDERS.LOCALDB.1.1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT129</td><td>{D7446579-4EC5-4883-8DFD-E35017766664}</td><td>CONTENT5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td>{B2120EC0-9823-4EB6-A9E4-6F231ABE8DE7}</td><td>OBJ1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT130</td><td>{DBCE30BE-E461-4F40-9375-45B81E84DACC}</td><td>TOOLS2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT131</td><td>{3324BC6D-5F7E-4FF2-A429-494D2C1F7B5B}</td><td>MICROSOFT.ASPNET.SCRIPTMANAGER.MSAJAX.4.5.6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT132</td><td>{9B030057-47AF-4E10-B92B-4E318D950E39}</td><td>CONTENT6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT133</td><td>{6F138D6A-DB3D-45BF-B96B-78E42756D5A8}</td><td>SCRIPTS3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT134</td><td>{6FE0060F-E0FE-4AC8-9F52-60616953541B}</td><td>WEBFORMS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT135</td><td>{04688237-8BE7-4963-BB21-838874153582}</td><td>MSAJAX1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT136</td><td>{1CD1650E-EFBE-431E-98C1-7F2DC7C28052}</td><td>LIB14</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT137</td><td>{C903003B-14FF-420A-ADA8-E7AFBFA0241A}</td><td>NET456</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT138</td><td>{27CAE526-C831-4A67-815D-5B03EB2D3D98}</td><td>MICROSOFT.ASPNET.SCRIPTMANAGER.WEBFORMS.4.5.6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT139</td><td>{F23B4B89-5216-4171-8687-E54ADAFD737E}</td><td>CONTENT7</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td>{2DDDEA4D-6859-4EF6-AF58-81DA08E31864}</td><td>DEBUG3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT140</td><td>{7FA1DBF0-0383-49E6-9F35-435DA9446C14}</td><td>SCRIPTS4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT141</td><td>{14E97A58-2DAB-454C-9345-0F8B7DCCDEE6}</td><td>WEBFORMS2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT142</td><td>{026F2BDD-C098-45E7-AE57-96C8CAE8A28F}</td><td>LIB15</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT143</td><td>{C01AD3FF-42B2-40CA-8DF3-82D29E0E8A5B}</td><td>NET457</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT144</td><td>{7CD47753-925A-4CCC-A8A8-0A5D953737F8}</td><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.1.0.0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT145</td><td>{CD87742B-A053-4E26-B9B1-566508653493}</td><td>LIB16</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT146</td><td>{3F69BF9E-36A7-4AC1-BE3E-1C6E849D4ACF}</td><td>NET408</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT147</td><td>{33C37DE0-7173-4F23-B9EF-06FF873CC227}</td><td>ES11</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT148</td><td>{FF1442AC-FAD7-4388-A5D6-5E813EF60B83}</td><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.ES.1.0.0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT149</td><td>{4D263FA4-BB80-4CD1-9413-ECD465AFA026}</td><td>LIB17</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td>{0EEEF781-8C27-4DE5-9232-046FC3447D0F}</td><td>TEMPPE1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT150</td><td>{3E55920C-B51C-4293-823E-F4E4BDA87352}</td><td>NET409</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT151</td><td>{4008A213-B193-4949-A543-4F0FC9FC5CF0}</td><td>ES12</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT152</td><td>{261B6B6B-ACC1-4CDC-8590-52ADABD72392}</td><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.WEBFORMS.1.0.0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT153</td><td>{DC818AA6-7781-4920-AE25-F25B47371096}</td><td>CONTENT8</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT154</td><td>{A6BFEAC2-09A9-4B76-9AAF-6BB5B98EE5D6}</td><td>LIB18</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT155</td><td>{B4B2FE63-E241-4870-834D-84D3330640DF}</td><td>NET458</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT156</td><td>{3F667F4A-3C2F-46BB-88A7-03EC303B6BC0}</td><td>MICROSOFT.WEB.INFRASTRUCTURE.1.0.0.0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT157</td><td>{9999BA49-8F21-46A1-BF7F-4082055ED2FF}</td><td>LIB19</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT158</td><td>{E19F904B-FA92-4E62-94EC-C7D25A4FB7BC}</td><td>NET4010</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT159</td><td>{E1CE8AEA-363C-4DCC-81B6-BE25AE4E62C7}</td><td>TOOLS3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td>{17DF15B9-33C0-4ED6-A8D8-0DC9CA542864}</td><td>RELEASE2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT160</td><td>{2C49F19A-7DD7-47F8-92DD-ED7664B3A8EF}</td><td>MODERNIZR.2.5.3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT161</td><td>{10EEC09D-69E6-407A-80BE-BC9250201FBC}</td><td>CONTENT9</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT162</td><td>{1B2B554B-52B3-4DDA-83D9-B7FEA7552D21}</td><td>SCRIPTS5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT163</td><td>{1547022C-98C3-4044-926F-DA564CA4A379}</td><td>WEBGREASE.1.1.0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT164</td><td>{FDACBC09-A799-47B6-A294-3E77B98F9A48}</td><td>LIB20</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT165</td><td>{3D11BEA8-72D4-4F56-AEB1-FC9A35E167C9}</td><td>TOOLS4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT166</td><td>{D6168582-16C6-4016-8070-F2F135BCCF60}</td><td>SETUP1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td>{48E2F7A0-3F7C-448F-BEA5-D0BC01C78526}</td><td>PROPERTIES1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td>{33E20906-20B0-4AFD-B8D3-6ECDC4110990}</td><td>CAPAPRESENTACION</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td>{64B75863-C358-45F4-99DC-63172B117AEA}</td><td>ACCOUNT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td>{E3FE59E3-943D-4881-94BD-000AC3F59571}</td><td>BIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td>{CB119A5F-1AA7-42F2-9E6C-5F1353EFFDEB}</td><td>ADMINISTRADOR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td>{B173EADE-7543-480E-B398-DDDB1D8CFCC4}</td><td>APP_DATA</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td>{55F9FCA3-BC4A-4E4F-9821-97F96BDE71AB}</td><td>APP_START</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td>{64775898-BA49-45D0-A5F0-5E6D12B120DB}</td><td>BIN2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td>{D988A9C4-CDF7-45D1-A056-6DAB713C7587}</td><td>ES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td>{0D0031E0-8346-4446-828A-1D0CAE330A92}</td><td>CLIENTE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td>{0239C1D5-5786-4319-9962-6D0E4CFC850F}</td><td>CONTENT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td>{0CE61B62-1325-4715-A4F0-B4FC0A84540F}</td><td>THEMES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td>{DDC407CD-BBA5-4261-9812-C22E07357117}</td><td>BASE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td>{51593391-4759-4C44-90E2-08EB12A4B375}</td><td>IMAGES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td>{B31EE690-41A7-4E83-83F8-A8A79D407187}</td><td>DEBUG</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td>{F7B0468A-0C9B-43E2-8152-E0D8D82381FF}</td><td>MINIFIED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td>{F6282F5A-9DCF-4279-B27F-B346939DF226}</td><td>IMAGES1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td>{2F694D56-E18D-4F47-AB46-D4046E959448}</td><td>IMAGES2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td>{24988817-18DE-4A45-B498-7BE5FBE41638}</td><td>OBJ2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td>{0B8C14A5-4EF8-4FAC-8FAC-B8A027E24976}</td><td>DEBUG4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td>{AF076471-1151-4D1C-B443-6CA80F82C3E9}</td><td>TEMPPE2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td>{941DE988-F3C1-47AF-93CC-0483F341496C}</td><td>PROPERTIES2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td>{400240FC-C127-4FC4-B3F2-63647B15296A}</td><td>SCRIPTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td>{51D87AE4-27D1-4384-84A8-B2C2235D5951}</td><td>WEBFORMS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td>{5B406188-933F-4204-8263-19E1690E241D}</td><td>MSAJAX</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td>{55D5EC1E-BFB1-489B-A517-D1555AA42C3F}</td><td>RELEASE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td>{881A67D4-D9DB-4C5F-A076-6C401E3B7F32}</td><td>VENDEDOR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td>{25FA5738-F394-4837-9505-69FDD6CDB10F}</td><td>INSTALADOR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td>{3C5509BB-DE32-4D7D-A435-98857E8FE249}</td><td>INSTALADOR1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td>{F84031B7-6388-4E48-B630-C7A1869DB8B5}</td><td>EXPRESS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td>{69BECC5B-336F-4A86-9DCA-E50861B996DC}</td><td>DVD_5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td>{AD1141AF-6599-4BC7-8842-0FE98A657BA4}</td><td>DISKIMAGES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td>{B27AF295-83C6-4CE0-BE01-B8CE15F05B08}</td><td>DISK1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td>{1DDDDDFF-9BF2-4252-B7D1-72B5AECEA69E}</td><td>PROGRAM_FILES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td>{31A7899F-8367-4A38-8ECE-449AE8C3B9D5}</td><td>GPS2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td>{4204CD4E-DD15-4E6C-ADA2-5228BE71DB11}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td>{1C443225-5392-4A7F-9E14-78740C061F9A}</td><td>OBJ</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT50</td><td>{A9B8DD6B-BF61-4DBE-802F-055F54CB50F2}</td><td>LOGFILES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT51</td><td>{2D426D73-C0B8-434F-AC7A-F07E4EC7CC4E}</td><td>REPORTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT52</td><td>{2A4057E7-BC2F-46A2-890F-0225A445D34F}</td><td>TESTTOOLS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT53</td><td>{4EADDB74-5B9C-469D-B4A4-E9C333362528}</td><td>INTERM</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT54</td><td>{983556C0-E11A-472E-A3BB-4676697C0983}</td><td>PACKAGES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT55</td><td>{89F84BC1-6BFD-48AE-94EA-E3CFA7743DE5}</td><td>ASPNET.SCRIPTMANAGER.JQUERY.1.7.1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT56</td><td>{61A4A8FE-7700-41C9-BDDA-6790856BEFF4}</td><td>LIB</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT57</td><td>{D8E77A25-7EAC-483B-B140-8C9E647A135D}</td><td>NET40</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT58</td><td>{11A084C9-1BDD-4238-B9FD-1FE5D23FAC6D}</td><td>NET45</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT59</td><td>{903CBEBB-058E-4C62-8562-F4465EDB8B4C}</td><td>ASPNET.SCRIPTMANAGER.JQUERY.UI.COMBINED.1.8.20</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td>{E1B533B7-C52C-4012-80C6-F7645CAF79FE}</td><td>DEBUG1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT60</td><td>{21CC99BA-AD29-4353-9761-92B0E83B993C}</td><td>LIB1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT61</td><td>{8A106BE1-0142-4F30-92D8-EB14DE818F45}</td><td>NET401</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT62</td><td>{9543815B-1036-4D14-8FA1-9F018FEE7DEF}</td><td>NET451</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT63</td><td>{89B8F91F-B5F9-451D-A359-16B1721FD10D}</td><td>DOTNETOPENAUTH.ASPNET.4.0.3.12153</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT64</td><td>{DABBAD6D-2D4C-494C-97FF-23CFE472F6B4}</td><td>LIB2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT65</td><td>{33E87D36-F317-4064-BDFA-D827E8F35D62}</td><td>NET40_FULL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT66</td><td>{627B911A-3EA9-4720-9E16-BDA63C4E8B25}</td><td>DOTNETOPENAUTH.CORE.4.0.3.12153</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT67</td><td>{3E9BD65D-4D17-48B5-81B9-4A505DDD494A}</td><td>LIB3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT68</td><td>{36001AF9-FAAA-4AD2-8DAB-C705163E40FC}</td><td>NET40_FULL1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT69</td><td>{27A306F8-78ED-4E6C-B0D7-62068981BFAB}</td><td>DOTNETOPENAUTH.OAUTH.CONSUMER.4.0.3.12153</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td>{651F8BA7-8DEE-4E83-A0BB-06D1693070EF}</td><td>TEMPPE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT70</td><td>{18AFED95-5FDE-472A-82DD-0178CBD52EC4}</td><td>LIB4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT71</td><td>{F6A0FA38-9A30-476F-AFA8-4541A36694CE}</td><td>NET40_FULL2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT72</td><td>{2159AAEE-3829-4047-A135-41BA51C12391}</td><td>DOTNETOPENAUTH.OAUTH.CORE.4.0.3.12153</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT73</td><td>{9B00D145-6654-45DD-B546-2D2D0CFD8A09}</td><td>LIB5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT74</td><td>{95825952-0D1C-4983-8F00-51DDC6D946E3}</td><td>NET40_FULL3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT75</td><td>{DE64EFAF-3598-4562-99B6-6AC18A46C142}</td><td>DOTNETOPENAUTH.OPENID.CORE.4.0.3.12153</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT76</td><td>{65C3767A-A837-40EE-A20E-0C51B3B1D002}</td><td>LIB6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT77</td><td>{587C17ED-687F-4108-8BEF-293BEB4122FE}</td><td>NET40_FULL4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT78</td><td>{D1AAC5F0-DCD9-4745-97D1-44F5344E9E32}</td><td>DOTNETOPENAUTH.OPENID.RELYINGPARTY.4.0.3.12153</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT79</td><td>{5EA02C15-F885-46A6-8A2F-8A8B4474E2B4}</td><td>LIB7</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td>{0F2F8C49-C8E3-4595-9219-F335AACC5FC2}</td><td>PROPERTIES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT80</td><td>{D2C23BA8-4B50-4573-B072-D43555BEEE1E}</td><td>NET40_FULL5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT81</td><td>{71D48D42-73B7-4D56-B46E-F40029645204}</td><td>ENTITYFRAMEWORK.5.0.0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT82</td><td>{E421FE1E-9A73-46B0-AFE4-A09CDDC38F1D}</td><td>CONTENT1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT83</td><td>{6370ACCC-9D60-4637-B060-1596E8988C0A}</td><td>LIB8</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT84</td><td>{045012DD-7F32-4417-9E60-CF4EC227F8B3}</td><td>NET402</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT85</td><td>{33265376-0AF2-41C9-B4D1-0D0175B94DE4}</td><td>ES1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT86</td><td>{78D6759E-EAB2-44D4-BE91-D49035432278}</td><td>NET452</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT87</td><td>{D09136A2-38C4-421D-B8E3-C0CBCCA76F09}</td><td>ES2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT88</td><td>{3B1A81D3-BC6D-4462-BFE9-BB02E8784A63}</td><td>TOOLS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT89</td><td>{120A716F-A99F-4B14-9CC8-23092611B737}</td><td>ENTITYFRAMEWORK.ES.5.0.0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td>{2BC0107B-A1A4-4BC1-81EB-BF5EF301BB9A}</td><td>CAPANEGOCIO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT90</td><td>{B3E81A72-77D4-4F75-BDBC-487D42475054}</td><td>LIB9</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT91</td><td>{E9C266EB-7C67-4C4B-BBAC-8DC55E6BE2D6}</td><td>NET403</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT92</td><td>{B6EC0E35-2DE3-4CE3-A8AD-4B38EE440121}</td><td>ES3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT93</td><td>{ABA404E5-671A-4D63-903B-70C5A41B8C49}</td><td>NET453</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT94</td><td>{EB30D112-60E9-4922-86E2-24348F239FBA}</td><td>ES4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT95</td><td>{F3DFA204-3769-453E-911C-F3A106370CD6}</td><td>JQUERY.1.7.1.1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT96</td><td>{8EE07DA0-B917-43E6-A6B0-119FE99BB695}</td><td>CONTENT2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT97</td><td>{53FC7BEC-25DB-40DA-B398-6E8494C1BBCF}</td><td>SCRIPTS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT98</td><td>{F876DAA9-C062-41EA-824E-C322FA5F152F}</td><td>TOOLS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT99</td><td>{BA39FB06-A234-44EF-814E-C4A804D41710}</td><td>JQUERY.UI.COMBINED.1.8.20.1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IS_ININSTALL_SHORTCUT</td><td>{3A26E62D-3957-4285-8408-7D82686907A2}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.dll</td><td>{0155AD10-9022-4413-B3B5-E9FDBCEDAD12}</td><td>BIN2</td><td>2</td><td/><td>microsoft.aspnet.membership.1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.dll1</td><td>{E252B331-4E80-44DB-AAF8-BFAFE5EEACFD}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>microsoft.aspnet.membership.2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.dll2</td><td>{E769225A-7BB4-4E6B-82F8-90531EC01BE9}</td><td>NET404</td><td>2</td><td/><td>microsoft.aspnet.membership.4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.dll3</td><td>{6008D5DA-87D2-4A29-8BCB-6C31A45BC147}</td><td>NET454</td><td>2</td><td/><td>microsoft.aspnet.membership.6</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>{1778B542-6F4F-4CD6-AA11-CDABBB5B49C7}</td><td>ES</td><td>2</td><td/><td>microsoft.aspnet.membership.</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll1</td><td>{61596C80-68F5-4A7A-A473-15A59E30779C}</td><td>ES5</td><td>2</td><td/><td>microsoft.aspnet.membership.3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll2</td><td>{76BA4C09-97AA-4B44-A3D0-78ED4E45F11B}</td><td>ES6</td><td>2</td><td/><td>microsoft.aspnet.membership.5</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll3</td><td>{5A6C74D5-E571-4BCF-920D-82CF01B111A9}</td><td>ES7</td><td>2</td><td/><td>microsoft.aspnet.membership.8</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll4</td><td>{D44C7405-1FBF-4027-BAC4-8197455D5F42}</td><td>ES8</td><td>2</td><td/><td>microsoft.aspnet.membership.9</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Web.Optimization.WebForms.dll</td><td>{546F3529-DFE3-4D67-9E7B-1DEDC6081640}</td><td>BIN2</td><td>2</td><td/><td>microsoft.aspnet.web.optimiz</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Web.Optimization.WebForms.dll1</td><td>{EF584B21-63FE-4DEA-91F3-039F280ABDC2}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>microsoft.aspnet.web.optimiz1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AspNet.Web.Optimization.WebForms.dll2</td><td>{4ED7A0FB-CB44-4B4C-9238-ED8483AD3DFB}</td><td>NET458</td><td>2</td><td/><td>microsoft.aspnet.web.optimiz4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.ScriptManager.MSAjax.dll</td><td>{583A93F1-13CA-41D2-AC3F-C6CEC19F9B20}</td><td>BIN2</td><td>2</td><td/><td>microsoft.scriptmanager.msaj</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.ScriptManager.MSAjax.dll1</td><td>{AA1A87E8-F5F9-478D-B33C-E80A95087CC1}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>microsoft.scriptmanager.msaj1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.ScriptManager.MSAjax.dll2</td><td>{D0708820-482F-42E6-8ED2-EAE7D9C2D382}</td><td>NET456</td><td>2</td><td/><td>microsoft.scriptmanager.msaj2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.ScriptManager.WebForms.dll</td><td>{F1724661-CCFF-4DD2-9367-2CAF83861560}</td><td>BIN2</td><td>2</td><td/><td>microsoft.scriptmanager.webf</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.ScriptManager.WebForms.dll1</td><td>{07E35241-220B-4622-BCA7-A032EAA82334}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>microsoft.scriptmanager.webf1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.ScriptManager.WebForms.dll2</td><td>{21D22FD1-2225-4EAD-9F95-43FCC0FFB47A}</td><td>NET457</td><td>2</td><td/><td>microsoft.scriptmanager.webf2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.Web.Infrastructure.dll</td><td>{67021366-D08C-4217-8299-0E4AFF0C2A07}</td><td>BIN2</td><td>2</td><td/><td>microsoft.web.infrastructure</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.Web.Infrastructure.dll1</td><td>{E9E1FB5D-2EBD-471F-AD07-64CBFE342F03}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>microsoft.web.infrastructure1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.Web.Infrastructure.dll2</td><td>{4ECFA7A1-68C3-41D0-86A6-9B00981132BD}</td><td>NET4010</td><td>2</td><td/><td>microsoft.web.infrastructure2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Optimization.dll</td><td>{041A0C84-CF47-4717-81D6-BBF194A3DA5A}</td><td>BIN2</td><td>2</td><td/><td>system.web.optimization.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Optimization.dll1</td><td>{23765377-A6B3-4535-95D2-BA7C6B088CAF}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>system.web.optimization.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Optimization.dll2</td><td>{69960D37-ED0A-4B22-A664-8D724326C9C6}</td><td>NET408</td><td>2</td><td/><td>system.web.optimization.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Optimization.resources.dll</td><td>{EA3269C5-BAD6-4BD4-9619-4CAADCE30FED}</td><td>ES</td><td>2</td><td/><td>system.web.optimization.reso</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Optimization.resources.dll1</td><td>{6F252FE4-3AF9-466E-ABA2-AEA61B473BAC}</td><td>ES11</td><td>2</td><td/><td>system.web.optimization.reso1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Optimization.resources.dll2</td><td>{9937C8FF-DBF2-4073-ACAA-D09D33C80C9C}</td><td>ES12</td><td>2</td><td/><td>system.web.optimization.reso2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Providers.dll</td><td>{C8D0145C-D1BA-4692-8A0F-906B49B49D0C}</td><td>BIN2</td><td>2</td><td/><td>system.web.providers.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Providers.dll1</td><td>{C517BE6F-0F58-4644-A49D-53A3215467F7}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>system.web.providers.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Providers.dll2</td><td>{F95C2367-BC78-4224-8F66-892411E81072}</td><td>NET406</td><td>2</td><td/><td>system.web.providers.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Providers.resources.dll</td><td>{5911EDB0-3328-48A5-B07D-B6FC52415474}</td><td>ES</td><td>2</td><td/><td>system.web.providers.resourc</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Providers.resources.dll1</td><td>{DD9D11A5-CB29-4BD8-A6E6-5C474B9F7F32}</td><td>ES9</td><td>2</td><td/><td>system.web.providers.resourc1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>System.Web.Providers.resources.dll2</td><td>{6F68951F-705D-4301-A3FB-8E5FE41C1EFC}</td><td>ES10</td><td>2</td><td/><td>system.web.providers.resourc2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>WG.exe</td><td>{E8D5591A-529A-41C4-80FA-A3B5FEA3786E}</td><td>TOOLS4</td><td>2</td><td/><td>wg.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>WebGrease.dll</td><td>{6AE55D5A-B66E-426E-821C-027780200BD1}</td><td>BIN2</td><td>2</td><td/><td>webgrease.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>WebGrease.dll1</td><td>{A0E2BB42-BF13-4EFD-A41E-2E503C97F80E}</td><td>MY_PRODUCT_NAME1</td><td>2</td><td/><td>webgrease.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>WebGrease.dll2</td><td>{53F58BB8-2DE7-414D-86A9-6F00161FE23E}</td><td>LIB20</td><td>2</td><td/><td>webgrease.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>_IsIcoRes.Exe</td><td>{553E15B4-000D-4A36-86D9-B782AC2FF32B}</td><td>INTERM</td><td>2</td><td/><td>_isicores.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>migrate.exe</td><td>{17321559-7B81-4A89-86BB-A54E76189686}</td><td>TOOLS</td><td>2</td><td/><td>migrate.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>setup.exe</td><td>{4BB61B3B-333A-47DE-AE2D-A6F76338A400}</td><td>DISK1</td><td>2</td><td/><td>setup.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
	</table>

	<table name="Condition">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="i2">Level</col>
		<col def="S255">Condition</col>
	</table>

	<table name="Control">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control</col>
		<col def="s20">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="S72">Property</col>
		<col def="L0">Text</col>
		<col def="S50">Control_Next</col>
		<col def="L50">Help</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISControlId</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="S72">Binary_</col>
		<row><td>AdminChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>458755</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_BrowseDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_ChangeDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>7</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsAdminInstallBrowse_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>3</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsAdminInstallBrowse_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminNetworkLocation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>PushButton</td><td>286</td><td>124</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>SetupPathEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_SpecifyNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>40</td><td>131075</td><td/><td>##IDS__IsAdminInstallPoint_EnterNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocationFormatted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Install##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>LBBrowse</td><td>Text</td><td>21</td><td>90</td><td>100</td><td>10</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>SetupPathEdit</td><td>PathEdit</td><td>21</td><td>102</td><td>330</td><td>17</td><td>3</td><td>TARGETDIR</td><td/><td>Browse</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_Wizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_ServerImage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Icon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>CancelSetup</td><td>No</td><td>PushButton</td><td>135</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_No##</td><td>Yes</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Text</td><td>Text</td><td>48</td><td>15</td><td>194</td><td>30</td><td>131075</td><td/><td>##IDS__IsCancelDlg_ConfirmCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Yes</td><td>PushButton</td><td>62</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_Yes##</td><td>No</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetup</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Tree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>203</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Change##</td><td>Help</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Details</td><td>PushButton</td><td>93</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Space##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_SelectFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgText</td><td>Text</td><td>9</td><td>51</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_ClickFeatureIcon##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>FeatureGroup</td><td>GroupBox</td><td>235</td><td>67</td><td>131</td><td>120</td><td>1</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Help</td><td>PushButton</td><td>22</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Help##</td><td>Details</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Text</td><td>8</td><td>190</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>Text</td><td>241</td><td>80</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_MultilineDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Location</td><td>Text</td><td>8</td><td>203</td><td>291</td><td>20</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeaturePath##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Size</td><td>Text</td><td>241</td><td>133</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureSize##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Tree</td><td>SelectionTree</td><td>8</td><td>70</td><td>220</td><td>118</td><td>7</td><td>_BrowseProperty</td><td/><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetupTips</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetupDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DontInstall</td><td>Icon</td><td>21</td><td>155</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary14</td></row>
		<row><td>CustomSetupTips</td><td>DontInstallText</td><td>Text</td><td>60</td><td>155</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_WillNotBeInstalled##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>FirstInstallText</td><td>Text</td><td>60</td><td>180</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Advertise##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Install</td><td>Icon</td><td>21</td><td>105</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary15</td></row>
		<row><td>CustomSetupTips</td><td>InstallFirstUse</td><td>Icon</td><td>21</td><td>180</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary16</td></row>
		<row><td>CustomSetupTips</td><td>InstallPartial</td><td>Icon</td><td>21</td><td>130</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary17</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateMenu</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary18</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateText</td><td>Text</td><td>21</td><td>91</td><td>300</td><td>10</td><td>3</td><td/><td>##IDS_SetupTips_InstallState##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>CustomSetupTips</td><td>InstallText</td><td>Text</td><td>60</td><td>105</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_AllInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>MenuText</td><td>Text</td><td>50</td><td>52</td><td>300</td><td>36</td><td>3</td><td/><td>##IDS_SetupTips_IconInstallState##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>NetworkInstall</td><td>Icon</td><td>21</td><td>205</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary13</td></row>
		<row><td>CustomSetupTips</td><td>NetworkInstallText</td><td>Text</td><td>60</td><td>205</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Network##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_SetupTips_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>PartialText</td><td>Text</td><td>60</td><td>130</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_SubFeaturesInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomerInformation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>NameLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyEdit</td><td>Edit</td><td>21</td><td>100</td><td>237</td><td>17</td><td>3</td><td>COMPANYNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma80##</td><td>SerialLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyLabel</td><td>Text</td><td>21</td><td>89</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_Organization##</td><td>CompanyEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_PleaseEnterInfo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Text</td><td>21</td><td>161</td><td>300</td><td>14</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_CustomerInformation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameEdit</td><td>Edit</td><td>21</td><td>63</td><td>237</td><td>17</td><td>3</td><td>USERNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma50##</td><td>CompanyLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameLabel</td><td>Text</td><td>21</td><td>52</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_UserName##</td><td>NameEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>63</td><td>170</td><td>300</td><td>50</td><td>2</td><td>ApplicationUsers</td><td>##IDS__IsRegisterUserDlg_16##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Text</td><td>21</td><td>127</td><td>109</td><td>10</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_SerialNumber##</td><td>SerialNumber</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>MaskedEdit</td><td>21</td><td>138</td><td>237</td><td>17</td><td>2</td><td>ISX_SERIALNUM</td><td/><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DatabaseFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CHANGE##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DatabaseFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DatabaseFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_DatabaseFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS_DatabaseFolder_InstallDatabaseTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS__DatabaseFolder_DatabaseDir##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DestinationFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__DestinationFolder_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DestFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DestinationFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_DestinationFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS__DestinationFolder_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS_INSTALLDIR##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DiskSpaceRequirements</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_SpaceRequired##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgText</td><td>Text</td><td>10</td><td>185</td><td>358</td><td>41</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_VolumesTooSmall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_DiskSpaceRequirements##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>List</td><td>VolumeCostList</td><td>8</td><td>55</td><td>358</td><td>125</td><td>393223</td><td/><td>##IDS__IsFeatureDetailsDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>FilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>33</td><td>3</td><td/><td>##IDS__IsFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Exit</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Exit##</td><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Ignore##</td><td>Exit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>87</td><td>331</td><td>135</td><td>7</td><td>FileInUseProcess</td><td/><td>Retry</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Retry</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Retry##</td><td>Ignore</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>InstallChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>4128779</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_BrowseDestFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_ChangeCurrentFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsBrowseFolderDlg_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsBrowseFolderDlg_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Copyright</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Text</td><td>135</td><td>144</td><td>228</td><td>73</td><td>65539</td><td/><td>##IDS__IsWelcomeDlg_WarningCopyright##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_WelcomeProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_InstallProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Agree</td><td>RadioButtonGroup</td><td>8</td><td>190</td><td>291</td><td>40</td><td>3</td><td>AgreeToLicense</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>LicenseAgreement</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ISPrintButton</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_ReadLicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_LicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>PushButton</td><td>301</td><td>188</td><td>65</td><td>17</td><td>3</td><td/><td>##IDS_PRINT_BUTTON##</td><td>Agree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Memo</td><td>ScrollableText</td><td>8</td><td>55</td><td>358</td><td>130</td><td>7</td><td/><td/><td/><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Eula.rtf</td><td/></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MaintenanceType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_MaitenanceOptions##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_ProgramMaintenance##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Ico1</td><td>Icon</td><td>35</td><td>75</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary6</td></row>
		<row><td>MaintenanceType</td><td>Ico2</td><td>Icon</td><td>35</td><td>135</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary7</td></row>
		<row><td>MaintenanceType</td><td>Ico3</td><td>Icon</td><td>35</td><td>195</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary8</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>21</td><td>55</td><td>290</td><td>170</td><td>3</td><td>_IsMaintenance</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text1</td><td>Text</td><td>80</td><td>72</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_ChangeFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text2</td><td>Text</td><td>80</td><td>135</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_RepairMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text3</td><td>Text</td><td>80</td><td>192</td><td>260</td><td>35</td><td>131075</td><td/><td>##IDS__IsMaintenanceDlg_RemoveProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_WizardWelcome##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>50</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MsiRMFilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Restart</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>14</td><td>3</td><td/><td>##IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>66</td><td>331</td><td>130</td><td>3</td><td>FileInUseProcess</td><td/><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Restart</td><td>RadioButtonGroup</td><td>19</td><td>187</td><td>343</td><td>40</td><td>3</td><td>RestartManagerOption</td><td/><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>OutOfSpace</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_DiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>43</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_HighlightedVolumes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_OutOfDiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>List</td><td>VolumeCostList</td><td>21</td><td>95</td><td>332</td><td>120</td><td>393223</td><td/><td>##IDS__IsDiskSpaceDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsPatchDlg_Update##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_WelcomePatchWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>54</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_PatchClickUpdate##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>3</td><td/><td/><td>DlgTitle</td><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadmeInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS__IsReadmeDlg_Cancel##</td><td>Readme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>232</td><td>16</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_PleaseReadInfo##</td><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>3</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>193</td><td>13</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_ReadMeInfo##</td><td>DlgDesc</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Readme</td><td>ScrollableText</td><td>10</td><td>55</td><td>353</td><td>166</td><td>3</td><td/><td/><td>Banner</td><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Readme.rtf</td><td/></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>GroupBox1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToInstall</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Text</td><td>38</td><td>198</td><td>211</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Company##</td><td>SerialNumberText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Text</td><td>19</td><td>80</td><td>81</td><td>10</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_CurrentSettings##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyReadyDlg_WizardReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText1</td><td>Text</td><td>21</td><td>54</td><td>330</td><td>24</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_BackOrCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Text</td><td>21</td><td>99</td><td>330</td><td>20</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ModifyReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyRepair##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyInstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Text</td><td>19</td><td>92</td><td>330</td><td>133</td><td>65541</td><td/><td/><td>SetupTypeText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyReadyDlg_Install##</td><td>InstallPerMachine</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>PushButton</td><td>63</td><td>123</td><td>248</td><td>17</td><td>8388610</td><td/><td>##IDS__IsRegisterUserDlg_Anyone##</td><td>InstallPerUser</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>PushButton</td><td>63</td><td>143</td><td>248</td><td>17</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Text</td><td>38</td><td>211</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Serial##</td><td>CurrentSettingsText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Text</td><td>23</td><td>97</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SetupType##</td><td>SetupTypeText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Text</td><td>37</td><td>114</td><td>306</td><td>14</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SelectedSetupType##</td><td>TargetFolderText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Text</td><td>24</td><td>136</td><td>306</td><td>11</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_DestFolder##</td><td>TargetFolderText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Text</td><td>37</td><td>151</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Installdir##</td><td>UserInformationText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Text</td><td>23</td><td>171</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserInfo##</td><td>UserNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Text</td><td>38</td><td>184</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserName##</td><td>CompanyNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>RemoveNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToRemove</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>24</td><td>131075</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickRemove##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText1</td><td>Text</td><td>21</td><td>79</td><td>330</td><td>23</td><td>3</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickBack##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText2</td><td>Text</td><td>21</td><td>102</td><td>330</td><td>24</td><td>3</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_RemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyRemoveAllDlg_Remove##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFatalError_Finish##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_RestoreOrContinueLater##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsFatalError_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsFatalError_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>CheckBox</td><td>135</td><td>164</td><td>10</td><td>9</td><td>2</td><td>ISCHECKFORPRODUCTUPDATES</td><td>CheckBox1</td><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Text</td><td>152</td><td>162</td><td>190</td><td>30</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_YesCheckForUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>CheckBox</td><td>151</td><td>114</td><td>10</td><td>9</td><td>2</td><td>LAUNCHPROGRAM</td><td/><td>CheckLaunchReadme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>CheckBox</td><td>151</td><td>148</td><td>10</td><td>9</td><td>2</td><td>LAUNCHREADME</td><td/><td>CheckBoxUpdates</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>182</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckLaunchProgram</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Text</td><td>164</td><td>112</td><td>98</td><td>15</td><td>65538</td><td/><td>##IDS__IsExitDialog_LaunchProgram##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Text</td><td>164</td><td>148</td><td>120</td><td>13</td><td>65538</td><td/><td>##IDS__IsExitDialog_ShowReadMe##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsExitDialog_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>182</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsExitDialog_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_InstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_UninstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Text</td><td>135</td><td>30</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_SetupFinished##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_PossibleUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Text</td><td>135</td><td>120</td><td>228</td><td>45</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_InternetConnection##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>A</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Abort##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>C</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>ErrorIcon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>SetupError</td><td>ErrorText</td><td>Text</td><td>50</td><td>15</td><td>200</td><td>50</td><td>131075</td><td/><td>##IDS__IsErrorDlg_ErrorText##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>I</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Ignore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>N</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_NO##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>O</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>R</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Retry##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>Y</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Yes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>Text</td><td>135</td><td>125</td><td>228</td><td>12</td><td>65539</td><td/><td>##IDS__IsInitDlg_1##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>Text</td><td>135</td><td>109</td><td>220</td><td>36</td><td>65539</td><td/><td>##IDS__IsInitDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInitialization</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsInitDlg_WelcomeWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>30</td><td>196611</td><td/><td>##IDS__IsInitDlg_PreparingWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsUserExit_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_RestoreOrContinue##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsUserExit_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsUserExit_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>ProgressBar</td><td>59</td><td>113</td><td>275</td><td>12</td><td>65537</td><td/><td>##IDS__IsProgressDlg_ProgressDone##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>Text</td><td>59</td><td>100</td><td>275</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupProgress</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_InstallingProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_Uninstalling##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbSec</td><td>Text</td><td>192</td><td>139</td><td>32</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_SecHidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbStatus</td><td>Text</td><td>59</td><td>85</td><td>70</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_Status##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>SetupIcon</td><td>Icon</td><td>21</td><td>51</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary9</td></row>
		<row><td>SetupProgress</td><td>ShowTime</td><td>Text</td><td>170</td><td>139</td><td>17</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_Hidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>TextTime</td><td>Text</td><td>59</td><td>139</td><td>110</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_HiddenTimeRemaining##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupResume</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_WizardResume##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Text</td><td>135</td><td>46</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_ResumeSuspended##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_Resuming##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompText</td><td>Text</td><td>80</td><td>80</td><td>246</td><td>30</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompleteIco</td><td>Icon</td><td>34</td><td>80</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary10</td></row>
		<row><td>SetupType</td><td>CustText</td><td>Text</td><td>80</td><td>171</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CustomIco</td><td>Icon</td><td>34</td><td>171</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseSetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgText</td><td>Text</td><td>22</td><td>49</td><td>326</td><td>10</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_SelectSetupType##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_SetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>MinIco</td><td>Icon</td><td>34</td><td>125</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>MinText</td><td>Text</td><td>80</td><td>125</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>20</td><td>59</td><td>264</td><td>139</td><td>1048579</td><td>_IsSetupTypeMin</td><td/><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SplashBitmap</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Image</td><td>Bitmap</td><td>13</td><td>12</td><td>349</td><td>211</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
	</table>

	<table name="ControlCondition">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Action</col>
		<col key="yes" def="s255">Condition</col>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Hide</td><td>SHOWCOPYRIGHT="No"</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Show</td><td>SHOWCOPYRIGHT="Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Disable</td><td>AgreeToLicense &lt;&gt; "Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Enable</td><td>AgreeToLicense = "Yes"</td></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Show</td><td>ProgressType0="Modify"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Show</td><td>ProgressType0="Repair"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Show</td><td>ProgressType0="install"</td></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Disable</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Enable</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>NOT SERIALNUMSHOW</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Show</td><td>ProgressType2="installed" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Show</td><td>ProgressType2="uninstalled" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Show</td><td>ProgressType2="installed"</td></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Show</td><td>ProgressType2="uninstalled"</td></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Show</td><td>ProgressType3="installs"</td></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Show</td><td>ProgressType3="uninstalls"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Show</td><td>ProgressType1="Installing"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Show</td><td>ProgressType1="Uninstalling"</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Hide</td><td>RESUME</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Show</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Hide</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Show</td><td>RESUME</td></row>
	</table>

	<table name="ControlEvent">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col key="yes" def="s255">Argument</col>
		<col key="yes" def="S255">Condition</col>
		<col def="I2">Ordering</col>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>NewDialog</td><td>AdminWelcome</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>SpawnDialog</td><td>AdminChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>3</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>No</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>NOT Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>SelectionBrowse</td><td>InstallChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>SelectionBrowse</td><td>DiskSpaceRequirements</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Help</td><td>SpawnDialog</td><td>CustomSetupTips</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>[_IsSetupTypeMin]</td><td>Custom</td><td>1</td><td>0</td></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>EndDialog</td><td>Exit</td><td>(SERIALNUMVALRETRYLIMIT) And (SERIALNUMVALRETRYLIMIT&lt;0) And (SERIALNUMVALRETURN&lt;&gt;SERIALNUMVALSUCCESSRETVAL)</td><td>2</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>(Not SERIALNUMVALRETURN) OR (SERIALNUMVALRETURN=SERIALNUMVALSUCCESSRETVAL)</td><td>3</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>1</td><td>ApplicationUsers = "AllUsers" And Privileged</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>{}</td><td>ApplicationUsers = "OnlyCurrentUser" And Privileged</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>DATABASEDIR</td><td>1</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>NewDialog</td><td>SetupType</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>0</td></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>INSTALLDIR</td><td>1</td><td>2</td></row>
		<row><td>DestinationFolder</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>1</td><td>0</td></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Exit</td><td>EndDialog</td><td>Exit</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>EndDialog</td><td>Ignore</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Retry</td><td>EndDialog</td><td>Retry</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>[_BrowseProperty]</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>NewDialog</td><td>SplashBitmap</td><td>Display_IsBitmapDlg</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>DoAction</td><td>ISPrint</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>NewDialog</td><td>CustomerInformation</td><td>AgreeToLicense = "Yes"</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Back</td><td>NewDialog</td><td>MaintenanceWelcome</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsMaintenance = "Change"</td><td>12</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsMaintenance = "Reinstall"</td><td>13</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToRemove</td><td>_IsMaintenance = "Remove"</td><td>11</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>_IsMaintenance = "Reinstall"</td><td>10</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>ReinstallMode</td><td>[ReinstallModeText]</td><td>_IsMaintenance = "Reinstall"</td><td>9</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Modify</td><td>_IsMaintenance = "Change"</td><td>2</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Repair</td><td>_IsMaintenance = "Reinstall"</td><td>1</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Modifying</td><td>_IsMaintenance = "Change"</td><td>3</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Repairing</td><td>_IsMaintenance = "Reinstall"</td><td>4</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>modified</td><td>_IsMaintenance = "Change"</td><td>6</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>5</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>modifies</td><td>_IsMaintenance = "Change"</td><td>7</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>8</td></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>RMShutdownAndRestart</td><td>0</td><td>RestartManagerOption="CloseRestart"</td><td>2</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>ACTION = "ADMIN"</td><td>0</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>DestinationFolder</td><td>ACTION &lt;&gt; "ADMIN"</td><td>0</td></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>PATCH And REINSTALL=""</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>ReinstallMode</td><td>omus</td><td>PATCH And REINSTALLMODE=""</td><td>2</td></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>NewDialog</td><td>LicenseAgreement</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>CustomSetup</td><td>Installed OR _IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed AND _IsMaintenance = "Reinstall"</td><td>3</td></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ALLUSERS]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[MSIINSTALLPERUSER]</td><td>{}</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ALLUSERS]</td><td>2</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[MSIINSTALLPERUSER]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>Remove</td><td>ALL</td><td>1</td><td>1</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType1]</td><td>Uninstalling</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType2]</td><td>uninstalled</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType3]</td><td>uninstalls</td><td>1</td><td>0</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1") And NOT ISENABLEDWUSFINISHDIALOG</td><td>6</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupError</td><td>A</td><td>EndDialog</td><td>ErrorAbort</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>C</td><td>EndDialog</td><td>ErrorCancel</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>I</td><td>EndDialog</td><td>ErrorIgnore</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>N</td><td>EndDialog</td><td>ErrorNo</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>O</td><td>EndDialog</td><td>ErrorOk</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>R</td><td>EndDialog</td><td>ErrorRetry</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>Y</td><td>EndDialog</td><td>ErrorYes</td><td>1</td><td>0</td></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>SetupType</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>SetupType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsSetupTypeMin &lt;&gt; "Custom"</td><td>1</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>100</td><td>_IsSetupTypeMin="Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>200</td><td>_IsSetupTypeMin="Typical"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>300</td><td>_IsSetupTypeMin="Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[ISRUNSETUPTYPEADDLOCALEVENT]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameCustom]</td><td>_IsSetupTypeMin = "Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameMinimal]</td><td>_IsSetupTypeMin = "Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameTypical]</td><td>_IsSetupTypeMin = "Typical"</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>NewDialog</td><td>InstallWelcome</td><td>1</td><td>0</td></row>
	</table>

	<table name="CreateFolder">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Component_</col>
		<row><td>ACCOUNT</td><td>ISX_DEFAULTCOMPONENT19</td></row>
		<row><td>ADMINISTRADOR</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>APP_DATA</td><td>ISX_DEFAULTCOMPONENT21</td></row>
		<row><td>APP_START</td><td>ISX_DEFAULTCOMPONENT22</td></row>
		<row><td>ASPNET.SCRIPTMANAGER.JQUERY.1.7.1</td><td>ISX_DEFAULTCOMPONENT55</td></row>
		<row><td>ASPNET.SCRIPTMANAGER.JQUERY.UI.COMBINED.1.8.20</td><td>ISX_DEFAULTCOMPONENT59</td></row>
		<row><td>BASE</td><td>ISX_DEFAULTCOMPONENT28</td></row>
		<row><td>BASE1</td><td>ISX_DEFAULTCOMPONENT103</td></row>
		<row><td>BIN</td><td>ISX_DEFAULTCOMPONENT2</td></row>
		<row><td>BIN1</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>BIN2</td><td>Antlr3.Runtime.dll</td></row>
		<row><td>BIN2</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll</td></row>
		<row><td>BIN2</td><td>AspNet.ScriptManager.jQuery.dll</td></row>
		<row><td>BIN2</td><td>CapaDatos.dll4</td></row>
		<row><td>BIN2</td><td>CapaNegocio.dll4</td></row>
		<row><td>BIN2</td><td>CapaPresentacion.dll</td></row>
		<row><td>BIN2</td><td>DotNetOpenAuth.AspNet.dll</td></row>
		<row><td>BIN2</td><td>DotNetOpenAuth.Core.dll</td></row>
		<row><td>BIN2</td><td>DotNetOpenAuth.OAuth.Consumer.dll</td></row>
		<row><td>BIN2</td><td>DotNetOpenAuth.OAuth.dll</td></row>
		<row><td>BIN2</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll</td></row>
		<row><td>BIN2</td><td>DotNetOpenAuth.OpenId.dll</td></row>
		<row><td>BIN2</td><td>EntityFramework.dll</td></row>
		<row><td>BIN2</td><td>ISX_DEFAULTCOMPONENT23</td></row>
		<row><td>BIN2</td><td>Microsoft.AspNet.Membership.OpenAuth.dll</td></row>
		<row><td>BIN2</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll</td></row>
		<row><td>BIN2</td><td>Microsoft.ScriptManager.MSAjax.dll</td></row>
		<row><td>BIN2</td><td>Microsoft.ScriptManager.WebForms.dll</td></row>
		<row><td>BIN2</td><td>Microsoft.Web.Infrastructure.dll</td></row>
		<row><td>BIN2</td><td>System.Web.Optimization.dll</td></row>
		<row><td>BIN2</td><td>System.Web.Providers.dll</td></row>
		<row><td>BIN2</td><td>WebGrease.dll</td></row>
		<row><td>CAPADATOS</td><td>ISX_DEFAULTCOMPONENT1</td></row>
		<row><td>CAPANEGOCIO</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>CAPAPRESENTACION</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>CLIENTE</td><td>ISX_DEFAULTCOMPONENT25</td></row>
		<row><td>CONTENT</td><td>ISX_DEFAULTCOMPONENT26</td></row>
		<row><td>CONTENT1</td><td>ISX_DEFAULTCOMPONENT82</td></row>
		<row><td>CONTENT2</td><td>ISX_DEFAULTCOMPONENT96</td></row>
		<row><td>CONTENT3</td><td>ISX_DEFAULTCOMPONENT100</td></row>
		<row><td>CONTENT4</td><td>ISX_DEFAULTCOMPONENT101</td></row>
		<row><td>CONTENT5</td><td>ISX_DEFAULTCOMPONENT129</td></row>
		<row><td>CONTENT6</td><td>ISX_DEFAULTCOMPONENT132</td></row>
		<row><td>CONTENT7</td><td>ISX_DEFAULTCOMPONENT139</td></row>
		<row><td>CONTENT8</td><td>ISX_DEFAULTCOMPONENT153</td></row>
		<row><td>CONTENT9</td><td>ISX_DEFAULTCOMPONENT161</td></row>
		<row><td>DEBUG</td><td>CapaDatos.dll</td></row>
		<row><td>DEBUG</td><td>ISX_DEFAULTCOMPONENT3</td></row>
		<row><td>DEBUG1</td><td>CapaDatos.dll1</td></row>
		<row><td>DEBUG1</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>DEBUG2</td><td>CapaDatos.dll2</td></row>
		<row><td>DEBUG2</td><td>CapaNegocio.dll</td></row>
		<row><td>DEBUG2</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>DEBUG3</td><td>CapaNegocio.dll2</td></row>
		<row><td>DEBUG3</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>DEBUG4</td><td>CapaPresentacion.dll1</td></row>
		<row><td>DEBUG4</td><td>ISX_DEFAULTCOMPONENT34</td></row>
		<row><td>DISK1</td><td>ISX_DEFAULTCOMPONENT46</td></row>
		<row><td>DISK1</td><td>setup.exe</td></row>
		<row><td>DISKIMAGES</td><td>ISX_DEFAULTCOMPONENT45</td></row>
		<row><td>DOTNETOPENAUTH.ASPNET.4.0.3.12153</td><td>ISX_DEFAULTCOMPONENT63</td></row>
		<row><td>DOTNETOPENAUTH.CORE.4.0.3.12153</td><td>ISX_DEFAULTCOMPONENT66</td></row>
		<row><td>DOTNETOPENAUTH.OAUTH.CONSUMER.4.0.3.12153</td><td>ISX_DEFAULTCOMPONENT69</td></row>
		<row><td>DOTNETOPENAUTH.OAUTH.CORE.4.0.3.12153</td><td>ISX_DEFAULTCOMPONENT72</td></row>
		<row><td>DOTNETOPENAUTH.OPENID.CORE.4.0.3.12153</td><td>ISX_DEFAULTCOMPONENT75</td></row>
		<row><td>DOTNETOPENAUTH.OPENID.RELYINGPARTY.4.0.3.12153</td><td>ISX_DEFAULTCOMPONENT78</td></row>
		<row><td>DVD_5</td><td>ISX_DEFAULTCOMPONENT44</td></row>
		<row><td>ENTITYFRAMEWORK.5.0.0</td><td>ISX_DEFAULTCOMPONENT81</td></row>
		<row><td>ENTITYFRAMEWORK.ES.5.0.0</td><td>ISX_DEFAULTCOMPONENT89</td></row>
		<row><td>ES</td><td>EntityFramework.resources.dll</td></row>
		<row><td>ES</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>ES</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll</td></row>
		<row><td>ES</td><td>System.Web.Optimization.resources.dll</td></row>
		<row><td>ES</td><td>System.Web.Providers.resources.dll</td></row>
		<row><td>ES1</td><td>EntityFramework.resources.dll1</td></row>
		<row><td>ES1</td><td>ISX_DEFAULTCOMPONENT85</td></row>
		<row><td>ES10</td><td>ISX_DEFAULTCOMPONENT127</td></row>
		<row><td>ES10</td><td>System.Web.Providers.resources.dll2</td></row>
		<row><td>ES11</td><td>ISX_DEFAULTCOMPONENT147</td></row>
		<row><td>ES11</td><td>System.Web.Optimization.resources.dll1</td></row>
		<row><td>ES12</td><td>ISX_DEFAULTCOMPONENT151</td></row>
		<row><td>ES12</td><td>System.Web.Optimization.resources.dll2</td></row>
		<row><td>ES2</td><td>EntityFramework.resources.dll2</td></row>
		<row><td>ES2</td><td>ISX_DEFAULTCOMPONENT87</td></row>
		<row><td>ES3</td><td>EntityFramework.resources.dll3</td></row>
		<row><td>ES3</td><td>ISX_DEFAULTCOMPONENT92</td></row>
		<row><td>ES4</td><td>EntityFramework.resources.dll4</td></row>
		<row><td>ES4</td><td>ISX_DEFAULTCOMPONENT94</td></row>
		<row><td>ES5</td><td>ISX_DEFAULTCOMPONENT111</td></row>
		<row><td>ES5</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll1</td></row>
		<row><td>ES6</td><td>ISX_DEFAULTCOMPONENT113</td></row>
		<row><td>ES6</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll2</td></row>
		<row><td>ES7</td><td>ISX_DEFAULTCOMPONENT117</td></row>
		<row><td>ES7</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll3</td></row>
		<row><td>ES8</td><td>ISX_DEFAULTCOMPONENT119</td></row>
		<row><td>ES8</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll4</td></row>
		<row><td>ES9</td><td>ISX_DEFAULTCOMPONENT123</td></row>
		<row><td>ES9</td><td>System.Web.Providers.resources.dll1</td></row>
		<row><td>EXPRESS</td><td>ISX_DEFAULTCOMPONENT43</td></row>
		<row><td>GPS1</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>GPS2</td><td>ISX_DEFAULTCOMPONENT48</td></row>
		<row><td>IMAGES</td><td>ISX_DEFAULTCOMPONENT29</td></row>
		<row><td>IMAGES1</td><td>ISX_DEFAULTCOMPONENT31</td></row>
		<row><td>IMAGES2</td><td>ISX_DEFAULTCOMPONENT32</td></row>
		<row><td>IMAGES3</td><td>ISX_DEFAULTCOMPONENT104</td></row>
		<row><td>IMAGES4</td><td>ISX_DEFAULTCOMPONENT106</td></row>
		<row><td>INSTALADOR</td><td>ISX_DEFAULTCOMPONENT41</td></row>
		<row><td>INSTALADOR1</td><td>ISX_DEFAULTCOMPONENT42</td></row>
		<row><td>INSTALLDIR</td><td>Antlr3.Runtime.dll</td></row>
		<row><td>INSTALLDIR</td><td>Antlr3.Runtime.dll1</td></row>
		<row><td>INSTALLDIR</td><td>Antlr3.Runtime.dll2</td></row>
		<row><td>INSTALLDIR</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll</td></row>
		<row><td>INSTALLDIR</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll1</td></row>
		<row><td>INSTALLDIR</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll2</td></row>
		<row><td>INSTALLDIR</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll3</td></row>
		<row><td>INSTALLDIR</td><td>AspNet.ScriptManager.jQuery.dll</td></row>
		<row><td>INSTALLDIR</td><td>AspNet.ScriptManager.jQuery.dll1</td></row>
		<row><td>INSTALLDIR</td><td>AspNet.ScriptManager.jQuery.dll2</td></row>
		<row><td>INSTALLDIR</td><td>AspNet.ScriptManager.jQuery.dll3</td></row>
		<row><td>INSTALLDIR</td><td>CapaDatos.dll</td></row>
		<row><td>INSTALLDIR</td><td>CapaDatos.dll1</td></row>
		<row><td>INSTALLDIR</td><td>CapaDatos.dll2</td></row>
		<row><td>INSTALLDIR</td><td>CapaDatos.dll3</td></row>
		<row><td>INSTALLDIR</td><td>CapaDatos.dll4</td></row>
		<row><td>INSTALLDIR</td><td>CapaDatos.dll5</td></row>
		<row><td>INSTALLDIR</td><td>CapaNegocio.dll</td></row>
		<row><td>INSTALLDIR</td><td>CapaNegocio.dll1</td></row>
		<row><td>INSTALLDIR</td><td>CapaNegocio.dll2</td></row>
		<row><td>INSTALLDIR</td><td>CapaNegocio.dll3</td></row>
		<row><td>INSTALLDIR</td><td>CapaNegocio.dll4</td></row>
		<row><td>INSTALLDIR</td><td>CapaNegocio.dll5</td></row>
		<row><td>INSTALLDIR</td><td>CapaPresentacion.dll</td></row>
		<row><td>INSTALLDIR</td><td>CapaPresentacion.dll1</td></row>
		<row><td>INSTALLDIR</td><td>CapaPresentacion.dll2</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.AspNet.dll</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.AspNet.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.AspNet.dll2</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.Core.dll</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.Core.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.Core.dll2</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OAuth.Consumer.dll</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OAuth.Consumer.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OAuth.Consumer.dll2</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OAuth.dll</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OAuth.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OAuth.dll2</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll2</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OpenId.dll</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OpenId.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DotNetOpenAuth.OpenId.dll2</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.PowerShell.Utility.dll</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.PowerShell.dll</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.dll</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.dll1</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.dll2</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.dll3</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.resources.dll</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.resources.dll1</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.resources.dll2</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.resources.dll3</td></row>
		<row><td>INSTALLDIR</td><td>EntityFramework.resources.dll4</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT1</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT100</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT101</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT102</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT103</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT104</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT105</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT106</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT107</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT108</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT109</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT110</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT111</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT112</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT113</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT114</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT115</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT116</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT117</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT118</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT119</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT12</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT120</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT121</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT122</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT123</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT124</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT125</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT126</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT127</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT128</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT129</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT13</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT130</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT131</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT132</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT133</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT134</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT135</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT136</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT137</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT138</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT139</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT140</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT141</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT142</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT143</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT144</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT145</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT146</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT147</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT148</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT149</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT15</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT150</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT151</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT152</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT153</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT154</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT155</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT156</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT157</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT158</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT159</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT16</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT160</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT161</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT162</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT163</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT164</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT165</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT166</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT17</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT19</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT2</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT21</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT22</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT23</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT25</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT26</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT27</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT28</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT29</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT3</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT30</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT31</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT32</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT33</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT34</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT35</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT36</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT37</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT38</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT39</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT40</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT41</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT42</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT43</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT44</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT45</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT46</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT47</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT48</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT49</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT5</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT50</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT51</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT52</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT53</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT54</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT55</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT56</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT57</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT58</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT59</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT60</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT61</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT62</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT63</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT64</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT65</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT66</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT67</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT68</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT69</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT70</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT71</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT72</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT73</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT74</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT75</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT76</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT77</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT78</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT79</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT80</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT81</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT82</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT83</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT84</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT85</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT86</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT87</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT88</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT89</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT90</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT91</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT92</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT93</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT94</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT95</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT96</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT97</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT98</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT99</td></row>
		<row><td>INSTALLDIR</td><td>IS_ININSTALL_SHORTCUT</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Membership.OpenAuth.dll</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Membership.OpenAuth.dll1</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Membership.OpenAuth.dll2</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Membership.OpenAuth.dll3</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll1</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll2</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll3</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll4</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll1</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll2</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.ScriptManager.MSAjax.dll</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.ScriptManager.MSAjax.dll1</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.ScriptManager.MSAjax.dll2</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.ScriptManager.WebForms.dll</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.ScriptManager.WebForms.dll1</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.ScriptManager.WebForms.dll2</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.Web.Infrastructure.dll</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.Web.Infrastructure.dll1</td></row>
		<row><td>INSTALLDIR</td><td>Microsoft.Web.Infrastructure.dll2</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Optimization.dll</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Optimization.dll1</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Optimization.dll2</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Optimization.resources.dll</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Optimization.resources.dll1</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Optimization.resources.dll2</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Providers.dll</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Providers.dll1</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Providers.dll2</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Providers.resources.dll</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Providers.resources.dll1</td></row>
		<row><td>INSTALLDIR</td><td>System.Web.Providers.resources.dll2</td></row>
		<row><td>INSTALLDIR</td><td>WG.exe</td></row>
		<row><td>INSTALLDIR</td><td>WebGrease.dll</td></row>
		<row><td>INSTALLDIR</td><td>WebGrease.dll1</td></row>
		<row><td>INSTALLDIR</td><td>WebGrease.dll2</td></row>
		<row><td>INSTALLDIR</td><td>_IsIcoRes.Exe</td></row>
		<row><td>INSTALLDIR</td><td>migrate.exe</td></row>
		<row><td>INSTALLDIR</td><td>setup.exe</td></row>
		<row><td>INTERM</td><td>ISX_DEFAULTCOMPONENT53</td></row>
		<row><td>INTERM</td><td>_IsIcoRes.Exe</td></row>
		<row><td>JQUERY.1.7.1.1</td><td>ISX_DEFAULTCOMPONENT95</td></row>
		<row><td>JQUERY.UI.COMBINED.1.8.20.1</td><td>ISX_DEFAULTCOMPONENT99</td></row>
		<row><td>LIB</td><td>ISX_DEFAULTCOMPONENT56</td></row>
		<row><td>LIB1</td><td>ISX_DEFAULTCOMPONENT60</td></row>
		<row><td>LIB10</td><td>ISX_DEFAULTCOMPONENT109</td></row>
		<row><td>LIB11</td><td>ISX_DEFAULTCOMPONENT115</td></row>
		<row><td>LIB12</td><td>ISX_DEFAULTCOMPONENT121</td></row>
		<row><td>LIB13</td><td>ISX_DEFAULTCOMPONENT125</td></row>
		<row><td>LIB14</td><td>ISX_DEFAULTCOMPONENT136</td></row>
		<row><td>LIB15</td><td>ISX_DEFAULTCOMPONENT142</td></row>
		<row><td>LIB16</td><td>ISX_DEFAULTCOMPONENT145</td></row>
		<row><td>LIB17</td><td>ISX_DEFAULTCOMPONENT149</td></row>
		<row><td>LIB18</td><td>ISX_DEFAULTCOMPONENT154</td></row>
		<row><td>LIB19</td><td>ISX_DEFAULTCOMPONENT157</td></row>
		<row><td>LIB2</td><td>ISX_DEFAULTCOMPONENT64</td></row>
		<row><td>LIB20</td><td>Antlr3.Runtime.dll2</td></row>
		<row><td>LIB20</td><td>ISX_DEFAULTCOMPONENT164</td></row>
		<row><td>LIB20</td><td>WebGrease.dll2</td></row>
		<row><td>LIB3</td><td>ISX_DEFAULTCOMPONENT67</td></row>
		<row><td>LIB4</td><td>ISX_DEFAULTCOMPONENT70</td></row>
		<row><td>LIB5</td><td>ISX_DEFAULTCOMPONENT73</td></row>
		<row><td>LIB6</td><td>ISX_DEFAULTCOMPONENT76</td></row>
		<row><td>LIB7</td><td>ISX_DEFAULTCOMPONENT79</td></row>
		<row><td>LIB8</td><td>ISX_DEFAULTCOMPONENT83</td></row>
		<row><td>LIB9</td><td>ISX_DEFAULTCOMPONENT90</td></row>
		<row><td>LOGFILES</td><td>ISX_DEFAULTCOMPONENT50</td></row>
		<row><td>MICROSOFT.ASPNET.MEMBERSHIP.OPENAUTH.1.0.0</td><td>ISX_DEFAULTCOMPONENT108</td></row>
		<row><td>MICROSOFT.ASPNET.MEMBERSHIP.OPENAUTH.ES.1.0.0</td><td>ISX_DEFAULTCOMPONENT114</td></row>
		<row><td>MICROSOFT.ASPNET.PROVIDERS.CORE.1.1</td><td>ISX_DEFAULTCOMPONENT120</td></row>
		<row><td>MICROSOFT.ASPNET.PROVIDERS.CORE.ES.1.1</td><td>ISX_DEFAULTCOMPONENT124</td></row>
		<row><td>MICROSOFT.ASPNET.PROVIDERS.LOCALDB.1.1</td><td>ISX_DEFAULTCOMPONENT128</td></row>
		<row><td>MICROSOFT.ASPNET.SCRIPTMANAGER.MSAJAX.4.5.6</td><td>ISX_DEFAULTCOMPONENT131</td></row>
		<row><td>MICROSOFT.ASPNET.SCRIPTMANAGER.WEBFORMS.4.5.6</td><td>ISX_DEFAULTCOMPONENT138</td></row>
		<row><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.1.0.0</td><td>ISX_DEFAULTCOMPONENT144</td></row>
		<row><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.ES.1.0.0</td><td>ISX_DEFAULTCOMPONENT148</td></row>
		<row><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.WEBFORMS.1.0.0</td><td>ISX_DEFAULTCOMPONENT152</td></row>
		<row><td>MICROSOFT.WEB.INFRASTRUCTURE.1.0.0.0</td><td>ISX_DEFAULTCOMPONENT156</td></row>
		<row><td>MINIFIED</td><td>ISX_DEFAULTCOMPONENT30</td></row>
		<row><td>MINIFIED1</td><td>ISX_DEFAULTCOMPONENT105</td></row>
		<row><td>MODERNIZR.2.5.3</td><td>ISX_DEFAULTCOMPONENT160</td></row>
		<row><td>MSAJAX</td><td>ISX_DEFAULTCOMPONENT39</td></row>
		<row><td>MSAJAX1</td><td>ISX_DEFAULTCOMPONENT135</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>Antlr3.Runtime.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>AspNet.ScriptManager.jQuery.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>CapaDatos.dll5</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>CapaNegocio.dll5</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>CapaPresentacion.dll2</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>DotNetOpenAuth.AspNet.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>DotNetOpenAuth.Core.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>DotNetOpenAuth.OAuth.Consumer.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>DotNetOpenAuth.OAuth.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>DotNetOpenAuth.OpenId.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>EntityFramework.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>ISX_DEFAULTCOMPONENT49</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>Microsoft.AspNet.Membership.OpenAuth.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>Microsoft.ScriptManager.MSAjax.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>Microsoft.ScriptManager.WebForms.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>Microsoft.Web.Infrastructure.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>System.Web.Optimization.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>System.Web.Providers.dll1</td></row>
		<row><td>MY_PRODUCT_NAME1</td><td>WebGrease.dll1</td></row>
		<row><td>NET40</td><td>AspNet.ScriptManager.jQuery.dll2</td></row>
		<row><td>NET40</td><td>ISX_DEFAULTCOMPONENT57</td></row>
		<row><td>NET401</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll2</td></row>
		<row><td>NET401</td><td>ISX_DEFAULTCOMPONENT61</td></row>
		<row><td>NET4010</td><td>ISX_DEFAULTCOMPONENT158</td></row>
		<row><td>NET4010</td><td>Microsoft.Web.Infrastructure.dll2</td></row>
		<row><td>NET402</td><td>EntityFramework.dll2</td></row>
		<row><td>NET402</td><td>ISX_DEFAULTCOMPONENT84</td></row>
		<row><td>NET403</td><td>ISX_DEFAULTCOMPONENT91</td></row>
		<row><td>NET404</td><td>ISX_DEFAULTCOMPONENT110</td></row>
		<row><td>NET404</td><td>Microsoft.AspNet.Membership.OpenAuth.dll2</td></row>
		<row><td>NET405</td><td>ISX_DEFAULTCOMPONENT116</td></row>
		<row><td>NET406</td><td>ISX_DEFAULTCOMPONENT122</td></row>
		<row><td>NET406</td><td>System.Web.Providers.dll2</td></row>
		<row><td>NET407</td><td>ISX_DEFAULTCOMPONENT126</td></row>
		<row><td>NET408</td><td>ISX_DEFAULTCOMPONENT146</td></row>
		<row><td>NET408</td><td>System.Web.Optimization.dll2</td></row>
		<row><td>NET409</td><td>ISX_DEFAULTCOMPONENT150</td></row>
		<row><td>NET40_FULL</td><td>DotNetOpenAuth.AspNet.dll2</td></row>
		<row><td>NET40_FULL</td><td>ISX_DEFAULTCOMPONENT65</td></row>
		<row><td>NET40_FULL1</td><td>DotNetOpenAuth.Core.dll2</td></row>
		<row><td>NET40_FULL1</td><td>ISX_DEFAULTCOMPONENT68</td></row>
		<row><td>NET40_FULL2</td><td>DotNetOpenAuth.OAuth.Consumer.dll2</td></row>
		<row><td>NET40_FULL2</td><td>ISX_DEFAULTCOMPONENT71</td></row>
		<row><td>NET40_FULL3</td><td>DotNetOpenAuth.OAuth.dll2</td></row>
		<row><td>NET40_FULL3</td><td>ISX_DEFAULTCOMPONENT74</td></row>
		<row><td>NET40_FULL4</td><td>DotNetOpenAuth.OpenId.dll2</td></row>
		<row><td>NET40_FULL4</td><td>ISX_DEFAULTCOMPONENT77</td></row>
		<row><td>NET40_FULL5</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll2</td></row>
		<row><td>NET40_FULL5</td><td>ISX_DEFAULTCOMPONENT80</td></row>
		<row><td>NET45</td><td>AspNet.ScriptManager.jQuery.dll3</td></row>
		<row><td>NET45</td><td>ISX_DEFAULTCOMPONENT58</td></row>
		<row><td>NET451</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll3</td></row>
		<row><td>NET451</td><td>ISX_DEFAULTCOMPONENT62</td></row>
		<row><td>NET452</td><td>EntityFramework.dll3</td></row>
		<row><td>NET452</td><td>ISX_DEFAULTCOMPONENT86</td></row>
		<row><td>NET453</td><td>ISX_DEFAULTCOMPONENT93</td></row>
		<row><td>NET454</td><td>ISX_DEFAULTCOMPONENT112</td></row>
		<row><td>NET454</td><td>Microsoft.AspNet.Membership.OpenAuth.dll3</td></row>
		<row><td>NET455</td><td>ISX_DEFAULTCOMPONENT118</td></row>
		<row><td>NET456</td><td>ISX_DEFAULTCOMPONENT137</td></row>
		<row><td>NET456</td><td>Microsoft.ScriptManager.MSAjax.dll2</td></row>
		<row><td>NET457</td><td>ISX_DEFAULTCOMPONENT143</td></row>
		<row><td>NET457</td><td>Microsoft.ScriptManager.WebForms.dll2</td></row>
		<row><td>NET458</td><td>ISX_DEFAULTCOMPONENT155</td></row>
		<row><td>NET458</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll2</td></row>
		<row><td>OBJ</td><td>ISX_DEFAULTCOMPONENT5</td></row>
		<row><td>OBJ1</td><td>ISX_DEFAULTCOMPONENT13</td></row>
		<row><td>OBJ2</td><td>ISX_DEFAULTCOMPONENT33</td></row>
		<row><td>PACKAGES</td><td>ISX_DEFAULTCOMPONENT54</td></row>
		<row><td>PROGRAM_FILES</td><td>ISX_DEFAULTCOMPONENT47</td></row>
		<row><td>PROPERTIES</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>PROPERTIES1</td><td>ISX_DEFAULTCOMPONENT17</td></row>
		<row><td>PROPERTIES2</td><td>ISX_DEFAULTCOMPONENT36</td></row>
		<row><td>RELEASE</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>RELEASE1</td><td>CapaDatos.dll3</td></row>
		<row><td>RELEASE1</td><td>CapaNegocio.dll1</td></row>
		<row><td>RELEASE1</td><td>ISX_DEFAULTCOMPONENT12</td></row>
		<row><td>RELEASE2</td><td>CapaNegocio.dll3</td></row>
		<row><td>RELEASE2</td><td>ISX_DEFAULTCOMPONENT16</td></row>
		<row><td>REPORTS</td><td>ISX_DEFAULTCOMPONENT51</td></row>
		<row><td>SCRIPTS</td><td>ISX_DEFAULTCOMPONENT37</td></row>
		<row><td>SCRIPTS1</td><td>ISX_DEFAULTCOMPONENT97</td></row>
		<row><td>SCRIPTS2</td><td>ISX_DEFAULTCOMPONENT107</td></row>
		<row><td>SCRIPTS3</td><td>ISX_DEFAULTCOMPONENT133</td></row>
		<row><td>SCRIPTS4</td><td>ISX_DEFAULTCOMPONENT140</td></row>
		<row><td>SCRIPTS5</td><td>ISX_DEFAULTCOMPONENT162</td></row>
		<row><td>SETUP1</td><td>ISX_DEFAULTCOMPONENT166</td></row>
		<row><td>TEMPPE</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>TEMPPE1</td><td>ISX_DEFAULTCOMPONENT15</td></row>
		<row><td>TEMPPE2</td><td>ISX_DEFAULTCOMPONENT35</td></row>
		<row><td>TESTTOOLS</td><td>ISX_DEFAULTCOMPONENT52</td></row>
		<row><td>THEMES</td><td>ISX_DEFAULTCOMPONENT27</td></row>
		<row><td>THEMES1</td><td>ISX_DEFAULTCOMPONENT102</td></row>
		<row><td>TOOLS</td><td>EntityFramework.PowerShell.Utility.dll</td></row>
		<row><td>TOOLS</td><td>EntityFramework.PowerShell.dll</td></row>
		<row><td>TOOLS</td><td>ISX_DEFAULTCOMPONENT88</td></row>
		<row><td>TOOLS</td><td>migrate.exe</td></row>
		<row><td>TOOLS1</td><td>ISX_DEFAULTCOMPONENT98</td></row>
		<row><td>TOOLS2</td><td>ISX_DEFAULTCOMPONENT130</td></row>
		<row><td>TOOLS3</td><td>ISX_DEFAULTCOMPONENT159</td></row>
		<row><td>TOOLS4</td><td>ISX_DEFAULTCOMPONENT165</td></row>
		<row><td>TOOLS4</td><td>WG.exe</td></row>
		<row><td>VENDEDOR</td><td>ISX_DEFAULTCOMPONENT40</td></row>
		<row><td>WEBFORMS</td><td>ISX_DEFAULTCOMPONENT38</td></row>
		<row><td>WEBFORMS1</td><td>ISX_DEFAULTCOMPONENT134</td></row>
		<row><td>WEBFORMS2</td><td>ISX_DEFAULTCOMPONENT141</td></row>
		<row><td>WEBGREASE.1.1.0</td><td>ISX_DEFAULTCOMPONENT163</td></row>
	</table>

	<table name="CustomAction">
		<col key="yes" def="s72">Action</col>
		<col def="i2">Type</col>
		<col def="S64">Source</col>
		<col def="S0">Target</col>
		<col def="I4">ExtendedType</col>
		<col def="S255">ISComments</col>
		<row><td>ISPreventDowngrade</td><td>19</td><td/><td>[IS_PREVENT_DOWNGRADE_EXIT]</td><td/><td>Exits install when a newer version of this product is found</td></row>
		<row><td>ISPrint</td><td>1</td><td>SetAllUsers.dll</td><td>PrintScrollableText</td><td/><td>Prints the contents of a ScrollableText control on a dialog.</td></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>1</td><td>ISExpHlp.dll</td><td>RunSetupTypeAddLocalEvent</td><td/><td>Run the AddLocal events associated with the Next button on the Setup Type dialog.</td></row>
		<row><td>ISSelfRegisterCosting</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterCosting</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFiles</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFinalize</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISUnSelfRegisterFiles</td><td/><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td>51</td><td>ARPINSTALLLOCATION</td><td>[INSTALLDIR]</td><td/><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%SystemRoot]\Profiles\All Users</td><td/><td/></row>
		<row><td>ShowMsiLog</td><td>226</td><td>SystemFolder</td><td>[SystemFolder]notepad.exe "[MsiLogFileLocation]"</td><td/><td>Shows Property-driven MSI Log</td></row>
		<row><td>setAllUsersProfile2K</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%ALLUSERSPROFILE]</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>51</td><td>USERPROFILE</td><td>[%USERPROFILE]</td><td/><td/></row>
	</table>

	<table name="Dialog">
		<col key="yes" def="s72">Dialog</col>
		<col def="i2">HCentering</col>
		<col def="i2">VCentering</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L128">Title</col>
		<col def="s50">Control_First</col>
		<col def="S50">Control_Default</col>
		<col def="S50">Control_Cancel</col>
		<col def="S255">ISComments</col>
		<col def="S72">TextStyle_</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISResourceId</col>
		<row><td>AdminChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Install Point Browse</td><td/><td>0</td><td/></row>
		<row><td>AdminNetworkLocation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Network Location</td><td/><td>0</td><td/></row>
		<row><td>AdminWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Administration Welcome</td><td/><td>0</td><td/></row>
		<row><td>CancelSetup</td><td>50</td><td>50</td><td>260</td><td>85</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>No</td><td>No</td><td>No</td><td>Cancel</td><td/><td>0</td><td/></row>
		<row><td>CustomSetup</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tree</td><td>Next</td><td>Cancel</td><td>Custom Selection</td><td/><td>0</td><td/></row>
		<row><td>CustomSetupTips</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Custom Setup Tips</td><td/><td>0</td><td/></row>
		<row><td>CustomerInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>NameEdit</td><td>Next</td><td>Cancel</td><td>Identification</td><td/><td>0</td><td/></row>
		<row><td>DatabaseFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Database Folder</td><td/><td>0</td><td/></row>
		<row><td>DestinationFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Destination Folder</td><td/><td>0</td><td/></row>
		<row><td>DiskSpaceRequirements</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Feature Details</td><td/><td>0</td><td/></row>
		<row><td>FilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Retry</td><td>Retry</td><td>Exit</td><td>Files in Use</td><td/><td>0</td><td/></row>
		<row><td>InstallChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Browse</td><td/><td>0</td><td/></row>
		<row><td>InstallWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Panel</td><td/><td>0</td><td/></row>
		<row><td>LicenseAgreement</td><td>50</td><td>50</td><td>374</td><td>266</td><td>2</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Agree</td><td>Next</td><td>Cancel</td><td>License Agreement</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Change, Reinstall, Remove</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Maintenance Welcome</td><td/><td>0</td><td/></row>
		<row><td>MsiRMFilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>Cancel</td><td>RestartManager Files in Use</td><td/><td>0</td><td/></row>
		<row><td>OutOfSpace</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Resume</td><td>Resume</td><td>Resume</td><td>Out Of Disk Space</td><td/><td>0</td><td/></row>
		<row><td>PatchWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS__IsPatchDlg_PatchWizard##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Patch Panel</td><td/><td>0</td><td/></row>
		<row><td>ReadmeInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>7</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Readme Information</td><td/><td>0</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Ready to Install</td><td/><td>0</td><td/></row>
		<row><td>ReadyToRemove</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RemoveNow</td><td>RemoveNow</td><td>Cancel</td><td>Verify Remove</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteError</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>Fatal Error</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupError</td><td>50</td><td>50</td><td>270</td><td>110</td><td>65543</td><td>##IDS__IsErrorDlg_InstallerInfo##</td><td>ErrorText</td><td>O</td><td>C</td><td>Error</td><td/><td>0</td><td/></row>
		<row><td>SetupInitialization</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Setup Initialization</td><td/><td>0</td><td/></row>
		<row><td>SetupInterrupted</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>User Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupProgress</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Progress</td><td/><td>0</td><td/></row>
		<row><td>SetupResume</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Resume</td><td/><td>0</td><td/></row>
		<row><td>SetupType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Setup Type</td><td/><td>0</td><td/></row>
		<row><td>SplashBitmap</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Bitmap</td><td/><td>0</td><td/></row>
	</table>

	<table name="Directory">
		<col key="yes" def="s72">Directory</col>
		<col def="S72">Directory_Parent</col>
		<col def="l255">DefaultDir</col>
		<col def="S255">ISDescription</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISFolderName</col>
		<row><td>ACCOUNT</td><td>CAPAPRESENTACION</td><td>Account</td><td/><td>0</td><td/></row>
		<row><td>ADMINISTRADOR</td><td>CAPAPRESENTACION</td><td>ADMINI~1|Administrador</td><td/><td>0</td><td/></row>
		<row><td>ALLUSERSPROFILE</td><td>TARGETDIR</td><td>.:ALLUSE~1|All Users</td><td/><td>0</td><td/></row>
		<row><td>APP_DATA</td><td>CAPAPRESENTACION</td><td>App_Data</td><td/><td>0</td><td/></row>
		<row><td>APP_START</td><td>CAPAPRESENTACION</td><td>APP_ST~1|App_Start</td><td/><td>0</td><td/></row>
		<row><td>ASPNET.SCRIPTMANAGER.JQUERY.1.7.1</td><td>PACKAGES</td><td>ASPNET~1|AspNet.ScriptManager.jQuery.1.7.1</td><td/><td>0</td><td/></row>
		<row><td>ASPNET.SCRIPTMANAGER.JQUERY.UI.COMBINED.1.8.20</td><td>PACKAGES</td><td>ASPNET~1|AspNet.ScriptManager.jQuery.UI.Combined.1.8.20</td><td/><td>0</td><td/></row>
		<row><td>AdminToolsFolder</td><td>TARGETDIR</td><td>.:Admint~1|AdminTools</td><td/><td>0</td><td/></row>
		<row><td>AppDataFolder</td><td>TARGETDIR</td><td>.:APPLIC~1|Application Data</td><td/><td>0</td><td/></row>
		<row><td>BASE</td><td>THEMES</td><td>base</td><td/><td>0</td><td/></row>
		<row><td>BASE1</td><td>THEMES1</td><td>base</td><td/><td>0</td><td/></row>
		<row><td>BIN</td><td>CAPADATOS</td><td>bin</td><td/><td>0</td><td/></row>
		<row><td>BIN1</td><td>CAPANEGOCIO</td><td>bin</td><td/><td>0</td><td/></row>
		<row><td>BIN2</td><td>CAPAPRESENTACION</td><td>bin</td><td/><td>0</td><td/></row>
		<row><td>CAPADATOS</td><td>GPS1</td><td>CAPADA~1|CapaDatos</td><td/><td>0</td><td/></row>
		<row><td>CAPANEGOCIO</td><td>GPS1</td><td>CAPANE~1|CapaNegocio</td><td/><td>0</td><td/></row>
		<row><td>CAPAPRESENTACION</td><td>GPS1</td><td>CAPAPR~1|CapaPresentacion</td><td/><td>0</td><td/></row>
		<row><td>CLIENTE</td><td>CAPAPRESENTACION</td><td>Cliente</td><td/><td>0</td><td/></row>
		<row><td>CONTENT</td><td>CAPAPRESENTACION</td><td>Content</td><td/><td>0</td><td/></row>
		<row><td>CONTENT1</td><td>ENTITYFRAMEWORK.5.0.0</td><td>Content</td><td/><td>0</td><td/></row>
		<row><td>CONTENT2</td><td>JQUERY.1.7.1.1</td><td>Content</td><td/><td>0</td><td/></row>
		<row><td>CONTENT3</td><td>JQUERY.UI.COMBINED.1.8.20.1</td><td>Content</td><td/><td>0</td><td/></row>
		<row><td>CONTENT4</td><td>CONTENT3</td><td>Content</td><td/><td>0</td><td/></row>
		<row><td>CONTENT5</td><td>MICROSOFT.ASPNET.PROVIDERS.LOCALDB.1.1</td><td>content</td><td/><td>0</td><td/></row>
		<row><td>CONTENT6</td><td>MICROSOFT.ASPNET.SCRIPTMANAGER.MSAJAX.4.5.6</td><td>content</td><td/><td>0</td><td/></row>
		<row><td>CONTENT7</td><td>MICROSOFT.ASPNET.SCRIPTMANAGER.WEBFORMS.4.5.6</td><td>content</td><td/><td>0</td><td/></row>
		<row><td>CONTENT8</td><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.WEBFORMS.1.0.0</td><td>content</td><td/><td>0</td><td/></row>
		<row><td>CONTENT9</td><td>MODERNIZR.2.5.3</td><td>Content</td><td/><td>0</td><td/></row>
		<row><td>CommonAppDataFolder</td><td>TARGETDIR</td><td>.:Common~1|CommonAppData</td><td/><td>0</td><td/></row>
		<row><td>CommonFiles64Folder</td><td>TARGETDIR</td><td>.:Common64</td><td/><td>0</td><td/></row>
		<row><td>CommonFilesFolder</td><td>TARGETDIR</td><td>.:Common</td><td/><td>0</td><td/></row>
		<row><td>DATABASEDIR</td><td>ISYourDataBaseDir</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>DEBUG</td><td>BIN</td><td>Debug</td><td/><td>0</td><td/></row>
		<row><td>DEBUG1</td><td>OBJ</td><td>Debug</td><td/><td>0</td><td/></row>
		<row><td>DEBUG2</td><td>BIN1</td><td>Debug</td><td/><td>0</td><td/></row>
		<row><td>DEBUG3</td><td>OBJ1</td><td>Debug</td><td/><td>0</td><td/></row>
		<row><td>DEBUG4</td><td>OBJ2</td><td>Debug</td><td/><td>0</td><td/></row>
		<row><td>DISK1</td><td>DISKIMAGES</td><td>DISK1</td><td/><td>0</td><td/></row>
		<row><td>DISKIMAGES</td><td>DVD_5</td><td>DISKIM~1|DiskImages</td><td/><td>0</td><td/></row>
		<row><td>DOTNETOPENAUTH.ASPNET.4.0.3.12153</td><td>PACKAGES</td><td>DOTNET~1|DotNetOpenAuth.AspNet.4.0.3.12153</td><td/><td>0</td><td/></row>
		<row><td>DOTNETOPENAUTH.CORE.4.0.3.12153</td><td>PACKAGES</td><td>DOTNET~1|DotNetOpenAuth.Core.4.0.3.12153</td><td/><td>0</td><td/></row>
		<row><td>DOTNETOPENAUTH.OAUTH.CONSUMER.4.0.3.12153</td><td>PACKAGES</td><td>DOTNET~1|DotNetOpenAuth.OAuth.Consumer.4.0.3.12153</td><td/><td>0</td><td/></row>
		<row><td>DOTNETOPENAUTH.OAUTH.CORE.4.0.3.12153</td><td>PACKAGES</td><td>DOTNET~1|DotNetOpenAuth.OAuth.Core.4.0.3.12153</td><td/><td>0</td><td/></row>
		<row><td>DOTNETOPENAUTH.OPENID.CORE.4.0.3.12153</td><td>PACKAGES</td><td>DOTNET~1|DotNetOpenAuth.OpenId.Core.4.0.3.12153</td><td/><td>0</td><td/></row>
		<row><td>DOTNETOPENAUTH.OPENID.RELYINGPARTY.4.0.3.12153</td><td>PACKAGES</td><td>DOTNET~1|DotNetOpenAuth.OpenId.RelyingParty.4.0.3.12153</td><td/><td>0</td><td/></row>
		<row><td>DVD_5</td><td>EXPRESS</td><td>DVD-5</td><td/><td>0</td><td/></row>
		<row><td>DesktopFolder</td><td>TARGETDIR</td><td>.:Desktop</td><td/><td>3</td><td/></row>
		<row><td>ENTITYFRAMEWORK.5.0.0</td><td>PACKAGES</td><td>ENTITY~1|EntityFramework.5.0.0</td><td/><td>0</td><td/></row>
		<row><td>ENTITYFRAMEWORK.ES.5.0.0</td><td>PACKAGES</td><td>ENTITY~1|EntityFramework.es.5.0.0</td><td/><td>0</td><td/></row>
		<row><td>ES</td><td>BIN2</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES1</td><td>NET402</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES10</td><td>NET407</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES11</td><td>NET408</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES12</td><td>NET409</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES2</td><td>NET452</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES3</td><td>NET403</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES4</td><td>NET453</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES5</td><td>NET404</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES6</td><td>NET454</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES7</td><td>NET405</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES8</td><td>NET455</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>ES9</td><td>NET406</td><td>es</td><td/><td>0</td><td/></row>
		<row><td>EXPRESS</td><td>INSTALADOR1</td><td>Express</td><td/><td>0</td><td/></row>
		<row><td>FavoritesFolder</td><td>TARGETDIR</td><td>.:FAVORI~1|Favorites</td><td/><td>0</td><td/></row>
		<row><td>FontsFolder</td><td>TARGETDIR</td><td>.:Fonts</td><td/><td>0</td><td/></row>
		<row><td>GPS</td><td>ProgramFilesFolder</td><td>GPS</td><td/><td>0</td><td/></row>
		<row><td>GPS1</td><td>INSTALLDIR</td><td>GPS</td><td/><td>0</td><td/></row>
		<row><td>GPS2</td><td>PROGRAM_FILES</td><td>GPS</td><td/><td>0</td><td/></row>
		<row><td>GlobalAssemblyCache</td><td>TARGETDIR</td><td>.:Global~1|GlobalAssemblyCache</td><td/><td>0</td><td/></row>
		<row><td>IMAGES</td><td>BASE</td><td>images</td><td/><td>0</td><td/></row>
		<row><td>IMAGES1</td><td>MINIFIED</td><td>images</td><td/><td>0</td><td/></row>
		<row><td>IMAGES2</td><td>CAPAPRESENTACION</td><td>Images</td><td/><td>0</td><td/></row>
		<row><td>IMAGES3</td><td>BASE1</td><td>images</td><td/><td>0</td><td/></row>
		<row><td>IMAGES4</td><td>MINIFIED1</td><td>images</td><td/><td>0</td><td/></row>
		<row><td>INSTALADOR</td><td>GPS1</td><td>INSTAL~1|Instalador</td><td/><td>0</td><td/></row>
		<row><td>INSTALADOR1</td><td>INSTALADOR</td><td>INSTAL~1|Instalador</td><td/><td>0</td><td/></row>
		<row><td>INSTALLDIR</td><td>MY_PRODUCT_NAME</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>INTERM</td><td>EXPRESS</td><td>Interm</td><td/><td>0</td><td/></row>
		<row><td>ISCommonFilesFolder</td><td>CommonFilesFolder</td><td>Instal~1|InstallShield</td><td/><td>0</td><td/></row>
		<row><td>ISMyCompanyDir</td><td>ProgramFilesFolder</td><td>MYCOMP~1|My Company Name</td><td/><td>0</td><td/></row>
		<row><td>ISMyProductDir</td><td>ISMyCompanyDir</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>ISYourDataBaseDir</td><td>INSTALLDIR</td><td>Database</td><td/><td>0</td><td/></row>
		<row><td>JQUERY.1.7.1.1</td><td>PACKAGES</td><td>JQUERY~1|jQuery.1.7.1.1</td><td/><td>0</td><td/></row>
		<row><td>JQUERY.UI.COMBINED.1.8.20.1</td><td>PACKAGES</td><td>JQUERY~1|jQuery.UI.Combined.1.8.20.1</td><td/><td>0</td><td/></row>
		<row><td>LIB</td><td>ASPNET.SCRIPTMANAGER.JQUERY.1.7.1</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB1</td><td>ASPNET.SCRIPTMANAGER.JQUERY.UI.COMBINED.1.8.20</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB10</td><td>MICROSOFT.ASPNET.MEMBERSHIP.OPENAUTH.1.0.0</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB11</td><td>MICROSOFT.ASPNET.MEMBERSHIP.OPENAUTH.ES.1.0.0</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB12</td><td>MICROSOFT.ASPNET.PROVIDERS.CORE.1.1</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB13</td><td>MICROSOFT.ASPNET.PROVIDERS.CORE.ES.1.1</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB14</td><td>MICROSOFT.ASPNET.SCRIPTMANAGER.MSAJAX.4.5.6</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB15</td><td>MICROSOFT.ASPNET.SCRIPTMANAGER.WEBFORMS.4.5.6</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB16</td><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.1.0.0</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB17</td><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.ES.1.0.0</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB18</td><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.WEBFORMS.1.0.0</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB19</td><td>MICROSOFT.WEB.INFRASTRUCTURE.1.0.0.0</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB2</td><td>DOTNETOPENAUTH.ASPNET.4.0.3.12153</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB20</td><td>WEBGREASE.1.1.0</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB3</td><td>DOTNETOPENAUTH.CORE.4.0.3.12153</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB4</td><td>DOTNETOPENAUTH.OAUTH.CONSUMER.4.0.3.12153</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB5</td><td>DOTNETOPENAUTH.OAUTH.CORE.4.0.3.12153</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB6</td><td>DOTNETOPENAUTH.OPENID.CORE.4.0.3.12153</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB7</td><td>DOTNETOPENAUTH.OPENID.RELYINGPARTY.4.0.3.12153</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB8</td><td>ENTITYFRAMEWORK.5.0.0</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LIB9</td><td>ENTITYFRAMEWORK.ES.5.0.0</td><td>lib</td><td/><td>0</td><td/></row>
		<row><td>LOGFILES</td><td>DVD_5</td><td>LogFiles</td><td/><td>0</td><td/></row>
		<row><td>LocalAppDataFolder</td><td>TARGETDIR</td><td>.:LocalA~1|LocalAppData</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.MEMBERSHIP.OPENAUTH.1.0.0</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.Membership.OpenAuth.1.0.0</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.MEMBERSHIP.OPENAUTH.ES.1.0.0</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.Membership.OpenAuth.es.1.0.0</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.PROVIDERS.CORE.1.1</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.Providers.Core.1.1</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.PROVIDERS.CORE.ES.1.1</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.Providers.Core.es.1.1</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.PROVIDERS.LOCALDB.1.1</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.Providers.LocalDB.1.1</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.SCRIPTMANAGER.MSAJAX.4.5.6</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.ScriptManager.MSAjax.4.5.6</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.SCRIPTMANAGER.WEBFORMS.4.5.6</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.ScriptManager.WebForms.4.5.6</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.1.0.0</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.Web.Optimization.1.0.0</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.ES.1.0.0</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.Web.Optimization.es.1.0.0</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.ASPNET.WEB.OPTIMIZATION.WEBFORMS.1.0.0</td><td>PACKAGES</td><td>MICROS~1|Microsoft.AspNet.Web.Optimization.WebForms.1.0.0</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT.WEB.INFRASTRUCTURE.1.0.0.0</td><td>PACKAGES</td><td>MICROS~1|Microsoft.Web.Infrastructure.1.0.0.0</td><td/><td>0</td><td/></row>
		<row><td>MINIFIED</td><td>BASE</td><td>minified</td><td/><td>0</td><td/></row>
		<row><td>MINIFIED1</td><td>BASE1</td><td>minified</td><td/><td>0</td><td/></row>
		<row><td>MODERNIZR.2.5.3</td><td>PACKAGES</td><td>MODERN~1|Modernizr.2.5.3</td><td/><td>0</td><td/></row>
		<row><td>MSAJAX</td><td>WEBFORMS</td><td>MSAjax</td><td/><td>0</td><td/></row>
		<row><td>MSAJAX1</td><td>WEBFORMS1</td><td>MSAjax</td><td/><td>0</td><td/></row>
		<row><td>MY_PRODUCT_NAME</td><td>GPS</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>MY_PRODUCT_NAME1</td><td>GPS2</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>MyPicturesFolder</td><td>TARGETDIR</td><td>.:MyPict~1|MyPictures</td><td/><td>0</td><td/></row>
		<row><td>NET40</td><td>LIB</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET401</td><td>LIB1</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET4010</td><td>LIB19</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET402</td><td>LIB8</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET403</td><td>LIB9</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET404</td><td>LIB10</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET405</td><td>LIB11</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET406</td><td>LIB12</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET407</td><td>LIB13</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET408</td><td>LIB16</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET409</td><td>LIB17</td><td>net40</td><td/><td>0</td><td/></row>
		<row><td>NET40_FULL</td><td>LIB2</td><td>NET40-~1|net40-full</td><td/><td>0</td><td/></row>
		<row><td>NET40_FULL1</td><td>LIB3</td><td>NET40-~1|net40-full</td><td/><td>0</td><td/></row>
		<row><td>NET40_FULL2</td><td>LIB4</td><td>NET40-~1|net40-full</td><td/><td>0</td><td/></row>
		<row><td>NET40_FULL3</td><td>LIB5</td><td>NET40-~1|net40-full</td><td/><td>0</td><td/></row>
		<row><td>NET40_FULL4</td><td>LIB6</td><td>NET40-~1|net40-full</td><td/><td>0</td><td/></row>
		<row><td>NET40_FULL5</td><td>LIB7</td><td>NET40-~1|net40-full</td><td/><td>0</td><td/></row>
		<row><td>NET45</td><td>LIB</td><td>net45</td><td/><td>0</td><td/></row>
		<row><td>NET451</td><td>LIB1</td><td>net45</td><td/><td>0</td><td/></row>
		<row><td>NET452</td><td>LIB8</td><td>net45</td><td/><td>0</td><td/></row>
		<row><td>NET453</td><td>LIB9</td><td>net45</td><td/><td>0</td><td/></row>
		<row><td>NET454</td><td>LIB10</td><td>net45</td><td/><td>0</td><td/></row>
		<row><td>NET455</td><td>LIB11</td><td>net45</td><td/><td>0</td><td/></row>
		<row><td>NET456</td><td>LIB14</td><td>net45</td><td/><td>0</td><td/></row>
		<row><td>NET457</td><td>LIB15</td><td>net45</td><td/><td>0</td><td/></row>
		<row><td>NET458</td><td>LIB18</td><td>net45</td><td/><td>0</td><td/></row>
		<row><td>NetHoodFolder</td><td>TARGETDIR</td><td>.:NetHood</td><td/><td>0</td><td/></row>
		<row><td>OBJ</td><td>CAPADATOS</td><td>obj</td><td/><td>0</td><td/></row>
		<row><td>OBJ1</td><td>CAPANEGOCIO</td><td>obj</td><td/><td>0</td><td/></row>
		<row><td>OBJ2</td><td>CAPAPRESENTACION</td><td>obj</td><td/><td>0</td><td/></row>
		<row><td>PACKAGES</td><td>GPS1</td><td>packages</td><td/><td>0</td><td/></row>
		<row><td>PROGRAM_FILES</td><td>DISK1</td><td>PROGRA~1|program files</td><td/><td>0</td><td/></row>
		<row><td>PROPERTIES</td><td>CAPADATOS</td><td>PROPER~1|Properties</td><td/><td>0</td><td/></row>
		<row><td>PROPERTIES1</td><td>CAPANEGOCIO</td><td>PROPER~1|Properties</td><td/><td>0</td><td/></row>
		<row><td>PROPERTIES2</td><td>CAPAPRESENTACION</td><td>PROPER~1|Properties</td><td/><td>0</td><td/></row>
		<row><td>PersonalFolder</td><td>TARGETDIR</td><td>.:Personal</td><td/><td>0</td><td/></row>
		<row><td>PrimaryVolumePath</td><td>TARGETDIR</td><td>.:Primar~1|PrimaryVolumePath</td><td/><td>0</td><td/></row>
		<row><td>PrintHoodFolder</td><td>TARGETDIR</td><td>.:PRINTH~1|PrintHood</td><td/><td>0</td><td/></row>
		<row><td>ProgramFiles64Folder</td><td>TARGETDIR</td><td>.:Prog64~1|Program Files 64</td><td/><td>0</td><td/></row>
		<row><td>ProgramFilesFolder</td><td>TARGETDIR</td><td>.:PROGRA~1|program files</td><td/><td>0</td><td/></row>
		<row><td>ProgramMenuFolder</td><td>TARGETDIR</td><td>.:Programs</td><td/><td>3</td><td/></row>
		<row><td>RELEASE</td><td>BIN</td><td>Release</td><td/><td>0</td><td/></row>
		<row><td>RELEASE1</td><td>BIN1</td><td>Release</td><td/><td>0</td><td/></row>
		<row><td>RELEASE2</td><td>OBJ1</td><td>Release</td><td/><td>0</td><td/></row>
		<row><td>REPORTS</td><td>DVD_5</td><td>Reports</td><td/><td>0</td><td/></row>
		<row><td>RecentFolder</td><td>TARGETDIR</td><td>.:Recent</td><td/><td>0</td><td/></row>
		<row><td>SCRIPTS</td><td>CAPAPRESENTACION</td><td>Scripts</td><td/><td>0</td><td/></row>
		<row><td>SCRIPTS1</td><td>CONTENT2</td><td>Scripts</td><td/><td>0</td><td/></row>
		<row><td>SCRIPTS2</td><td>CONTENT3</td><td>Scripts</td><td/><td>0</td><td/></row>
		<row><td>SCRIPTS3</td><td>CONTENT6</td><td>Scripts</td><td/><td>0</td><td/></row>
		<row><td>SCRIPTS4</td><td>CONTENT7</td><td>Scripts</td><td/><td>0</td><td/></row>
		<row><td>SCRIPTS5</td><td>CONTENT9</td><td>Scripts</td><td/><td>0</td><td/></row>
		<row><td>SETUP1</td><td>GPS1</td><td>Setup1</td><td/><td>0</td><td/></row>
		<row><td>SendToFolder</td><td>TARGETDIR</td><td>.:SendTo</td><td/><td>3</td><td/></row>
		<row><td>StartMenuFolder</td><td>TARGETDIR</td><td>.:STARTM~1|Start Menu</td><td/><td>3</td><td/></row>
		<row><td>StartupFolder</td><td>TARGETDIR</td><td>.:StartUp</td><td/><td>3</td><td/></row>
		<row><td>System16Folder</td><td>TARGETDIR</td><td>.:System</td><td/><td>0</td><td/></row>
		<row><td>System64Folder</td><td>TARGETDIR</td><td>.:System64</td><td/><td>0</td><td/></row>
		<row><td>SystemFolder</td><td>TARGETDIR</td><td>.:System32</td><td/><td>0</td><td/></row>
		<row><td>TARGETDIR</td><td/><td>SourceDir</td><td/><td>0</td><td/></row>
		<row><td>TEMPPE</td><td>DEBUG1</td><td>TempPE</td><td/><td>0</td><td/></row>
		<row><td>TEMPPE1</td><td>DEBUG3</td><td>TempPE</td><td/><td>0</td><td/></row>
		<row><td>TEMPPE2</td><td>DEBUG4</td><td>TempPE</td><td/><td>0</td><td/></row>
		<row><td>TESTTOOLS</td><td>DVD_5</td><td>TESTTO~1|TestTools</td><td/><td>0</td><td/></row>
		<row><td>THEMES</td><td>CONTENT</td><td>themes</td><td/><td>0</td><td/></row>
		<row><td>THEMES1</td><td>CONTENT4</td><td>themes</td><td/><td>0</td><td/></row>
		<row><td>TOOLS</td><td>ENTITYFRAMEWORK.5.0.0</td><td>tools</td><td/><td>0</td><td/></row>
		<row><td>TOOLS1</td><td>JQUERY.1.7.1.1</td><td>Tools</td><td/><td>0</td><td/></row>
		<row><td>TOOLS2</td><td>MICROSOFT.ASPNET.PROVIDERS.LOCALDB.1.1</td><td>tools</td><td/><td>0</td><td/></row>
		<row><td>TOOLS3</td><td>MICROSOFT.WEB.INFRASTRUCTURE.1.0.0.0</td><td>tools</td><td/><td>0</td><td/></row>
		<row><td>TOOLS4</td><td>WEBGREASE.1.1.0</td><td>tools</td><td/><td>0</td><td/></row>
		<row><td>TempFolder</td><td>TARGETDIR</td><td>.:Temp</td><td/><td>0</td><td/></row>
		<row><td>TemplateFolder</td><td>TARGETDIR</td><td>.:ShellNew</td><td/><td>0</td><td/></row>
		<row><td>USERPROFILE</td><td>TARGETDIR</td><td>.:USERPR~1|UserProfile</td><td/><td>0</td><td/></row>
		<row><td>VENDEDOR</td><td>CAPAPRESENTACION</td><td>Vendedor</td><td/><td>0</td><td/></row>
		<row><td>WEBFORMS</td><td>SCRIPTS</td><td>WebForms</td><td/><td>0</td><td/></row>
		<row><td>WEBFORMS1</td><td>SCRIPTS3</td><td>WebForms</td><td/><td>0</td><td/></row>
		<row><td>WEBFORMS2</td><td>SCRIPTS4</td><td>WebForms</td><td/><td>0</td><td/></row>
		<row><td>WEBGREASE.1.1.0</td><td>PACKAGES</td><td>WEBGRE~1|WebGrease.1.1.0</td><td/><td>0</td><td/></row>
		<row><td>WindowsFolder</td><td>TARGETDIR</td><td>.:Windows</td><td/><td>0</td><td/></row>
		<row><td>WindowsVolume</td><td>TARGETDIR</td><td>.:WinRoot</td><td/><td>0</td><td/></row>
		<row><td>gps</td><td>ProgramMenuFolder</td><td>GPS</td><td/><td>1</td><td/></row>
		<row><td>setup1</td><td>gps</td><td>Setup1</td><td/><td>1</td><td/></row>
	</table>

	<table name="DrLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col key="yes" def="S255">Path</col>
		<col def="I2">Depth</col>
	</table>

	<table name="DuplicateFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="s72">File_</col>
		<col def="L255">DestName</col>
		<col def="S72">DestFolder</col>
	</table>

	<table name="Environment">
		<col key="yes" def="s72">Environment</col>
		<col def="l255">Name</col>
		<col def="L255">Value</col>
		<col def="s72">Component_</col>
	</table>

	<table name="Error">
		<col key="yes" def="i2">Error</col>
		<col def="L255">Message</col>
		<row><td>0</td><td>##IDS_ERROR_0##</td></row>
		<row><td>1</td><td>##IDS_ERROR_1##</td></row>
		<row><td>10</td><td>##IDS_ERROR_8##</td></row>
		<row><td>11</td><td>##IDS_ERROR_9##</td></row>
		<row><td>1101</td><td>##IDS_ERROR_22##</td></row>
		<row><td>12</td><td>##IDS_ERROR_10##</td></row>
		<row><td>13</td><td>##IDS_ERROR_11##</td></row>
		<row><td>1301</td><td>##IDS_ERROR_23##</td></row>
		<row><td>1302</td><td>##IDS_ERROR_24##</td></row>
		<row><td>1303</td><td>##IDS_ERROR_25##</td></row>
		<row><td>1304</td><td>##IDS_ERROR_26##</td></row>
		<row><td>1305</td><td>##IDS_ERROR_27##</td></row>
		<row><td>1306</td><td>##IDS_ERROR_28##</td></row>
		<row><td>1307</td><td>##IDS_ERROR_29##</td></row>
		<row><td>1308</td><td>##IDS_ERROR_30##</td></row>
		<row><td>1309</td><td>##IDS_ERROR_31##</td></row>
		<row><td>1310</td><td>##IDS_ERROR_32##</td></row>
		<row><td>1311</td><td>##IDS_ERROR_33##</td></row>
		<row><td>1312</td><td>##IDS_ERROR_34##</td></row>
		<row><td>1313</td><td>##IDS_ERROR_35##</td></row>
		<row><td>1314</td><td>##IDS_ERROR_36##</td></row>
		<row><td>1315</td><td>##IDS_ERROR_37##</td></row>
		<row><td>1316</td><td>##IDS_ERROR_38##</td></row>
		<row><td>1317</td><td>##IDS_ERROR_39##</td></row>
		<row><td>1318</td><td>##IDS_ERROR_40##</td></row>
		<row><td>1319</td><td>##IDS_ERROR_41##</td></row>
		<row><td>1320</td><td>##IDS_ERROR_42##</td></row>
		<row><td>1321</td><td>##IDS_ERROR_43##</td></row>
		<row><td>1322</td><td>##IDS_ERROR_44##</td></row>
		<row><td>1323</td><td>##IDS_ERROR_45##</td></row>
		<row><td>1324</td><td>##IDS_ERROR_46##</td></row>
		<row><td>1325</td><td>##IDS_ERROR_47##</td></row>
		<row><td>1326</td><td>##IDS_ERROR_48##</td></row>
		<row><td>1327</td><td>##IDS_ERROR_49##</td></row>
		<row><td>1328</td><td>##IDS_ERROR_122##</td></row>
		<row><td>1329</td><td>##IDS_ERROR_1329##</td></row>
		<row><td>1330</td><td>##IDS_ERROR_1330##</td></row>
		<row><td>1331</td><td>##IDS_ERROR_1331##</td></row>
		<row><td>1332</td><td>##IDS_ERROR_1332##</td></row>
		<row><td>1333</td><td>##IDS_ERROR_1333##</td></row>
		<row><td>1334</td><td>##IDS_ERROR_1334##</td></row>
		<row><td>1335</td><td>##IDS_ERROR_1335##</td></row>
		<row><td>1336</td><td>##IDS_ERROR_1336##</td></row>
		<row><td>14</td><td>##IDS_ERROR_12##</td></row>
		<row><td>1401</td><td>##IDS_ERROR_50##</td></row>
		<row><td>1402</td><td>##IDS_ERROR_51##</td></row>
		<row><td>1403</td><td>##IDS_ERROR_52##</td></row>
		<row><td>1404</td><td>##IDS_ERROR_53##</td></row>
		<row><td>1405</td><td>##IDS_ERROR_54##</td></row>
		<row><td>1406</td><td>##IDS_ERROR_55##</td></row>
		<row><td>1407</td><td>##IDS_ERROR_56##</td></row>
		<row><td>1408</td><td>##IDS_ERROR_57##</td></row>
		<row><td>1409</td><td>##IDS_ERROR_58##</td></row>
		<row><td>1410</td><td>##IDS_ERROR_59##</td></row>
		<row><td>15</td><td>##IDS_ERROR_13##</td></row>
		<row><td>1500</td><td>##IDS_ERROR_60##</td></row>
		<row><td>1501</td><td>##IDS_ERROR_61##</td></row>
		<row><td>1502</td><td>##IDS_ERROR_62##</td></row>
		<row><td>1503</td><td>##IDS_ERROR_63##</td></row>
		<row><td>16</td><td>##IDS_ERROR_14##</td></row>
		<row><td>1601</td><td>##IDS_ERROR_64##</td></row>
		<row><td>1602</td><td>##IDS_ERROR_65##</td></row>
		<row><td>1603</td><td>##IDS_ERROR_66##</td></row>
		<row><td>1604</td><td>##IDS_ERROR_67##</td></row>
		<row><td>1605</td><td>##IDS_ERROR_68##</td></row>
		<row><td>1606</td><td>##IDS_ERROR_69##</td></row>
		<row><td>1607</td><td>##IDS_ERROR_70##</td></row>
		<row><td>1608</td><td>##IDS_ERROR_71##</td></row>
		<row><td>1609</td><td>##IDS_ERROR_1609##</td></row>
		<row><td>1651</td><td>##IDS_ERROR_1651##</td></row>
		<row><td>17</td><td>##IDS_ERROR_15##</td></row>
		<row><td>1701</td><td>##IDS_ERROR_72##</td></row>
		<row><td>1702</td><td>##IDS_ERROR_73##</td></row>
		<row><td>1703</td><td>##IDS_ERROR_74##</td></row>
		<row><td>1704</td><td>##IDS_ERROR_75##</td></row>
		<row><td>1705</td><td>##IDS_ERROR_76##</td></row>
		<row><td>1706</td><td>##IDS_ERROR_77##</td></row>
		<row><td>1707</td><td>##IDS_ERROR_78##</td></row>
		<row><td>1708</td><td>##IDS_ERROR_79##</td></row>
		<row><td>1709</td><td>##IDS_ERROR_80##</td></row>
		<row><td>1710</td><td>##IDS_ERROR_81##</td></row>
		<row><td>1711</td><td>##IDS_ERROR_82##</td></row>
		<row><td>1712</td><td>##IDS_ERROR_83##</td></row>
		<row><td>1713</td><td>##IDS_ERROR_123##</td></row>
		<row><td>1714</td><td>##IDS_ERROR_124##</td></row>
		<row><td>1715</td><td>##IDS_ERROR_1715##</td></row>
		<row><td>1716</td><td>##IDS_ERROR_1716##</td></row>
		<row><td>1717</td><td>##IDS_ERROR_1717##</td></row>
		<row><td>1718</td><td>##IDS_ERROR_1718##</td></row>
		<row><td>1719</td><td>##IDS_ERROR_1719##</td></row>
		<row><td>1720</td><td>##IDS_ERROR_1720##</td></row>
		<row><td>1721</td><td>##IDS_ERROR_1721##</td></row>
		<row><td>1722</td><td>##IDS_ERROR_1722##</td></row>
		<row><td>1723</td><td>##IDS_ERROR_1723##</td></row>
		<row><td>1724</td><td>##IDS_ERROR_1724##</td></row>
		<row><td>1725</td><td>##IDS_ERROR_1725##</td></row>
		<row><td>1726</td><td>##IDS_ERROR_1726##</td></row>
		<row><td>1727</td><td>##IDS_ERROR_1727##</td></row>
		<row><td>1728</td><td>##IDS_ERROR_1728##</td></row>
		<row><td>1729</td><td>##IDS_ERROR_1729##</td></row>
		<row><td>1730</td><td>##IDS_ERROR_1730##</td></row>
		<row><td>1731</td><td>##IDS_ERROR_1731##</td></row>
		<row><td>1732</td><td>##IDS_ERROR_1732##</td></row>
		<row><td>18</td><td>##IDS_ERROR_16##</td></row>
		<row><td>1801</td><td>##IDS_ERROR_84##</td></row>
		<row><td>1802</td><td>##IDS_ERROR_85##</td></row>
		<row><td>1803</td><td>##IDS_ERROR_86##</td></row>
		<row><td>1804</td><td>##IDS_ERROR_87##</td></row>
		<row><td>1805</td><td>##IDS_ERROR_88##</td></row>
		<row><td>1806</td><td>##IDS_ERROR_89##</td></row>
		<row><td>1807</td><td>##IDS_ERROR_90##</td></row>
		<row><td>19</td><td>##IDS_ERROR_17##</td></row>
		<row><td>1901</td><td>##IDS_ERROR_91##</td></row>
		<row><td>1902</td><td>##IDS_ERROR_92##</td></row>
		<row><td>1903</td><td>##IDS_ERROR_93##</td></row>
		<row><td>1904</td><td>##IDS_ERROR_94##</td></row>
		<row><td>1905</td><td>##IDS_ERROR_95##</td></row>
		<row><td>1906</td><td>##IDS_ERROR_96##</td></row>
		<row><td>1907</td><td>##IDS_ERROR_97##</td></row>
		<row><td>1908</td><td>##IDS_ERROR_98##</td></row>
		<row><td>1909</td><td>##IDS_ERROR_99##</td></row>
		<row><td>1910</td><td>##IDS_ERROR_100##</td></row>
		<row><td>1911</td><td>##IDS_ERROR_101##</td></row>
		<row><td>1912</td><td>##IDS_ERROR_102##</td></row>
		<row><td>1913</td><td>##IDS_ERROR_103##</td></row>
		<row><td>1914</td><td>##IDS_ERROR_104##</td></row>
		<row><td>1915</td><td>##IDS_ERROR_105##</td></row>
		<row><td>1916</td><td>##IDS_ERROR_106##</td></row>
		<row><td>1917</td><td>##IDS_ERROR_107##</td></row>
		<row><td>1918</td><td>##IDS_ERROR_108##</td></row>
		<row><td>1919</td><td>##IDS_ERROR_109##</td></row>
		<row><td>1920</td><td>##IDS_ERROR_110##</td></row>
		<row><td>1921</td><td>##IDS_ERROR_111##</td></row>
		<row><td>1922</td><td>##IDS_ERROR_112##</td></row>
		<row><td>1923</td><td>##IDS_ERROR_113##</td></row>
		<row><td>1924</td><td>##IDS_ERROR_114##</td></row>
		<row><td>1925</td><td>##IDS_ERROR_115##</td></row>
		<row><td>1926</td><td>##IDS_ERROR_116##</td></row>
		<row><td>1927</td><td>##IDS_ERROR_117##</td></row>
		<row><td>1928</td><td>##IDS_ERROR_118##</td></row>
		<row><td>1929</td><td>##IDS_ERROR_119##</td></row>
		<row><td>1930</td><td>##IDS_ERROR_125##</td></row>
		<row><td>1931</td><td>##IDS_ERROR_126##</td></row>
		<row><td>1932</td><td>##IDS_ERROR_127##</td></row>
		<row><td>1933</td><td>##IDS_ERROR_128##</td></row>
		<row><td>1934</td><td>##IDS_ERROR_129##</td></row>
		<row><td>1935</td><td>##IDS_ERROR_1935##</td></row>
		<row><td>1936</td><td>##IDS_ERROR_1936##</td></row>
		<row><td>1937</td><td>##IDS_ERROR_1937##</td></row>
		<row><td>1938</td><td>##IDS_ERROR_1938##</td></row>
		<row><td>2</td><td>##IDS_ERROR_2##</td></row>
		<row><td>20</td><td>##IDS_ERROR_18##</td></row>
		<row><td>21</td><td>##IDS_ERROR_19##</td></row>
		<row><td>2101</td><td>##IDS_ERROR_2101##</td></row>
		<row><td>2102</td><td>##IDS_ERROR_2102##</td></row>
		<row><td>2103</td><td>##IDS_ERROR_2103##</td></row>
		<row><td>2104</td><td>##IDS_ERROR_2104##</td></row>
		<row><td>2105</td><td>##IDS_ERROR_2105##</td></row>
		<row><td>2106</td><td>##IDS_ERROR_2106##</td></row>
		<row><td>2107</td><td>##IDS_ERROR_2107##</td></row>
		<row><td>2108</td><td>##IDS_ERROR_2108##</td></row>
		<row><td>2109</td><td>##IDS_ERROR_2109##</td></row>
		<row><td>2110</td><td>##IDS_ERROR_2110##</td></row>
		<row><td>2111</td><td>##IDS_ERROR_2111##</td></row>
		<row><td>2112</td><td>##IDS_ERROR_2112##</td></row>
		<row><td>2113</td><td>##IDS_ERROR_2113##</td></row>
		<row><td>22</td><td>##IDS_ERROR_120##</td></row>
		<row><td>2200</td><td>##IDS_ERROR_2200##</td></row>
		<row><td>2201</td><td>##IDS_ERROR_2201##</td></row>
		<row><td>2202</td><td>##IDS_ERROR_2202##</td></row>
		<row><td>2203</td><td>##IDS_ERROR_2203##</td></row>
		<row><td>2204</td><td>##IDS_ERROR_2204##</td></row>
		<row><td>2205</td><td>##IDS_ERROR_2205##</td></row>
		<row><td>2206</td><td>##IDS_ERROR_2206##</td></row>
		<row><td>2207</td><td>##IDS_ERROR_2207##</td></row>
		<row><td>2208</td><td>##IDS_ERROR_2208##</td></row>
		<row><td>2209</td><td>##IDS_ERROR_2209##</td></row>
		<row><td>2210</td><td>##IDS_ERROR_2210##</td></row>
		<row><td>2211</td><td>##IDS_ERROR_2211##</td></row>
		<row><td>2212</td><td>##IDS_ERROR_2212##</td></row>
		<row><td>2213</td><td>##IDS_ERROR_2213##</td></row>
		<row><td>2214</td><td>##IDS_ERROR_2214##</td></row>
		<row><td>2215</td><td>##IDS_ERROR_2215##</td></row>
		<row><td>2216</td><td>##IDS_ERROR_2216##</td></row>
		<row><td>2217</td><td>##IDS_ERROR_2217##</td></row>
		<row><td>2218</td><td>##IDS_ERROR_2218##</td></row>
		<row><td>2219</td><td>##IDS_ERROR_2219##</td></row>
		<row><td>2220</td><td>##IDS_ERROR_2220##</td></row>
		<row><td>2221</td><td>##IDS_ERROR_2221##</td></row>
		<row><td>2222</td><td>##IDS_ERROR_2222##</td></row>
		<row><td>2223</td><td>##IDS_ERROR_2223##</td></row>
		<row><td>2224</td><td>##IDS_ERROR_2224##</td></row>
		<row><td>2225</td><td>##IDS_ERROR_2225##</td></row>
		<row><td>2226</td><td>##IDS_ERROR_2226##</td></row>
		<row><td>2227</td><td>##IDS_ERROR_2227##</td></row>
		<row><td>2228</td><td>##IDS_ERROR_2228##</td></row>
		<row><td>2229</td><td>##IDS_ERROR_2229##</td></row>
		<row><td>2230</td><td>##IDS_ERROR_2230##</td></row>
		<row><td>2231</td><td>##IDS_ERROR_2231##</td></row>
		<row><td>2232</td><td>##IDS_ERROR_2232##</td></row>
		<row><td>2233</td><td>##IDS_ERROR_2233##</td></row>
		<row><td>2234</td><td>##IDS_ERROR_2234##</td></row>
		<row><td>2235</td><td>##IDS_ERROR_2235##</td></row>
		<row><td>2236</td><td>##IDS_ERROR_2236##</td></row>
		<row><td>2237</td><td>##IDS_ERROR_2237##</td></row>
		<row><td>2238</td><td>##IDS_ERROR_2238##</td></row>
		<row><td>2239</td><td>##IDS_ERROR_2239##</td></row>
		<row><td>2240</td><td>##IDS_ERROR_2240##</td></row>
		<row><td>2241</td><td>##IDS_ERROR_2241##</td></row>
		<row><td>2242</td><td>##IDS_ERROR_2242##</td></row>
		<row><td>2243</td><td>##IDS_ERROR_2243##</td></row>
		<row><td>2244</td><td>##IDS_ERROR_2244##</td></row>
		<row><td>2245</td><td>##IDS_ERROR_2245##</td></row>
		<row><td>2246</td><td>##IDS_ERROR_2246##</td></row>
		<row><td>2247</td><td>##IDS_ERROR_2247##</td></row>
		<row><td>2248</td><td>##IDS_ERROR_2248##</td></row>
		<row><td>2249</td><td>##IDS_ERROR_2249##</td></row>
		<row><td>2250</td><td>##IDS_ERROR_2250##</td></row>
		<row><td>2251</td><td>##IDS_ERROR_2251##</td></row>
		<row><td>2252</td><td>##IDS_ERROR_2252##</td></row>
		<row><td>2253</td><td>##IDS_ERROR_2253##</td></row>
		<row><td>2254</td><td>##IDS_ERROR_2254##</td></row>
		<row><td>2255</td><td>##IDS_ERROR_2255##</td></row>
		<row><td>2256</td><td>##IDS_ERROR_2256##</td></row>
		<row><td>2257</td><td>##IDS_ERROR_2257##</td></row>
		<row><td>2258</td><td>##IDS_ERROR_2258##</td></row>
		<row><td>2259</td><td>##IDS_ERROR_2259##</td></row>
		<row><td>2260</td><td>##IDS_ERROR_2260##</td></row>
		<row><td>2261</td><td>##IDS_ERROR_2261##</td></row>
		<row><td>2262</td><td>##IDS_ERROR_2262##</td></row>
		<row><td>2263</td><td>##IDS_ERROR_2263##</td></row>
		<row><td>2264</td><td>##IDS_ERROR_2264##</td></row>
		<row><td>2265</td><td>##IDS_ERROR_2265##</td></row>
		<row><td>2266</td><td>##IDS_ERROR_2266##</td></row>
		<row><td>2267</td><td>##IDS_ERROR_2267##</td></row>
		<row><td>2268</td><td>##IDS_ERROR_2268##</td></row>
		<row><td>2269</td><td>##IDS_ERROR_2269##</td></row>
		<row><td>2270</td><td>##IDS_ERROR_2270##</td></row>
		<row><td>2271</td><td>##IDS_ERROR_2271##</td></row>
		<row><td>2272</td><td>##IDS_ERROR_2272##</td></row>
		<row><td>2273</td><td>##IDS_ERROR_2273##</td></row>
		<row><td>2274</td><td>##IDS_ERROR_2274##</td></row>
		<row><td>2275</td><td>##IDS_ERROR_2275##</td></row>
		<row><td>2276</td><td>##IDS_ERROR_2276##</td></row>
		<row><td>2277</td><td>##IDS_ERROR_2277##</td></row>
		<row><td>2278</td><td>##IDS_ERROR_2278##</td></row>
		<row><td>2279</td><td>##IDS_ERROR_2279##</td></row>
		<row><td>2280</td><td>##IDS_ERROR_2280##</td></row>
		<row><td>2281</td><td>##IDS_ERROR_2281##</td></row>
		<row><td>2282</td><td>##IDS_ERROR_2282##</td></row>
		<row><td>23</td><td>##IDS_ERROR_121##</td></row>
		<row><td>2302</td><td>##IDS_ERROR_2302##</td></row>
		<row><td>2303</td><td>##IDS_ERROR_2303##</td></row>
		<row><td>2304</td><td>##IDS_ERROR_2304##</td></row>
		<row><td>2305</td><td>##IDS_ERROR_2305##</td></row>
		<row><td>2306</td><td>##IDS_ERROR_2306##</td></row>
		<row><td>2307</td><td>##IDS_ERROR_2307##</td></row>
		<row><td>2308</td><td>##IDS_ERROR_2308##</td></row>
		<row><td>2309</td><td>##IDS_ERROR_2309##</td></row>
		<row><td>2310</td><td>##IDS_ERROR_2310##</td></row>
		<row><td>2315</td><td>##IDS_ERROR_2315##</td></row>
		<row><td>2318</td><td>##IDS_ERROR_2318##</td></row>
		<row><td>2319</td><td>##IDS_ERROR_2319##</td></row>
		<row><td>2320</td><td>##IDS_ERROR_2320##</td></row>
		<row><td>2321</td><td>##IDS_ERROR_2321##</td></row>
		<row><td>2322</td><td>##IDS_ERROR_2322##</td></row>
		<row><td>2323</td><td>##IDS_ERROR_2323##</td></row>
		<row><td>2324</td><td>##IDS_ERROR_2324##</td></row>
		<row><td>2325</td><td>##IDS_ERROR_2325##</td></row>
		<row><td>2326</td><td>##IDS_ERROR_2326##</td></row>
		<row><td>2327</td><td>##IDS_ERROR_2327##</td></row>
		<row><td>2328</td><td>##IDS_ERROR_2328##</td></row>
		<row><td>2329</td><td>##IDS_ERROR_2329##</td></row>
		<row><td>2330</td><td>##IDS_ERROR_2330##</td></row>
		<row><td>2331</td><td>##IDS_ERROR_2331##</td></row>
		<row><td>2332</td><td>##IDS_ERROR_2332##</td></row>
		<row><td>2333</td><td>##IDS_ERROR_2333##</td></row>
		<row><td>2334</td><td>##IDS_ERROR_2334##</td></row>
		<row><td>2335</td><td>##IDS_ERROR_2335##</td></row>
		<row><td>2336</td><td>##IDS_ERROR_2336##</td></row>
		<row><td>2337</td><td>##IDS_ERROR_2337##</td></row>
		<row><td>2338</td><td>##IDS_ERROR_2338##</td></row>
		<row><td>2339</td><td>##IDS_ERROR_2339##</td></row>
		<row><td>2340</td><td>##IDS_ERROR_2340##</td></row>
		<row><td>2341</td><td>##IDS_ERROR_2341##</td></row>
		<row><td>2342</td><td>##IDS_ERROR_2342##</td></row>
		<row><td>2343</td><td>##IDS_ERROR_2343##</td></row>
		<row><td>2344</td><td>##IDS_ERROR_2344##</td></row>
		<row><td>2345</td><td>##IDS_ERROR_2345##</td></row>
		<row><td>2347</td><td>##IDS_ERROR_2347##</td></row>
		<row><td>2348</td><td>##IDS_ERROR_2348##</td></row>
		<row><td>2349</td><td>##IDS_ERROR_2349##</td></row>
		<row><td>2350</td><td>##IDS_ERROR_2350##</td></row>
		<row><td>2351</td><td>##IDS_ERROR_2351##</td></row>
		<row><td>2352</td><td>##IDS_ERROR_2352##</td></row>
		<row><td>2353</td><td>##IDS_ERROR_2353##</td></row>
		<row><td>2354</td><td>##IDS_ERROR_2354##</td></row>
		<row><td>2355</td><td>##IDS_ERROR_2355##</td></row>
		<row><td>2356</td><td>##IDS_ERROR_2356##</td></row>
		<row><td>2357</td><td>##IDS_ERROR_2357##</td></row>
		<row><td>2358</td><td>##IDS_ERROR_2358##</td></row>
		<row><td>2359</td><td>##IDS_ERROR_2359##</td></row>
		<row><td>2360</td><td>##IDS_ERROR_2360##</td></row>
		<row><td>2361</td><td>##IDS_ERROR_2361##</td></row>
		<row><td>2362</td><td>##IDS_ERROR_2362##</td></row>
		<row><td>2363</td><td>##IDS_ERROR_2363##</td></row>
		<row><td>2364</td><td>##IDS_ERROR_2364##</td></row>
		<row><td>2365</td><td>##IDS_ERROR_2365##</td></row>
		<row><td>2366</td><td>##IDS_ERROR_2366##</td></row>
		<row><td>2367</td><td>##IDS_ERROR_2367##</td></row>
		<row><td>2368</td><td>##IDS_ERROR_2368##</td></row>
		<row><td>2370</td><td>##IDS_ERROR_2370##</td></row>
		<row><td>2371</td><td>##IDS_ERROR_2371##</td></row>
		<row><td>2372</td><td>##IDS_ERROR_2372##</td></row>
		<row><td>2373</td><td>##IDS_ERROR_2373##</td></row>
		<row><td>2374</td><td>##IDS_ERROR_2374##</td></row>
		<row><td>2375</td><td>##IDS_ERROR_2375##</td></row>
		<row><td>2376</td><td>##IDS_ERROR_2376##</td></row>
		<row><td>2379</td><td>##IDS_ERROR_2379##</td></row>
		<row><td>2380</td><td>##IDS_ERROR_2380##</td></row>
		<row><td>2381</td><td>##IDS_ERROR_2381##</td></row>
		<row><td>2382</td><td>##IDS_ERROR_2382##</td></row>
		<row><td>2401</td><td>##IDS_ERROR_2401##</td></row>
		<row><td>2402</td><td>##IDS_ERROR_2402##</td></row>
		<row><td>2501</td><td>##IDS_ERROR_2501##</td></row>
		<row><td>2502</td><td>##IDS_ERROR_2502##</td></row>
		<row><td>2503</td><td>##IDS_ERROR_2503##</td></row>
		<row><td>2601</td><td>##IDS_ERROR_2601##</td></row>
		<row><td>2602</td><td>##IDS_ERROR_2602##</td></row>
		<row><td>2603</td><td>##IDS_ERROR_2603##</td></row>
		<row><td>2604</td><td>##IDS_ERROR_2604##</td></row>
		<row><td>2605</td><td>##IDS_ERROR_2605##</td></row>
		<row><td>2606</td><td>##IDS_ERROR_2606##</td></row>
		<row><td>2607</td><td>##IDS_ERROR_2607##</td></row>
		<row><td>2608</td><td>##IDS_ERROR_2608##</td></row>
		<row><td>2609</td><td>##IDS_ERROR_2609##</td></row>
		<row><td>2611</td><td>##IDS_ERROR_2611##</td></row>
		<row><td>2612</td><td>##IDS_ERROR_2612##</td></row>
		<row><td>2613</td><td>##IDS_ERROR_2613##</td></row>
		<row><td>2614</td><td>##IDS_ERROR_2614##</td></row>
		<row><td>2615</td><td>##IDS_ERROR_2615##</td></row>
		<row><td>2616</td><td>##IDS_ERROR_2616##</td></row>
		<row><td>2617</td><td>##IDS_ERROR_2617##</td></row>
		<row><td>2618</td><td>##IDS_ERROR_2618##</td></row>
		<row><td>2619</td><td>##IDS_ERROR_2619##</td></row>
		<row><td>2620</td><td>##IDS_ERROR_2620##</td></row>
		<row><td>2621</td><td>##IDS_ERROR_2621##</td></row>
		<row><td>2701</td><td>##IDS_ERROR_2701##</td></row>
		<row><td>2702</td><td>##IDS_ERROR_2702##</td></row>
		<row><td>2703</td><td>##IDS_ERROR_2703##</td></row>
		<row><td>2704</td><td>##IDS_ERROR_2704##</td></row>
		<row><td>2705</td><td>##IDS_ERROR_2705##</td></row>
		<row><td>2706</td><td>##IDS_ERROR_2706##</td></row>
		<row><td>2707</td><td>##IDS_ERROR_2707##</td></row>
		<row><td>2708</td><td>##IDS_ERROR_2708##</td></row>
		<row><td>2709</td><td>##IDS_ERROR_2709##</td></row>
		<row><td>2710</td><td>##IDS_ERROR_2710##</td></row>
		<row><td>2711</td><td>##IDS_ERROR_2711##</td></row>
		<row><td>2712</td><td>##IDS_ERROR_2712##</td></row>
		<row><td>2713</td><td>##IDS_ERROR_2713##</td></row>
		<row><td>2714</td><td>##IDS_ERROR_2714##</td></row>
		<row><td>2715</td><td>##IDS_ERROR_2715##</td></row>
		<row><td>2716</td><td>##IDS_ERROR_2716##</td></row>
		<row><td>2717</td><td>##IDS_ERROR_2717##</td></row>
		<row><td>2718</td><td>##IDS_ERROR_2718##</td></row>
		<row><td>2719</td><td>##IDS_ERROR_2719##</td></row>
		<row><td>2720</td><td>##IDS_ERROR_2720##</td></row>
		<row><td>2721</td><td>##IDS_ERROR_2721##</td></row>
		<row><td>2722</td><td>##IDS_ERROR_2722##</td></row>
		<row><td>2723</td><td>##IDS_ERROR_2723##</td></row>
		<row><td>2724</td><td>##IDS_ERROR_2724##</td></row>
		<row><td>2725</td><td>##IDS_ERROR_2725##</td></row>
		<row><td>2726</td><td>##IDS_ERROR_2726##</td></row>
		<row><td>2727</td><td>##IDS_ERROR_2727##</td></row>
		<row><td>2728</td><td>##IDS_ERROR_2728##</td></row>
		<row><td>2729</td><td>##IDS_ERROR_2729##</td></row>
		<row><td>2730</td><td>##IDS_ERROR_2730##</td></row>
		<row><td>2731</td><td>##IDS_ERROR_2731##</td></row>
		<row><td>2732</td><td>##IDS_ERROR_2732##</td></row>
		<row><td>2733</td><td>##IDS_ERROR_2733##</td></row>
		<row><td>2734</td><td>##IDS_ERROR_2734##</td></row>
		<row><td>2735</td><td>##IDS_ERROR_2735##</td></row>
		<row><td>2736</td><td>##IDS_ERROR_2736##</td></row>
		<row><td>2737</td><td>##IDS_ERROR_2737##</td></row>
		<row><td>2738</td><td>##IDS_ERROR_2738##</td></row>
		<row><td>2739</td><td>##IDS_ERROR_2739##</td></row>
		<row><td>2740</td><td>##IDS_ERROR_2740##</td></row>
		<row><td>2741</td><td>##IDS_ERROR_2741##</td></row>
		<row><td>2742</td><td>##IDS_ERROR_2742##</td></row>
		<row><td>2743</td><td>##IDS_ERROR_2743##</td></row>
		<row><td>2744</td><td>##IDS_ERROR_2744##</td></row>
		<row><td>2745</td><td>##IDS_ERROR_2745##</td></row>
		<row><td>2746</td><td>##IDS_ERROR_2746##</td></row>
		<row><td>2747</td><td>##IDS_ERROR_2747##</td></row>
		<row><td>2748</td><td>##IDS_ERROR_2748##</td></row>
		<row><td>2749</td><td>##IDS_ERROR_2749##</td></row>
		<row><td>2750</td><td>##IDS_ERROR_2750##</td></row>
		<row><td>27500</td><td>##IDS_ERROR_130##</td></row>
		<row><td>27501</td><td>##IDS_ERROR_131##</td></row>
		<row><td>27502</td><td>##IDS_ERROR_27502##</td></row>
		<row><td>27503</td><td>##IDS_ERROR_27503##</td></row>
		<row><td>27504</td><td>##IDS_ERROR_27504##</td></row>
		<row><td>27505</td><td>##IDS_ERROR_27505##</td></row>
		<row><td>27506</td><td>##IDS_ERROR_27506##</td></row>
		<row><td>27507</td><td>##IDS_ERROR_27507##</td></row>
		<row><td>27508</td><td>##IDS_ERROR_27508##</td></row>
		<row><td>27509</td><td>##IDS_ERROR_27509##</td></row>
		<row><td>2751</td><td>##IDS_ERROR_2751##</td></row>
		<row><td>27510</td><td>##IDS_ERROR_27510##</td></row>
		<row><td>27511</td><td>##IDS_ERROR_27511##</td></row>
		<row><td>27512</td><td>##IDS_ERROR_27512##</td></row>
		<row><td>27513</td><td>##IDS_ERROR_27513##</td></row>
		<row><td>27514</td><td>##IDS_ERROR_27514##</td></row>
		<row><td>27515</td><td>##IDS_ERROR_27515##</td></row>
		<row><td>27516</td><td>##IDS_ERROR_27516##</td></row>
		<row><td>27517</td><td>##IDS_ERROR_27517##</td></row>
		<row><td>27518</td><td>##IDS_ERROR_27518##</td></row>
		<row><td>27519</td><td>##IDS_ERROR_27519##</td></row>
		<row><td>2752</td><td>##IDS_ERROR_2752##</td></row>
		<row><td>27520</td><td>##IDS_ERROR_27520##</td></row>
		<row><td>27521</td><td>##IDS_ERROR_27521##</td></row>
		<row><td>27522</td><td>##IDS_ERROR_27522##</td></row>
		<row><td>27523</td><td>##IDS_ERROR_27523##</td></row>
		<row><td>27524</td><td>##IDS_ERROR_27524##</td></row>
		<row><td>27525</td><td>##IDS_ERROR_27525##</td></row>
		<row><td>27526</td><td>##IDS_ERROR_27526##</td></row>
		<row><td>27527</td><td>##IDS_ERROR_27527##</td></row>
		<row><td>27528</td><td>##IDS_ERROR_27528##</td></row>
		<row><td>27529</td><td>##IDS_ERROR_27529##</td></row>
		<row><td>2753</td><td>##IDS_ERROR_2753##</td></row>
		<row><td>27530</td><td>##IDS_ERROR_27530##</td></row>
		<row><td>27531</td><td>##IDS_ERROR_27531##</td></row>
		<row><td>27532</td><td>##IDS_ERROR_27532##</td></row>
		<row><td>27533</td><td>##IDS_ERROR_27533##</td></row>
		<row><td>27534</td><td>##IDS_ERROR_27534##</td></row>
		<row><td>27535</td><td>##IDS_ERROR_27535##</td></row>
		<row><td>27536</td><td>##IDS_ERROR_27536##</td></row>
		<row><td>27537</td><td>##IDS_ERROR_27537##</td></row>
		<row><td>27538</td><td>##IDS_ERROR_27538##</td></row>
		<row><td>27539</td><td>##IDS_ERROR_27539##</td></row>
		<row><td>2754</td><td>##IDS_ERROR_2754##</td></row>
		<row><td>27540</td><td>##IDS_ERROR_27540##</td></row>
		<row><td>27541</td><td>##IDS_ERROR_27541##</td></row>
		<row><td>27542</td><td>##IDS_ERROR_27542##</td></row>
		<row><td>27543</td><td>##IDS_ERROR_27543##</td></row>
		<row><td>27544</td><td>##IDS_ERROR_27544##</td></row>
		<row><td>27545</td><td>##IDS_ERROR_27545##</td></row>
		<row><td>27546</td><td>##IDS_ERROR_27546##</td></row>
		<row><td>27547</td><td>##IDS_ERROR_27547##</td></row>
		<row><td>27548</td><td>##IDS_ERROR_27548##</td></row>
		<row><td>27549</td><td>##IDS_ERROR_27549##</td></row>
		<row><td>2755</td><td>##IDS_ERROR_2755##</td></row>
		<row><td>27550</td><td>##IDS_ERROR_27550##</td></row>
		<row><td>27551</td><td>##IDS_ERROR_27551##</td></row>
		<row><td>27552</td><td>##IDS_ERROR_27552##</td></row>
		<row><td>27553</td><td>##IDS_ERROR_27553##</td></row>
		<row><td>27554</td><td>##IDS_ERROR_27554##</td></row>
		<row><td>27555</td><td>##IDS_ERROR_27555##</td></row>
		<row><td>2756</td><td>##IDS_ERROR_2756##</td></row>
		<row><td>2757</td><td>##IDS_ERROR_2757##</td></row>
		<row><td>2758</td><td>##IDS_ERROR_2758##</td></row>
		<row><td>2759</td><td>##IDS_ERROR_2759##</td></row>
		<row><td>2760</td><td>##IDS_ERROR_2760##</td></row>
		<row><td>2761</td><td>##IDS_ERROR_2761##</td></row>
		<row><td>2762</td><td>##IDS_ERROR_2762##</td></row>
		<row><td>2763</td><td>##IDS_ERROR_2763##</td></row>
		<row><td>2765</td><td>##IDS_ERROR_2765##</td></row>
		<row><td>2766</td><td>##IDS_ERROR_2766##</td></row>
		<row><td>2767</td><td>##IDS_ERROR_2767##</td></row>
		<row><td>2768</td><td>##IDS_ERROR_2768##</td></row>
		<row><td>2769</td><td>##IDS_ERROR_2769##</td></row>
		<row><td>2770</td><td>##IDS_ERROR_2770##</td></row>
		<row><td>2771</td><td>##IDS_ERROR_2771##</td></row>
		<row><td>2772</td><td>##IDS_ERROR_2772##</td></row>
		<row><td>2801</td><td>##IDS_ERROR_2801##</td></row>
		<row><td>2802</td><td>##IDS_ERROR_2802##</td></row>
		<row><td>2803</td><td>##IDS_ERROR_2803##</td></row>
		<row><td>2804</td><td>##IDS_ERROR_2804##</td></row>
		<row><td>2806</td><td>##IDS_ERROR_2806##</td></row>
		<row><td>2807</td><td>##IDS_ERROR_2807##</td></row>
		<row><td>2808</td><td>##IDS_ERROR_2808##</td></row>
		<row><td>2809</td><td>##IDS_ERROR_2809##</td></row>
		<row><td>2810</td><td>##IDS_ERROR_2810##</td></row>
		<row><td>2811</td><td>##IDS_ERROR_2811##</td></row>
		<row><td>2812</td><td>##IDS_ERROR_2812##</td></row>
		<row><td>2813</td><td>##IDS_ERROR_2813##</td></row>
		<row><td>2814</td><td>##IDS_ERROR_2814##</td></row>
		<row><td>2815</td><td>##IDS_ERROR_2815##</td></row>
		<row><td>2816</td><td>##IDS_ERROR_2816##</td></row>
		<row><td>2817</td><td>##IDS_ERROR_2817##</td></row>
		<row><td>2818</td><td>##IDS_ERROR_2818##</td></row>
		<row><td>2819</td><td>##IDS_ERROR_2819##</td></row>
		<row><td>2820</td><td>##IDS_ERROR_2820##</td></row>
		<row><td>2821</td><td>##IDS_ERROR_2821##</td></row>
		<row><td>2822</td><td>##IDS_ERROR_2822##</td></row>
		<row><td>2823</td><td>##IDS_ERROR_2823##</td></row>
		<row><td>2824</td><td>##IDS_ERROR_2824##</td></row>
		<row><td>2825</td><td>##IDS_ERROR_2825##</td></row>
		<row><td>2826</td><td>##IDS_ERROR_2826##</td></row>
		<row><td>2827</td><td>##IDS_ERROR_2827##</td></row>
		<row><td>2828</td><td>##IDS_ERROR_2828##</td></row>
		<row><td>2829</td><td>##IDS_ERROR_2829##</td></row>
		<row><td>2830</td><td>##IDS_ERROR_2830##</td></row>
		<row><td>2831</td><td>##IDS_ERROR_2831##</td></row>
		<row><td>2832</td><td>##IDS_ERROR_2832##</td></row>
		<row><td>2833</td><td>##IDS_ERROR_2833##</td></row>
		<row><td>2834</td><td>##IDS_ERROR_2834##</td></row>
		<row><td>2835</td><td>##IDS_ERROR_2835##</td></row>
		<row><td>2836</td><td>##IDS_ERROR_2836##</td></row>
		<row><td>2837</td><td>##IDS_ERROR_2837##</td></row>
		<row><td>2838</td><td>##IDS_ERROR_2838##</td></row>
		<row><td>2839</td><td>##IDS_ERROR_2839##</td></row>
		<row><td>2840</td><td>##IDS_ERROR_2840##</td></row>
		<row><td>2841</td><td>##IDS_ERROR_2841##</td></row>
		<row><td>2842</td><td>##IDS_ERROR_2842##</td></row>
		<row><td>2843</td><td>##IDS_ERROR_2843##</td></row>
		<row><td>2844</td><td>##IDS_ERROR_2844##</td></row>
		<row><td>2845</td><td>##IDS_ERROR_2845##</td></row>
		<row><td>2846</td><td>##IDS_ERROR_2846##</td></row>
		<row><td>2847</td><td>##IDS_ERROR_2847##</td></row>
		<row><td>2848</td><td>##IDS_ERROR_2848##</td></row>
		<row><td>2849</td><td>##IDS_ERROR_2849##</td></row>
		<row><td>2850</td><td>##IDS_ERROR_2850##</td></row>
		<row><td>2851</td><td>##IDS_ERROR_2851##</td></row>
		<row><td>2852</td><td>##IDS_ERROR_2852##</td></row>
		<row><td>2853</td><td>##IDS_ERROR_2853##</td></row>
		<row><td>2854</td><td>##IDS_ERROR_2854##</td></row>
		<row><td>2855</td><td>##IDS_ERROR_2855##</td></row>
		<row><td>2856</td><td>##IDS_ERROR_2856##</td></row>
		<row><td>2857</td><td>##IDS_ERROR_2857##</td></row>
		<row><td>2858</td><td>##IDS_ERROR_2858##</td></row>
		<row><td>2859</td><td>##IDS_ERROR_2859##</td></row>
		<row><td>2860</td><td>##IDS_ERROR_2860##</td></row>
		<row><td>2861</td><td>##IDS_ERROR_2861##</td></row>
		<row><td>2862</td><td>##IDS_ERROR_2862##</td></row>
		<row><td>2863</td><td>##IDS_ERROR_2863##</td></row>
		<row><td>2864</td><td>##IDS_ERROR_2864##</td></row>
		<row><td>2865</td><td>##IDS_ERROR_2865##</td></row>
		<row><td>2866</td><td>##IDS_ERROR_2866##</td></row>
		<row><td>2867</td><td>##IDS_ERROR_2867##</td></row>
		<row><td>2868</td><td>##IDS_ERROR_2868##</td></row>
		<row><td>2869</td><td>##IDS_ERROR_2869##</td></row>
		<row><td>2870</td><td>##IDS_ERROR_2870##</td></row>
		<row><td>2871</td><td>##IDS_ERROR_2871##</td></row>
		<row><td>2872</td><td>##IDS_ERROR_2872##</td></row>
		<row><td>2873</td><td>##IDS_ERROR_2873##</td></row>
		<row><td>2874</td><td>##IDS_ERROR_2874##</td></row>
		<row><td>2875</td><td>##IDS_ERROR_2875##</td></row>
		<row><td>2876</td><td>##IDS_ERROR_2876##</td></row>
		<row><td>2877</td><td>##IDS_ERROR_2877##</td></row>
		<row><td>2878</td><td>##IDS_ERROR_2878##</td></row>
		<row><td>2879</td><td>##IDS_ERROR_2879##</td></row>
		<row><td>2880</td><td>##IDS_ERROR_2880##</td></row>
		<row><td>2881</td><td>##IDS_ERROR_2881##</td></row>
		<row><td>2882</td><td>##IDS_ERROR_2882##</td></row>
		<row><td>2883</td><td>##IDS_ERROR_2883##</td></row>
		<row><td>2884</td><td>##IDS_ERROR_2884##</td></row>
		<row><td>2885</td><td>##IDS_ERROR_2885##</td></row>
		<row><td>2886</td><td>##IDS_ERROR_2886##</td></row>
		<row><td>2887</td><td>##IDS_ERROR_2887##</td></row>
		<row><td>2888</td><td>##IDS_ERROR_2888##</td></row>
		<row><td>2889</td><td>##IDS_ERROR_2889##</td></row>
		<row><td>2890</td><td>##IDS_ERROR_2890##</td></row>
		<row><td>2891</td><td>##IDS_ERROR_2891##</td></row>
		<row><td>2892</td><td>##IDS_ERROR_2892##</td></row>
		<row><td>2893</td><td>##IDS_ERROR_2893##</td></row>
		<row><td>2894</td><td>##IDS_ERROR_2894##</td></row>
		<row><td>2895</td><td>##IDS_ERROR_2895##</td></row>
		<row><td>2896</td><td>##IDS_ERROR_2896##</td></row>
		<row><td>2897</td><td>##IDS_ERROR_2897##</td></row>
		<row><td>2898</td><td>##IDS_ERROR_2898##</td></row>
		<row><td>2899</td><td>##IDS_ERROR_2899##</td></row>
		<row><td>2901</td><td>##IDS_ERROR_2901##</td></row>
		<row><td>2902</td><td>##IDS_ERROR_2902##</td></row>
		<row><td>2903</td><td>##IDS_ERROR_2903##</td></row>
		<row><td>2904</td><td>##IDS_ERROR_2904##</td></row>
		<row><td>2905</td><td>##IDS_ERROR_2905##</td></row>
		<row><td>2906</td><td>##IDS_ERROR_2906##</td></row>
		<row><td>2907</td><td>##IDS_ERROR_2907##</td></row>
		<row><td>2908</td><td>##IDS_ERROR_2908##</td></row>
		<row><td>2909</td><td>##IDS_ERROR_2909##</td></row>
		<row><td>2910</td><td>##IDS_ERROR_2910##</td></row>
		<row><td>2911</td><td>##IDS_ERROR_2911##</td></row>
		<row><td>2912</td><td>##IDS_ERROR_2912##</td></row>
		<row><td>2919</td><td>##IDS_ERROR_2919##</td></row>
		<row><td>2920</td><td>##IDS_ERROR_2920##</td></row>
		<row><td>2924</td><td>##IDS_ERROR_2924##</td></row>
		<row><td>2927</td><td>##IDS_ERROR_2927##</td></row>
		<row><td>2928</td><td>##IDS_ERROR_2928##</td></row>
		<row><td>2929</td><td>##IDS_ERROR_2929##</td></row>
		<row><td>2932</td><td>##IDS_ERROR_2932##</td></row>
		<row><td>2933</td><td>##IDS_ERROR_2933##</td></row>
		<row><td>2934</td><td>##IDS_ERROR_2934##</td></row>
		<row><td>2935</td><td>##IDS_ERROR_2935##</td></row>
		<row><td>2936</td><td>##IDS_ERROR_2936##</td></row>
		<row><td>2937</td><td>##IDS_ERROR_2937##</td></row>
		<row><td>2938</td><td>##IDS_ERROR_2938##</td></row>
		<row><td>2939</td><td>##IDS_ERROR_2939##</td></row>
		<row><td>2940</td><td>##IDS_ERROR_2940##</td></row>
		<row><td>2941</td><td>##IDS_ERROR_2941##</td></row>
		<row><td>2942</td><td>##IDS_ERROR_2942##</td></row>
		<row><td>2943</td><td>##IDS_ERROR_2943##</td></row>
		<row><td>2944</td><td>##IDS_ERROR_2944##</td></row>
		<row><td>2945</td><td>##IDS_ERROR_2945##</td></row>
		<row><td>3001</td><td>##IDS_ERROR_3001##</td></row>
		<row><td>3002</td><td>##IDS_ERROR_3002##</td></row>
		<row><td>32</td><td>##IDS_ERROR_20##</td></row>
		<row><td>33</td><td>##IDS_ERROR_21##</td></row>
		<row><td>4</td><td>##IDS_ERROR_3##</td></row>
		<row><td>5</td><td>##IDS_ERROR_4##</td></row>
		<row><td>7</td><td>##IDS_ERROR_5##</td></row>
		<row><td>8</td><td>##IDS_ERROR_6##</td></row>
		<row><td>9</td><td>##IDS_ERROR_7##</td></row>
	</table>

	<table name="EventMapping">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col def="s50">Attribute</col>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>SelectionDescription</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Location</td><td>SelectionPath</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Size</td><td>SelectionSize</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>ActionData</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>AdminInstallFinalize</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>InstallFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>MoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>SetProgress</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>UnmoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteIniValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
	</table>

	<table name="Extension">
		<col key="yes" def="s255">Extension</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_</col>
		<col def="S64">MIME_</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="Feature">
		<col key="yes" def="s38">Feature</col>
		<col def="S38">Feature_Parent</col>
		<col def="L64">Title</col>
		<col def="L255">Description</col>
		<col def="I2">Display</col>
		<col def="i2">Level</col>
		<col def="S72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISFeatureCabName</col>
		<col def="S255">ISProFeatureName</col>
		<row><td>AlwaysInstall</td><td/><td>##DN_AlwaysInstall##</td><td>Enter the description for this feature here.</td><td>0</td><td>1</td><td>INSTALLDIR</td><td>16</td><td/><td>Enter comments regarding this feature here.</td><td/><td/></row>
	</table>

	<table name="FeatureComponents">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">Component_</col>
		<row><td>AlwaysInstall</td><td>Antlr3.Runtime.dll</td></row>
		<row><td>AlwaysInstall</td><td>Antlr3.Runtime.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Antlr3.Runtime.dll2</td></row>
		<row><td>AlwaysInstall</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll</td></row>
		<row><td>AlwaysInstall</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll1</td></row>
		<row><td>AlwaysInstall</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll2</td></row>
		<row><td>AlwaysInstall</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll3</td></row>
		<row><td>AlwaysInstall</td><td>AspNet.ScriptManager.jQuery.dll</td></row>
		<row><td>AlwaysInstall</td><td>AspNet.ScriptManager.jQuery.dll1</td></row>
		<row><td>AlwaysInstall</td><td>AspNet.ScriptManager.jQuery.dll2</td></row>
		<row><td>AlwaysInstall</td><td>AspNet.ScriptManager.jQuery.dll3</td></row>
		<row><td>AlwaysInstall</td><td>CapaDatos.dll</td></row>
		<row><td>AlwaysInstall</td><td>CapaDatos.dll1</td></row>
		<row><td>AlwaysInstall</td><td>CapaDatos.dll2</td></row>
		<row><td>AlwaysInstall</td><td>CapaDatos.dll3</td></row>
		<row><td>AlwaysInstall</td><td>CapaDatos.dll4</td></row>
		<row><td>AlwaysInstall</td><td>CapaDatos.dll5</td></row>
		<row><td>AlwaysInstall</td><td>CapaNegocio.dll</td></row>
		<row><td>AlwaysInstall</td><td>CapaNegocio.dll1</td></row>
		<row><td>AlwaysInstall</td><td>CapaNegocio.dll2</td></row>
		<row><td>AlwaysInstall</td><td>CapaNegocio.dll3</td></row>
		<row><td>AlwaysInstall</td><td>CapaNegocio.dll4</td></row>
		<row><td>AlwaysInstall</td><td>CapaNegocio.dll5</td></row>
		<row><td>AlwaysInstall</td><td>CapaPresentacion.dll</td></row>
		<row><td>AlwaysInstall</td><td>CapaPresentacion.dll1</td></row>
		<row><td>AlwaysInstall</td><td>CapaPresentacion.dll2</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.AspNet.dll</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.AspNet.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.AspNet.dll2</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.Core.dll</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.Core.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.Core.dll2</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OAuth.Consumer.dll</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OAuth.Consumer.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OAuth.Consumer.dll2</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OAuth.dll</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OAuth.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OAuth.dll2</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll2</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OpenId.dll</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OpenId.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DotNetOpenAuth.OpenId.dll2</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.PowerShell.Utility.dll</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.PowerShell.dll</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.dll</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.dll1</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.dll2</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.dll3</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.resources.dll</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.resources.dll1</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.resources.dll2</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.resources.dll3</td></row>
		<row><td>AlwaysInstall</td><td>EntityFramework.resources.dll4</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT1</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT100</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT101</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT102</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT103</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT104</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT105</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT106</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT107</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT108</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT109</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT110</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT111</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT112</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT113</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT114</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT115</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT116</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT117</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT118</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT119</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT12</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT120</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT121</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT122</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT123</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT124</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT125</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT126</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT127</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT128</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT129</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT13</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT130</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT131</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT132</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT133</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT134</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT135</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT136</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT137</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT138</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT139</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT140</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT141</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT142</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT143</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT144</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT145</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT146</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT147</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT148</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT149</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT15</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT150</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT151</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT152</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT153</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT154</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT155</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT156</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT157</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT158</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT159</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT16</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT160</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT161</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT162</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT163</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT164</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT165</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT166</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT17</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT19</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT2</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT21</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT22</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT23</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT25</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT26</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT27</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT28</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT29</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT3</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT30</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT31</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT32</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT33</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT34</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT35</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT36</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT37</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT38</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT39</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT40</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT41</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT42</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT43</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT44</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT45</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT46</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT47</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT48</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT49</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT5</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT50</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT51</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT52</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT53</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT54</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT55</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT56</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT57</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT58</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT59</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT60</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT61</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT62</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT63</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT64</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT65</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT66</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT67</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT68</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT69</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT70</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT71</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT72</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT73</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT74</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT75</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT76</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT77</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT78</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT79</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT80</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT81</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT82</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT83</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT84</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT85</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT86</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT87</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT88</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT89</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT90</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT91</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT92</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT93</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT94</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT95</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT96</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT97</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT98</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT99</td></row>
		<row><td>AlwaysInstall</td><td>IS_ININSTALL_SHORTCUT</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Membership.OpenAuth.dll</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Membership.OpenAuth.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Membership.OpenAuth.dll2</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Membership.OpenAuth.dll3</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll2</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll3</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll4</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll2</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.ScriptManager.MSAjax.dll</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.ScriptManager.MSAjax.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.ScriptManager.MSAjax.dll2</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.ScriptManager.WebForms.dll</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.ScriptManager.WebForms.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.ScriptManager.WebForms.dll2</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.Web.Infrastructure.dll</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.Web.Infrastructure.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.Web.Infrastructure.dll2</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Optimization.dll</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Optimization.dll1</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Optimization.dll2</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Optimization.resources.dll</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Optimization.resources.dll1</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Optimization.resources.dll2</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Providers.dll</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Providers.dll1</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Providers.dll2</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Providers.resources.dll</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Providers.resources.dll1</td></row>
		<row><td>AlwaysInstall</td><td>System.Web.Providers.resources.dll2</td></row>
		<row><td>AlwaysInstall</td><td>WG.exe</td></row>
		<row><td>AlwaysInstall</td><td>WebGrease.dll</td></row>
		<row><td>AlwaysInstall</td><td>WebGrease.dll1</td></row>
		<row><td>AlwaysInstall</td><td>WebGrease.dll2</td></row>
		<row><td>AlwaysInstall</td><td>_IsIcoRes.Exe</td></row>
		<row><td>AlwaysInstall</td><td>migrate.exe</td></row>
		<row><td>AlwaysInstall</td><td>setup.exe</td></row>
	</table>

	<table name="File">
		<col key="yes" def="s72">File</col>
		<col def="s72">Component_</col>
		<col def="s255">FileName</col>
		<col def="i4">FileSize</col>
		<col def="S72">Version</col>
		<col def="S20">Language</col>
		<col def="I2">Attributes</col>
		<col def="i2">Sequence</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I4">ISAttributes</col>
		<col def="S72">ISComponentSubFolder_</col>
		<row><td>_.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>0.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\0.png</td><td>1</td><td/></row>
		<row><td>_.png1</td><td>ISX_DEFAULTCOMPONENT32</td><td>1.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\1.png</td><td>1</td><td/></row>
		<row><td>_.png2</td><td>ISX_DEFAULTCOMPONENT32</td><td>2.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\2.png</td><td>1</td><td/></row>
		<row><td>_.png3</td><td>ISX_DEFAULTCOMPONENT32</td><td>3.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\3.png</td><td>1</td><td/></row>
		<row><td>_.png4</td><td>ISX_DEFAULTCOMPONENT32</td><td>4.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\4.png</td><td>1</td><td/></row>
		<row><td>_.png5</td><td>ISX_DEFAULTCOMPONENT32</td><td>5.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\5.png</td><td>1</td><td/></row>
		<row><td>_.png6</td><td>ISX_DEFAULTCOMPONENT32</td><td>6.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\6.png</td><td>1</td><td/></row>
		<row><td>_.png7</td><td>ISX_DEFAULTCOMPONENT32</td><td>7.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\7.png</td><td>1</td><td/></row>
		<row><td>_.png8</td><td>ISX_DEFAULTCOMPONENT32</td><td>8.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\8.png</td><td>1</td><td/></row>
		<row><td>_.png9</td><td>ISX_DEFAULTCOMPONENT32</td><td>9.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\9.png</td><td>1</td><td/></row>
		<row><td>_2_30_2015_11_35_43.txt</td><td>ISX_DEFAULTCOMPONENT50</td><td>12-30-~1.TXT|12-30-2015 11-35-43.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\LogFiles\12-30-2015 11-35-43.txt</td><td>1</td><td/></row>
		<row><td>_2_30_2015_11_36_03.htm</td><td>ISX_DEFAULTCOMPONENT51</td><td>12-30-~1.HTM|12-30-2015 11-36-03.htm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\Reports\12-30-2015 11-36-03.htm</td><td>1</td><td/></row>
		<row><td>_isconfig.xml</td><td>ISX_DEFAULTCOMPONENT42</td><td>_ISCON~1.XML|_isconfig.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\_isconfig.xml</td><td>1</td><td/></row>
		<row><td>_isicores.exe</td><td>_IsIcoRes.Exe</td><td>_ISICO~1.EXE|_IsIcoRes.Exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\Interm\_IsIcoRes.Exe</td><td>1</td><td/></row>
		<row><td>_references.js</td><td>ISX_DEFAULTCOMPONENT37</td><td>_REFER~1.JS|_references.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\_references.js</td><td>1</td><td/></row>
		<row><td>_x0409.ini</td><td>ISX_DEFAULTCOMPONENT46</td><td>0x0409.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\0x0409.ini</td><td>1</td><td/></row>
		<row><td>about.aspx</td><td>ISX_DEFAULTCOMPONENT18</td><td>ABOUT~1.ASP|About.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\About.aspx</td><td>1</td><td/></row>
		<row><td>about.aspx.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>ABOUTA~1.CS|About.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\About.aspx.cs</td><td>1</td><td/></row>
		<row><td>about.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>ABOUTA~1.CS|About.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\About.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>about_entityframework.help.t</td><td>ISX_DEFAULTCOMPONENT88</td><td>ABOUT_~1.TXT|about_EntityFramework.help.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\about_EntityFramework.help.txt</td><td>1</td><td/></row>
		<row><td>accent.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>accent.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\accent.png</td><td>1</td><td/></row>
		<row><td>actividades.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>ACTIVI~1.GIF|actividades.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\actividades.gif</td><td>1</td><td/></row>
		<row><td>actualizar.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ACTUAL~1.JPG|actualizar.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\actualizar.jpg</td><td>1</td><td/></row>
		<row><td>addcliente.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ADDCLI~1.JPG|addcliente.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\addcliente.jpg</td><td>1</td><td/></row>
		<row><td>administrar.master</td><td>ISX_DEFAULTCOMPONENT20</td><td>ADMINI~1.MAS|Administrar.Master</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Administrar.Master</td><td>1</td><td/></row>
		<row><td>administrar.master.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>ADMINI~1.CS|Administrar.Master.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Administrar.Master.cs</td><td>1</td><td/></row>
		<row><td>administrar.master.designer.</td><td>ISX_DEFAULTCOMPONENT20</td><td>ADMINI~1.CS|Administrar.Master.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Administrar.Master.designer.cs</td><td>1</td><td/></row>
		<row><td>agrega.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>agrega.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\agrega.png</td><td>1</td><td/></row>
		<row><td>agregar.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>agregar.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\agregar.png</td><td>1</td><td/></row>
		<row><td>agregar_producto.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>AGREGA~1.PNG|agregar_producto.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\agregar_producto.png</td><td>1</td><td/></row>
		<row><td>agregarstockproducto.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>AGREGA~1.ASP|AgregarStockProducto.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\AgregarStockProducto.aspx</td><td>1</td><td/></row>
		<row><td>agregarstockproducto.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>AGREGA~1.CS|AgregarStockProducto.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\AgregarStockProducto.aspx.cs</td><td>1</td><td/></row>
		<row><td>agregarstockproducto.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>AGREGA~1.CS|AgregarStockProducto.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\AgregarStockProducto.aspx.cs</td><td>1</td><td/></row>
		<row><td>agregarstockproducto.aspx.de</td><td>ISX_DEFAULTCOMPONENT20</td><td>AGREGA~1.CS|AgregarStockProducto.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\AgregarStockProducto.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>agregarstockproducto.aspx.de1</td><td>ISX_DEFAULTCOMPONENT40</td><td>AGREGA~1.CS|AgregarStockProducto.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\AgregarStockProducto.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>agregarstockproducto.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>AGREGA~1.ASP|AgregarStockProducto.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\AgregarStockProducto.aspx</td><td>1</td><td/></row>
		<row><td>ajaxloadingbar.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>AJAXLO~1.GIF|ajaxloadingbar.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\ajaxloadingbar.gif</td><td>1</td><td/></row>
		<row><td>almacen.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>almacen.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\almacen.jpg</td><td>1</td><td/></row>
		<row><td>almacen1.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>Almacen1.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\Almacen1.jpg</td><td>1</td><td/></row>
		<row><td>almacen_final.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ALMACE~1.JPG|almacen_final.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\almacen_final.jpg</td><td>1</td><td/></row>
		<row><td>almacenes.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ALMACE~1.JPG|almacenes.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\almacenes.jpg</td><td>1</td><td/></row>
		<row><td>antlr3.runtime.dll</td><td>Antlr3.Runtime.dll</td><td>ANTLR3~1.DLL|Antlr3.Runtime.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\Antlr3.Runtime.dll</td><td>1</td><td/></row>
		<row><td>antlr3.runtime.dll1</td><td>Antlr3.Runtime.dll1</td><td>ANTLR3~1.DLL|Antlr3.Runtime.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\Antlr3.Runtime.dll</td><td>1</td><td/></row>
		<row><td>antlr3.runtime.dll2</td><td>Antlr3.Runtime.dll2</td><td>ANTLR3~1.DLL|Antlr3.Runtime.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\WebGrease.1.1.0\lib\Antlr3.Runtime.dll</td><td>1</td><td/></row>
		<row><td>app.config.transform</td><td>ISX_DEFAULTCOMPONENT82</td><td>APPCON~1.TRA|App.config.transform</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\Content\App.config.transform</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.</td><td>AspNet.ScriptManager.jQuery.dll</td><td>ASPNET~1.DLL|AspNet.ScriptManager.jQuery.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\AspNet.ScriptManager.jQuery.dll</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.1</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>ASPNET~1.DLL|AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.2</td><td>AspNet.ScriptManager.jQuery.dll1</td><td>ASPNET~1.DLL|AspNet.ScriptManager.jQuery.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\AspNet.ScriptManager.jQuery.dll</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.3</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll1</td><td>ASPNET~1.DLL|AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.4</td><td>ISX_DEFAULTCOMPONENT55</td><td>ASPNET~1.NUP|AspNet.ScriptManager.jQuery.1.7.1.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\AspNet.ScriptManager.jQuery.1.7.1\AspNet.ScriptManager.jQuery.1.7.1.nupkg</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.5</td><td>AspNet.ScriptManager.jQuery.dll2</td><td>ASPNET~1.DLL|AspNet.ScriptManager.jQuery.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\AspNet.ScriptManager.jQuery.1.7.1\lib\net40\AspNet.ScriptManager.jQuery.dll</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.6</td><td>AspNet.ScriptManager.jQuery.dll3</td><td>ASPNET~1.DLL|AspNet.ScriptManager.jQuery.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\AspNet.ScriptManager.jQuery.1.7.1\lib\net45\AspNet.ScriptManager.jQuery.dll</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.7</td><td>ISX_DEFAULTCOMPONENT59</td><td>ASPNET~1.NUP|AspNet.ScriptManager.jQuery.UI.Combined.1.8.20.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\AspNet.ScriptManager.jQuery.UI.Combined.1.8.20\AspNet.ScriptManager.jQuery.UI.Combined.1.8.20.nupkg</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.8</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll2</td><td>ASPNET~1.DLL|AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\AspNet.ScriptManager.jQuery.UI.Combined.1.8.20\lib\net40\AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>1</td><td/></row>
		<row><td>aspnet.scriptmanager.jquery.9</td><td>AspNet.ScriptManager.jQuery.UI.Combined.dll3</td><td>ASPNET~1.DLL|AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\AspNet.ScriptManager.jQuery.UI.Combined.1.8.20\lib\net45\AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td>1</td><td/></row>
		<row><td>assemblyinfo.cs</td><td>ISX_DEFAULTCOMPONENT8</td><td>ASSEMB~1.CS|AssemblyInfo.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\Properties\AssemblyInfo.cs</td><td>1</td><td/></row>
		<row><td>assemblyinfo.cs1</td><td>ISX_DEFAULTCOMPONENT17</td><td>ASSEMB~1.CS|AssemblyInfo.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\Properties\AssemblyInfo.cs</td><td>1</td><td/></row>
		<row><td>assemblyinfo.cs2</td><td>ISX_DEFAULTCOMPONENT36</td><td>ASSEMB~1.CS|AssemblyInfo.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Properties\AssemblyInfo.cs</td><td>1</td><td/></row>
		<row><td>authconfig.cs</td><td>ISX_DEFAULTCOMPONENT22</td><td>AUTHCO~1.CS|AuthConfig.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\App_Start\AuthConfig.cs</td><td>1</td><td/></row>
		<row><td>backup.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>backup.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\backup.png</td><td>1</td><td/></row>
		<row><td>bg_header2.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>BG_HEA~1.GIF|bg_header2.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\bg_header2.gif</td><td>1</td><td/></row>
		<row><td>bio.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>bio.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\bio.jpg</td><td>1</td><td/></row>
		<row><td>boletas_mov.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>BOLETA~1.JPG|boletas_mov.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\boletas_mov.jpg</td><td>1</td><td/></row>
		<row><td>boletas_movimiento.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>BOLETA~1.PNG|boletas_movimiento.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\boletas_movimiento.png</td><td>1</td><td/></row>
		<row><td>bottom_arrow.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>BOTTOM~1.GIF|bottom_arrow.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\bottom_arrow.gif</td><td>1</td><td/></row>
		<row><td>bullet.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>bullet.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\bullet.png</td><td>1</td><td/></row>
		<row><td>bundle.config</td><td>ISX_DEFAULTCOMPONENT18</td><td>BUNDLE~1.CON|Bundle.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Bundle.config</td><td>1</td><td/></row>
		<row><td>bundleconfig.cs</td><td>ISX_DEFAULTCOMPONENT22</td><td>BUNDLE~1.CS|BundleConfig.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\App_Start\BundleConfig.cs</td><td>1</td><td/></row>
		<row><td>buscar.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>buscar.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\buscar.gif</td><td>1</td><td/></row>
		<row><td>caja.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>Caja.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\Caja.jpg</td><td>1</td><td/></row>
		<row><td>caja1.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>Caja1.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\Caja1.jpg</td><td>1</td><td/></row>
		<row><td>calcular.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>calcular.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\calcular.gif</td><td>1</td><td/></row>
		<row><td>calendario.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>CALEND~1.JPG|calendario.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\calendario.jpg</td><td>1</td><td/></row>
		<row><td>cambios.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>cambios.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\cambios.jpg</td><td>1</td><td/></row>
		<row><td>cancel.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>Cancel.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\Cancel.jpg</td><td>1</td><td/></row>
		<row><td>cancelar.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>cancelar.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\cancelar.gif</td><td>1</td><td/></row>
		<row><td>capadatos.csproj</td><td>ISX_DEFAULTCOMPONENT1</td><td>CAPADA~1.CSP|CapaDatos.csproj</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\CapaDatos.csproj</td><td>1</td><td/></row>
		<row><td>capadatos.csproj.filelistabs</td><td>ISX_DEFAULTCOMPONENT6</td><td>CAPADA~1.TXT|CapaDatos.csproj.FileListAbsolute.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\obj\Debug\CapaDatos.csproj.FileListAbsolute.txt</td><td>1</td><td/></row>
		<row><td>capadatos.csproj.user</td><td>ISX_DEFAULTCOMPONENT1</td><td>CAPADA~1.USE|CapaDatos.csproj.user</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\CapaDatos.csproj.user</td><td>1</td><td/></row>
		<row><td>capadatos.csprojresolveassem</td><td>ISX_DEFAULTCOMPONENT6</td><td>CAPADA~1.CAC|CapaDatos.csprojResolveAssemblyReference.cache</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\obj\Debug\CapaDatos.csprojResolveAssemblyReference.cache</td><td>1</td><td/></row>
		<row><td>capadatos.dll</td><td>CapaDatos.dll</td><td>CAPADA~1.DLL|CapaDatos.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\bin\Debug\CapaDatos.dll</td><td>1</td><td/></row>
		<row><td>capadatos.dll1</td><td>CapaDatos.dll1</td><td>CAPADA~1.DLL|CapaDatos.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\obj\Debug\CapaDatos.dll</td><td>1</td><td/></row>
		<row><td>capadatos.dll2</td><td>CapaDatos.dll2</td><td>CAPADA~1.DLL|CapaDatos.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\bin\Debug\CapaDatos.dll</td><td>1</td><td/></row>
		<row><td>capadatos.dll3</td><td>CapaDatos.dll3</td><td>CAPADA~1.DLL|CapaDatos.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\bin\Release\CapaDatos.dll</td><td>1</td><td/></row>
		<row><td>capadatos.dll4</td><td>CapaDatos.dll4</td><td>CAPADA~1.DLL|CapaDatos.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\CapaDatos.dll</td><td>1</td><td/></row>
		<row><td>capadatos.dll5</td><td>CapaDatos.dll5</td><td>CAPADA~1.DLL|CapaDatos.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\CapaDatos.dll</td><td>1</td><td/></row>
		<row><td>capadatos.pdb</td><td>ISX_DEFAULTCOMPONENT3</td><td>CAPADA~1.PDB|CapaDatos.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\bin\Debug\CapaDatos.pdb</td><td>1</td><td/></row>
		<row><td>capadatos.pdb1</td><td>ISX_DEFAULTCOMPONENT6</td><td>CAPADA~1.PDB|CapaDatos.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\obj\Debug\CapaDatos.pdb</td><td>1</td><td/></row>
		<row><td>capadatos.pdb2</td><td>ISX_DEFAULTCOMPONENT11</td><td>CAPADA~1.PDB|CapaDatos.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\bin\Debug\CapaDatos.pdb</td><td>1</td><td/></row>
		<row><td>capadatos.pdb3</td><td>ISX_DEFAULTCOMPONENT12</td><td>CAPADA~1.PDB|CapaDatos.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\bin\Release\CapaDatos.pdb</td><td>1</td><td/></row>
		<row><td>capadatos.pdb4</td><td>ISX_DEFAULTCOMPONENT23</td><td>CAPADA~1.PDB|CapaDatos.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\CapaDatos.pdb</td><td>1</td><td/></row>
		<row><td>capanegocio.csproj</td><td>ISX_DEFAULTCOMPONENT9</td><td>CAPANE~1.CSP|CapaNegocio.csproj</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\CapaNegocio.csproj</td><td>1</td><td/></row>
		<row><td>capanegocio.csproj.filelista</td><td>ISX_DEFAULTCOMPONENT14</td><td>CAPANE~1.TXT|CapaNegocio.csproj.FileListAbsolute.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Debug\CapaNegocio.csproj.FileListAbsolute.txt</td><td>1</td><td/></row>
		<row><td>capanegocio.csproj.filelista1</td><td>ISX_DEFAULTCOMPONENT16</td><td>CAPANE~1.TXT|CapaNegocio.csproj.FileListAbsolute.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Release\CapaNegocio.csproj.FileListAbsolute.txt</td><td>1</td><td/></row>
		<row><td>capanegocio.csprojresolveass</td><td>ISX_DEFAULTCOMPONENT14</td><td>CAPANE~1.CAC|CapaNegocio.csprojResolveAssemblyReference.cache</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Debug\CapaNegocio.csprojResolveAssemblyReference.cache</td><td>1</td><td/></row>
		<row><td>capanegocio.csprojresolveass1</td><td>ISX_DEFAULTCOMPONENT16</td><td>CAPANE~1.CAC|CapaNegocio.csprojResolveAssemblyReference.cache</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Release\CapaNegocio.csprojResolveAssemblyReference.cache</td><td>1</td><td/></row>
		<row><td>capanegocio.dll</td><td>CapaNegocio.dll</td><td>CAPANE~1.DLL|CapaNegocio.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\bin\Debug\CapaNegocio.dll</td><td>1</td><td/></row>
		<row><td>capanegocio.dll1</td><td>CapaNegocio.dll1</td><td>CAPANE~1.DLL|CapaNegocio.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\bin\Release\CapaNegocio.dll</td><td>1</td><td/></row>
		<row><td>capanegocio.dll2</td><td>CapaNegocio.dll2</td><td>CAPANE~1.DLL|CapaNegocio.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Debug\CapaNegocio.dll</td><td>1</td><td/></row>
		<row><td>capanegocio.dll3</td><td>CapaNegocio.dll3</td><td>CAPANE~1.DLL|CapaNegocio.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Release\CapaNegocio.dll</td><td>1</td><td/></row>
		<row><td>capanegocio.dll4</td><td>CapaNegocio.dll4</td><td>CAPANE~1.DLL|CapaNegocio.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\CapaNegocio.dll</td><td>1</td><td/></row>
		<row><td>capanegocio.dll5</td><td>CapaNegocio.dll5</td><td>CAPANE~1.DLL|CapaNegocio.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\CapaNegocio.dll</td><td>1</td><td/></row>
		<row><td>capanegocio.pdb</td><td>ISX_DEFAULTCOMPONENT11</td><td>CAPANE~1.PDB|CapaNegocio.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\bin\Debug\CapaNegocio.pdb</td><td>1</td><td/></row>
		<row><td>capanegocio.pdb1</td><td>ISX_DEFAULTCOMPONENT12</td><td>CAPANE~1.PDB|CapaNegocio.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\bin\Release\CapaNegocio.pdb</td><td>1</td><td/></row>
		<row><td>capanegocio.pdb2</td><td>ISX_DEFAULTCOMPONENT14</td><td>CAPANE~1.PDB|CapaNegocio.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Debug\CapaNegocio.pdb</td><td>1</td><td/></row>
		<row><td>capanegocio.pdb3</td><td>ISX_DEFAULTCOMPONENT16</td><td>CAPANE~1.PDB|CapaNegocio.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Release\CapaNegocio.pdb</td><td>1</td><td/></row>
		<row><td>capanegocio.pdb4</td><td>ISX_DEFAULTCOMPONENT23</td><td>CAPANE~1.PDB|CapaNegocio.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\CapaNegocio.pdb</td><td>1</td><td/></row>
		<row><td>capapresentacion.csproj</td><td>ISX_DEFAULTCOMPONENT18</td><td>CAPAPR~1.CSP|CapaPresentacion.csproj</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\CapaPresentacion.csproj</td><td>1</td><td/></row>
		<row><td>capapresentacion.csproj.file</td><td>ISX_DEFAULTCOMPONENT34</td><td>CAPAPR~1.TXT|CapaPresentacion.csproj.FileListAbsolute.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\obj\Debug\CapaPresentacion.csproj.FileListAbsolute.txt</td><td>1</td><td/></row>
		<row><td>capapresentacion.csproj.user</td><td>ISX_DEFAULTCOMPONENT18</td><td>CAPAPR~1.USE|CapaPresentacion.csproj.user</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\CapaPresentacion.csproj.user</td><td>1</td><td/></row>
		<row><td>capapresentacion.csprojresol</td><td>ISX_DEFAULTCOMPONENT34</td><td>CAPAPR~1.CAC|CapaPresentacion.csprojResolveAssemblyReference.cache</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\obj\Debug\CapaPresentacion.csprojResolveAssemblyReference.cache</td><td>1</td><td/></row>
		<row><td>capapresentacion.dll</td><td>CapaPresentacion.dll</td><td>CAPAPR~1.DLL|CapaPresentacion.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\CapaPresentacion.dll</td><td>1</td><td/></row>
		<row><td>capapresentacion.dll1</td><td>CapaPresentacion.dll1</td><td>CAPAPR~1.DLL|CapaPresentacion.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\obj\Debug\CapaPresentacion.dll</td><td>1</td><td/></row>
		<row><td>capapresentacion.dll2</td><td>CapaPresentacion.dll2</td><td>CAPAPR~1.DLL|CapaPresentacion.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\CapaPresentacion.dll</td><td>1</td><td/></row>
		<row><td>capapresentacion.pdb</td><td>ISX_DEFAULTCOMPONENT23</td><td>CAPAPR~1.PDB|CapaPresentacion.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\CapaPresentacion.pdb</td><td>1</td><td/></row>
		<row><td>capapresentacion.pdb1</td><td>ISX_DEFAULTCOMPONENT34</td><td>CAPAPR~1.PDB|CapaPresentacion.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\obj\Debug\CapaPresentacion.pdb</td><td>1</td><td/></row>
		<row><td>cart.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>cart.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\cart.jpg</td><td>1</td><td/></row>
		<row><td>casa.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>casa.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\casa.png</td><td>1</td><td/></row>
		<row><td>casa1.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>casa1.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\casa1.png</td><td>1</td><td/></row>
		<row><td>casa2.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>casa2.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\casa2.jpg</td><td>1</td><td/></row>
		<row><td>categorias.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>CATEGO~1.PNG|categorias.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\categorias.png</td><td>1</td><td/></row>
		<row><td>cerrar.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>cerrar.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\cerrar.gif</td><td>1</td><td/></row>
		<row><td>check.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>check.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\check.png</td><td>1</td><td/></row>
		<row><td>clientes.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>CLIENT~1.ASP|Clientes.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Clientes.aspx</td><td>1</td><td/></row>
		<row><td>clientes.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>CLIENT~1.CS|Clientes.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Clientes.aspx.cs</td><td>1</td><td/></row>
		<row><td>clientes.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>CLIENT~1.CS|Clientes.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Clientes.aspx.cs</td><td>1</td><td/></row>
		<row><td>clientes.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>CLIENT~1.CS|Clientes.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Clientes.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>clientes.aspx.designer.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>CLIENT~1.CS|Clientes.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Clientes.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>clientes.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>CLIENT~1.ASP|Clientes.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Clientes.aspx</td><td>1</td><td/></row>
		<row><td>clientes.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>clientes.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\clientes.jpg</td><td>1</td><td/></row>
		<row><td>clientes.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>clientes.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\clientes.png</td><td>1</td><td/></row>
		<row><td>clientestodos.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>CLIENT~1.ASP|ClientesTodos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ClientesTodos.aspx</td><td>1</td><td/></row>
		<row><td>clientestodos.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>CLIENT~1.CS|ClientesTodos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ClientesTodos.aspx.cs</td><td>1</td><td/></row>
		<row><td>clientestodos.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>CLIENT~1.CS|ClientesTodos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\ClientesTodos.aspx.cs</td><td>1</td><td/></row>
		<row><td>clientestodos.aspx.designer.</td><td>ISX_DEFAULTCOMPONENT20</td><td>CLIENT~1.CS|ClientesTodos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ClientesTodos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>clientestodos.aspx.designer.1</td><td>ISX_DEFAULTCOMPONENT40</td><td>CLIENT~1.CS|ClientesTodos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\ClientesTodos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>clientestodos.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>CLIENT~1.ASP|ClientesTodos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\ClientesTodos.aspx</td><td>1</td><td/></row>
		<row><td>close.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>Close.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\Close.jpg</td><td>1</td><td/></row>
		<row><td>cobrando.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>cobrando.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\cobrando.png</td><td>1</td><td/></row>
		<row><td>cobros.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>cobros.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\cobros.jpg</td><td>1</td><td/></row>
		<row><td>common.ps1</td><td>ISX_DEFAULTCOMPONENT98</td><td>common.ps1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.1.7.1.1\Tools\common.ps1</td><td>1</td><td/></row>
		<row><td>comparar.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>comparar.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\comparar.png</td><td>1</td><td/></row>
		<row><td>compras.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>compras.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\compras.jpg</td><td>1</td><td/></row>
		<row><td>compras1.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>compras1.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\compras1.jpg</td><td>1</td><td/></row>
		<row><td>compras2.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>compras2.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\compras2.jpg</td><td>1</td><td/></row>
		<row><td>conductor.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>CONDUC~1.JPG|conductor.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\conductor.jpg</td><td>1</td><td/></row>
		<row><td>consolidado.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>CONSOL~1.PNG|consolidado.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\consolidado.png</td><td>1</td><td/></row>
		<row><td>conta.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>conta.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\conta.png</td><td>1</td><td/></row>
		<row><td>contab.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>contab.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\contab.png</td><td>1</td><td/></row>
		<row><td>contact.aspx</td><td>ISX_DEFAULTCOMPONENT18</td><td>CONTAC~1.ASP|Contact.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Contact.aspx</td><td>1</td><td/></row>
		<row><td>contact.aspx.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>CONTAC~1.CS|Contact.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Contact.aspx.cs</td><td>1</td><td/></row>
		<row><td>contact.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>CONTAC~1.CS|Contact.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Contact.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>contrasena.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>CONTRA~1.GIF|CONTRASEnA.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\CONTRASEnA.gif</td><td>1</td><td/></row>
		<row><td>dclientes.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DCLIEN~1.CS|DClientes.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DClientes.cs</td><td>1</td><td/></row>
		<row><td>dcompras.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DCompras.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DCompras.cs</td><td>1</td><td/></row>
		<row><td>dconexion.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DCONEX~1.CS|DConexion.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DConexion.cs</td><td>1</td><td/></row>
		<row><td>ddetallecompra.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DDETAL~1.CS|DDetalleCompra.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DDetalleCompra.cs</td><td>1</td><td/></row>
		<row><td>ddetalleventa.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DDETAL~1.CS|DDetalleVenta.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DDetalleVenta.cs</td><td>1</td><td/></row>
		<row><td>default.aspx</td><td>ISX_DEFAULTCOMPONENT18</td><td>DEFAUL~1.ASP|Default.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Default.aspx</td><td>1</td><td/></row>
		<row><td>default.aspx.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>DEFAUL~1.CS|Default.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Default.aspx.cs</td><td>1</td><td/></row>
		<row><td>default.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>DEFAUL~1.CS|Default.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Default.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>delivery.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>delivery.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\delivery.jpg</td><td>1</td><td/></row>
		<row><td>descargar.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>DESCAR~1.PNG|descargar.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\descargar.png</td><td>1</td><td/></row>
		<row><td>designtimeresolveassemblyref</td><td>ISX_DEFAULTCOMPONENT6</td><td>DESIGN~1.CAC|DesignTimeResolveAssemblyReferencesInput.cache</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\obj\Debug\DesignTimeResolveAssemblyReferencesInput.cache</td><td>1</td><td/></row>
		<row><td>designtimeresolveassemblyref1</td><td>ISX_DEFAULTCOMPONENT14</td><td>DESIGN~1.CAC|DesignTimeResolveAssemblyReferencesInput.cache</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Debug\DesignTimeResolveAssemblyReferencesInput.cache</td><td>1</td><td/></row>
		<row><td>designtimeresolveassemblyref2</td><td>ISX_DEFAULTCOMPONENT16</td><td>DESIGN~1.CAC|DesignTimeResolveAssemblyReferencesInput.cache</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Release\DesignTimeResolveAssemblyReferencesInput.cache</td><td>1</td><td/></row>
		<row><td>designtimeresolveassemblyref3</td><td>ISX_DEFAULTCOMPONENT34</td><td>DESIGN~1.CAC|DesignTimeResolveAssemblyReferencesInput.cache</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\obj\Debug\DesignTimeResolveAssemblyReferencesInput.cache</td><td>1</td><td/></row>
		<row><td>detailsview.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>DETAIL~1.JS|DetailsView.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\DetailsView.js</td><td>1</td><td/></row>
		<row><td>detailsview.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>DETAIL~1.JS|DetailsView.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\DetailsView.js</td><td>1</td><td/></row>
		<row><td>detalleventa.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>DETALL~1.CS|DetalleVenta.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\DetalleVenta.cs</td><td>1</td><td/></row>
		<row><td>dos.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>dos.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\dos.jpg</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.aspnet.4.0.3.</td><td>ISX_DEFAULTCOMPONENT63</td><td>DOTNET~1.NUP|DotNetOpenAuth.AspNet.4.0.3.12153.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.AspNet.4.0.3.12153\DotNetOpenAuth.AspNet.4.0.3.12153.nupkg</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.aspnet.dll</td><td>DotNetOpenAuth.AspNet.dll</td><td>DOTNET~1.DLL|DotNetOpenAuth.AspNet.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.AspNet.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.aspnet.dll1</td><td>DotNetOpenAuth.AspNet.dll1</td><td>DOTNET~1.DLL|DotNetOpenAuth.AspNet.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\DotNetOpenAuth.AspNet.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.aspnet.dll2</td><td>DotNetOpenAuth.AspNet.dll2</td><td>DOTNET~1.DLL|DotNetOpenAuth.AspNet.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.AspNet.4.0.3.12153\lib\net40-full\DotNetOpenAuth.AspNet.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.aspnet.xml</td><td>ISX_DEFAULTCOMPONENT23</td><td>DOTNET~1.XML|DotNetOpenAuth.AspNet.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.AspNet.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.aspnet.xml1</td><td>ISX_DEFAULTCOMPONENT65</td><td>DOTNET~1.XML|DotNetOpenAuth.AspNet.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.AspNet.4.0.3.12153\lib\net40-full\DotNetOpenAuth.AspNet.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.core.4.0.3.12</td><td>ISX_DEFAULTCOMPONENT66</td><td>DOTNET~1.NUP|DotNetOpenAuth.Core.4.0.3.12153.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.Core.4.0.3.12153\DotNetOpenAuth.Core.4.0.3.12153.nupkg</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.core.dll</td><td>DotNetOpenAuth.Core.dll</td><td>DOTNET~1.DLL|DotNetOpenAuth.Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.Core.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.core.dll1</td><td>DotNetOpenAuth.Core.dll1</td><td>DOTNET~1.DLL|DotNetOpenAuth.Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\DotNetOpenAuth.Core.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.core.dll2</td><td>DotNetOpenAuth.Core.dll2</td><td>DOTNET~1.DLL|DotNetOpenAuth.Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.Core.4.0.3.12153\lib\net40-full\DotNetOpenAuth.Core.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.core.xml</td><td>ISX_DEFAULTCOMPONENT23</td><td>DOTNET~1.XML|DotNetOpenAuth.Core.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.Core.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.core.xml1</td><td>ISX_DEFAULTCOMPONENT68</td><td>DOTNET~1.XML|DotNetOpenAuth.Core.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.Core.4.0.3.12153\lib\net40-full\DotNetOpenAuth.Core.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.consume</td><td>DotNetOpenAuth.OAuth.Consumer.dll</td><td>DOTNET~1.DLL|DotNetOpenAuth.OAuth.Consumer.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.OAuth.Consumer.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.consume1</td><td>ISX_DEFAULTCOMPONENT23</td><td>DOTNET~1.XML|DotNetOpenAuth.OAuth.Consumer.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.OAuth.Consumer.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.consume2</td><td>DotNetOpenAuth.OAuth.Consumer.dll1</td><td>DOTNET~1.DLL|DotNetOpenAuth.OAuth.Consumer.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\DotNetOpenAuth.OAuth.Consumer.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.consume3</td><td>ISX_DEFAULTCOMPONENT69</td><td>DOTNET~1.NUP|DotNetOpenAuth.OAuth.Consumer.4.0.3.12153.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OAuth.Consumer.4.0.3.12153\DotNetOpenAuth.OAuth.Consumer.4.0.3.12153.nupkg</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.consume4</td><td>DotNetOpenAuth.OAuth.Consumer.dll2</td><td>DOTNET~1.DLL|DotNetOpenAuth.OAuth.Consumer.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OAuth.Consumer.4.0.3.12153\lib\net40-full\DotNetOpenAuth.OAuth.Consumer.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.consume5</td><td>ISX_DEFAULTCOMPONENT71</td><td>DOTNET~1.XML|DotNetOpenAuth.OAuth.Consumer.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OAuth.Consumer.4.0.3.12153\lib\net40-full\DotNetOpenAuth.OAuth.Consumer.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.core.4.</td><td>ISX_DEFAULTCOMPONENT72</td><td>DOTNET~1.NUP|DotNetOpenAuth.OAuth.Core.4.0.3.12153.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OAuth.Core.4.0.3.12153\DotNetOpenAuth.OAuth.Core.4.0.3.12153.nupkg</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.dll</td><td>DotNetOpenAuth.OAuth.dll</td><td>DOTNET~1.DLL|DotNetOpenAuth.OAuth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.OAuth.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.dll1</td><td>DotNetOpenAuth.OAuth.dll1</td><td>DOTNET~1.DLL|DotNetOpenAuth.OAuth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\DotNetOpenAuth.OAuth.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.dll2</td><td>DotNetOpenAuth.OAuth.dll2</td><td>DOTNET~1.DLL|DotNetOpenAuth.OAuth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OAuth.Core.4.0.3.12153\lib\net40-full\DotNetOpenAuth.OAuth.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.xml</td><td>ISX_DEFAULTCOMPONENT23</td><td>DOTNET~1.XML|DotNetOpenAuth.OAuth.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.OAuth.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.oauth.xml1</td><td>ISX_DEFAULTCOMPONENT74</td><td>DOTNET~1.XML|DotNetOpenAuth.OAuth.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OAuth.Core.4.0.3.12153\lib\net40-full\DotNetOpenAuth.OAuth.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.core.4</td><td>ISX_DEFAULTCOMPONENT75</td><td>DOTNET~1.NUP|DotNetOpenAuth.OpenId.Core.4.0.3.12153.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OpenId.Core.4.0.3.12153\DotNetOpenAuth.OpenId.Core.4.0.3.12153.nupkg</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.dll</td><td>DotNetOpenAuth.OpenId.dll</td><td>DOTNET~1.DLL|DotNetOpenAuth.OpenId.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.OpenId.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.dll1</td><td>DotNetOpenAuth.OpenId.dll1</td><td>DOTNET~1.DLL|DotNetOpenAuth.OpenId.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\DotNetOpenAuth.OpenId.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.dll2</td><td>DotNetOpenAuth.OpenId.dll2</td><td>DOTNET~1.DLL|DotNetOpenAuth.OpenId.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OpenId.Core.4.0.3.12153\lib\net40-full\DotNetOpenAuth.OpenId.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.relyin</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll</td><td>DOTNET~1.DLL|DotNetOpenAuth.OpenId.RelyingParty.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.OpenId.RelyingParty.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.relyin1</td><td>ISX_DEFAULTCOMPONENT23</td><td>DOTNET~1.XML|DotNetOpenAuth.OpenId.RelyingParty.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.OpenId.RelyingParty.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.relyin2</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll1</td><td>DOTNET~1.DLL|DotNetOpenAuth.OpenId.RelyingParty.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\DotNetOpenAuth.OpenId.RelyingParty.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.relyin3</td><td>ISX_DEFAULTCOMPONENT78</td><td>DOTNET~1.NUP|DotNetOpenAuth.OpenId.RelyingParty.4.0.3.12153.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OpenId.RelyingParty.4.0.3.12153\DotNetOpenAuth.OpenId.RelyingParty.4.0.3.12153.nupkg</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.relyin4</td><td>DotNetOpenAuth.OpenId.RelyingParty.dll2</td><td>DOTNET~1.DLL|DotNetOpenAuth.OpenId.RelyingParty.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OpenId.RelyingParty.4.0.3.12153\lib\net40-full\DotNetOpenAuth.OpenId.RelyingParty.dll</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.relyin5</td><td>ISX_DEFAULTCOMPONENT80</td><td>DOTNET~1.XML|DotNetOpenAuth.OpenId.RelyingParty.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OpenId.RelyingParty.4.0.3.12153\lib\net40-full\DotNetOpenAuth.OpenId.RelyingParty.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.xml</td><td>ISX_DEFAULTCOMPONENT23</td><td>DOTNET~1.XML|DotNetOpenAuth.OpenId.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\DotNetOpenAuth.OpenId.xml</td><td>1</td><td/></row>
		<row><td>dotnetopenauth.openid.xml1</td><td>ISX_DEFAULTCOMPONENT77</td><td>DOTNET~1.XML|DotNetOpenAuth.OpenId.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\DotNetOpenAuth.OpenId.Core.4.0.3.12153\lib\net40-full\DotNetOpenAuth.OpenId.xml</td><td>1</td><td/></row>
		<row><td>dpagos.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DPagos.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DPagos.cs</td><td>1</td><td/></row>
		<row><td>dproductos.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DPRODU~1.CS|DProductos.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DProductos.cs</td><td>1</td><td/></row>
		<row><td>dproveedores.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DPROVE~1.CS|DProveedores.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DProveedores.cs</td><td>1</td><td/></row>
		<row><td>dreportes.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DREPOR~1.CS|DReportes.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DReportes.cs</td><td>1</td><td/></row>
		<row><td>dservicios.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DSERVI~1.CS|DServicios.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DServicios.cs</td><td>1</td><td/></row>
		<row><td>dusuarios.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DUSUAR~1.CS|DUsuarios.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DUsuarios.cs</td><td>1</td><td/></row>
		<row><td>dventas.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DVentas.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DVentas.cs</td><td>1</td><td/></row>
		<row><td>dventaservicio.cs</td><td>ISX_DEFAULTCOMPONENT1</td><td>DVENTA~1.CS|DVentaServicio.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\DVentaServicio.cs</td><td>1</td><td/></row>
		<row><td>editar.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>editar.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\editar.png</td><td>1</td><td/></row>
		<row><td>editar0.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>editar0.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\editar0.png</td><td>1</td><td/></row>
		<row><td>editar1.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>Editar1.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\Editar1.png</td><td>1</td><td/></row>
		<row><td>elimina.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>elimina.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\elimina.png</td><td>1</td><td/></row>
		<row><td>eliminar.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>eliminar.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\eliminar.gif</td><td>1</td><td/></row>
		<row><td>eliminar.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>eliminar.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\eliminar.jpg</td><td>1</td><td/></row>
		<row><td>eliminar.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>eliminar.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\eliminar.png</td><td>1</td><td/></row>
		<row><td>eliminar1.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ELIMIN~1.JPG|eliminar1.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\eliminar1.jpg</td><td>1</td><td/></row>
		<row><td>email.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>email.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\email.png</td><td>1</td><td/></row>
		<row><td>empleado.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>empleado.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\empleado.png</td><td>1</td><td/></row>
		<row><td>empleados.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>EMPLEA~1.PNG|empleados.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\empleados.png</td><td>1</td><td/></row>
		<row><td>empleadostodos.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>EMPLEA~1.ASP|EmpleadosTodos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\EmpleadosTodos.aspx</td><td>1</td><td/></row>
		<row><td>empleadostodos.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>EMPLEA~1.CS|EmpleadosTodos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\EmpleadosTodos.aspx.cs</td><td>1</td><td/></row>
		<row><td>empleadostodos.aspx.designer</td><td>ISX_DEFAULTCOMPONENT20</td><td>EMPLEA~1.CS|EmpleadosTodos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\EmpleadosTodos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>entityframework.5.0.0.nupkg</td><td>ISX_DEFAULTCOMPONENT81</td><td>ENTITY~1.NUP|EntityFramework.5.0.0.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\EntityFramework.5.0.0.nupkg</td><td>1</td><td/></row>
		<row><td>entityframework.dll</td><td>EntityFramework.dll</td><td>ENTITY~1.DLL|EntityFramework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\EntityFramework.dll</td><td>1</td><td/></row>
		<row><td>entityframework.dll1</td><td>EntityFramework.dll1</td><td>ENTITY~1.DLL|EntityFramework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\EntityFramework.dll</td><td>1</td><td/></row>
		<row><td>entityframework.dll2</td><td>EntityFramework.dll2</td><td>ENTITY~1.DLL|EntityFramework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\lib\net40\EntityFramework.dll</td><td>1</td><td/></row>
		<row><td>entityframework.dll3</td><td>EntityFramework.dll3</td><td>ENTITY~1.DLL|EntityFramework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\lib\net45\EntityFramework.dll</td><td>1</td><td/></row>
		<row><td>entityframework.es.5.0.0.nup</td><td>ISX_DEFAULTCOMPONENT89</td><td>ENTITY~1.NUP|EntityFramework.es.5.0.0.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.es.5.0.0\EntityFramework.es.5.0.0.nupkg</td><td>1</td><td/></row>
		<row><td>entityframework.powershell.d</td><td>EntityFramework.PowerShell.dll</td><td>ENTITY~1.DLL|EntityFramework.PowerShell.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\EntityFramework.PowerShell.dll</td><td>1</td><td/></row>
		<row><td>entityframework.powershell.u</td><td>EntityFramework.PowerShell.Utility.dll</td><td>ENTITY~1.DLL|EntityFramework.PowerShell.Utility.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\EntityFramework.PowerShell.Utility.dll</td><td>1</td><td/></row>
		<row><td>entityframework.ps3.psd1</td><td>ISX_DEFAULTCOMPONENT88</td><td>ENTITY~1.PSD|EntityFramework.PS3.psd1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\EntityFramework.PS3.psd1</td><td>1</td><td/></row>
		<row><td>entityframework.psd1</td><td>ISX_DEFAULTCOMPONENT88</td><td>ENTITY~1.PSD|EntityFramework.psd1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\EntityFramework.psd1</td><td>1</td><td/></row>
		<row><td>entityframework.psm1</td><td>ISX_DEFAULTCOMPONENT88</td><td>ENTITY~1.PSM|EntityFramework.psm1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\EntityFramework.psm1</td><td>1</td><td/></row>
		<row><td>entityframework.resources.dl</td><td>EntityFramework.resources.dll</td><td>ENTITY~1.DLL|EntityFramework.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\es\EntityFramework.resources.dll</td><td>1</td><td/></row>
		<row><td>entityframework.resources.dl1</td><td>EntityFramework.resources.dll1</td><td>ENTITY~1.DLL|EntityFramework.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\lib\net40\es\EntityFramework.resources.dll</td><td>1</td><td/></row>
		<row><td>entityframework.resources.dl2</td><td>EntityFramework.resources.dll2</td><td>ENTITY~1.DLL|EntityFramework.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\lib\net45\es\EntityFramework.resources.dll</td><td>1</td><td/></row>
		<row><td>entityframework.resources.dl3</td><td>EntityFramework.resources.dll3</td><td>ENTITY~1.DLL|EntityFramework.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.es.5.0.0\lib\net40\es\EntityFramework.resources.dll</td><td>1</td><td/></row>
		<row><td>entityframework.resources.dl4</td><td>EntityFramework.resources.dll4</td><td>ENTITY~1.DLL|EntityFramework.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.es.5.0.0\lib\net45\es\EntityFramework.resources.dll</td><td>1</td><td/></row>
		<row><td>entityframework.xml</td><td>ISX_DEFAULTCOMPONENT23</td><td>ENTITY~1.XML|EntityFramework.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\EntityFramework.xml</td><td>1</td><td/></row>
		<row><td>entityframework.xml1</td><td>ISX_DEFAULTCOMPONENT84</td><td>ENTITY~1.XML|EntityFramework.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\lib\net40\EntityFramework.xml</td><td>1</td><td/></row>
		<row><td>entityframework.xml2</td><td>ISX_DEFAULTCOMPONENT85</td><td>ENTITY~1.XML|EntityFramework.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\lib\net40\es\EntityFramework.xml</td><td>1</td><td/></row>
		<row><td>entityframework.xml3</td><td>ISX_DEFAULTCOMPONENT86</td><td>ENTITY~1.XML|EntityFramework.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\lib\net45\EntityFramework.xml</td><td>1</td><td/></row>
		<row><td>entityframework.xml4</td><td>ISX_DEFAULTCOMPONENT87</td><td>ENTITY~1.XML|EntityFramework.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\lib\net45\es\EntityFramework.xml</td><td>1</td><td/></row>
		<row><td>entityframework.xml5</td><td>ISX_DEFAULTCOMPONENT92</td><td>ENTITY~1.XML|EntityFramework.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.es.5.0.0\lib\net40\es\EntityFramework.xml</td><td>1</td><td/></row>
		<row><td>entityframework.xml6</td><td>ISX_DEFAULTCOMPONENT94</td><td>ENTITY~1.XML|EntityFramework.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.es.5.0.0\lib\net45\es\EntityFramework.xml</td><td>1</td><td/></row>
		<row><td>entregado.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ENTREG~1.JPG|entregado.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\entregado.jpg</td><td>1</td><td/></row>
		<row><td>error</td><td>ISX_DEFAULTCOMPONENT50</td><td>error</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\LogFiles\error</td><td>1</td><td/></row>
		<row><td>estado_productos.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>ESTADO~1.PNG|estado_productos.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\estado_productos.png</td><td>1</td><td/></row>
		<row><td>excel.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>excel.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\excel.png</td><td>1</td><td/></row>
		<row><td>facturando.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>FACTUR~1.PNG|facturando.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\facturando.png</td><td>1</td><td/></row>
		<row><td>facturar.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>facturar.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\facturar.png</td><td>1</td><td/></row>
		<row><td>favicon.ico</td><td>ISX_DEFAULTCOMPONENT18</td><td>favicon.ico</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\favicon.ico</td><td>1</td><td/></row>
		<row><td>fecha_vencimiento.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>FECHA_~1.JPG|fecha_vencimiento.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\fecha_vencimiento.jpg</td><td>1</td><td/></row>
		<row><td>finanzas_final.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>FINANZ~1.JPG|finanzas_final.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\finanzas_final.jpg</td><td>1</td><td/></row>
		<row><td>focus.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>Focus.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\Focus.js</td><td>1</td><td/></row>
		<row><td>focus.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>Focus.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\Focus.js</td><td>1</td><td/></row>
		<row><td>fondo_visual.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>FONDO-~1.JPG|Fondo-Visual.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\Fondo-Visual.jpg</td><td>1</td><td/></row>
		<row><td>footer_bg.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>FOOTER~1.GIF|footer_bg.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\footer_bg.gif</td><td>1</td><td/></row>
		<row><td>formulacion.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>FORMUL~1.JPG|formulacion.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\formulacion.jpg</td><td>1</td><td/></row>
		<row><td>gastos.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>gastos.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\gastos.jpg</td><td>1</td><td/></row>
		<row><td>global.asax</td><td>ISX_DEFAULTCOMPONENT18</td><td>GLOBAL~1.ASA|Global.asax</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Global.asax</td><td>1</td><td/></row>
		<row><td>global.asax.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>GLOBAL~1.CS|Global.asax.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Global.asax.cs</td><td>1</td><td/></row>
		<row><td>gps.sln</td><td>ISX_DEFAULTCOMPONENT</td><td>GPS.sln</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\GPS.sln</td><td>1</td><td/></row>
		<row><td>gps.sql</td><td>ISX_DEFAULTCOMPONENT</td><td>gps.sql</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\gps.sql</td><td>1</td><td/></row>
		<row><td>gps.v11.suo</td><td>ISX_DEFAULTCOMPONENT</td><td>GPSV11~1.SUO|GPS.v11.suo</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\GPS.v11.suo</td><td>1</td><td/></row>
		<row><td>grabar.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>grabar.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\grabar.gif</td><td>1</td><td/></row>
		<row><td>gridview.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>GridView.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\GridView.js</td><td>1</td><td/></row>
		<row><td>gridview.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>GridView.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\GridView.js</td><td>1</td><td/></row>
		<row><td>guardar.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>guardar.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\guardar.png</td><td>1</td><td/></row>
		<row><td>guardar_peque.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>GUARDA~1.PNG|guardar_peque.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\guardar_peque.png</td><td>1</td><td/></row>
		<row><td>header_bg.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>HEADER~1.GIF|header_bg.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\header_bg.gif</td><td>1</td><td/></row>
		<row><td>header_bg_2.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>HEADER~1.GIF|header_bg_2.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\header_bg_2.gif</td><td>1</td><td/></row>
		<row><td>header_text_bg.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>HEADER~1.GIF|header_text_bg.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\header_text_bg.gif</td><td>1</td><td/></row>
		<row><td>header_text_img_1.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>HEADER~1.GIF|header_text_img_1.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\header_text_img_1.gif</td><td>1</td><td/></row>
		<row><td>header_text_img_2.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>HEADER~1.GIF|header_text_img_2.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\header_text_img_2.gif</td><td>1</td><td/></row>
		<row><td>header_text_img_3.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>HEADER~1.GIF|header_text_img_3.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\header_text_img_3.gif</td><td>1</td><td/></row>
		<row><td>heroaccent.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>HEROAC~1.PNG|heroAccent.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\heroAccent.png</td><td>1</td><td/></row>
		<row><td>imagetomp.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>IMAGET~1.JPG|imageToMP.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\imageToMP.jpg</td><td>1</td><td/></row>
		<row><td>impresora_matricial.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>IMPRES~1.JPG|impresora_matricial.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\impresora_matricial.jpg</td><td>1</td><td/></row>
		<row><td>impresora_mini.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>IMPRES~1.PNG|impresora_mini.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\impresora_mini.png</td><td>1</td><td/></row>
		<row><td>imprimiar.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>IMPRIM~1.GIF|imprimiar.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\imprimiar.gif</td><td>1</td><td/></row>
		<row><td>imprimir3.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>IMPRIM~1.JPG|imprimir3.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\imprimir3.jpg</td><td>1</td><td/></row>
		<row><td>imprimir3_mini.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>IMPRIM~1.JPG|imprimir3_mini.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\imprimir3_mini.jpg</td><td>1</td><td/></row>
		<row><td>index.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>INDEX~1.ASP|Index.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Index.aspx</td><td>1</td><td/></row>
		<row><td>index.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>INDEXA~1.CS|Index.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Index.aspx.cs</td><td>1</td><td/></row>
		<row><td>index.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT25</td><td>INDEXA~1.CS|Index.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Cliente\Index.aspx.cs</td><td>1</td><td/></row>
		<row><td>index.aspx.cs2</td><td>ISX_DEFAULTCOMPONENT40</td><td>INDEXA~1.CS|Index.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Index.aspx.cs</td><td>1</td><td/></row>
		<row><td>index.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>INDEXA~1.CS|Index.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Index.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>index.aspx.designer.cs1</td><td>ISX_DEFAULTCOMPONENT25</td><td>INDEXA~1.CS|Index.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Cliente\Index.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>index.aspx.designer.cs2</td><td>ISX_DEFAULTCOMPONENT40</td><td>INDEXA~1.CS|Index.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Index.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>index.aspx1</td><td>ISX_DEFAULTCOMPONENT25</td><td>INDEX~1.ASP|Index.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Cliente\Index.aspx</td><td>1</td><td/></row>
		<row><td>index.aspx2</td><td>ISX_DEFAULTCOMPONENT40</td><td>INDEX~1.ASP|Index.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Index.aspx</td><td>1</td><td/></row>
		<row><td>ingreasar.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>INGREA~1.GIF|INGREASAR.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\INGREASAR.gif</td><td>1</td><td/></row>
		<row><td>ingresos.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ingresos.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\ingresos.jpg</td><td>1</td><td/></row>
		<row><td>inicio.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>inicio.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\inicio.png</td><td>1</td><td/></row>
		<row><td>inicio1.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>inicio1.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\inicio1.jpg</td><td>1</td><td/></row>
		<row><td>init.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>init.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\init.png</td><td>1</td><td/></row>
		<row><td>init.ps1</td><td>ISX_DEFAULTCOMPONENT88</td><td>init.ps1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\init.ps1</td><td>1</td><td/></row>
		<row><td>instalador.isl</td><td>ISX_DEFAULTCOMPONENT41</td><td>INSTAL~1.ISL|Instalador.isl</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador.isl</td><td>1</td><td/></row>
		<row><td>instalador.isproj</td><td>ISX_DEFAULTCOMPONENT41</td><td>INSTAL~1.ISP|Instalador.isproj</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador.isproj</td><td>1</td><td/></row>
		<row><td>instalador.msi</td><td>ISX_DEFAULTCOMPONENT46</td><td>INSTAL~1.MSI|Instalador.msi</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\Instalador.msi</td><td>1</td><td/></row>
		<row><td>install.ps1</td><td>ISX_DEFAULTCOMPONENT88</td><td>install.ps1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\install.ps1</td><td>1</td><td/></row>
		<row><td>install.ps11</td><td>ISX_DEFAULTCOMPONENT98</td><td>install.ps1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.1.7.1.1\Tools\install.ps1</td><td>1</td><td/></row>
		<row><td>install.ps12</td><td>ISX_DEFAULTCOMPONENT130</td><td>Install.ps1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Providers.LocalDB.1.1\tools\Install.ps1</td><td>1</td><td/></row>
		<row><td>install.ps13</td><td>ISX_DEFAULTCOMPONENT159</td><td>Install.ps1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.Web.Infrastructure.1.0.0.0\tools\Install.ps1</td><td>1</td><td/></row>
		<row><td>insumos.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>insumos.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\insumos.jpg</td><td>1</td><td/></row>
		<row><td>inventario.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>INVENT~1.JPG|inventario.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\inventario.jpg</td><td>1</td><td/></row>
		<row><td>jquery.1.7.1.1.nupkg</td><td>ISX_DEFAULTCOMPONENT95</td><td>JQUERY~1.NUP|jQuery.1.7.1.1.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.1.7.1.1\jQuery.1.7.1.1.nupkg</td><td>1</td><td/></row>
		<row><td>jquery.ui.accordion.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.accordion.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.accordion.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.accordion.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.accordion.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.accordion.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.accordion.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.accordion.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.accordion.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.accordion.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.accordion.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.accordion.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.all.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.all.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.all.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.all.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.all.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.all.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.autocomplete.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.autocomplete.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.autocomplete.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.autocomplete.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.autocomplete.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.autocomplete.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.autocomplete.min.c</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.autocomplete.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.autocomplete.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.autocomplete.min.c1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.autocomplete.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.autocomplete.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.base.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.base.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.base.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.base.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.base.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.base.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.button.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.button.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.button.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.button.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.button.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.button.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.button.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.button.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.button.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.button.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.button.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.button.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.combined.1.8.20.1.</td><td>ISX_DEFAULTCOMPONENT99</td><td>JQUERY~1.NUP|jQuery.UI.Combined.1.8.20.1.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\jQuery.UI.Combined.1.8.20.1.nupkg</td><td>1</td><td/></row>
		<row><td>jquery.ui.core.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.core.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.core.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.core.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.core.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.core.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.core.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.core.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.core.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.core.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.core.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.core.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.datepicker.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.datepicker.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.datepicker.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.datepicker.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.datepicker.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.datepicker.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.datepicker.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.datepicker.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.datepicker.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.datepicker.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.datepicker.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.datepicker.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.dialog.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.dialog.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.dialog.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.dialog.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.dialog.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.dialog.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.dialog.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.dialog.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.dialog.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.dialog.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.dialog.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.dialog.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.progressbar.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.progressbar.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.progressbar.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.progressbar.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.progressbar.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.progressbar.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.progressbar.min.cs</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.progressbar.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.progressbar.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.progressbar.min.cs1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.progressbar.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.progressbar.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.resizable.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.resizable.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.resizable.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.resizable.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.resizable.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.resizable.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.resizable.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.resizable.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.resizable.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.resizable.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.resizable.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.resizable.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.selectable.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.selectable.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.selectable.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.selectable.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.selectable.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.selectable.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.selectable.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.selectable.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.selectable.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.selectable.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.selectable.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.selectable.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.slider.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.slider.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.slider.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.slider.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.slider.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.slider.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.slider.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.slider.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.slider.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.slider.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.slider.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.slider.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.tabs.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.tabs.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.tabs.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.tabs.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.tabs.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.tabs.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.tabs.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.tabs.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.tabs.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.tabs.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.tabs.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.tabs.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.theme.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery.ui.theme.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery.ui.theme.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.theme.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery.ui.theme.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery.ui.theme.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.theme.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery.ui.theme.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery.ui.theme.min.css</td><td>1</td><td/></row>
		<row><td>jquery.ui.theme.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery.ui.theme.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery.ui.theme.min.css</td><td>1</td><td/></row>
		<row><td>jquery_1.7.1.intellisense.js</td><td>ISX_DEFAULTCOMPONENT37</td><td>JQUERY~1.JS|jquery-1.7.1.intellisense.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\jquery-1.7.1.intellisense.js</td><td>1</td><td/></row>
		<row><td>jquery_1.7.1.intellisense.js1</td><td>ISX_DEFAULTCOMPONENT98</td><td>JQUERY~1.JS|jquery-1.7.1.intellisense.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.1.7.1.1\Tools\jquery-1.7.1.intellisense.js</td><td>1</td><td/></row>
		<row><td>jquery_1.7.1.js</td><td>ISX_DEFAULTCOMPONENT37</td><td>JQUERY~1.JS|jquery-1.7.1.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\jquery-1.7.1.js</td><td>1</td><td/></row>
		<row><td>jquery_1.7.1.js1</td><td>ISX_DEFAULTCOMPONENT97</td><td>JQUERY~1.JS|jquery-1.7.1.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.1.7.1.1\Content\Scripts\jquery-1.7.1.js</td><td>1</td><td/></row>
		<row><td>jquery_1.7.1.min.js</td><td>ISX_DEFAULTCOMPONENT37</td><td>JQUERY~1.JS|jquery-1.7.1.min.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\jquery-1.7.1.min.js</td><td>1</td><td/></row>
		<row><td>jquery_1.7.1.min.js1</td><td>ISX_DEFAULTCOMPONENT97</td><td>JQUERY~1.JS|jquery-1.7.1.min.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.1.7.1.1\Content\Scripts\jquery-1.7.1.min.js</td><td>1</td><td/></row>
		<row><td>jquery_1.7.1_vsdoc.js</td><td>ISX_DEFAULTCOMPONENT97</td><td>JQUERY~1.JS|jquery-1.7.1-vsdoc.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.1.7.1.1\Content\Scripts\jquery-1.7.1-vsdoc.js</td><td>1</td><td/></row>
		<row><td>jquery_ui.css</td><td>ISX_DEFAULTCOMPONENT28</td><td>JQUERY~1.CSS|jquery-ui.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\jquery-ui.css</td><td>1</td><td/></row>
		<row><td>jquery_ui.css1</td><td>ISX_DEFAULTCOMPONENT103</td><td>JQUERY~1.CSS|jquery-ui.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\jquery-ui.css</td><td>1</td><td/></row>
		<row><td>jquery_ui.min.css</td><td>ISX_DEFAULTCOMPONENT30</td><td>JQUERY~1.CSS|jquery-ui.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\jquery-ui.min.css</td><td>1</td><td/></row>
		<row><td>jquery_ui.min.css1</td><td>ISX_DEFAULTCOMPONENT105</td><td>JQUERY~1.CSS|jquery-ui.min.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\jquery-ui.min.css</td><td>1</td><td/></row>
		<row><td>jquery_ui_1.8.20.js</td><td>ISX_DEFAULTCOMPONENT37</td><td>JQUERY~1.JS|jquery-ui-1.8.20.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\jquery-ui-1.8.20.js</td><td>1</td><td/></row>
		<row><td>jquery_ui_1.8.20.js1</td><td>ISX_DEFAULTCOMPONENT107</td><td>JQUERY~1.JS|jquery-ui-1.8.20.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Scripts\jquery-ui-1.8.20.js</td><td>1</td><td/></row>
		<row><td>jquery_ui_1.8.20.min.js</td><td>ISX_DEFAULTCOMPONENT37</td><td>JQUERY~1.JS|jquery-ui-1.8.20.min.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\jquery-ui-1.8.20.min.js</td><td>1</td><td/></row>
		<row><td>jquery_ui_1.8.20.min.js1</td><td>ISX_DEFAULTCOMPONENT107</td><td>JQUERY~1.JS|jquery-ui-1.8.20.min.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Scripts\jquery-ui-1.8.20.min.js</td><td>1</td><td/></row>
		<row><td>launch_project.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>LAUNCH~1.GIF|launch_project.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\launch_project.gif</td><td>1</td><td/></row>
		<row><td>lector.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>lector.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\lector.jpg</td><td>1</td><td/></row>
		<row><td>lector_mini.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>LECTOR~1.JPG|lector_mini.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\lector_mini.jpg</td><td>1</td><td/></row>
		<row><td>letras.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>letras.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\letras.jpg</td><td>1</td><td/></row>
		<row><td>letras_credito.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>LETRAS~1.PNG|letras_credito.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\letras_credito.png</td><td>1</td><td/></row>
		<row><td>lista_servicios_pendientes.p</td><td>ISX_DEFAULTCOMPONENT32</td><td>LISTA_~1.PNG|lista_servicios_pendientes.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\lista_servicios_pendientes.png</td><td>1</td><td/></row>
		<row><td>listar.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>listar.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\listar.jpg</td><td>1</td><td/></row>
		<row><td>login.aspx</td><td>ISX_DEFAULTCOMPONENT19</td><td>LOGIN~1.ASP|Login.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Login.aspx</td><td>1</td><td/></row>
		<row><td>login.aspx.cs</td><td>ISX_DEFAULTCOMPONENT19</td><td>LOGINA~1.CS|Login.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Login.aspx.cs</td><td>1</td><td/></row>
		<row><td>login.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT19</td><td>LOGINA~1.CS|Login.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Login.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>logo.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>logo.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\logo.gif</td><td>1</td><td/></row>
		<row><td>logousuario.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>LOGOUS~1.JPG|LogoUsuario.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\LogoUsuario.jpg</td><td>1</td><td/></row>
		<row><td>lupa.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>lupa.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\lupa.jpg</td><td>1</td><td/></row>
		<row><td>marcarentregadopendiente.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>MARCAR~1.JPG|marcarEntregadoPendiente.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\marcarEntregadoPendiente.jpg</td><td>1</td><td/></row>
		<row><td>marketing.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>MARKET~1.JPG|marketing.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\marketing.jpg</td><td>1</td><td/></row>
		<row><td>menu.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>Menu.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\Menu.js</td><td>1</td><td/></row>
		<row><td>menu.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>Menu.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\Menu.js</td><td>1</td><td/></row>
		<row><td>menustandards.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>MENUST~1.JS|MenuStandards.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MenuStandards.js</td><td>1</td><td/></row>
		<row><td>menustandards.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>MENUST~1.JS|MenuStandards.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\MenuStandards.js</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>MICROS~1.DLL|Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\es\Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.1</td><td>Microsoft.AspNet.Membership.OpenAuth.dll</td><td>MICROS~1.DLL|Microsoft.AspNet.Membership.OpenAuth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\Microsoft.AspNet.Membership.OpenAuth.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.10</td><td>ISX_DEFAULTCOMPONENT114</td><td>MICROS~1.NUP|Microsoft.AspNet.Membership.OpenAuth.es.1.0.0.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Membership.OpenAuth.es.1.0.0\Microsoft.AspNet.Membership.OpenAuth.es.1.0.0.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.2</td><td>Microsoft.AspNet.Membership.OpenAuth.dll1</td><td>MICROS~1.DLL|Microsoft.AspNet.Membership.OpenAuth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\Microsoft.AspNet.Membership.OpenAuth.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.3</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll1</td><td>MICROS~1.DLL|Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Membership.OpenAuth.1.0.0\lib\net40\es\Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.4</td><td>Microsoft.AspNet.Membership.OpenAuth.dll2</td><td>MICROS~1.DLL|Microsoft.AspNet.Membership.OpenAuth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Membership.OpenAuth.1.0.0\lib\net40\Microsoft.AspNet.Membership.OpenAuth.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.5</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll2</td><td>MICROS~1.DLL|Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Membership.OpenAuth.1.0.0\lib\net45\es\Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.6</td><td>Microsoft.AspNet.Membership.OpenAuth.dll3</td><td>MICROS~1.DLL|Microsoft.AspNet.Membership.OpenAuth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Membership.OpenAuth.1.0.0\lib\net45\Microsoft.AspNet.Membership.OpenAuth.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.7</td><td>ISX_DEFAULTCOMPONENT108</td><td>MICROS~1.NUP|Microsoft.AspNet.Membership.OpenAuth.1.0.0.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Membership.OpenAuth.1.0.0\Microsoft.AspNet.Membership.OpenAuth.1.0.0.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.8</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll3</td><td>MICROS~1.DLL|Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Membership.OpenAuth.es.1.0.0\lib\net40\es\Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.membership.9</td><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll4</td><td>MICROS~1.DLL|Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Membership.OpenAuth.es.1.0.0\lib\net45\es\Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.providers.c</td><td>ISX_DEFAULTCOMPONENT120</td><td>MICROS~1.NUP|Microsoft.AspNet.Providers.Core.1.1.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Providers.Core.1.1\Microsoft.AspNet.Providers.Core.1.1.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.providers.c1</td><td>ISX_DEFAULTCOMPONENT124</td><td>MICROS~1.NUP|Microsoft.AspNet.Providers.Core.es.1.1.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Providers.Core.es.1.1\Microsoft.AspNet.Providers.Core.es.1.1.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.providers.l</td><td>ISX_DEFAULTCOMPONENT128</td><td>MICROS~1.NUP|Microsoft.AspNet.Providers.LocalDB.1.1.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Providers.LocalDB.1.1\Microsoft.AspNet.Providers.LocalDB.1.1.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.scriptmanag</td><td>ISX_DEFAULTCOMPONENT131</td><td>MICROS~1.NUP|Microsoft.AspNet.ScriptManager.MSAjax.4.5.6.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.scriptmanag1</td><td>ISX_DEFAULTCOMPONENT138</td><td>MICROS~1.NUP|Microsoft.AspNet.ScriptManager.WebForms.4.5.6.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\Microsoft.AspNet.ScriptManager.WebForms.4.5.6.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.web.optimiz</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll</td><td>MICROS~1.DLL|Microsoft.AspNet.Web.Optimization.WebForms.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\Microsoft.AspNet.Web.Optimization.WebForms.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.web.optimiz1</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll1</td><td>MICROS~1.DLL|Microsoft.AspNet.Web.Optimization.WebForms.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\Microsoft.AspNet.Web.Optimization.WebForms.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.web.optimiz2</td><td>ISX_DEFAULTCOMPONENT144</td><td>MICROS~1.NUP|Microsoft.AspNet.Web.Optimization.1.0.0.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Web.Optimization.1.0.0\Microsoft.AspNet.Web.Optimization.1.0.0.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.web.optimiz3</td><td>ISX_DEFAULTCOMPONENT148</td><td>MICROS~1.NUP|Microsoft.AspNet.Web.Optimization.es.1.0.0.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Web.Optimization.es.1.0.0\Microsoft.AspNet.Web.Optimization.es.1.0.0.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.web.optimiz4</td><td>Microsoft.AspNet.Web.Optimization.WebForms.dll2</td><td>MICROS~1.DLL|Microsoft.AspNet.Web.Optimization.WebForms.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Web.Optimization.WebForms.1.0.0\lib\net45\Microsoft.AspNet.Web.Optimization.WebForms.dll</td><td>1</td><td/></row>
		<row><td>microsoft.aspnet.web.optimiz5</td><td>ISX_DEFAULTCOMPONENT152</td><td>MICROS~1.NUP|Microsoft.AspNet.Web.Optimization.WebForms.1.0.0.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Web.Optimization.WebForms.1.0.0\Microsoft.AspNet.Web.Optimization.WebForms.1.0.0.nupkg</td><td>1</td><td/></row>
		<row><td>microsoft.scriptmanager.msaj</td><td>Microsoft.ScriptManager.MSAjax.dll</td><td>MICROS~1.DLL|Microsoft.ScriptManager.MSAjax.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\Microsoft.ScriptManager.MSAjax.dll</td><td>1</td><td/></row>
		<row><td>microsoft.scriptmanager.msaj1</td><td>Microsoft.ScriptManager.MSAjax.dll1</td><td>MICROS~1.DLL|Microsoft.ScriptManager.MSAjax.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\Microsoft.ScriptManager.MSAjax.dll</td><td>1</td><td/></row>
		<row><td>microsoft.scriptmanager.msaj2</td><td>Microsoft.ScriptManager.MSAjax.dll2</td><td>MICROS~1.DLL|Microsoft.ScriptManager.MSAjax.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\lib\net45\Microsoft.ScriptManager.MSAjax.dll</td><td>1</td><td/></row>
		<row><td>microsoft.scriptmanager.webf</td><td>Microsoft.ScriptManager.WebForms.dll</td><td>MICROS~1.DLL|Microsoft.ScriptManager.WebForms.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\Microsoft.ScriptManager.WebForms.dll</td><td>1</td><td/></row>
		<row><td>microsoft.scriptmanager.webf1</td><td>Microsoft.ScriptManager.WebForms.dll1</td><td>MICROS~1.DLL|Microsoft.ScriptManager.WebForms.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\Microsoft.ScriptManager.WebForms.dll</td><td>1</td><td/></row>
		<row><td>microsoft.scriptmanager.webf2</td><td>Microsoft.ScriptManager.WebForms.dll2</td><td>MICROS~1.DLL|Microsoft.ScriptManager.WebForms.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\lib\net45\Microsoft.ScriptManager.WebForms.dll</td><td>1</td><td/></row>
		<row><td>microsoft.web.infrastructure</td><td>Microsoft.Web.Infrastructure.dll</td><td>MICROS~1.DLL|Microsoft.Web.Infrastructure.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\Microsoft.Web.Infrastructure.dll</td><td>1</td><td/></row>
		<row><td>microsoft.web.infrastructure1</td><td>Microsoft.Web.Infrastructure.dll1</td><td>MICROS~1.DLL|Microsoft.Web.Infrastructure.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\Microsoft.Web.Infrastructure.dll</td><td>1</td><td/></row>
		<row><td>microsoft.web.infrastructure2</td><td>Microsoft.Web.Infrastructure.dll2</td><td>MICROS~1.DLL|Microsoft.Web.Infrastructure.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.Web.Infrastructure.1.0.0.0\lib\net40\Microsoft.Web.Infrastructure.dll</td><td>1</td><td/></row>
		<row><td>microsoft.web.infrastructure3</td><td>ISX_DEFAULTCOMPONENT156</td><td>MICROS~1.NUP|Microsoft.Web.Infrastructure.1.0.0.0.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.Web.Infrastructure.1.0.0.0\Microsoft.Web.Infrastructure.1.0.0.0.nupkg</td><td>1</td><td/></row>
		<row><td>microsoftajax.js</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjax.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjax.js</td><td>1</td><td/></row>
		<row><td>microsoftajax.js1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjax.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjax.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxapplicationserv</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxApplicationServices.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxApplicationServices.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxapplicationserv1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxApplicationServices.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxApplicationServices.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxcomponentmodel.</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxComponentModel.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxComponentModel.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxcomponentmodel.1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxComponentModel.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxComponentModel.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxcore.js</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxCore.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxCore.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxcore.js1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxCore.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxCore.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxglobalization.j</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxGlobalization.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxGlobalization.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxglobalization.j1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxGlobalization.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxGlobalization.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxhistory.js</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxHistory.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxHistory.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxhistory.js1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxHistory.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxHistory.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxnetwork.js</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxNetwork.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxNetwork.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxnetwork.js1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxNetwork.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxNetwork.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxserialization.j</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxSerialization.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxSerialization.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxserialization.j1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxSerialization.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxSerialization.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxtimer.js</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxTimer.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxTimer.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxtimer.js1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxTimer.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxTimer.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxwebforms.js</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxWebForms.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxWebForms.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxwebforms.js1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxWebForms.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxWebForms.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxwebservices.js</td><td>ISX_DEFAULTCOMPONENT39</td><td>MICROS~1.JS|MicrosoftAjaxWebServices.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\MSAjax\MicrosoftAjaxWebServices.js</td><td>1</td><td/></row>
		<row><td>microsoftajaxwebservices.js1</td><td>ISX_DEFAULTCOMPONENT135</td><td>MICROS~1.JS|MicrosoftAjaxWebServices.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.MSAjax.4.5.6\content\Scripts\WebForms\MSAjax\MicrosoftAjaxWebServices.js</td><td>1</td><td/></row>
		<row><td>migrate.exe</td><td>migrate.exe</td><td>migrate.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\migrate.exe</td><td>1</td><td/></row>
		<row><td>modernizr.2.5.3.nupkg</td><td>ISX_DEFAULTCOMPONENT160</td><td>MODERN~1.NUP|Modernizr.2.5.3.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Modernizr.2.5.3\Modernizr.2.5.3.nupkg</td><td>1</td><td/></row>
		<row><td>modernizr_2.5.3.js</td><td>ISX_DEFAULTCOMPONENT37</td><td>MODERN~1.JS|modernizr-2.5.3.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\modernizr-2.5.3.js</td><td>1</td><td/></row>
		<row><td>modernizr_2.5.3.js1</td><td>ISX_DEFAULTCOMPONENT162</td><td>MODERN~1.JS|modernizr-2.5.3.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Modernizr.2.5.3\Content\Scripts\modernizr-2.5.3.js</td><td>1</td><td/></row>
		<row><td>modificar.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>MODIFI~1.GIF|modificar.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\modificar.gif</td><td>1</td><td/></row>
		<row><td>mostrar.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>mostrar.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\mostrar.png</td><td>1</td><td/></row>
		<row><td>motivos.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>motivos.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\motivos.jpg</td><td>1</td><td/></row>
		<row><td>ncliente.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NCliente.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NCliente.cs</td><td>1</td><td/></row>
		<row><td>ncompras.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NCompras.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NCompras.cs</td><td>1</td><td/></row>
		<row><td>nconexion.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NCONEX~1.CS|NConexion.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NConexion.cs</td><td>1</td><td/></row>
		<row><td>ndetallecompra.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NDETAL~1.CS|NDetalleCompra.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NDetalleCompra.cs</td><td>1</td><td/></row>
		<row><td>ndetalleventa.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NDETAL~1.CS|NDetalleVenta.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NDetalleVenta.cs</td><td>1</td><td/></row>
		<row><td>new.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>new.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\new.jpg</td><td>1</td><td/></row>
		<row><td>notas_credito.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>NOTAS_~1.JPG|notas_credito.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\notas_credito.jpg</td><td>1</td><td/></row>
		<row><td>npagos.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NPagos.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NPagos.cs</td><td>1</td><td/></row>
		<row><td>nproductos.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NPRODU~1.CS|NProductos.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NProductos.cs</td><td>1</td><td/></row>
		<row><td>nproveedores.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NPROVE~1.CS|NProveedores.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NProveedores.cs</td><td>1</td><td/></row>
		<row><td>nreportes.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NREPOR~1.CS|NReportes.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NReportes.cs</td><td>1</td><td/></row>
		<row><td>nservicios.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NSERVI~1.CS|NServicios.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NServicios.cs</td><td>1</td><td/></row>
		<row><td>nuevo.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>nuevo.GIF</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\nuevo.GIF</td><td>1</td><td/></row>
		<row><td>nuevo.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>nuevo.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\nuevo.png</td><td>1</td><td/></row>
		<row><td>nuevo_cliente.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>NUEVO_~1.JPG|nuevo_cliente.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\nuevo_cliente.jpg</td><td>1</td><td/></row>
		<row><td>nusuarios.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NUSUAR~1.CS|NUsuarios.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NUsuarios.cs</td><td>1</td><td/></row>
		<row><td>nventas.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NVentas.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NVentas.cs</td><td>1</td><td/></row>
		<row><td>nventaservicio.cs</td><td>ISX_DEFAULTCOMPONENT9</td><td>NVENTA~1.CS|NVentaServicio.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\NVentaServicio.cs</td><td>1</td><td/></row>
		<row><td>opciones.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>opciones.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\opciones.jpg</td><td>1</td><td/></row>
		<row><td>openauthproviders.ascx</td><td>ISX_DEFAULTCOMPONENT19</td><td>OPENAU~1.ASC|OpenAuthProviders.ascx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\OpenAuthProviders.ascx</td><td>1</td><td/></row>
		<row><td>openauthproviders.ascx.cs</td><td>ISX_DEFAULTCOMPONENT19</td><td>OPENAU~1.CS|OpenAuthProviders.ascx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\OpenAuthProviders.ascx.cs</td><td>1</td><td/></row>
		<row><td>openauthproviders.ascx.desig</td><td>ISX_DEFAULTCOMPONENT19</td><td>OPENAU~1.CS|OpenAuthProviders.ascx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\OpenAuthProviders.ascx.designer.cs</td><td>1</td><td/></row>
		<row><td>orden.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>orden.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\orden.jpg</td><td>1</td><td/></row>
		<row><td>orden_compra.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ORDEN_~1.JPG|orden_compra.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\orden_compra.jpg</td><td>1</td><td/></row>
		<row><td>orden_salida.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ORDEN_~1.JPG|orden_salida.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\orden_salida.jpg</td><td>1</td><td/></row>
		<row><td>ordencompra.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ORDENC~1.JPG|OrdenCompra.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\OrdenCompra.jpg</td><td>1</td><td/></row>
		<row><td>packages.config</td><td>ISX_DEFAULTCOMPONENT18</td><td>PACKAG~1.CON|packages.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\packages.config</td><td>1</td><td/></row>
		<row><td>pagos.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>PAGOS~1.ASP|Pagos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Pagos.aspx</td><td>1</td><td/></row>
		<row><td>pagos.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>PAGOSA~1.CS|Pagos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Pagos.aspx.cs</td><td>1</td><td/></row>
		<row><td>pagos.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PAGOSA~1.CS|Pagos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Pagos.aspx.cs</td><td>1</td><td/></row>
		<row><td>pagos.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>PAGOSA~1.CS|Pagos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Pagos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>pagos.aspx.designer.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PAGOSA~1.CS|Pagos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Pagos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>pagos.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PAGOS~1.ASP|Pagos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Pagos.aspx</td><td>1</td><td/></row>
		<row><td>pagos.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>pagos.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\pagos.jpg</td><td>1</td><td/></row>
		<row><td>pdf.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>pdf.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\pdf.png</td><td>1</td><td/></row>
		<row><td>pedidos.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>pedidos.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\pedidos.png</td><td>1</td><td/></row>
		<row><td>pendiente.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>PENDIE~1.JPG|pendiente.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\pendiente.jpg</td><td>1</td><td/></row>
		<row><td>precio_productos.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>PRECIO~1.PNG|precio_productos.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\precio_productos.png</td><td>1</td><td/></row>
		<row><td>produccion.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>PRODUC~1.JPG|produccion.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\produccion.jpg</td><td>1</td><td/></row>
		<row><td>produccion.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>PRODUC~1.PNG|produccion.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\produccion.png</td><td>1</td><td/></row>
		<row><td>producto.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>producto.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\producto.png</td><td>1</td><td/></row>
		<row><td>productos.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>PRODUC~1.ASP|Productos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Productos.aspx</td><td>1</td><td/></row>
		<row><td>productos.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>PRODUC~1.CS|Productos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Productos.aspx.cs</td><td>1</td><td/></row>
		<row><td>productos.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PRODUC~1.CS|Productos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Productos.aspx.cs</td><td>1</td><td/></row>
		<row><td>productos.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>PRODUC~1.CS|Productos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Productos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>productos.aspx.designer.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PRODUC~1.CS|Productos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Productos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>productos.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PRODUC~1.ASP|Productos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Productos.aspx</td><td>1</td><td/></row>
		<row><td>productos.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>PRODUC~1.PNG|productos.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\productos.png</td><td>1</td><td/></row>
		<row><td>productostodos.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>PRODUC~1.ASP|ProductosTodos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ProductosTodos.aspx</td><td>1</td><td/></row>
		<row><td>productostodos.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>PRODUC~1.CS|ProductosTodos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ProductosTodos.aspx.cs</td><td>1</td><td/></row>
		<row><td>productostodos.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PRODUC~1.CS|ProductosTodos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\ProductosTodos.aspx.cs</td><td>1</td><td/></row>
		<row><td>productostodos.aspx.designer</td><td>ISX_DEFAULTCOMPONENT20</td><td>PRODUC~1.CS|ProductosTodos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ProductosTodos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>productostodos.aspx.designer1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PRODUC~1.CS|ProductosTodos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\ProductosTodos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>productostodos.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PRODUC~1.ASP|ProductosTodos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\ProductosTodos.aspx</td><td>1</td><td/></row>
		<row><td>products.aspx</td><td>ISX_DEFAULTCOMPONENT18</td><td>PRODUC~1.ASP|Products.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Products.aspx</td><td>1</td><td/></row>
		<row><td>products.aspx.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>PRODUC~1.CS|Products.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Products.aspx.cs</td><td>1</td><td/></row>
		<row><td>products.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>PRODUC~1.CS|Products.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Products.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>proveedores.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>PROVEE~1.ASP|Proveedores.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Proveedores.aspx</td><td>1</td><td/></row>
		<row><td>proveedores.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>PROVEE~1.CS|Proveedores.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Proveedores.aspx.cs</td><td>1</td><td/></row>
		<row><td>proveedores.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PROVEE~1.CS|Proveedores.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Proveedores.aspx.cs</td><td>1</td><td/></row>
		<row><td>proveedores.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>PROVEE~1.CS|Proveedores.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Proveedores.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>proveedores.aspx.designer.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PROVEE~1.CS|Proveedores.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Proveedores.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>proveedores.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PROVEE~1.ASP|Proveedores.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Proveedores.aspx</td><td>1</td><td/></row>
		<row><td>proveedores.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>PROVEE~1.JPG|proveedores.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\proveedores.jpg</td><td>1</td><td/></row>
		<row><td>proveedorestodos.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>PROVEE~1.ASP|ProveedoresTodos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ProveedoresTodos.aspx</td><td>1</td><td/></row>
		<row><td>proveedorestodos.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>PROVEE~1.CS|ProveedoresTodos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ProveedoresTodos.aspx.cs</td><td>1</td><td/></row>
		<row><td>proveedorestodos.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PROVEE~1.CS|ProveedoresTodos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\ProveedoresTodos.aspx.cs</td><td>1</td><td/></row>
		<row><td>proveedorestodos.aspx.design</td><td>ISX_DEFAULTCOMPONENT20</td><td>PROVEE~1.CS|ProveedoresTodos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ProveedoresTodos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>proveedorestodos.aspx.design1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PROVEE~1.CS|ProveedoresTodos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\ProveedoresTodos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>proveedorestodos.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>PROVEE~1.ASP|ProveedoresTodos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\ProveedoresTodos.aspx</td><td>1</td><td/></row>
		<row><td>read_more.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>READ_M~1.GIF|read_more.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\read_more.gif</td><td>1</td><td/></row>
		<row><td>read_more_top.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>READ_M~1.GIF|read_more_top.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\read_more_top.gif</td><td>1</td><td/></row>
		<row><td>readme.html</td><td>ISX_DEFAULTCOMPONENT120</td><td>README~1.HTM|readme.html</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Providers.Core.1.1\readme.html</td><td>1</td><td/></row>
		<row><td>realizar_fumigacion.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>REALIZ~1.JPG|realizar_fumigacion.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\realizar_fumigacion.jpg</td><td>1</td><td/></row>
		<row><td>redirect.config</td><td>ISX_DEFAULTCOMPONENT88</td><td>REDIRE~1.CON|Redirect.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\Redirect.config</td><td>1</td><td/></row>
		<row><td>redirect.vs11.config</td><td>ISX_DEFAULTCOMPONENT88</td><td>REDIRE~1.CON|Redirect.VS11.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\tools\Redirect.VS11.config</td><td>1</td><td/></row>
		<row><td>registerexternallogin.aspx</td><td>ISX_DEFAULTCOMPONENT19</td><td>REGIST~1.ASP|RegisterExternalLogin.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\RegisterExternalLogin.aspx</td><td>1</td><td/></row>
		<row><td>registerexternallogin.aspx.c</td><td>ISX_DEFAULTCOMPONENT19</td><td>REGIST~1.CS|RegisterExternalLogin.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\RegisterExternalLogin.aspx.cs</td><td>1</td><td/></row>
		<row><td>registerexternallogin.aspx.d</td><td>ISX_DEFAULTCOMPONENT19</td><td>REGIST~1.CS|RegisterExternalLogin.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\RegisterExternalLogin.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>registro.aspx</td><td>ISX_DEFAULTCOMPONENT19</td><td>REGIST~1.ASP|Registro.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Registro.aspx</td><td>1</td><td/></row>
		<row><td>registro.aspx.cs</td><td>ISX_DEFAULTCOMPONENT19</td><td>REGIST~1.CS|Registro.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Registro.aspx.cs</td><td>1</td><td/></row>
		<row><td>registro.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT19</td><td>REGIST~1.CS|Registro.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Registro.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>rep_clientes.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>REP_CL~1.JPG|rep_clientes.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\rep_clientes.jpg</td><td>1</td><td/></row>
		<row><td>reportes.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>reportes.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\reportes.jpg</td><td>1</td><td/></row>
		<row><td>reportes.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>reportes.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\reportes.png</td><td>1</td><td/></row>
		<row><td>repositories.config</td><td>ISX_DEFAULTCOMPONENT54</td><td>REPOSI~1.CON|repositories.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\repositories.config</td><td>1</td><td/></row>
		<row><td>sales_report.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>SALES-~1.JPG|sales-report.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\sales-report.jpg</td><td>1</td><td/></row>
		<row><td>scan.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>scan.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\scan.jpg</td><td>1</td><td/></row>
		<row><td>seguimiento.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>SEGUIM~1.PNG|seguimiento.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\seguimiento.png</td><td>1</td><td/></row>
		<row><td>seguimiento_pagos.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>SEGUIM~1.JPG|seguimiento_pagos.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\seguimiento_pagos.jpg</td><td>1</td><td/></row>
		<row><td>send.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>send.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\send.gif</td><td>1</td><td/></row>
		<row><td>serv_1.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>serv_1.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\serv_1.jpg</td><td>1</td><td/></row>
		<row><td>serv_2.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>serv_2.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\serv_2.jpg</td><td>1</td><td/></row>
		<row><td>serv_3.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>serv_3.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\serv_3.jpg</td><td>1</td><td/></row>
		<row><td>services.aspx</td><td>ISX_DEFAULTCOMPONENT18</td><td>SERVIC~1.ASP|Services.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Services.aspx</td><td>1</td><td/></row>
		<row><td>services.aspx.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>SERVIC~1.CS|Services.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Services.aspx.cs</td><td>1</td><td/></row>
		<row><td>services.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>SERVIC~1.CS|Services.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Services.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>servicios.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>SERVIC~1.ASP|Servicios.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Servicios.aspx</td><td>1</td><td/></row>
		<row><td>servicios.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>SERVIC~1.CS|Servicios.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Servicios.aspx.cs</td><td>1</td><td/></row>
		<row><td>servicios.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>SERVIC~1.CS|Servicios.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Servicios.aspx.cs</td><td>1</td><td/></row>
		<row><td>servicios.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>SERVIC~1.CS|Servicios.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Servicios.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>servicios.aspx.designer.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>SERVIC~1.CS|Servicios.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Servicios.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>servicios.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>SERVIC~1.ASP|Servicios.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Servicios.aspx</td><td>1</td><td/></row>
		<row><td>serviciostodos.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>SERVIC~1.ASP|ServiciosTodos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ServiciosTodos.aspx</td><td>1</td><td/></row>
		<row><td>serviciostodos.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>SERVIC~1.CS|ServiciosTodos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ServiciosTodos.aspx.cs</td><td>1</td><td/></row>
		<row><td>serviciostodos.aspx.designer</td><td>ISX_DEFAULTCOMPONENT20</td><td>SERVIC~1.CS|ServiciosTodos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\ServiciosTodos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>sesion.aspx</td><td>ISX_DEFAULTCOMPONENT19</td><td>SESION~1.ASP|Sesion.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Sesion.aspx</td><td>1</td><td/></row>
		<row><td>sesion.aspx.cs</td><td>ISX_DEFAULTCOMPONENT19</td><td>SESION~1.CS|Sesion.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Sesion.aspx.cs</td><td>1</td><td/></row>
		<row><td>sesion.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT19</td><td>SESION~1.CS|Sesion.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Sesion.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>setup.exe</td><td>setup.exe</td><td>setup.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\setup.exe</td><td>1</td><td/></row>
		<row><td>setup.ini</td><td>ISX_DEFAULTCOMPONENT46</td><td>Setup.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\Setup.ini</td><td>1</td><td/></row>
		<row><td>setup1.isl</td><td>ISX_DEFAULTCOMPONENT166</td><td>Setup1.isl</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Setup1\Setup1.isl</td><td>1</td><td/></row>
		<row><td>setup1.isproj</td><td>ISX_DEFAULTCOMPONENT166</td><td>SETUP1~1.ISP|Setup1.isproj</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Setup1\Setup1.isproj</td><td>1</td><td/></row>
		<row><td>sistemagps.bak</td><td>ISX_DEFAULTCOMPONENT</td><td>SISTEM~1.BAK|SistemaGPS.bak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\SistemaGPS.bak</td><td>1</td><td/></row>
		<row><td>site.css</td><td>ISX_DEFAULTCOMPONENT26</td><td>Site.css</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\Site.css</td><td>1</td><td/></row>
		<row><td>site.master</td><td>ISX_DEFAULTCOMPONENT18</td><td>SITE~1.MAS|Site.Master</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Site.Master</td><td>1</td><td/></row>
		<row><td>site.master.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>SITEMA~1.CS|Site.Master.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Site.Master.cs</td><td>1</td><td/></row>
		<row><td>site.master.designer.cs</td><td>ISX_DEFAULTCOMPONENT18</td><td>SITEMA~1.CS|Site.Master.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Site.Master.designer.cs</td><td>1</td><td/></row>
		<row><td>slider_bg.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>SLIDER~1.GIF|slider_bg.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\slider_bg.gif</td><td>1</td><td/></row>
		<row><td>smartnav.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>SmartNav.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\SmartNav.js</td><td>1</td><td/></row>
		<row><td>smartnav.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>SmartNav.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\SmartNav.js</td><td>1</td><td/></row>
		<row><td>spacer.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>spacer.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\spacer.gif</td><td>1</td><td/></row>
		<row><td>starprinter.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>STARPR~1.JPG|starprinter.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\starprinter.jpg</td><td>1</td><td/></row>
		<row><td>system.web.optimization.dll</td><td>System.Web.Optimization.dll</td><td>SYSTEM~1.DLL|System.Web.Optimization.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\System.Web.Optimization.dll</td><td>1</td><td/></row>
		<row><td>system.web.optimization.dll1</td><td>System.Web.Optimization.dll1</td><td>SYSTEM~1.DLL|System.Web.Optimization.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\System.Web.Optimization.dll</td><td>1</td><td/></row>
		<row><td>system.web.optimization.dll2</td><td>System.Web.Optimization.dll2</td><td>SYSTEM~1.DLL|System.Web.Optimization.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Web.Optimization.1.0.0\lib\net40\System.Web.Optimization.dll</td><td>1</td><td/></row>
		<row><td>system.web.optimization.reso</td><td>System.Web.Optimization.resources.dll</td><td>SYSTEM~1.DLL|System.Web.Optimization.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\es\System.Web.Optimization.resources.dll</td><td>1</td><td/></row>
		<row><td>system.web.optimization.reso1</td><td>System.Web.Optimization.resources.dll1</td><td>SYSTEM~1.DLL|System.Web.Optimization.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Web.Optimization.1.0.0\lib\net40\es\System.Web.Optimization.resources.dll</td><td>1</td><td/></row>
		<row><td>system.web.optimization.reso2</td><td>System.Web.Optimization.resources.dll2</td><td>SYSTEM~1.DLL|System.Web.Optimization.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Web.Optimization.es.1.0.0\lib\net40\es\System.Web.Optimization.resources.dll</td><td>1</td><td/></row>
		<row><td>system.web.providers.dll</td><td>System.Web.Providers.dll</td><td>SYSTEM~1.DLL|System.Web.Providers.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\System.Web.Providers.dll</td><td>1</td><td/></row>
		<row><td>system.web.providers.dll1</td><td>System.Web.Providers.dll1</td><td>SYSTEM~1.DLL|System.Web.Providers.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\System.Web.Providers.dll</td><td>1</td><td/></row>
		<row><td>system.web.providers.dll2</td><td>System.Web.Providers.dll2</td><td>SYSTEM~1.DLL|System.Web.Providers.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Providers.Core.1.1\lib\net40\System.Web.Providers.dll</td><td>1</td><td/></row>
		<row><td>system.web.providers.resourc</td><td>System.Web.Providers.resources.dll</td><td>SYSTEM~1.DLL|System.Web.Providers.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\es\System.Web.Providers.resources.dll</td><td>1</td><td/></row>
		<row><td>system.web.providers.resourc1</td><td>System.Web.Providers.resources.dll1</td><td>SYSTEM~1.DLL|System.Web.Providers.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Providers.Core.1.1\lib\net40\es\System.Web.Providers.resources.dll</td><td>1</td><td/></row>
		<row><td>system.web.providers.resourc2</td><td>System.Web.Providers.resources.dll2</td><td>SYSTEM~1.DLL|System.Web.Providers.resources.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Providers.Core.es.1.1\lib\net40\es\System.Web.Providers.resources.dll</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_036c0</td><td>ISX_DEFAULTCOMPONENT6</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_036c01</td><td>ISX_DEFAULTCOMPONENT14</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_036c02</td><td>ISX_DEFAULTCOMPONENT16</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_036c03</td><td>ISX_DEFAULTCOMPONENT34</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_5937a</td><td>ISX_DEFAULTCOMPONENT6</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_5937a1</td><td>ISX_DEFAULTCOMPONENT14</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_5937a2</td><td>ISX_DEFAULTCOMPONENT16</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_5937a3</td><td>ISX_DEFAULTCOMPONENT34</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_e7a71</td><td>ISX_DEFAULTCOMPONENT6</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaDatos\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_e7a711</td><td>ISX_DEFAULTCOMPONENT14</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_e7a712</td><td>ISX_DEFAULTCOMPONENT16</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaNegocio\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs</td><td>1</td><td/></row>
		<row><td>temporarygeneratedfile_e7a713</td><td>ISX_DEFAULTCOMPONENT34</td><td>TEMPOR~1.CS|TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs</td><td>1</td><td/></row>
		<row><td>tipo_clientes.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>TIPO_C~1.JPG|tipo_clientes.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\tipo_clientes.jpg</td><td>1</td><td/></row>
		<row><td>tipo_productos.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>TIPO_P~1.PNG|tipo_productos.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\tipo_productos.png</td><td>1</td><td/></row>
		<row><td>tipo_proveedor.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>TIPO_P~1.JPG|tipo_proveedor.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\tipo_proveedor.jpg</td><td>1</td><td/></row>
		<row><td>tipo_servicio.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>TIPO_S~1.PNG|tipo_servicio.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\tipo_servicio.png</td><td>1</td><td/></row>
		<row><td>top_arrow.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>TOP_AR~1.GIF|top_arrow.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\top_arrow.gif</td><td>1</td><td/></row>
		<row><td>transporte.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>TRANSP~1.PNG|transporte.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\transporte.png</td><td>1</td><td/></row>
		<row><td>treeview.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>TreeView.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\TreeView.js</td><td>1</td><td/></row>
		<row><td>treeview.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>TreeView.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\TreeView.js</td><td>1</td><td/></row>
		<row><td>tres.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>tres.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\tres.jpg</td><td>1</td><td/></row>
		<row><td>twitter.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>twitter.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\twitter.gif</td><td>1</td><td/></row>
		<row><td>twitter.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>twitter.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\twitter.png</td><td>1</td><td/></row>
		<row><td>ubicaciones.jpeg</td><td>ISX_DEFAULTCOMPONENT32</td><td>UBICAC~1.JPE|ubicaciones.jpeg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\ubicaciones.jpeg</td><td>1</td><td/></row>
		<row><td>ui_bg_flat_0_aaaaaa_40x100.p</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-BG_~1.PNG|ui-bg_flat_0_aaaaaa_40x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-bg_flat_0_aaaaaa_40x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_flat_0_aaaaaa_40x100.p1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-BG_~1.PNG|ui-bg_flat_0_aaaaaa_40x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-bg_flat_0_aaaaaa_40x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_flat_0_aaaaaa_40x100.p2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-BG_~1.PNG|ui-bg_flat_0_aaaaaa_40x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-bg_flat_0_aaaaaa_40x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_flat_0_aaaaaa_40x100.p3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-BG_~1.PNG|ui-bg_flat_0_aaaaaa_40x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-bg_flat_0_aaaaaa_40x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_flat_75_ffffff_40x100.</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-BG_~1.PNG|ui-bg_flat_75_ffffff_40x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-bg_flat_75_ffffff_40x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_flat_75_ffffff_40x100.1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-BG_~1.PNG|ui-bg_flat_75_ffffff_40x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-bg_flat_75_ffffff_40x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_flat_75_ffffff_40x100.2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-BG_~1.PNG|ui-bg_flat_75_ffffff_40x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-bg_flat_75_ffffff_40x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_flat_75_ffffff_40x100.3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-BG_~1.PNG|ui-bg_flat_75_ffffff_40x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-bg_flat_75_ffffff_40x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_55_fbf9ee_1x400.</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-BG_~1.PNG|ui-bg_glass_55_fbf9ee_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-bg_glass_55_fbf9ee_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_55_fbf9ee_1x400.1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-BG_~1.PNG|ui-bg_glass_55_fbf9ee_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-bg_glass_55_fbf9ee_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_55_fbf9ee_1x400.2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-BG_~1.PNG|ui-bg_glass_55_fbf9ee_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-bg_glass_55_fbf9ee_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_55_fbf9ee_1x400.3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-BG_~1.PNG|ui-bg_glass_55_fbf9ee_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-bg_glass_55_fbf9ee_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_65_ffffff_1x400.</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-BG_~1.PNG|ui-bg_glass_65_ffffff_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-bg_glass_65_ffffff_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_65_ffffff_1x400.1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-BG_~1.PNG|ui-bg_glass_65_ffffff_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-bg_glass_65_ffffff_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_65_ffffff_1x400.2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-BG_~1.PNG|ui-bg_glass_65_ffffff_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-bg_glass_65_ffffff_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_65_ffffff_1x400.3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-BG_~1.PNG|ui-bg_glass_65_ffffff_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-bg_glass_65_ffffff_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_75_dadada_1x400.</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-BG_~1.PNG|ui-bg_glass_75_dadada_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-bg_glass_75_dadada_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_75_dadada_1x400.1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-BG_~1.PNG|ui-bg_glass_75_dadada_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-bg_glass_75_dadada_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_75_dadada_1x400.2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-BG_~1.PNG|ui-bg_glass_75_dadada_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-bg_glass_75_dadada_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_75_dadada_1x400.3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-BG_~1.PNG|ui-bg_glass_75_dadada_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-bg_glass_75_dadada_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_75_e6e6e6_1x400.</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-BG_~1.PNG|ui-bg_glass_75_e6e6e6_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-bg_glass_75_e6e6e6_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_75_e6e6e6_1x400.1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-BG_~1.PNG|ui-bg_glass_75_e6e6e6_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-bg_glass_75_e6e6e6_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_75_e6e6e6_1x400.2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-BG_~1.PNG|ui-bg_glass_75_e6e6e6_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-bg_glass_75_e6e6e6_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_75_e6e6e6_1x400.3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-BG_~1.PNG|ui-bg_glass_75_e6e6e6_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-bg_glass_75_e6e6e6_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_95_fef1ec_1x400.</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-BG_~1.PNG|ui-bg_glass_95_fef1ec_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-bg_glass_95_fef1ec_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_95_fef1ec_1x400.1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-BG_~1.PNG|ui-bg_glass_95_fef1ec_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-bg_glass_95_fef1ec_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_95_fef1ec_1x400.2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-BG_~1.PNG|ui-bg_glass_95_fef1ec_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-bg_glass_95_fef1ec_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_glass_95_fef1ec_1x400.3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-BG_~1.PNG|ui-bg_glass_95_fef1ec_1x400.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-bg_glass_95_fef1ec_1x400.png</td><td>1</td><td/></row>
		<row><td>ui_bg_highlight_soft_75_cccc</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-BG_~1.PNG|ui-bg_highlight-soft_75_cccccc_1x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-bg_highlight-soft_75_cccccc_1x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_highlight_soft_75_cccc1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-BG_~1.PNG|ui-bg_highlight-soft_75_cccccc_1x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-bg_highlight-soft_75_cccccc_1x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_highlight_soft_75_cccc2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-BG_~1.PNG|ui-bg_highlight-soft_75_cccccc_1x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-bg_highlight-soft_75_cccccc_1x100.png</td><td>1</td><td/></row>
		<row><td>ui_bg_highlight_soft_75_cccc3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-BG_~1.PNG|ui-bg_highlight-soft_75_cccccc_1x100.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-bg_highlight-soft_75_cccccc_1x100.png</td><td>1</td><td/></row>
		<row><td>ui_icons_222222_256x240.png</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-ICO~1.PNG|ui-icons_222222_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-icons_222222_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_222222_256x240.png1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-ICO~1.PNG|ui-icons_222222_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-icons_222222_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_222222_256x240.png2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-ICO~1.PNG|ui-icons_222222_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-icons_222222_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_222222_256x240.png3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-ICO~1.PNG|ui-icons_222222_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-icons_222222_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_2e83ff_256x240.png</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-ICO~1.PNG|ui-icons_2e83ff_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-icons_2e83ff_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_2e83ff_256x240.png1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-ICO~1.PNG|ui-icons_2e83ff_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-icons_2e83ff_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_2e83ff_256x240.png2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-ICO~1.PNG|ui-icons_2e83ff_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-icons_2e83ff_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_2e83ff_256x240.png3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-ICO~1.PNG|ui-icons_2e83ff_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-icons_2e83ff_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_454545_256x240.png</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-ICO~1.PNG|ui-icons_454545_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-icons_454545_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_454545_256x240.png1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-ICO~1.PNG|ui-icons_454545_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-icons_454545_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_454545_256x240.png2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-ICO~1.PNG|ui-icons_454545_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-icons_454545_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_454545_256x240.png3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-ICO~1.PNG|ui-icons_454545_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-icons_454545_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_888888_256x240.png</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-ICO~1.PNG|ui-icons_888888_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-icons_888888_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_888888_256x240.png1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-ICO~1.PNG|ui-icons_888888_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-icons_888888_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_888888_256x240.png2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-ICO~1.PNG|ui-icons_888888_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-icons_888888_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_888888_256x240.png3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-ICO~1.PNG|ui-icons_888888_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-icons_888888_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_cd0a0a_256x240.png</td><td>ISX_DEFAULTCOMPONENT29</td><td>UI-ICO~1.PNG|ui-icons_cd0a0a_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\images\ui-icons_cd0a0a_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_cd0a0a_256x240.png1</td><td>ISX_DEFAULTCOMPONENT31</td><td>UI-ICO~1.PNG|ui-icons_cd0a0a_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Content\themes\base\minified\images\ui-icons_cd0a0a_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_cd0a0a_256x240.png2</td><td>ISX_DEFAULTCOMPONENT104</td><td>UI-ICO~1.PNG|ui-icons_cd0a0a_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\images\ui-icons_cd0a0a_256x240.png</td><td>1</td><td/></row>
		<row><td>ui_icons_cd0a0a_256x240.png3</td><td>ISX_DEFAULTCOMPONENT106</td><td>UI-ICO~1.PNG|ui-icons_cd0a0a_256x240.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.UI.Combined.1.8.20.1\Content\Content\themes\base\minified\images\ui-icons_cd0a0a_256x240.png</td><td>1</td><td/></row>
		<row><td>ul_li_featu.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>UL_LI_~1.GIF|ul_li_Featu.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\ul_li_Featu.gif</td><td>1</td><td/></row>
		<row><td>unidad.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>unidad.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\unidad.jpg</td><td>1</td><td/></row>
		<row><td>unidades.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>unidades.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\unidades.jpg</td><td>1</td><td/></row>
		<row><td>uninstall.ps1</td><td>ISX_DEFAULTCOMPONENT98</td><td>UNINST~1.PS1|uninstall.ps1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\jQuery.1.7.1.1\Tools\uninstall.ps1</td><td>1</td><td/></row>
		<row><td>uninstall.ps11</td><td>ISX_DEFAULTCOMPONENT159</td><td>UNINST~1.PS1|Uninstall.ps1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.Web.Infrastructure.1.0.0.0\tools\Uninstall.ps1</td><td>1</td><td/></row>
		<row><td>uno.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>uno.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\uno.jpg</td><td>1</td><td/></row>
		<row><td>usuario.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>usuario.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\usuario.gif</td><td>1</td><td/></row>
		<row><td>vencido.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>vencido.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\vencido.jpg</td><td>1</td><td/></row>
		<row><td>vencimiento.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>VENCIM~1.JPG|vencimiento.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\vencimiento.jpg</td><td>1</td><td/></row>
		<row><td>vendedor.master</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENDED~1.MAS|Vendedor.Master</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Vendedor.Master</td><td>1</td><td/></row>
		<row><td>vendedor.master.cs</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENDED~1.CS|Vendedor.Master.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Vendedor.Master.cs</td><td>1</td><td/></row>
		<row><td>vendedor.master.designer.cs</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENDED~1.CS|Vendedor.Master.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Vendedor.Master.designer.cs</td><td>1</td><td/></row>
		<row><td>ventaproductos.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>VENTAP~1.ASP|VentaProductos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\VentaProductos.aspx</td><td>1</td><td/></row>
		<row><td>ventaproductos.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>VENTAP~1.CS|VentaProductos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\VentaProductos.aspx.cs</td><td>1</td><td/></row>
		<row><td>ventaproductos.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENTAP~1.CS|VentaProductos.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\VentaProductos.aspx.cs</td><td>1</td><td/></row>
		<row><td>ventaproductos.aspx.designer</td><td>ISX_DEFAULTCOMPONENT20</td><td>VENTAP~1.CS|VentaProductos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\VentaProductos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>ventaproductos.aspx.designer1</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENTAP~1.CS|VentaProductos.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\VentaProductos.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>ventaproductos.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENTAP~1.ASP|VentaProductos.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\VentaProductos.aspx</td><td>1</td><td/></row>
		<row><td>ventas.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>VENTAS~1.ASP|Ventas.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Ventas.aspx</td><td>1</td><td/></row>
		<row><td>ventas.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>VENTAS~1.CS|Ventas.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Ventas.aspx.cs</td><td>1</td><td/></row>
		<row><td>ventas.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENTAS~1.CS|Ventas.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Ventas.aspx.cs</td><td>1</td><td/></row>
		<row><td>ventas.aspx.designer.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>VENTAS~1.CS|Ventas.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\Ventas.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>ventas.aspx.designer.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENTAS~1.CS|Ventas.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Ventas.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>ventas.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENTAS~1.ASP|Ventas.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\Ventas.aspx</td><td>1</td><td/></row>
		<row><td>ventas.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>ventas.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\ventas.jpg</td><td>1</td><td/></row>
		<row><td>ventas_boleta.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>VENTAS~1.GIF|ventas_boleta.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\ventas_boleta.gif</td><td>1</td><td/></row>
		<row><td>ventas_factura.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>VENTAS~1.JPG|ventas_factura.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\ventas_factura.jpg</td><td>1</td><td/></row>
		<row><td>ventas_final.jpg</td><td>ISX_DEFAULTCOMPONENT32</td><td>VENTAS~1.JPG|ventas_final.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\ventas_final.jpg</td><td>1</td><td/></row>
		<row><td>ventaservicios.aspx</td><td>ISX_DEFAULTCOMPONENT20</td><td>VENTAS~1.ASP|VentaServicios.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\VentaServicios.aspx</td><td>1</td><td/></row>
		<row><td>ventaservicios.aspx.cs</td><td>ISX_DEFAULTCOMPONENT20</td><td>VENTAS~1.CS|VentaServicios.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\VentaServicios.aspx.cs</td><td>1</td><td/></row>
		<row><td>ventaservicios.aspx.cs1</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENTAS~1.CS|VentaServicios.aspx.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\VentaServicios.aspx.cs</td><td>1</td><td/></row>
		<row><td>ventaservicios.aspx.designer</td><td>ISX_DEFAULTCOMPONENT20</td><td>VENTAS~1.CS|VentaServicios.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Administrador\VentaServicios.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>ventaservicios.aspx.designer1</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENTAS~1.CS|VentaServicios.aspx.designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\VentaServicios.aspx.designer.cs</td><td>1</td><td/></row>
		<row><td>ventaservicios.aspx1</td><td>ISX_DEFAULTCOMPONENT40</td><td>VENTAS~1.ASP|VentaServicios.aspx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Vendedor\VentaServicios.aspx</td><td>1</td><td/></row>
		<row><td>ver.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>VER.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\VER.gif</td><td>1</td><td/></row>
		<row><td>view_all.gif</td><td>ISX_DEFAULTCOMPONENT32</td><td>view_all.gif</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\view_all.gif</td><td>1</td><td/></row>
		<row><td>vs.psd1</td><td>ISX_DEFAULTCOMPONENT159</td><td>VSFD8C~1.PSD|VS.psd1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.Web.Infrastructure.1.0.0.0\tools\VS.psd1</td><td>1</td><td/></row>
		<row><td>vs.psm1</td><td>ISX_DEFAULTCOMPONENT159</td><td>VS976A~1.PSM|VS.psm1</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.Web.Infrastructure.1.0.0.0\tools\VS.psm1</td><td>1</td><td/></row>
		<row><td>web.config</td><td>ISX_DEFAULTCOMPONENT19</td><td>WEB~1.CON|Web.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Account\Web.config</td><td>1</td><td/></row>
		<row><td>web.config.transform</td><td>ISX_DEFAULTCOMPONENT82</td><td>WEBCON~1.TRA|Web.config.transform</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\EntityFramework.5.0.0\Content\Web.config.transform</td><td>1</td><td/></row>
		<row><td>web.config.transform1</td><td>ISX_DEFAULTCOMPONENT129</td><td>WEBCON~1.TRA|web.config.transform</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Providers.LocalDB.1.1\content\web.config.transform</td><td>1</td><td/></row>
		<row><td>web.config.transform2</td><td>ISX_DEFAULTCOMPONENT153</td><td>WEBCON~1.TRA|web.config.transform</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.Web.Optimization.WebForms.1.0.0\content\web.config.transform</td><td>1</td><td/></row>
		<row><td>web.config1</td><td>ISX_DEFAULTCOMPONENT18</td><td>WEB~1.CON|web.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\web.config</td><td>1</td><td/></row>
		<row><td>web.debug.config</td><td>ISX_DEFAULTCOMPONENT18</td><td>WEBDEB~1.CON|Web.Debug.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Web.Debug.config</td><td>1</td><td/></row>
		<row><td>web.release.config</td><td>ISX_DEFAULTCOMPONENT18</td><td>WEBREL~1.CON|Web.Release.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Web.Release.config</td><td>1</td><td/></row>
		<row><td>webforms.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>WebForms.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\WebForms.js</td><td>1</td><td/></row>
		<row><td>webforms.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>WebForms.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\WebForms.js</td><td>1</td><td/></row>
		<row><td>webgrease.1.1.0.nupkg</td><td>ISX_DEFAULTCOMPONENT163</td><td>WEBGRE~1.NUP|WebGrease.1.1.0.nupkg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\WebGrease.1.1.0\WebGrease.1.1.0.nupkg</td><td>1</td><td/></row>
		<row><td>webgrease.dll</td><td>WebGrease.dll</td><td>WEBGRE~1.DLL|WebGrease.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\bin\WebGrease.dll</td><td>1</td><td/></row>
		<row><td>webgrease.dll1</td><td>WebGrease.dll1</td><td>WEBGRE~1.DLL|WebGrease.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\program files\GPS\My Product Name\WebGrease.dll</td><td>1</td><td/></row>
		<row><td>webgrease.dll2</td><td>WebGrease.dll2</td><td>WEBGRE~1.DLL|WebGrease.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\WebGrease.1.1.0\lib\WebGrease.dll</td><td>1</td><td/></row>
		<row><td>webparts.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>WebParts.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\WebParts.js</td><td>1</td><td/></row>
		<row><td>webparts.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>WebParts.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\WebParts.js</td><td>1</td><td/></row>
		<row><td>webuivalidation.js</td><td>ISX_DEFAULTCOMPONENT38</td><td>WEBUIV~1.JS|WebUIValidation.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Scripts\WebForms\WebUIValidation.js</td><td>1</td><td/></row>
		<row><td>webuivalidation.js1</td><td>ISX_DEFAULTCOMPONENT141</td><td>WEBUIV~1.JS|WebUIValidation.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\Microsoft.AspNet.ScriptManager.WebForms.4.5.6\content\Scripts\WebForms\WebUIValidation.js</td><td>1</td><td/></row>
		<row><td>wg.exe</td><td>WG.exe</td><td>WG.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\packages\WebGrease.1.1.0\tools\WG.exe</td><td>1</td><td/></row>
		<row><td>winrar.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>winrar.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\winrar.png</td><td>1</td><td/></row>
		<row><td>youtube.png</td><td>ISX_DEFAULTCOMPONENT32</td><td>youtube.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\pc\Desktop\GPS\CapaPresentacion\Images\youtube.png</td><td>1</td><td/></row>
	</table>

	<table name="FileSFPCatalog">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s255">SFPCatalog_</col>
	</table>

	<table name="Font">
		<col key="yes" def="s72">File_</col>
		<col def="S128">FontTitle</col>
	</table>

	<table name="ISAssistantTag">
		<col key="yes" def="s72">Tag</col>
		<col def="S255">Data</col>
		<row><td>PROJECT_ASSISTANT_DEFAULT_FEATURE</td><td>AlwaysInstall</td></row>
	</table>

	<table name="ISBillBoard">
		<col key="yes" def="s72">ISBillboard</col>
		<col def="i2">Duration</col>
		<col def="i2">Origin</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Effect</col>
		<col def="i2">Sequence</col>
		<col def="i2">Target</col>
		<col def="S72">Color</col>
		<col def="S72">Style</col>
		<col def="S72">Font</col>
		<col def="L72">Title</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackage">
		<col key="yes" def="s72">Package</col>
		<col def="S255">SourcePath</col>
		<col def="S72">ProductCode</col>
		<col def="i2">Order</col>
		<col def="i4">Options</col>
		<col def="S255">InstallCondition</col>
		<col def="S255">RemoveCondition</col>
		<col def="S0">InstallProperties</col>
		<col def="S0">RemoveProperties</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackageData">
		<col key="yes" def="s72">Package_</col>
		<col key="yes" def="s72">File</col>
		<col def="s50">FilePath</col>
		<col def="I4">Options</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISClrWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISComCatalogAttribute">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col key="yes" def="s255">ItemName</col>
		<col def="S0">ItemValue</col>
	</table>

	<table name="ISComCatalogCollection">
		<col key="yes" def="s72">ISComCatalogCollection</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s255">CollectionName</col>
	</table>

	<table name="ISComCatalogCollectionObjects">
		<col key="yes" def="s72">ISComCatalogCollection_</col>
		<col key="yes" def="s72">ISComCatalogObject_</col>
	</table>

	<table name="ISComCatalogObject">
		<col key="yes" def="s72">ISComCatalogObject</col>
		<col def="s255">DisplayName</col>
	</table>

	<table name="ISComPlusApplication">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col def="S255">ComputerName</col>
		<col def="s72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusApplicationDLL">
		<col key="yes" def="s72">ISComPlusApplicationDLL</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s0">CLSID</col>
		<col def="S0">ProgId</col>
		<col def="S0">DLL</col>
		<col def="S0">AlterDLL</col>
	</table>

	<table name="ISComPlusProxy">
		<col key="yes" def="s72">ISComPlusProxy</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="S72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusProxyDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusProxyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComPlusServerDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusServerFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComponentExtended">
		<col key="yes" def="s72">Component_</col>
		<col def="I4">OS</col>
		<col def="S0">Language</col>
		<col def="s72">FilterProperty</col>
		<col def="I4">Platforms</col>
		<col def="S0">FTPLocation</col>
		<col def="S0">HTTPLocation</col>
		<col def="S0">Miscellaneous</col>
		<row><td>Antlr3.Runtime.dll</td><td/><td/><td>_31F17584_17F8_4181_B111_55AB9B77716B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Antlr3.Runtime.dll1</td><td/><td/><td>_CC28E233_F917_4D5F_925D_4E4AB5D901ED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Antlr3.Runtime.dll2</td><td/><td/><td>_F327EA19_693A_48F2_9BE6_FAF9A5DC048A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AspNet.ScriptManager.jQuery.UI.Combined.dll</td><td/><td/><td>_F5F538FB_D603_4AC4_AE79_677F711E41F5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AspNet.ScriptManager.jQuery.UI.Combined.dll1</td><td/><td/><td>_9CDFC1C9_E2DB_480D_A255_DEA40F549125_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AspNet.ScriptManager.jQuery.UI.Combined.dll2</td><td/><td/><td>_81D358BF_1C0B_4D2E_A8C9_3F2472415480_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AspNet.ScriptManager.jQuery.UI.Combined.dll3</td><td/><td/><td>_0420038F_DD02_49ED_AC29_598B2C743F5A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AspNet.ScriptManager.jQuery.dll</td><td/><td/><td>_B651C3DE_4015_432D_8867_6970E7B65890_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AspNet.ScriptManager.jQuery.dll1</td><td/><td/><td>_789C22A8_9CAA_442E_8B61_C580BC143C5D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AspNet.ScriptManager.jQuery.dll2</td><td/><td/><td>_D7D3E1A2_0211_4583_A4E6_9F70798688B1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AspNet.ScriptManager.jQuery.dll3</td><td/><td/><td>_CC0202AA_6607_46DF_8F38_F718F38149AC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaDatos.dll</td><td/><td/><td>_26F5A97B_E201_49D6_A7D6_5A2500CDED87_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaDatos.dll1</td><td/><td/><td>_C263C630_656C_461E_BC64_87715FD0DAD5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaDatos.dll2</td><td/><td/><td>_378D2414_668C_4158_8BE0_25A43F2BB66F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaDatos.dll3</td><td/><td/><td>_502885AB_FD2A_422E_A66D_73AEB7753D61_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaDatos.dll4</td><td/><td/><td>_2F85EF95_7FEE_403A_A7A0_1360AC05AA24_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaDatos.dll5</td><td/><td/><td>_F5890217_C2D3_4546_A699_99C73B029EA6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaNegocio.dll</td><td/><td/><td>_6FF566A8_49F6_42C2_9148_90D358A50819_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaNegocio.dll1</td><td/><td/><td>_367633E9_E3B1_45B7_9055_B76E9382E03C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaNegocio.dll2</td><td/><td/><td>_008630AF_3CB4_4A72_94C2_6B205C9BC31D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaNegocio.dll3</td><td/><td/><td>_40DD886A_E8C5_472B_B1B5_CCD8CB284DC6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaNegocio.dll4</td><td/><td/><td>_35E74522_33DD_478C_A234_D58A00AEDEC4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaNegocio.dll5</td><td/><td/><td>_5F12A4CD_E435_4FC0_95F7_AD50CFB39ED1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaPresentacion.dll</td><td/><td/><td>_C3DD2E4D_33C9_442B_AFCB_DCEDA4BB1A58_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaPresentacion.dll1</td><td/><td/><td>_3785BD1C_C2A7_4794_BCB3_0B8A39088166_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CapaPresentacion.dll2</td><td/><td/><td>_6B6F49D9_8B07_4234_AE79_84331A992851_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.AspNet.dll</td><td/><td/><td>_1AEF82D3_1551_48FC_A24E_B1B1F149FBB4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.AspNet.dll1</td><td/><td/><td>_CE5F3EA3_0441_4359_A433_86EBFD61C97D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.AspNet.dll2</td><td/><td/><td>_C0EA7181_8E52_4DAD_AD93_CEDF785761DE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.Core.dll</td><td/><td/><td>_CF91397C_349A_4D22_8BC7_1EF9B6511514_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.Core.dll1</td><td/><td/><td>_F639D527_C97E_4CEF_9E27_8D4EC4716E21_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.Core.dll2</td><td/><td/><td>_7D1FAB52_AA1A_462B_9A37_26340FDA9BA8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OAuth.Consumer.dll</td><td/><td/><td>_40BE314E_9AFE_4C77_B96B_3A8E84BA33A6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OAuth.Consumer.dll1</td><td/><td/><td>_84E3C6B2_885E_445A_90E7_38CE631A241D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OAuth.Consumer.dll2</td><td/><td/><td>_17B44020_6743_41A1_B827_0A6F765D18D3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OAuth.dll</td><td/><td/><td>_CB5249D1_A827_4439_81F9_0C8D5A313FDF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OAuth.dll1</td><td/><td/><td>_D7C4AB71_C6A8_4F3C_905C_0EE320434FDB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OAuth.dll2</td><td/><td/><td>_DDF737E1_7487_4C6A_8C13_6F0EBB60F3AE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OpenId.RelyingParty.dll</td><td/><td/><td>_10DA378F_276F_4235_9893_B3D4C40D734B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OpenId.RelyingParty.dll1</td><td/><td/><td>_3A93F755_04FE_4E74_A562_F7F2E3AE3E6A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OpenId.RelyingParty.dll2</td><td/><td/><td>_CAEF19C7_B448_4DD3_8D3D_DB74148E08D5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OpenId.dll</td><td/><td/><td>_A6E80AD1_6500_4D95_8F55_9171FC90DCBD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OpenId.dll1</td><td/><td/><td>_53286E40_EF2A_41F1_B6CA_7FA90A8634C1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DotNetOpenAuth.OpenId.dll2</td><td/><td/><td>_1FE70BDA_FDD0_41CE_BFBB_231BB217F4AF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.PowerShell.Utility.dll</td><td/><td/><td>_5DD7A87C_F285_45C6_A31A_95D768F057DA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.PowerShell.dll</td><td/><td/><td>_E655A20B_F17C_42A9_91E7_ECE74327ECF8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.dll</td><td/><td/><td>_A5DC0166_28B9_47C3_93BB_642191C5554B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.dll1</td><td/><td/><td>_5E128AD8_17AB_4850_837C_6EBEEEB97E26_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.dll2</td><td/><td/><td>_B0E7289A_B0C1_447C_84AE_790466297E22_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.dll3</td><td/><td/><td>_39ED77EA_674A_4801_B194_8FDBE8DCBEB5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.resources.dll</td><td/><td/><td>_997D4326_BD88_41C8_A83F_CB1BBA9FF58D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.resources.dll1</td><td/><td/><td>_E65E55D2_EE30_4779_9906_FB81B8665344_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.resources.dll2</td><td/><td/><td>_8DA174B9_2D82_4273_943F_7C646C32B2B7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.resources.dll3</td><td/><td/><td>_0241AEEE_D4B1_4E0F_A9EC_492C703A6F7B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EntityFramework.resources.dll4</td><td/><td/><td>_654A75A4_8F8C_42D8_AD08_0BB4664A8F8A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td/><td/><td>_97EA3C92_0EFB_4F32_8D0F_0C082192BEEE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td/><td/><td>_DFCD87EB_A5C4_415F_B926_5BE06A92267D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td/><td/><td>_19790331_6D2C_4F65_AD35_E36772A8BF5A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT100</td><td/><td/><td>_816886A9_BC66_4DE6_AEFD_B809E488B8A4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT101</td><td/><td/><td>_11AF72C8_A699_4034_A524_FD9DCA2415DD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT102</td><td/><td/><td>_F2FE1B0C_0F38_45EB_9CD7_A844A0A3E67F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT103</td><td/><td/><td>_774FF063_12CE_4843_AD7F_17030FAF1DC6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT104</td><td/><td/><td>_272B509E_5A4A_4E34_87DC_720B4EB58075_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT105</td><td/><td/><td>_E0EB55F3_381C_47FF_8BDE_D21243DC9048_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT106</td><td/><td/><td>_44FB13CE_560C_494A_8D4B_3CEA6C52ED53_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT107</td><td/><td/><td>_75C9BB85_789C_4504_8C11_F0336E47EE53_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT108</td><td/><td/><td>_9EAD42DA_A18B_4869_9A36_7F75FE25E295_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT109</td><td/><td/><td>_4282D1BF_5114_4709_B800_354181BAED15_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td/><td/><td>_FE711BD7_8A47_48B9_AB1E_E37258217532_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT110</td><td/><td/><td>_AEA56008_A38C_408B_8FC9_A54E6834152A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT111</td><td/><td/><td>_59148E55_8D74_424D_8631_C9389F933FE7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT112</td><td/><td/><td>_20CAB648_0DEC_4998_BAD6_137867D810B2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT113</td><td/><td/><td>_7E5F3440_5A4D_485F_A192_1CFE5F20F12D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT114</td><td/><td/><td>_A8A5E33F_F9C4_4BBB_A42D_1BB0EC9AD88D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT115</td><td/><td/><td>_BF83B6A4_D828_4791_AF76_D011D4838284_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT116</td><td/><td/><td>_53940C36_8E1F_4198_B38A_BD927ED10EC6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT117</td><td/><td/><td>_A2B29F3C_E852_40FB_BF54_C43C25076916_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT118</td><td/><td/><td>_509FC4CB_5F63_483E_A28D_009880B1B8CF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT119</td><td/><td/><td>_E9A3ED7B_CCFE_4BD7_BF40_382BDEF68971_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td/><td/><td>_969AC9D3_AE96_4271_82DD_DF6AF0C43DFF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT120</td><td/><td/><td>_B4017E7B_2345_45AA_8E0C_62693722C439_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT121</td><td/><td/><td>_68F8F2B3_D7F7_494D_A4B5_C7D0ED6FA9F4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT122</td><td/><td/><td>_8233C46B_F53D_4675_B925_F4185F9EE8AE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT123</td><td/><td/><td>_C0957427_EC96_4D73_8A48_433D94AF4E67_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT124</td><td/><td/><td>_84895A77_18E6_4C6B_B5F8_597FB5394DE6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT125</td><td/><td/><td>_D09209DD_EAF2_43BC_BED8_189B758222C6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT126</td><td/><td/><td>_868440F9_E9AD_43E4_BD4F_DE652758FF32_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT127</td><td/><td/><td>_7F4DFBE5_D7BD_439D_8096_EE1ACCCF28EB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT128</td><td/><td/><td>_98D5367C_BEC1_4A03_BE32_B458B41AA29D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT129</td><td/><td/><td>_2372424B_4BA0_4783_9A91_042CDCCBF53E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td/><td/><td>_96874FBE_B1FE_4B36_ABAA_3B4532AFEEC0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT130</td><td/><td/><td>_3086F53E_0A0F_4198_A008_FB755027062A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT131</td><td/><td/><td>_5B6B7546_EA2F_4BB7_81B0_B93E0A52859E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT132</td><td/><td/><td>_FF9C70BC_9D04_4638_9DF9_C42227D2C75F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT133</td><td/><td/><td>_1E8DAAEC_AF76_4414_8C8A_D9D3E256A8C6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT134</td><td/><td/><td>_FEE043B5_8D30_4BAA_BCBE_9C9E875C0EC8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT135</td><td/><td/><td>_33D7401B_330F_4AC5_976A_582AD5C1E92B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT136</td><td/><td/><td>_FD483A75_F875_4462_AC35_6C807755A902_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT137</td><td/><td/><td>_E9BC6725_35F0_448E_A909_42738E1174DE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT138</td><td/><td/><td>_C5484B62_26B4_4751_AA49_8AB248539402_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT139</td><td/><td/><td>_333DA35B_E807_4568_AF21_0326EC69B92F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td/><td/><td>_8F821CA6_D524_4850_836E_FAE478E0C679_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT140</td><td/><td/><td>_8C07AB29_4149_4904_9093_761DD5BB9E20_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT141</td><td/><td/><td>_A8AAF839_9D05_4153_B456_D6BA076DF375_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT142</td><td/><td/><td>_1803EA99_99AB_45DB_B63A_C96FFD2C9FCA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT143</td><td/><td/><td>_05FBB24B_FE18_41FE_AE9D_C420A35836B6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT144</td><td/><td/><td>_3852BE03_DD51_4B42_88BD_F083884D4566_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT145</td><td/><td/><td>_1D7597A5_9EB1_4E56_96D9_425B1134DFB6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT146</td><td/><td/><td>_E588ED76_9F7F_4F5D_8159_0E376CE8D86B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT147</td><td/><td/><td>_66CD0613_9E20_4AE3_97FE_719431B7F0E9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT148</td><td/><td/><td>_FEF1494B_7EBD_4A9B_B792_C0AB82F945D5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT149</td><td/><td/><td>_2B611EF5_F603_41E3_9048_E3369B59FB48_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td/><td/><td>_BC1D4E88_1F22_4D28_AA7B_01BE5C99ADFE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT150</td><td/><td/><td>_D62D98A4_5499_4CA8_BF73_4BD8BBA4B9F9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT151</td><td/><td/><td>_17389685_F936_4D65_BEF9_922EBC482872_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT152</td><td/><td/><td>_CFBC04B7_802C_455C_9455_D381A844B146_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT153</td><td/><td/><td>_F65FF00C_AE22_4580_A309_A16C12F48776_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT154</td><td/><td/><td>_22183765_02A2_4621_AE35_73604A59347B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT155</td><td/><td/><td>_99F0E770_CFA6_478A_A4DD_2E8436DB39E9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT156</td><td/><td/><td>_63E73E0C_38E7_4D30_852E_D14761DB9307_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT157</td><td/><td/><td>_BBC57E0B_E8CF_447D_8D24_B28A15BF4167_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT158</td><td/><td/><td>_48173A1B_CC1E_43F4_A6A7_AEFB13EA4E78_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT159</td><td/><td/><td>_17C4A83E_676B_48E8_B275_9F515A2CAB4E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td/><td/><td>_0AFEC8B9_2829_4029_8650_318FA794BABB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT160</td><td/><td/><td>_78DAF475_D0A6_4538_8C3A_9A4FF74261E8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT161</td><td/><td/><td>_4B37F791_96D1_4EAF_B6C0_C9E2497C7E17_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT162</td><td/><td/><td>_54326AB8_B8DE_423D_ACFE_E23796FC279B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT163</td><td/><td/><td>_8E6D85C4_D858_4767_9F2C_10F85A4D75AF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT164</td><td/><td/><td>_649876FB_4866_42D2_8A6D_F13D43866317_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT165</td><td/><td/><td>_A784D354_1423_4CCD_B30B_9EE6B3B5A9A9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT166</td><td/><td/><td>_960F6AFA_6F06_4F76_B236_0DEF88DDE1F0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td/><td/><td>_242F6914_8B1D_4011_B773_0CD435544566_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td/><td/><td>_8C652D18_C7AB_4BDB_8B77_5642AB4FB42A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td/><td/><td>_717405E3_6F30_4F5F_80AB_9D35F111AE72_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td/><td/><td>_173E4501_999D_4D6C_90E3_A9462BD2BA6C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td/><td/><td>_5F33AAAB_3C95_49AC_B3BF_B4FD661F67FB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td/><td/><td>_CB3ABE48_9FB5_4C6C_A5B7_E231805F0047_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td/><td/><td>_2F32877B_16A6_4454_8B47_AF5FC0708699_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td/><td/><td>_4E5C0C79_492D_41FD_942A_E03A13E43DB4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td/><td/><td>_6771F66A_2481_4672_B6A2_37B612D83965_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td/><td/><td>_727BD268_E2B4_40DE_992A_0302DAF9151E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td/><td/><td>_3EE65E3C_4198_414F_BD1D_D30BC36C2990_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td/><td/><td>_680651CD_CE08_4901_BB66_7A1E79A77CAA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td/><td/><td>_8DE4BE77_F905_43E3_B5A0_7BAE93DB4D37_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td/><td/><td>_1F8093DC_B25D_41D2_9944_B0B56809450F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td/><td/><td>_FF34F35C_B39C_49E9_B042_9AB2EAB63ED5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td/><td/><td>_E38BB57F_065C_49D2_9CD0_1F219DC3205A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td/><td/><td>_54882EE2_FF69_4D2A_96FB_00E4BD958170_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td/><td/><td>_3BB856D9_FB3F_424D_9AB7_522EC534CD1D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td/><td/><td>_C768276A_26ED_4CA6_825B_5D1A3638666F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td/><td/><td>_AE510364_3FE0_4559_BE6F_A70D7EA83958_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td/><td/><td>_301215B7_3C7B_4B8D_8F34_9CE32DB59A1F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td/><td/><td>_4D771824_DB8A_4D3E_BBFD_6DA094318442_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td/><td/><td>_F74421BA_02F8_438B_84DC_71650509E849_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td/><td/><td>_2DEF6EA5_68F0_4313_BBE6_671D907EFA24_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td/><td/><td>_6E1B3255_23AB_44EE_960E_832206B2597A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td/><td/><td>_F51605F5_ED28_43CF_9682_8C2C2669F4A1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td/><td/><td>_DC7FFD39_AFE3_4691_81FA_85EC64BF9D35_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td/><td/><td>_B18A3A8A_B8E0_4FA7_BCA4_B833C2F6C009_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td/><td/><td>_BE7E20BA_B844_4D28_8E93_241291DE9061_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td/><td/><td>_CAA36511_60B3_4C92_AF81_ABD885C59D40_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td/><td/><td>_28B1E3EA_F560_4F7B_A37B_2B645D6B890D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td/><td/><td>_0A2395AE_33EF_4107_9989_E2E476692B0E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td/><td/><td>_028B411D_E5E9_4C9D_AD0A_005643D59E9A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td/><td/><td>_91390461_271C_4B3F_94F5_FBA97ECE48D0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td/><td/><td>_9F2FF7E9_6BE5_4F85_9CB8_169CF1BDF629_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td/><td/><td>_A86474C9_9DE4_4D49_99F1_52B488AD7A85_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td/><td/><td>_7FB7288A_580B_43AA_B437_C21EAF73870C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT50</td><td/><td/><td>_3963954F_B10F_466B_BAF4_C8D800AEE39E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT51</td><td/><td/><td>_B658AFE7_1A88_4E36_9AEE_B2BA0C8FE8B4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT52</td><td/><td/><td>_CE76BA2A_BECF_4663_8A86_F8C2DAF0A514_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT53</td><td/><td/><td>_B94E6FA1_E9E6_455D_A4E3_A2C9748059E2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT54</td><td/><td/><td>_ECBC770E_62A4_47AF_97B8_2BFC87F6B551_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT55</td><td/><td/><td>_0165202C_B564_4ED9_8238_8C22E5A04C88_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT56</td><td/><td/><td>_6C8EA2C6_4204_4B65_A761_08328D6DB3F0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT57</td><td/><td/><td>_9DB2458B_F911_4D57_8A4F_C1B5DB20A2B8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT58</td><td/><td/><td>_07E90DF8_9DEC_4430_8AAA_792A4C4842CB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT59</td><td/><td/><td>_D705FCCC_E9FD_42DB_B051_8AE21D96FA3F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td/><td/><td>_B78FDB2F_FC41_4A8D_813E_86299E7B1003_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT60</td><td/><td/><td>_F3102411_6956_428C_B55B_67C65A901699_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT61</td><td/><td/><td>_D9CB5541_B73F_470D_BE20_5F5BF39AF8F8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT62</td><td/><td/><td>_98B452B9_F7B8_4DB1_A101_20F390C3BD2A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT63</td><td/><td/><td>_80291089_F6F6_4CC8_9251_8CC3DA7976A1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT64</td><td/><td/><td>_37F3B4E4_E1A9_422C_97D7_82977676D2B5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT65</td><td/><td/><td>_1B554980_B6A3_4CA1_89E1_6997802D5F80_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT66</td><td/><td/><td>_9A165C9D_C2A7_4370_9271_1FA4E12C2A9F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT67</td><td/><td/><td>_F82661AF_35A3_4657_AEDA_F3BF3A0D51F8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT68</td><td/><td/><td>_0943E58D_2667_4C85_81BD_63A602975087_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT69</td><td/><td/><td>_A71B2AF0_12FF_4DF3_AE04_BA2E1FF93445_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td/><td/><td>_F299261C_3AAD_45C1_9307_E38DB8B270CB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT70</td><td/><td/><td>_8DBEF70B_7ED7_4A57_8384_550FEC591721_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT71</td><td/><td/><td>_20DA8498_39DA_458D_ADB0_410EE147D8AA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT72</td><td/><td/><td>_47FBA52B_94F9_4521_9C53_C7AA5DD62B3F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT73</td><td/><td/><td>_058C1868_F3E2_4028_A24D_677A8F680F00_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT74</td><td/><td/><td>_0C881CC9_0244_4CCE_9B8A_CD8790E05F68_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT75</td><td/><td/><td>_F2A20E35_D9B0_43BB_B957_F4E3983AD745_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT76</td><td/><td/><td>_251B1965_DBFE_4E54_931A_E272637A23F6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT77</td><td/><td/><td>_9EBAEA92_30EA_4F12_9BEB_918F31A34ECE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT78</td><td/><td/><td>_C4B55FC8_4420_4FED_A894_397A06BB339C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT79</td><td/><td/><td>_8A2A9D52_20B7_4F70_B8A5_B9EB95BB4195_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td/><td/><td>_82619118_E215_4861_B34C_ED7668744E08_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT80</td><td/><td/><td>_75AD184A_86EE_44F2_AEA0_7FC35D641497_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT81</td><td/><td/><td>_56A7DD8A_1972_417B_8970_4291C380C3CC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT82</td><td/><td/><td>_AD2FB353_37B2_4808_B05D_F25ED932611E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT83</td><td/><td/><td>_59796FA7_7D6C_4ACD_A90E_63C399607584_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT84</td><td/><td/><td>_FA951C85_AB8A_432C_9B6D_162F1BFA3B52_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT85</td><td/><td/><td>_954C35DB_C023_40CD_8470_B872D732F3DC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT86</td><td/><td/><td>_A04DCAF3_BBA6_4F53_8D08_C52616D4EE03_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT87</td><td/><td/><td>_899CC6F3_3D4F_4060_8D54_D016ACE3B45C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT88</td><td/><td/><td>_581CB704_AC2C_4161_8535_06A89270305A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT89</td><td/><td/><td>_D3DFD4D8_D38B_499A_BE39_E0DA961B1BE2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td/><td/><td>_B705A9B9_2AE2_48CD_B441_EF7AFBE9F0D8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT90</td><td/><td/><td>_24546ECA_45FE_4F06_9A63_264120A71934_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT91</td><td/><td/><td>_25512DD2_7F61_4DC5_8426_A57B98606055_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT92</td><td/><td/><td>_09EAEFE6_404A_44A6_A39C_82670DF6C3B6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT93</td><td/><td/><td>_9FEBD04C_6ED3_4E1B_BD4A_C5E7F3FAD2D2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT94</td><td/><td/><td>_FC8A2548_7263_4660_9AC6_039BBDA2C8BE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT95</td><td/><td/><td>_5FFD6A42_4DD1_4484_B07D_C93F2921B2EA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT96</td><td/><td/><td>_5A88C37A_5DDD_42EF_AC4E_B80E15BC87FF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT97</td><td/><td/><td>_CE3748EA_5ED9_4B95_A49D_5687CC6BFD1F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT98</td><td/><td/><td>_4D0022E9_98D4_4F46_9C70_8C073BA22A0C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT99</td><td/><td/><td>_250F5917_9877_4347_BD7C_F7F3510843C8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IS_ININSTALL_SHORTCUT</td><td/><td/><td>_9058F483_6712_4307_A8ED_0538EC80B939_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.dll</td><td/><td/><td>_4B2BB191_7161_4963_A744_7C1B012EF194_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.dll1</td><td/><td/><td>_5D90D79D_D7C9_4AC8_8A3C_B3A5809A541D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.dll2</td><td/><td/><td>_514F0C4B_B8B9_474D_8A03_457C786E4A29_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.dll3</td><td/><td/><td>_3403CFC9_5142_4D22_A83F_852A0F4922DF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll</td><td/><td/><td>_3AD09FC1_2111_42CE_BF70_7BF66EDFA8A5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll1</td><td/><td/><td>_5DC342D1_649E_4D35_9CEE_4DBA9CBC6A4E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll2</td><td/><td/><td>_E26E76A7_AF9B_4E11_997A_795F1A529B4E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll3</td><td/><td/><td>_0F23772C_2101_45A3_9AD1_65822CEE83EA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Membership.OpenAuth.resources.dll4</td><td/><td/><td>_EAFB3C64_D703_4F56_A609_4BFF0847AA42_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Web.Optimization.WebForms.dll</td><td/><td/><td>_C225B05E_5894_4FF3_9B3A_329A50D786F5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Web.Optimization.WebForms.dll1</td><td/><td/><td>_5A0D98E4_10F4_406C_8F30_8A515879B152_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AspNet.Web.Optimization.WebForms.dll2</td><td/><td/><td>_31125B37_6A29_4F92_B1E5_BD41F3077BC6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.ScriptManager.MSAjax.dll</td><td/><td/><td>_CDCCD46C_2F9F_4B9D_BD87_D46984489458_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.ScriptManager.MSAjax.dll1</td><td/><td/><td>_4FE58D49_519F_4BCD_9365_92B134EBB953_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.ScriptManager.MSAjax.dll2</td><td/><td/><td>_706928A3_0D4F_406D_B216_A035E41A68D8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.ScriptManager.WebForms.dll</td><td/><td/><td>_46A86BBD_1AD0_48B5_AF98_9A759DE16B0D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.ScriptManager.WebForms.dll1</td><td/><td/><td>_C1F0A8EF_3F45_4AFE_91F3_A188FEE1C515_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.ScriptManager.WebForms.dll2</td><td/><td/><td>_02ADE355_7C3A_47C6_A3D5_243BD0B35C57_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.Web.Infrastructure.dll</td><td/><td/><td>_6938B93C_F4D5_4282_9BF6_5F7D6917A14E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.Web.Infrastructure.dll1</td><td/><td/><td>_A79D12B4_3D98_42BB_BAC4_A5AF673C53BA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.Web.Infrastructure.dll2</td><td/><td/><td>_7E0C2242_BC1C_450C_9837_4AEF4178509D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Optimization.dll</td><td/><td/><td>_42B383D3_5A2B_4932_8716_974E9DB1B8D9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Optimization.dll1</td><td/><td/><td>_B0FDA7B9_B8DE_4822_8671_CF46EA084D07_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Optimization.dll2</td><td/><td/><td>_833E8EC0_BE07_44B0_BEE3_75B19F4047CD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Optimization.resources.dll</td><td/><td/><td>_B6689D88_B407_4C3D_BE1E_E10EDD062AB1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Optimization.resources.dll1</td><td/><td/><td>_94FC7B2C_3E3F_4EA7_BB59_AD5E47EBE2D2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Optimization.resources.dll2</td><td/><td/><td>_14C6D6B5_5977_48F7_979F_80409DE435A7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Providers.dll</td><td/><td/><td>_2FE60767_13CB_4CB0_ADFC_CB35153664E5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Providers.dll1</td><td/><td/><td>_C147CD6F_3094_4943_B4B4_064A21258F73_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Providers.dll2</td><td/><td/><td>_DCEC276A_3D19_4178_A00D_C4F3EA5C0E55_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Providers.resources.dll</td><td/><td/><td>_9FA129D6_E98A_4E87_9D22_5527000DF7ED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Providers.resources.dll1</td><td/><td/><td>_FA33D159_D264_4E94_BAFC_80013C7B350E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>System.Web.Providers.resources.dll2</td><td/><td/><td>_F6A6C5F2_C6F0_4C6E_989F_EDF881B59B26_FILTER</td><td/><td/><td/><td/></row>
		<row><td>WG.exe</td><td/><td/><td>_1950CCBA_7CB4_4053_B426_47983F76BABE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>WebGrease.dll</td><td/><td/><td>_1AC011D8_0309_4510_B2AA_EA1A3296A704_FILTER</td><td/><td/><td/><td/></row>
		<row><td>WebGrease.dll1</td><td/><td/><td>_AF1F7DB0_01BA_4CCF_AC24_5BC131FB0F57_FILTER</td><td/><td/><td/><td/></row>
		<row><td>WebGrease.dll2</td><td/><td/><td>_350E7ACB_A6A8_4387_A178_203F8BEF949D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>_IsIcoRes.Exe</td><td/><td/><td>_4F0FC91A_DEC7_4F9B_A2DE_58F0744A7FA2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>migrate.exe</td><td/><td/><td>_5AF0879F_7E19_4569_8014_CD99DBD35A57_FILTER</td><td/><td/><td/><td/></row>
		<row><td>setup.exe</td><td/><td/><td>_C0DC4233_BADF_48B3_A1F7_C54668E43280_FILTER</td><td/><td/><td/><td/></row>
	</table>

	<table name="ISCustomActionReference">
		<col key="yes" def="s72">Action_</col>
		<col def="S0">Description</col>
		<col def="S255">FileType</col>
		<col def="S255">ISCAReferenceFilePath</col>
	</table>

	<table name="ISDIMDependency">
		<col key="yes" def="s72">ISDIMReference_</col>
		<col def="s255">RequiredUUID</col>
		<col def="S255">RequiredMajorVersion</col>
		<col def="S255">RequiredMinorVersion</col>
		<col def="S255">RequiredBuildVersion</col>
		<col def="S255">RequiredRevisionVersion</col>
	</table>

	<table name="ISDIMReference">
		<col key="yes" def="s72">ISDIMReference</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISDIMReferenceDependencies">
		<col key="yes" def="s72">ISDIMReference_Parent</col>
		<col key="yes" def="s72">ISDIMDependency_</col>
	</table>

	<table name="ISDIMVariable">
		<col key="yes" def="s72">ISDIMVariable</col>
		<col def="s72">ISDIMReference_</col>
		<col def="s0">Name</col>
		<col def="S0">NewValue</col>
		<col def="I4">Type</col>
	</table>

	<table name="ISDLLWrapper">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s0">Source</col>
		<col def="s255">Target</col>
	</table>

	<table name="ISDependency">
		<col key="yes" def="S50">ISDependency</col>
		<col def="I2">Exclude</col>
	</table>

	<table name="ISDisk1File">
		<col key="yes" def="s72">ISDisk1File</col>
		<col def="s255">ISBuildSourcePath</col>
		<col def="I4">Disk</col>
	</table>

	<table name="ISDynamicFile">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">SourceFolder</col>
		<col def="I2">IncludeFlags</col>
		<col def="S0">IncludeFiles</col>
		<col def="S0">ExcludeFiles</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISFeatureDIMReferences">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISDIMReference_</col>
	</table>

	<table name="ISFeatureMergeModuleExcludes">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ModuleID</col>
		<col key="yes" def="i2">Language</col>
	</table>

	<table name="ISFeatureMergeModules">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
	</table>

	<table name="ISFeatureSetupPrerequisites">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISSetupPrerequisites_</col>
	</table>

	<table name="ISFileManifests">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Manifest_</col>
	</table>

	<table name="ISIISItem">
		<col key="yes" def="s72">ISIISItem</col>
		<col def="S72">ISIISItem_Parent</col>
		<col def="L255">DisplayName</col>
		<col def="i4">Type</col>
		<col def="S72">Component_</col>
	</table>

	<table name="ISIISProperty">
		<col key="yes" def="s72">ISIISProperty</col>
		<col key="yes" def="s72">ISIISItem_</col>
		<col def="S0">Schema</col>
		<col def="S255">FriendlyName</col>
		<col def="I4">MetaDataProp</col>
		<col def="I4">MetaDataType</col>
		<col def="I4">MetaDataUserType</col>
		<col def="I4">MetaDataAttributes</col>
		<col def="L0">MetaDataValue</col>
		<col def="I4">Order</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISInstallScriptAction">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s72">Source</col>
		<col def="S255">Target</col>
	</table>

	<table name="ISLanguage">
		<col key="yes" def="s50">ISLanguage</col>
		<col def="I2">Included</col>
		<row><td>1033</td><td>1</td></row>
	</table>

	<table name="ISLinkerLibrary">
		<col key="yes" def="s72">ISLinkerLibrary</col>
		<col def="s255">Library</col>
		<col def="i4">Order</col>
		<row><td>isrt.obl</td><td>isrt.obl</td><td>2</td></row>
		<row><td>iswi.obl</td><td>iswi.obl</td><td>1</td></row>
	</table>

	<table name="ISLocalControl">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="I2">X</col>
		<col def="I2">Y</col>
		<col def="I2">Width</col>
		<col def="I2">Height</col>
		<col def="S72">Binary_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISLocalDialog">
		<col key="yes" def="S50">Dialog_</col>
		<col key="yes" def="S50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="S72">TextStyle_</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLocalRadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISLogicalDisk">
		<col key="yes" def="i2">DiskId</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="ISLogicalDiskFeatures">
		<col key="yes" def="i2">ISLogicalDisk_</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col key="yes" def="S38">Feature_</col>
		<col def="i2">Sequence</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModule">
		<col key="yes" def="s255">ISMergeModule</col>
		<col key="yes" def="i2">Language</col>
		<col def="s255">Name</col>
		<col def="S255">Destination</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModuleCfgValues">
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
		<col key="yes" def="s72">ModuleConfiguration_</col>
		<col def="L0">Value</col>
		<col def="i2">Format</col>
		<col def="L255">Type</col>
		<col def="L255">ContextData</col>
		<col def="L255">DefaultValue</col>
		<col def="I2">Attributes</col>
		<col def="L255">DisplayName</col>
		<col def="L255">Description</col>
		<col def="L255">HelpLocation</col>
		<col def="L255">HelpKeyword</col>
	</table>

	<table name="ISObject">
		<col key="yes" def="s50">ObjectName</col>
		<col def="s15">Language</col>
	</table>

	<table name="ISObjectProperty">
		<col key="yes" def="S50">ObjectName</col>
		<col key="yes" def="S50">Property</col>
		<col def="S0">Value</col>
		<col def="I2">IncludeInBuild</col>
	</table>

	<table name="ISPatchConfigImage">
		<col key="yes" def="S72">PatchConfiguration_</col>
		<col key="yes" def="s72">UpgradedImage_</col>
	</table>

	<table name="ISPatchConfiguration">
		<col key="yes" def="s72">Name</col>
		<col def="i2">CanPCDiffer</col>
		<col def="i2">CanPVDiffer</col>
		<col def="i2">IncludeWholeFiles</col>
		<col def="i2">LeaveDecompressed</col>
		<col def="i2">OptimizeForSize</col>
		<col def="i2">EnablePatchCache</col>
		<col def="S0">PatchCacheDir</col>
		<col def="i4">Flags</col>
		<col def="S0">PatchGuidsToReplace</col>
		<col def="s0">TargetProductCodes</col>
		<col def="s50">PatchGuid</col>
		<col def="s0">OutputPath</col>
		<col def="i2">MinMsiVersion</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISPatchConfigurationProperty">
		<col key="yes" def="S72">ISPatchConfiguration_</col>
		<col key="yes" def="S50">Property</col>
		<col def="S50">Value</col>
	</table>

	<table name="ISPatchExternalFile">
		<col key="yes" def="s50">Name</col>
		<col key="yes" def="s13">ISUpgradedImage_</col>
		<col def="s72">FileKey</col>
		<col def="s255">FilePath</col>
	</table>

	<table name="ISPatchWholeFile">
		<col key="yes" def="s50">UpgradedImage</col>
		<col key="yes" def="s72">FileKey</col>
		<col def="S72">Component</col>
	</table>

	<table name="ISPathVariable">
		<col key="yes" def="s72">ISPathVariable</col>
		<col def="S255">Value</col>
		<col def="S255">TestValue</col>
		<col def="i4">Type</col>
		<row><td>CommonFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>ISPROJECTDIR</td><td/><td/><td>1</td></row>
		<row><td>ISProductFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectDataFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectFolder</td><td/><td/><td>1</td></row>
		<row><td>ProgramFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>SystemFolder</td><td/><td/><td>1</td></row>
		<row><td>WindowsFolder</td><td/><td/><td>1</td></row>
	</table>

	<table name="ISProductConfiguration">
		<col key="yes" def="s72">ISProductConfiguration</col>
		<col def="S255">ProductConfigurationFlags</col>
		<col def="I4">GeneratePackageCode</col>
		<row><td>Express</td><td/><td>1</td></row>
	</table>

	<table name="ISProductConfigurationInstance">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="i2">InstanceId</col>
		<col key="yes" def="s72">Property</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISProductConfigurationProperty">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Property</col>
		<col def="L255">Value</col>
	</table>

	<table name="ISRelease">
		<col key="yes" def="s72">ISRelease</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="s255">BuildLocation</col>
		<col def="s255">PackageName</col>
		<col def="i4">Type</col>
		<col def="s0">SupportedLanguagesUI</col>
		<col def="i4">MsiSourceType</col>
		<col def="i4">ReleaseType</col>
		<col def="s72">Platforms</col>
		<col def="S0">SupportedLanguagesData</col>
		<col def="s6">DefaultLanguage</col>
		<col def="i4">SupportedOSs</col>
		<col def="s50">DiskSize</col>
		<col def="i4">DiskSizeUnit</col>
		<col def="i4">DiskClusterSize</col>
		<col def="S0">ReleaseFlags</col>
		<col def="i4">DiskSpanning</col>
		<col def="S255">SynchMsi</col>
		<col def="s255">MediaLocation</col>
		<col def="S255">URLLocation</col>
		<col def="S255">DigitalURL</col>
		<col def="S255">DigitalPVK</col>
		<col def="S255">DigitalSPC</col>
		<col def="S255">Password</col>
		<col def="S255">VersionCopyright</col>
		<col def="i4">Attributes</col>
		<col def="S255">CDBrowser</col>
		<col def="S255">DotNetBuildConfiguration</col>
		<col def="S255">MsiCommandLine</col>
		<col def="I4">ISSetupPrerequisiteLocation</col>
		<row><td>CD_ROM</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>0</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>650</td><td>0</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>Custom</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>2</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>100</td><td>0</td><td>1024</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-10</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>8.75</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-18</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>15.83</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-5</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>4.38</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-9</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>7.95</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>SingleImage</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>1</td><td>1033</td><td>0</td><td>1</td><td>Intel</td><td/><td>1033</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>108573</td><td/><td/><td/><td>3</td></row>
		<row><td>WebDeployment</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>4</td><td>1033</td><td>2</td><td>1</td><td>Intel</td><td/><td>1033</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>124941</td><td/><td/><td/><td>3</td></row>
	</table>

	<table name="ISReleaseASPublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="S0">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISReleaseExtended">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="I4">WebType</col>
		<col def="S255">WebURL</col>
		<col def="I4">WebCabSize</col>
		<col def="S255">OneClickCabName</col>
		<col def="S255">OneClickHtmlName</col>
		<col def="S255">WebLocalCachePath</col>
		<col def="I4">EngineLocation</col>
		<col def="S255">Win9xMsiUrl</col>
		<col def="S255">WinNTMsiUrl</col>
		<col def="I4">ISEngineLocation</col>
		<col def="S255">ISEngineURL</col>
		<col def="I4">OneClickTargetBrowser</col>
		<col def="S255">DigitalCertificateIdNS</col>
		<col def="S255">DigitalCertificateDBaseNS</col>
		<col def="S255">DigitalCertificatePasswordNS</col>
		<col def="I4">DotNetRedistLocation</col>
		<col def="S255">DotNetRedistURL</col>
		<col def="I4">DotNetVersion</col>
		<col def="S255">DotNetBaseLanguage</col>
		<col def="S0">DotNetLangaugePacks</col>
		<col def="S255">DotNetFxCmdLine</col>
		<col def="S255">DotNetLangPackCmdLine</col>
		<col def="S50">JSharpCmdLine</col>
		<col def="I4">Attributes</col>
		<col def="I4">JSharpRedistLocation</col>
		<col def="I4">MsiEngineVersion</col>
		<col def="S255">WinMsi30Url</col>
		<col def="S255">CertPassword</col>
		<row><td>CD_ROM</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>Custom</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-10</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-18</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-5</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-9</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>SingleImage</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>1</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>WebDeployment</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>setup</td><td>Default</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>2</td><td>http://www.Installengine.com/Msiengine20</td><td>http://www.Installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
	</table>

	<table name="ISReleaseProperty">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
	</table>

	<table name="ISReleasePublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="S255">Repository</col>
		<col def="S255">DisplayName</col>
		<col def="S255">Publisher</col>
		<col def="S255">Description</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISSQLConnection">
		<col key="yes" def="s72">ISSQLConnection</col>
		<col def="s255">Server</col>
		<col def="s255">Database</col>
		<col def="s255">UserName</col>
		<col def="s255">Password</col>
		<col def="s255">Authentication</col>
		<col def="i2">Attributes</col>
		<col def="i2">Order</col>
		<col def="S0">Comments</col>
		<col def="I4">CmdTimeout</col>
		<col def="S0">BatchSeparator</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
	</table>

	<table name="ISSQLConnectionDBServer">
		<col key="yes" def="s72">ISSQLConnectionDBServer</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLDBMetaData_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLConnectionScript">
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLDBMetaData">
		<col key="yes" def="s72">ISSQLDBMetaData</col>
		<col def="S0">DisplayName</col>
		<col def="S0">AdoDriverName</col>
		<col def="S0">AdoCxnDriver</col>
		<col def="S0">AdoCxnServer</col>
		<col def="S0">AdoCxnDatabase</col>
		<col def="S0">AdoCxnUserID</col>
		<col def="S0">AdoCxnPassword</col>
		<col def="S0">AdoCxnWindowsSecurity</col>
		<col def="S0">AdoCxnNetLibrary</col>
		<col def="S0">TestDatabaseCmd</col>
		<col def="S0">TestTableCmd</col>
		<col def="S0">VersionInfoCmd</col>
		<col def="S0">VersionBeginToken</col>
		<col def="S0">VersionEndToken</col>
		<col def="S0">LocalInstanceNames</col>
		<col def="S0">CreateDbCmd</col>
		<col def="S0">SwitchDbCmd</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">TestTableCmd2</col>
		<col def="S0">WinAuthentUserId</col>
		<col def="S0">DsnODBCName</col>
		<col def="S0">AdoCxnPort</col>
		<col def="S0">AdoCxnAdditional</col>
		<col def="S0">QueryDatabasesCmd</col>
		<col def="S0">CreateTableCmd</col>
		<col def="S0">InsertRecordCmd</col>
		<col def="S0">SelectTableCmd</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
		<col def="S0">ScriptVersion_ColumnType</col>
	</table>

	<table name="ISSQLRequirement">
		<col key="yes" def="s72">ISSQLRequirement</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col def="S15">MajorVersion</col>
		<col def="S25">ServicePackLevel</col>
		<col def="i4">Attributes</col>
		<col def="S72">ISSQLConnectionDBServer_</col>
	</table>

	<table name="ISSQLScriptError">
		<col key="yes" def="i4">ErrNumber</col>
		<col key="yes" def="S72">ISSQLScriptFile_</col>
		<col def="i2">ErrHandling</col>
		<col def="L255">Message</col>
		<col def="i2">Attributes</col>
	</table>

	<table name="ISSQLScriptFile">
		<col key="yes" def="s72">ISSQLScriptFile</col>
		<col def="s72">Component_</col>
		<col def="i2">Scheduling</col>
		<col def="L255">InstallText</col>
		<col def="L255">UninstallText</col>
		<col def="S0">ISBuildSourcePath</col>
		<col def="S0">Comments</col>
		<col def="i2">ErrorHandling</col>
		<col def="i2">Attributes</col>
		<col def="S255">Version</col>
		<col def="S255">Condition</col>
		<col def="S0">DisplayName</col>
	</table>

	<table name="ISSQLScriptImport">
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S255">Server</col>
		<col def="S255">Database</col>
		<col def="S255">UserName</col>
		<col def="S255">Password</col>
		<col def="i4">Authentication</col>
		<col def="S0">IncludeTables</col>
		<col def="S0">ExcludeTables</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISSQLScriptReplace">
		<col key="yes" def="s72">ISSQLScriptReplace</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S0">Search</col>
		<col def="S0">Replace</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISScriptFile">
		<col key="yes" def="s255">ISScriptFile</col>
	</table>

	<table name="ISSelfReg">
		<col key="yes" def="s72">FileKey</col>
		<col def="I2">Cost</col>
		<col def="I2">Order</col>
		<col def="S50">CmdLine</col>
	</table>

	<table name="ISSetupFile">
		<col key="yes" def="s72">ISSetupFile</col>
		<col def="S255">FileName</col>
		<col def="V0">Stream</col>
		<col def="S50">Language</col>
		<col def="I2">Splash</col>
		<col def="S0">Path</col>
	</table>

	<table name="ISSetupPrerequisites">
		<col key="yes" def="s72">ISSetupPrerequisites</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">Order</col>
		<col def="I2">ISSetupLocation</col>
		<col def="S255">ISReleaseFlags</col>
	</table>

	<table name="ISSetupType">
		<col key="yes" def="s38">ISSetupType</col>
		<col def="L255">Description</col>
		<col def="L255">Display_Name</col>
		<col def="i2">Display</col>
		<col def="S255">Comments</col>
		<row><td>Custom</td><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Custom##</td><td>3</td><td/></row>
		<row><td>Minimal</td><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Minimal##</td><td>2</td><td/></row>
		<row><td>Typical</td><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td>1</td><td/></row>
	</table>

	<table name="ISSetupTypeFeatures">
		<col key="yes" def="s38">ISSetupType_</col>
		<col key="yes" def="s38">Feature_</col>
		<row><td>Custom</td><td>AlwaysInstall</td></row>
		<row><td>Minimal</td><td>AlwaysInstall</td></row>
		<row><td>Typical</td><td>AlwaysInstall</td></row>
	</table>

	<table name="ISStorages">
		<col key="yes" def="s72">Name</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISString">
		<col key="yes" def="s255">ISString</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="S0">Value</col>
		<col def="I2">Encoded</col>
		<col def="S0">Comment</col>
		<col def="I4">TimeStamp</col>
		<row><td>COMPANY_NAME</td><td>1033</td><td>GPS</td><td>0</td><td/><td>-165476276</td></row>
		<row><td>DN_AlwaysInstall</td><td>1033</td><td>Always Install</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_COLOR</td><td>1033</td><td>The color settings of your system are not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_OS</td><td>1033</td><td>The operating system is not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_PROCESSOR</td><td>1033</td><td>The processor is not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_RAM</td><td>1033</td><td>The amount of RAM is not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_SCREEN</td><td>1033</td><td>The screen resolution is not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT</td><td>1033</td><td>Compact</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT_DESC</td><td>1033</td><td>Compact Description</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE</td><td>1033</td><td>Complete</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE_DESC</td><td>1033</td><td>Complete</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM</td><td>1033</td><td>Custom</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC</td><td>1033</td><td>Custom Description</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC_PRO</td><td>1033</td><td>Custom</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL</td><td>1033</td><td>Typical</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL_DESC</td><td>1033</td><td>Typical Description</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_1</td><td>1033</td><td>[1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_1b</td><td>1033</td><td>[1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_1c</td><td>1033</td><td>[1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_1d</td><td>1033</td><td>[1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Advertising</td><td>1033</td><td>Advertising application</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_AllocatingRegistry</td><td>1033</td><td>Allocating registry space</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_AppCommandLine</td><td>1033</td><td>Application: [1], Command line: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_AppId</td><td>1033</td><td>AppId: [1]{{, AppType: [2]}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_AppIdAppTypeRSN</td><td>1033</td><td>AppId: [1]{{, AppType: [2], Users: [3], RSN: [4]}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Application</td><td>1033</td><td>Application: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_BindingExes</td><td>1033</td><td>Binding executables</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ClassId</td><td>1033</td><td>Class ID: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ClsID</td><td>1033</td><td>Class ID: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIDQualifier</td><td>1033</td><td>Component ID: [1], Qualifier: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIdQualifier2</td><td>1033</td><td>Component ID: [1], Qualifier: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace</td><td>1033</td><td>Computing space requirements</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace2</td><td>1033</td><td>Computing space requirements</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace3</td><td>1033</td><td>Computing space requirements</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension</td><td>1033</td><td>MIME Content Type: [1], Extension: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension2</td><td>1033</td><td>MIME Content Type: [1], Extension: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNetworkFiles</td><td>1033</td><td>Copying files to the network</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNewFiles</td><td>1033</td><td>Copying new files</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingDuplicate</td><td>1033</td><td>Creating duplicate files</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingFolders</td><td>1033</td><td>Creating folders</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingIISRoots</td><td>1033</td><td>Creating IIS Virtual Roots...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingShortcuts</td><td>1033</td><td>Creating shortcuts</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_DeletingServices</td><td>1033</td><td>Deleting services</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_EnvironmentStrings</td><td>1033</td><td>Updating environment strings</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_EvaluateLaunchConditions</td><td>1033</td><td>Evaluating launch conditions</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Extension</td><td>1033</td><td>Extension: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Extension2</td><td>1033</td><td>Extension: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Feature</td><td>1033</td><td>Feature: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FeatureColon</td><td>1033</td><td>Feature: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_File</td><td>1033</td><td>File: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_File2</td><td>1033</td><td>File: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileDependencies</td><td>1033</td><td>File: [1],  Dependencies: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir</td><td>1033</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir2</td><td>1033</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir3</td><td>1033</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize</td><td>1033</td><td>File: [1], Directory: [9], Size: [6]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize2</td><td>1033</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize3</td><td>1033</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize4</td><td>1033</td><td>File: [1],  Directory: [2],  Size: [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirectorySize</td><td>1033</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder</td><td>1033</td><td>File: [1], Folder: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder2</td><td>1033</td><td>File: [1], Folder: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue</td><td>1033</td><td>File: [1],  Section: [2],  Key: [3], Value: [4]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue2</td><td>1033</td><td>File: [1],  Section: [2],  Key: [3], Value: [4]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Folder</td><td>1033</td><td>Folder: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Folder1</td><td>1033</td><td>Folder: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Font</td><td>1033</td><td>Font: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Font2</td><td>1033</td><td>Font: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FoundApp</td><td>1033</td><td>Found application: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_FreeSpace</td><td>1033</td><td>Free space: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_GeneratingScript</td><td>1033</td><td>Generating script operations for action:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsCost</td><td>1033</td><td>Gathering permissions information for objects...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsInstall</td><td>1033</td><td>Applying permissions information for objects...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_InitializeODBCDirs</td><td>1033</td><td>Initializing ODBC directories</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_InstallODBC</td><td>1033</td><td>Installing ODBC components</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_InstallServices</td><td>1033</td><td>Installing new services</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_InstallingSystemCatalog</td><td>1033</td><td>Installing system catalog</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_KeyName</td><td>1033</td><td>Key: [1], Name: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_KeyNameValue</td><td>1033</td><td>Key: [1], Name: [2], Value: [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_LibId</td><td>1033</td><td>LibID: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Libid2</td><td>1033</td><td>LibID: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_MigratingFeatureStates</td><td>1033</td><td>Migrating feature states from related applications</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_MovingFiles</td><td>1033</td><td>Moving files</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction</td><td>1033</td><td>Name: [1], Value: [2], Action [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction2</td><td>1033</td><td>Name: [1], Value: [2], Action [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_PatchingFiles</td><td>1033</td><td>Patching files</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID</td><td>1033</td><td>ProgID: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID2</td><td>1033</td><td>ProgID: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_PropertySignature</td><td>1033</td><td>Property: [1], Signature: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductFeatures</td><td>1033</td><td>Publishing product features</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductInfo</td><td>1033</td><td>Publishing product information</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_PublishingQualifiedComponents</td><td>1033</td><td>Publishing qualified components</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegUser</td><td>1033</td><td>Registering user</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterClassServer</td><td>1033</td><td>Registering class servers</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterExtensionServers</td><td>1033</td><td>Registering extension servers</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterFonts</td><td>1033</td><td>Registering fonts</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterMimeInfo</td><td>1033</td><td>Registering MIME info</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterTypeLibs</td><td>1033</td><td>Registering type libraries</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringComPlus</td><td>1033</td><td>Registering COM+ Applications and Components</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringModules</td><td>1033</td><td>Registering modules</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProduct</td><td>1033</td><td>Registering product</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProgIdentifiers</td><td>1033</td><td>Registering program identifiers</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemoveApps</td><td>1033</td><td>Removing applications</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingBackup</td><td>1033</td><td>Removing backup files</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingDuplicates</td><td>1033</td><td>Removing duplicated files</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFiles</td><td>1033</td><td>Removing files</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFolders</td><td>1033</td><td>Removing folders</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIISRoots</td><td>1033</td><td>Removing IIS Virtual Roots...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIni</td><td>1033</td><td>Removing INI file entries</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingMoved</td><td>1033</td><td>Removing moved files</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingODBC</td><td>1033</td><td>Removing ODBC components</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingRegistry</td><td>1033</td><td>Removing system registry values</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingShortcuts</td><td>1033</td><td>Removing shortcuts</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_RollingBack</td><td>1033</td><td>Rolling back action:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_SearchForRelated</td><td>1033</td><td>Searching for related applications</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_SearchInstalled</td><td>1033</td><td>Searching for installed applications</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts</td><td>1033</td><td>Searching for qualifying products</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts2</td><td>1033</td><td>Searching for qualifying products</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Service</td><td>1033</td><td>Service: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Service2</td><td>1033</td><td>Service: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Service3</td><td>1033</td><td>Service: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Service4</td><td>1033</td><td>Service: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut</td><td>1033</td><td>Shortcut: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut1</td><td>1033</td><td>Shortcut: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_StartingServices</td><td>1033</td><td>Starting services</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_StoppingServices</td><td>1033</td><td>Stopping services</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishProductFeatures</td><td>1033</td><td>Unpublishing product features</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishQualified</td><td>1033</td><td>Unpublishing Qualified Components</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishingProductInfo</td><td>1033</td><td>Unpublishing product information</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnregTypeLibs</td><td>1033</td><td>Unregistering type libraries</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterClassServers</td><td>1033</td><td>Unregister class servers</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterExtensionServers</td><td>1033</td><td>Unregistering extension servers</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterModules</td><td>1033</td><td>Unregistering modules</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringComPlus</td><td>1033</td><td>Unregistering COM+ Applications and Components</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringFonts</td><td>1033</td><td>Unregistering fonts</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringMimeInfo</td><td>1033</td><td>Unregistering MIME info</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringProgramIds</td><td>1033</td><td>Unregistering program identifiers</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateComponentRegistration</td><td>1033</td><td>Updating component registration</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateEnvironmentStrings</td><td>1033</td><td>Updating environment strings</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_Validating</td><td>1033</td><td>Validating install</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_WritingINI</td><td>1033</td><td>Writing INI file values</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ACTIONTEXT_WritingRegistry</td><td>1033</td><td>Writing system registry values</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_BACK</td><td>1033</td><td>&lt; &amp;Back</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_CANCEL</td><td>1033</td><td>Cancel</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_CANCEL2</td><td>1033</td><td>&amp;Cancel</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_CHANGE</td><td>1033</td><td>&amp;Change...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_COST</td><td>1033</td><td>Costing COM+ application: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>1033</td><td>Installing COM+ application: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>1033</td><td>Uninstalling COM+ application: [1]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_DIALOG_TEXT2_DESCRIPTION</td><td>1033</td><td>Dialog Normal Description</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_EXTERIOR</td><td>1033</td><td>{&amp;TahomaBold10}Dialog Bold Title</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_INTERIOR</td><td>1033</td><td>{&amp;MSSansBold8}Dialog Bold Title</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_DIFX_AMD64</td><td>1033</td><td>[ProductName] requires an X64 processor. Click OK to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_DIFX_IA64</td><td>1033</td><td>[ProductName] requires an IA64 processor. Click OK to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_DIFX_X86</td><td>1033</td><td>[ProductName] requires an X86 processor. Click OK to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_DatabaseFolder_InstallDatabaseTo</td><td>1033</td><td>Install [ProductName] database to:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_0</td><td>1033</td><td>{{Fatal error: }}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1</td><td>1033</td><td>Error [1]. </td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_10</td><td>1033</td><td>=== Logging started: [Date]  [Time] ===</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_100</td><td>1033</td><td>Could not remove shortcut [2]. Verify that the shortcut file exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_101</td><td>1033</td><td>Could not register type library for file [2].  Contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_102</td><td>1033</td><td>Could not unregister type library for file [2].  Contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_103</td><td>1033</td><td>Could not update the INI file [2][3].  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_104</td><td>1033</td><td>Could not schedule file [2] to replace file [3] on reboot.  Verify that you have write permissions to file [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_105</td><td>1033</td><td>Error removing ODBC driver manager, ODBC error [2]: [3]. Contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_106</td><td>1033</td><td>Error installing ODBC driver manager, ODBC error [2]: [3]. Contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_107</td><td>1033</td><td>Error removing ODBC driver [4], ODBC error [2]: [3]. Verify that you have sufficient privileges to remove ODBC drivers.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_108</td><td>1033</td><td>Error installing ODBC driver [4], ODBC error [2]: [3]. Verify that the file [4] exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_109</td><td>1033</td><td>Error configuring ODBC data source [4], ODBC error [2]: [3]. Verify that the file [4] exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_11</td><td>1033</td><td>=== Logging stopped: [Date]  [Time] ===</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_110</td><td>1033</td><td>Service [2] ([3]) failed to start.  Verify that you have sufficient privileges to start system services.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_111</td><td>1033</td><td>Service [2] ([3]) could not be stopped.  Verify that you have sufficient privileges to stop system services.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_112</td><td>1033</td><td>Service [2] ([3]) could not be deleted.  Verify that you have sufficient privileges to remove system services.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_113</td><td>1033</td><td>Service [2] ([3]) could not be installed.  Verify that you have sufficient privileges to install system services.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_114</td><td>1033</td><td>Could not update environment variable [2].  Verify that you have sufficient privileges to modify environment variables.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_115</td><td>1033</td><td>You do not have sufficient privileges to complete this installation for all users of the machine.  Log on as an administrator and then retry this installation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_116</td><td>1033</td><td>Could not set file security for file [3]. Error: [2].  Verify that you have sufficient privileges to modify the security permissions for this file.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_117</td><td>1033</td><td>Component Services (COM+ 1.0) are not installed on this computer.  This installation requires Component Services in order to complete successfully.  Component Services are available on Windows 2000.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_118</td><td>1033</td><td>Error registering COM+ application.  Contact your support personnel for more information.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_119</td><td>1033</td><td>Error unregistering COM+ application.  Contact your support personnel for more information.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_12</td><td>1033</td><td>Action start [Time]: [1].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_120</td><td>1033</td><td>Removing older versions of this application</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_121</td><td>1033</td><td>Preparing to remove older versions of this application</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_122</td><td>1033</td><td>Error applying patch to file [2].  It has probably been updated by other means, and can no longer be modified by this patch.  For more information contact your patch vendor.  {{System Error: [3]}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_123</td><td>1033</td><td>[2] cannot install one of its required products. Contact your technical support group.  {{System Error: [3].}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_124</td><td>1033</td><td>The older version of [2] cannot be removed.  Contact your technical support group.  {{System Error [3].}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_125</td><td>1033</td><td>The description for service '[2]' ([3]) could not be changed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_126</td><td>1033</td><td>The Windows Installer service cannot update the system file [2] because the file is protected by Windows.  You may need to update your operating system for this program to work correctly. {{Package version: [3], OS Protected version: [4]}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_127</td><td>1033</td><td>The Windows Installer service cannot update the protected Windows file [2]. {{Package version: [3], OS Protected version: [4], SFP Error: [5]}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_128</td><td>1033</td><td>The Windows Installer service cannot update one or more protected Windows files. SFP Error: [2]. List of protected files: [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_129</td><td>1033</td><td>User installations are disabled via policy on the machine.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_13</td><td>1033</td><td>Action ended [Time]: [1]. Return value [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_130</td><td>1033</td><td>This setup requires Internet Information Server for configuring IIS Virtual Roots. Please make sure that you have IIS installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_131</td><td>1033</td><td>This setup requires Administrator privileges for configuring IIS Virtual Roots.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1329</td><td>1033</td><td>A file that is required cannot be installed because the cabinet file [2] is not digitally signed. This may indicate that the cabinet file is corrupt.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1330</td><td>1033</td><td>A file that is required cannot be installed because the cabinet file [2] has an invalid digital signature. This may indicate that the cabinet file is corrupt.{ Error [3] was returned by WinVerifyTrust.}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1331</td><td>1033</td><td>Failed to correctly copy [2] file: CRC error.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1332</td><td>1033</td><td>Failed to correctly patch [2] file: CRC error.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1333</td><td>1033</td><td>Failed to correctly patch [2] file: CRC error.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1334</td><td>1033</td><td>The file '[2]' cannot be installed because the file cannot be found in cabinet file '[3]'. This could indicate a network error, an error reading from the CD-ROM, or a problem with this package.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1335</td><td>1033</td><td>The cabinet file '[2]' required for this installation is corrupt and cannot be used. This could indicate a network error, an error reading from the CD-ROM, or a problem with this package.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1336</td><td>1033</td><td>There was an error creating a temporary file that is needed to complete this installation. Folder: [3]. System error code: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_14</td><td>1033</td><td>Time remaining: {[1] minutes }{[2] seconds}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_15</td><td>1033</td><td>Out of memory. Shut down other applications before retrying.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_16</td><td>1033</td><td>Installer is no longer responding.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1609</td><td>1033</td><td>An error occurred while applying security settings. [2] is not a valid user or group. This could be a problem with the package, or a problem connecting to a domain controller on the network. Check your network connection and click Retry, or Cancel to end the install. Unable to locate the user's SID, system error [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1651</td><td>1033</td><td>Admin user failed to apply patch for a per-user managed or a per-machine application which is in advertise state.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_17</td><td>1033</td><td>Installer terminated prematurely.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1715</td><td>1033</td><td>Installed [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1716</td><td>1033</td><td>Configured [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1717</td><td>1033</td><td>Removed [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1718</td><td>1033</td><td>File [2] was rejected by digital signature policy.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1719</td><td>1033</td><td>Windows Installer service could not be accessed. Contact your support personnel to verify that it is properly registered and enabled.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1720</td><td>1033</td><td>There is a problem with this Windows Installer package. A script required for this install to complete could not be run. Contact your support personnel or package vendor. Custom action [2] script error [3], [4]: [5] Line [6], Column [7], [8]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1721</td><td>1033</td><td>There is a problem with this Windows Installer package. A program required for this install to complete could not be run. Contact your support personnel or package vendor. Action: [2], location: [3], command: [4]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1722</td><td>1033</td><td>There is a problem with this Windows Installer package. A program run as part of the setup did not finish as expected. Contact your support personnel or package vendor. Action [2], location: [3], command: [4]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1723</td><td>1033</td><td>There is a problem with this Windows Installer package. A DLL required for this install to complete could not be run. Contact your support personnel or package vendor. Action [2], entry: [3], library: [4]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1724</td><td>1033</td><td>Removal completed successfully.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1725</td><td>1033</td><td>Removal failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1726</td><td>1033</td><td>Advertisement completed successfully.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1727</td><td>1033</td><td>Advertisement failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1728</td><td>1033</td><td>Configuration completed successfully.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1729</td><td>1033</td><td>Configuration failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1730</td><td>1033</td><td>You must be an Administrator to remove this application. To remove this application, you can log on as an administrator, or contact your technical support group for assistance.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1731</td><td>1033</td><td>The source installation package for the product [2] is out of sync with the client package. Try the installation again using a valid copy of the installation package '[3]'.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1732</td><td>1033</td><td>In order to complete the installation of [2], you must restart the computer. Other users are currently logged on to this computer, and restarting may cause them to lose their work. Do you want to restart now?</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_18</td><td>1033</td><td>Please wait while Windows configures [ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_19</td><td>1033</td><td>Gathering required information...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1935</td><td>1033</td><td>An error occurred during the installation of assembly component [2]. HRESULT: [3]. {{assembly interface: [4], function: [5], assembly name: [6]}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1936</td><td>1033</td><td>An error occurred during the installation of assembly '[6]'. The assembly is not strongly named or is not signed with the minimal key length. HRESULT: [3]. {{assembly interface: [4], function: [5], component: [2]}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1937</td><td>1033</td><td>An error occurred during the installation of assembly '[6]'. The signature or catalog could not be verified or is not valid. HRESULT: [3]. {{assembly interface: [4], function: [5], component: [2]}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_1938</td><td>1033</td><td>An error occurred during the installation of assembly '[6]'. One or more modules of the assembly could not be found. HRESULT: [3]. {{assembly interface: [4], function: [5], component: [2]}}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2</td><td>1033</td><td>Warning [1]. </td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_20</td><td>1033</td><td>{[ProductName] }Setup completed successfully.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_21</td><td>1033</td><td>{[ProductName] }Setup failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2101</td><td>1033</td><td>Shortcuts not supported by the operating system.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2102</td><td>1033</td><td>Invalid .ini action: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2103</td><td>1033</td><td>Could not resolve path for shell folder [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2104</td><td>1033</td><td>Writing .ini file: [3]: System error: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2105</td><td>1033</td><td>Shortcut Creation [3] Failed. System error: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2106</td><td>1033</td><td>Shortcut Deletion [3] Failed. System error: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2107</td><td>1033</td><td>Error [3] registering type library [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2108</td><td>1033</td><td>Error [3] unregistering type library [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2109</td><td>1033</td><td>Section missing for .ini action.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2110</td><td>1033</td><td>Key missing for .ini action.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2111</td><td>1033</td><td>Detection of running applications failed, could not get performance data. Registered operation returned : [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2112</td><td>1033</td><td>Detection of running applications failed, could not get performance index. Registered operation returned : [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2113</td><td>1033</td><td>Detection of running applications failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_22</td><td>1033</td><td>Error reading from file: [2]. {{ System error [3].}}  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2200</td><td>1033</td><td>Database: [2]. Database object creation failed, mode = [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2201</td><td>1033</td><td>Database: [2]. Initialization failed, out of memory.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2202</td><td>1033</td><td>Database: [2]. Data access failed, out of memory.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2203</td><td>1033</td><td>Database: [2]. Cannot open database file. System error [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2204</td><td>1033</td><td>Database: [2]. Table already exists: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2205</td><td>1033</td><td>Database: [2]. Table does not exist: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2206</td><td>1033</td><td>Database: [2]. Table could not be dropped: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2207</td><td>1033</td><td>Database: [2]. Intent violation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2208</td><td>1033</td><td>Database: [2]. Insufficient parameters for Execute.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2209</td><td>1033</td><td>Database: [2]. Cursor in invalid state.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2210</td><td>1033</td><td>Database: [2]. Invalid update data type in column [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2211</td><td>1033</td><td>Database: [2]. Could not create database table [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2212</td><td>1033</td><td>Database: [2]. Database not in writable state.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2213</td><td>1033</td><td>Database: [2]. Error saving database tables.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2214</td><td>1033</td><td>Database: [2]. Error writing export file: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2215</td><td>1033</td><td>Database: [2]. Cannot open import file: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2216</td><td>1033</td><td>Database: [2]. Import file format error: [3], Line [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2217</td><td>1033</td><td>Database: [2]. Wrong state to CreateOutputDatabase [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2218</td><td>1033</td><td>Database: [2]. Table name not supplied.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2219</td><td>1033</td><td>Database: [2]. Invalid Installer database format.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2220</td><td>1033</td><td>Database: [2]. Invalid row/field data.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2221</td><td>1033</td><td>Database: [2]. Code page conflict in import file: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2222</td><td>1033</td><td>Database: [2]. Transform or merge code page [3] differs from database code page [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2223</td><td>1033</td><td>Database: [2]. Databases are the same. No transform generated.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2224</td><td>1033</td><td>Database: [2]. GenerateTransform: Database corrupt. Table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2225</td><td>1033</td><td>Database: [2]. Transform: Cannot transform a temporary table. Table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2226</td><td>1033</td><td>Database: [2]. Transform failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2227</td><td>1033</td><td>Database: [2]. Invalid identifier '[3]' in SQL query: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2228</td><td>1033</td><td>Database: [2]. Unknown table '[3]' in SQL query: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2229</td><td>1033</td><td>Database: [2]. Could not load table '[3]' in SQL query: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2230</td><td>1033</td><td>Database: [2]. Repeated table '[3]' in SQL query: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2231</td><td>1033</td><td>Database: [2]. Missing ')' in SQL query: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2232</td><td>1033</td><td>Database: [2]. Unexpected token '[3]' in SQL query: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2233</td><td>1033</td><td>Database: [2]. No columns in SELECT clause in SQL query: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2234</td><td>1033</td><td>Database: [2]. No columns in ORDER BY clause in SQL query: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2235</td><td>1033</td><td>Database: [2]. Column '[3]' not present or ambiguous in SQL query: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2236</td><td>1033</td><td>Database: [2]. Invalid operator '[3]' in SQL query: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2237</td><td>1033</td><td>Database: [2]. Invalid or missing query string: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2238</td><td>1033</td><td>Database: [2]. Missing FROM clause in SQL query: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2239</td><td>1033</td><td>Database: [2]. Insufficient values in INSERT SQL statement.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2240</td><td>1033</td><td>Database: [2]. Missing update columns in UPDATE SQL statement.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2241</td><td>1033</td><td>Database: [2]. Missing insert columns in INSERT SQL statement.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2242</td><td>1033</td><td>Database: [2]. Column '[3]' repeated.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2243</td><td>1033</td><td>Database: [2]. No primary columns defined for table creation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2244</td><td>1033</td><td>Database: [2]. Invalid type specifier '[3]' in SQL query [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2245</td><td>1033</td><td>IStorage::Stat failed with error [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2246</td><td>1033</td><td>Database: [2]. Invalid Installer transform format.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2247</td><td>1033</td><td>Database: [2] Transform stream read/write failure.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2248</td><td>1033</td><td>Database: [2] GenerateTransform/Merge: Column type in base table does not match reference table. Table: [3] Col #: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2249</td><td>1033</td><td>Database: [2] GenerateTransform: More columns in base table than in reference table. Table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2250</td><td>1033</td><td>Database: [2] Transform: Cannot add existing row. Table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2251</td><td>1033</td><td>Database: [2] Transform: Cannot delete row that does not exist. Table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2252</td><td>1033</td><td>Database: [2] Transform: Cannot add existing table. Table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2253</td><td>1033</td><td>Database: [2] Transform: Cannot delete table that does not exist. Table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2254</td><td>1033</td><td>Database: [2] Transform: Cannot update row that does not exist. Table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2255</td><td>1033</td><td>Database: [2] Transform: Column with this name already exists. Table: [3] Col: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2256</td><td>1033</td><td>Database: [2] GenerateTransform/Merge: Number of primary keys in base table does not match reference table. Table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2257</td><td>1033</td><td>Database: [2]. Intent to modify read only table: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2258</td><td>1033</td><td>Database: [2]. Type mismatch in parameter: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2259</td><td>1033</td><td>Database: [2] Table(s) Update failed</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2260</td><td>1033</td><td>Storage CopyTo failed. System error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2261</td><td>1033</td><td>Could not remove stream [2]. System error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2262</td><td>1033</td><td>Stream does not exist: [2]. System error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2263</td><td>1033</td><td>Could not open stream [2]. System error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2264</td><td>1033</td><td>Could not remove stream [2]. System error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2265</td><td>1033</td><td>Could not commit storage. System error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2266</td><td>1033</td><td>Could not rollback storage. System error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2267</td><td>1033</td><td>Could not delete storage [2]. System error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2268</td><td>1033</td><td>Database: [2]. Merge: There were merge conflicts reported in [3] tables.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2269</td><td>1033</td><td>Database: [2]. Merge: The column count differed in the '[3]' table of the two databases.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2270</td><td>1033</td><td>Database: [2]. GenerateTransform/Merge: Column name in base table does not match reference table. Table: [3] Col #: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2271</td><td>1033</td><td>SummaryInformation write for transform failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2272</td><td>1033</td><td>Database: [2]. MergeDatabase will not write any changes because the database is open read-only.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2273</td><td>1033</td><td>Database: [2]. MergeDatabase: A reference to the base database was passed as the reference database.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2274</td><td>1033</td><td>Database: [2]. MergeDatabase: Unable to write errors to Error table. Could be due to a non-nullable column in a predefined Error table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2275</td><td>1033</td><td>Database: [2]. Specified Modify [3] operation invalid for table joins.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2276</td><td>1033</td><td>Database: [2]. Code page [3] not supported by the system.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2277</td><td>1033</td><td>Database: [2]. Failed to save table [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2278</td><td>1033</td><td>Database: [2]. Exceeded number of expressions limit of 32 in WHERE clause of SQL query: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2279</td><td>1033</td><td>Database: [2] Transform: Too many columns in base table [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2280</td><td>1033</td><td>Database: [2]. Could not create column [3] for table [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2281</td><td>1033</td><td>Could not rename stream [2]. System error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2282</td><td>1033</td><td>Stream name invalid [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_23</td><td>1033</td><td>Cannot create the file [3].  A directory with this name already exists.  Cancel the installation and try installing to a different location.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2302</td><td>1033</td><td>Patch notify: [2] bytes patched to far.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2303</td><td>1033</td><td>Error getting volume info. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2304</td><td>1033</td><td>Error getting disk free space. GetLastError: [2]. Volume: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2305</td><td>1033</td><td>Error waiting for patch thread. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2306</td><td>1033</td><td>Could not create thread for patch application. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2307</td><td>1033</td><td>Source file key name is null.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2308</td><td>1033</td><td>Destination file name is null.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2309</td><td>1033</td><td>Attempting to patch file [2] when patch already in progress.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2310</td><td>1033</td><td>Attempting to continue patch when no patch is in progress.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2315</td><td>1033</td><td>Missing path separator: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2318</td><td>1033</td><td>File does not exist: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2319</td><td>1033</td><td>Error setting file attribute: [3] GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2320</td><td>1033</td><td>File not writable: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2321</td><td>1033</td><td>Error creating file: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2322</td><td>1033</td><td>User canceled.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2323</td><td>1033</td><td>Invalid file attribute.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2324</td><td>1033</td><td>Could not open file: [3] GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2325</td><td>1033</td><td>Could not get file time for file: [3] GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2326</td><td>1033</td><td>Error in FileToDosDateTime.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2327</td><td>1033</td><td>Could not remove directory: [3] GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2328</td><td>1033</td><td>Error getting file version info for file: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2329</td><td>1033</td><td>Error deleting file: [3]. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2330</td><td>1033</td><td>Error getting file attributes: [3]. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2331</td><td>1033</td><td>Error loading library [2] or finding entry point [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2332</td><td>1033</td><td>Error getting file attributes. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2333</td><td>1033</td><td>Error setting file attributes. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2334</td><td>1033</td><td>Error converting file time to local time for file: [3]. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2335</td><td>1033</td><td>Path: [2] is not a parent of [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2336</td><td>1033</td><td>Error creating temp file on path: [3]. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2337</td><td>1033</td><td>Could not close file: [3] GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2338</td><td>1033</td><td>Could not update resource for file: [3] GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2339</td><td>1033</td><td>Could not set file time for file: [3] GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2340</td><td>1033</td><td>Could not update resource for file: [3], Missing resource.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2341</td><td>1033</td><td>Could not update resource for file: [3], Resource too large.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2342</td><td>1033</td><td>Could not update resource for file: [3] GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2343</td><td>1033</td><td>Specified path is empty.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2344</td><td>1033</td><td>Could not find required file IMAGEHLP.DLL to validate file:[2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2345</td><td>1033</td><td>[2]: File does not contain a valid checksum value.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2347</td><td>1033</td><td>User ignore.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2348</td><td>1033</td><td>Error attempting to read from cabinet stream.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2349</td><td>1033</td><td>Copy resumed with different info.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2350</td><td>1033</td><td>FDI server error</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2351</td><td>1033</td><td>File key '[2]' not found in cabinet '[3]'. The installation cannot continue.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2352</td><td>1033</td><td>Could not initialize cabinet file server. The required file 'CABINET.DLL' may be missing.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2353</td><td>1033</td><td>Not a cabinet.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2354</td><td>1033</td><td>Cannot handle cabinet.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2355</td><td>1033</td><td>Corrupt cabinet.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2356</td><td>1033</td><td>Could not locate cabinet in stream: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2357</td><td>1033</td><td>Cannot set attributes.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2358</td><td>1033</td><td>Error determining whether file is in-use: [3]. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2359</td><td>1033</td><td>Unable to create the target file - file may be in use.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2360</td><td>1033</td><td>Progress tick.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2361</td><td>1033</td><td>Need next cabinet.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2362</td><td>1033</td><td>Folder not found: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2363</td><td>1033</td><td>Could not enumerate subfolders for folder: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2364</td><td>1033</td><td>Bad enumeration constant in CreateCopier call.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2365</td><td>1033</td><td>Could not BindImage exe file [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2366</td><td>1033</td><td>User failure.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2367</td><td>1033</td><td>User abort.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2368</td><td>1033</td><td>Failed to get network resource information. Error [2], network path [3]. Extended error: network provider [5], error code [4], error description [6].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2370</td><td>1033</td><td>Invalid CRC checksum value for [2] file.{ Its header says [3] for checksum, its computed value is [4].}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2371</td><td>1033</td><td>Could not apply patch to file [2]. GetLastError: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2372</td><td>1033</td><td>Patch file [2] is corrupt or of an invalid format. Attempting to patch file [3]. GetLastError: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2373</td><td>1033</td><td>File [2] is not a valid patch file.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2374</td><td>1033</td><td>File [2] is not a valid destination file for patch file [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2375</td><td>1033</td><td>Unknown patching error: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2376</td><td>1033</td><td>Cabinet not found.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2379</td><td>1033</td><td>Error opening file for read: [3] GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2380</td><td>1033</td><td>Error opening file for write: [3]. GetLastError: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2381</td><td>1033</td><td>Directory does not exist: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2382</td><td>1033</td><td>Drive not ready: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_24</td><td>1033</td><td>Please insert the disk: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2401</td><td>1033</td><td>64-bit registry operation attempted on 32-bit operating system for key [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2402</td><td>1033</td><td>Out of memory.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_25</td><td>1033</td><td>The installer has insufficient privileges to access this directory: [2].  The installation cannot continue.  Log on as an administrator or contact your system administrator.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2501</td><td>1033</td><td>Could not create rollback script enumerator.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2502</td><td>1033</td><td>Called InstallFinalize when no install in progress.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2503</td><td>1033</td><td>Called RunScript when not marked in progress.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_26</td><td>1033</td><td>Error writing to file [2].  Verify that you have access to that directory.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2601</td><td>1033</td><td>Invalid value for property [2]: '[3]'</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2602</td><td>1033</td><td>The [2] table entry '[3]' has no associated entry in the Media table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2603</td><td>1033</td><td>Duplicate table name [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2604</td><td>1033</td><td>[2] Property undefined.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2605</td><td>1033</td><td>Could not find server [2] in [3] or [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2606</td><td>1033</td><td>Value of property [2] is not a valid full path: '[3]'.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2607</td><td>1033</td><td>Media table not found or empty (required for installation of files).</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2608</td><td>1033</td><td>Could not create security descriptor for object. Error: '[2]'.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2609</td><td>1033</td><td>Attempt to migrate product settings before initialization.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2611</td><td>1033</td><td>The file [2] is marked as compressed, but the associated media entry does not specify a cabinet.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2612</td><td>1033</td><td>Stream not found in '[2]' column. Primary key: '[3]'.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2613</td><td>1033</td><td>RemoveExistingProducts action sequenced incorrectly.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2614</td><td>1033</td><td>Could not access IStorage object from installation package.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2615</td><td>1033</td><td>Skipped unregistration of Module [2] due to source resolution failure.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2616</td><td>1033</td><td>Companion file [2] parent missing.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2617</td><td>1033</td><td>Shared component [2] not found in Component table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2618</td><td>1033</td><td>Isolated application component [2] not found in Component table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2619</td><td>1033</td><td>Isolated components [2], [3] not part of same feature.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2620</td><td>1033</td><td>Key file of isolated application component [2] not in File table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2621</td><td>1033</td><td>Resource DLL or Resource ID information for shortcut [2] set incorrectly.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27</td><td>1033</td><td>Error reading from file [2].  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2701</td><td>1033</td><td>The depth of a feature exceeds the acceptable tree depth of [2] levels.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2702</td><td>1033</td><td>A Feature table record ([2]) references a non-existent parent in the Attributes field.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2703</td><td>1033</td><td>Property name for root source path not defined: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2704</td><td>1033</td><td>Root directory property undefined: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2705</td><td>1033</td><td>Invalid table: [2]; Could not be linked as tree.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2706</td><td>1033</td><td>Source paths not created. No path exists for entry [2] in Directory table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2707</td><td>1033</td><td>Target paths not created. No path exists for entry [2] in Directory table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2708</td><td>1033</td><td>No entries found in the file table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2709</td><td>1033</td><td>The specified Component name ('[2]') not found in Component table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2710</td><td>1033</td><td>The requested 'Select' state is illegal for this Component.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2711</td><td>1033</td><td>The specified Feature name ('[2]') not found in Feature table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2712</td><td>1033</td><td>Invalid return from modeless dialog: [3], in action [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2713</td><td>1033</td><td>Null value in a non-nullable column ('[2]' in '[3]' column of the '[4]' table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2714</td><td>1033</td><td>Invalid value for default folder name: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2715</td><td>1033</td><td>The specified File key ('[2]') not found in the File table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2716</td><td>1033</td><td>Could not create a random subcomponent name for component '[2]'.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2717</td><td>1033</td><td>Bad action condition or error calling custom action '[2]'.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2718</td><td>1033</td><td>Missing package name for product code '[2]'.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2719</td><td>1033</td><td>Neither UNC nor drive letter path found in source '[2]'.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2720</td><td>1033</td><td>Error opening source list key. Error: '[2]'</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2721</td><td>1033</td><td>Custom action [2] not found in Binary table stream.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2722</td><td>1033</td><td>Custom action [2] not found in File table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2723</td><td>1033</td><td>Custom action [2] specifies unsupported type.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2724</td><td>1033</td><td>The volume label '[2]' on the media you're running from does not match the label '[3]' given in the Media table. This is allowed only if you have only 1 entry in your Media table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2725</td><td>1033</td><td>Invalid database tables</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2726</td><td>1033</td><td>Action not found: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2727</td><td>1033</td><td>The directory entry '[2]' does not exist in the Directory table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2728</td><td>1033</td><td>Table definition error: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2729</td><td>1033</td><td>Install engine not initialized.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2730</td><td>1033</td><td>Bad value in database. Table: '[2]'; Primary key: '[3]'; Column: '[4]'</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2731</td><td>1033</td><td>Selection Manager not initialized.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2732</td><td>1033</td><td>Directory Manager not initialized.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2733</td><td>1033</td><td>Bad foreign key ('[2]') in '[3]' column of the '[4]' table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2734</td><td>1033</td><td>Invalid reinstall mode character.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2735</td><td>1033</td><td>Custom action '[2]' has caused an unhandled exception and has been stopped. This may be the result of an internal error in the custom action, such as an access violation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2736</td><td>1033</td><td>Generation of custom action temp file failed: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2737</td><td>1033</td><td>Could not access custom action [2], entry [3], library [4]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2738</td><td>1033</td><td>Could not access VBScript run time for custom action [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2739</td><td>1033</td><td>Could not access JavaScript run time for custom action [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2740</td><td>1033</td><td>Custom action [2] script error [3], [4]: [5] Line [6], Column [7], [8].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2741</td><td>1033</td><td>Configuration information for product [2] is corrupt. Invalid info: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2742</td><td>1033</td><td>Marshaling to Server failed: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2743</td><td>1033</td><td>Could not execute custom action [2], location: [3], command: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2744</td><td>1033</td><td>EXE failed called by custom action [2], location: [3], command: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2745</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected language [4], found language [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2746</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product [4], found product [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2747</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version &lt; [4], found product version [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2748</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version &lt;= [4], found product version [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2749</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version == [4], found product version [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2750</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version &gt;= [4], found product version [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27502</td><td>1033</td><td>Could not connect to [2] '[3]'. [4]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27503</td><td>1033</td><td>Error retrieving version string from [2] '[3]'. [4]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27504</td><td>1033</td><td>SQL version requirements not met: [3]. This installation requires [2] [4] or later.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27505</td><td>1033</td><td>Could not open SQL script file [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27506</td><td>1033</td><td>Error executing SQL script [2]. Line [3]. [4]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27507</td><td>1033</td><td>Connection or browsing for database servers requires that MDAC be installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27508</td><td>1033</td><td>Error installing COM+ application [2]. [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27509</td><td>1033</td><td>Error uninstalling COM+ application [2]. [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2751</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version &gt; [4], found product version [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27510</td><td>1033</td><td>Error installing COM+ application [2].  Could not load Microsoft(R) .NET class libraries. Registering .NET serviced components requires that Microsoft(R) .NET Framework be installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27511</td><td>1033</td><td>Could not execute SQL script file [2]. Connection not open: [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27512</td><td>1033</td><td>Error beginning transactions for [2] '[3]'. Database [4]. [5]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27513</td><td>1033</td><td>Error committing transactions for [2] '[3]'. Database [4]. [5]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27514</td><td>1033</td><td>This installation requires a Microsoft SQL Server. The specified server '[3]' is a Microsoft SQL Server Desktop Engine or SQL Server Express.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27515</td><td>1033</td><td>Error retrieving schema version from [2] '[3]'. Database: '[4]'. [5]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27516</td><td>1033</td><td>Error writing schema version to [2] '[3]'. Database: '[4]'. [5]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27517</td><td>1033</td><td>This installation requires Administrator privileges for installing COM+ applications. Log on as an administrator and then retry this installation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27518</td><td>1033</td><td>The COM+ application "[2]" is configured to run as an NT service; this requires COM+ 1.5 or later on the system. Since your system has COM+ 1.0, this application will not be installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27519</td><td>1033</td><td>Error updating XML file [2]. [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2752</td><td>1033</td><td>Could not open transform [2] stored as child storage of package [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27520</td><td>1033</td><td>Error opening XML file [2]. [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27521</td><td>1033</td><td>This setup requires MSXML 3.0 or higher for configuring XML files. Please make sure that you have version 3.0 or higher.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27522</td><td>1033</td><td>Error creating XML file [2]. [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27523</td><td>1033</td><td>Error loading servers.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27524</td><td>1033</td><td>Error loading NetApi32.DLL. The ISNetApi.dll needs to have NetApi32.DLL properly loaded and requires an NT based operating system.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27525</td><td>1033</td><td>Server not found. Verify that the specified server exists. The server name can not be empty.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27526</td><td>1033</td><td>Unspecified error from ISNetApi.dll.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27527</td><td>1033</td><td>The buffer is too small.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27528</td><td>1033</td><td>Access denied. Check administrative rights.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27529</td><td>1033</td><td>Invalid computer.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2753</td><td>1033</td><td>The File '[2]' is not marked for installation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27530</td><td>1033</td><td>Unknown error returned from NetAPI. System error: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27531</td><td>1033</td><td>Unhandled exception.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27532</td><td>1033</td><td>Invalid user name for this server or domain.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27533</td><td>1033</td><td>The case-sensitive passwords do not match.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27534</td><td>1033</td><td>The list is empty.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27535</td><td>1033</td><td>Access violation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27536</td><td>1033</td><td>Error getting group.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27537</td><td>1033</td><td>Error adding user to group. Verify that the group exists for this domain or server.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27538</td><td>1033</td><td>Error creating user.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27539</td><td>1033</td><td>ERROR_NETAPI_ERROR_NOT_PRIMARY returned from NetAPI.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2754</td><td>1033</td><td>The File '[2]' is not a valid patch file.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27540</td><td>1033</td><td>The specified user already exists.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27541</td><td>1033</td><td>The specified group already exists.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27542</td><td>1033</td><td>Invalid password. Verify that the password is in accordance with your network password policy.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27543</td><td>1033</td><td>Invalid name.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27544</td><td>1033</td><td>Invalid group.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27545</td><td>1033</td><td>The user name can not be empty and must be in the format DOMAIN\Username.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27546</td><td>1033</td><td>Error loading or creating INI file in the user TEMP directory.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27547</td><td>1033</td><td>ISNetAPI.dll is not loaded or there was an error loading the dll. This dll needs to be loaded for this operation. Verify that the dll is in the SUPPORTDIR directory.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27548</td><td>1033</td><td>Error deleting INI file containing new user information from the user's TEMP directory.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27549</td><td>1033</td><td>Error getting the primary domain controller (PDC).</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2755</td><td>1033</td><td>Server returned unexpected error [2] attempting to install package [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27550</td><td>1033</td><td>Every field must have a value in order to create a user.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27551</td><td>1033</td><td>ODBC driver for [2] not found. This is required to connect to [2] database servers.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27552</td><td>1033</td><td>Error creating database [4]. Server: [2] [3]. [5]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27553</td><td>1033</td><td>Error connecting to database [4]. Server: [2] [3]. [5]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27554</td><td>1033</td><td>Error attempting to open connection [2]. No valid database metadata associated with this connection.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_27555</td><td>1033</td><td>Error attempting to apply permissions to object '[2]'. System error: [3] ([4])</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2756</td><td>1033</td><td>The property '[2]' was used as a directory property in one or more tables, but no value was ever assigned.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2757</td><td>1033</td><td>Could not create summary info for transform [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2758</td><td>1033</td><td>Transform [2] does not contain an MSI version.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2759</td><td>1033</td><td>Transform [2] version [3] incompatible with engine; Min: [4], Max: [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2760</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected upgrade code [4], found [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2761</td><td>1033</td><td>Cannot begin transaction. Global mutex not properly initialized.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2762</td><td>1033</td><td>Cannot write script record. Transaction not started.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2763</td><td>1033</td><td>Cannot run script. Transaction not started.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2765</td><td>1033</td><td>Assembly name missing from AssemblyName table : Component: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2766</td><td>1033</td><td>The file [2] is an invalid MSI storage file.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2767</td><td>1033</td><td>No more data{ while enumerating [2]}.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2768</td><td>1033</td><td>Transform in patch package is invalid.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2769</td><td>1033</td><td>Custom Action [2] did not close [3] MSIHANDLEs.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2770</td><td>1033</td><td>Cached folder [2] not defined in internal cache folder table.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2771</td><td>1033</td><td>Upgrade of feature [2] has a missing component.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2772</td><td>1033</td><td>New upgrade feature [2] must be a leaf feature.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_28</td><td>1033</td><td>Another application has exclusive access to the file [2].  Please shut down all other applications, then click Retry.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2801</td><td>1033</td><td>Unknown Message -- Type [2]. No action is taken.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2802</td><td>1033</td><td>No publisher is found for the event [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2803</td><td>1033</td><td>Dialog View did not find a record for the dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2804</td><td>1033</td><td>On activation of the control [3] on dialog [2] CMsiDialog failed to evaluate the condition [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2806</td><td>1033</td><td>The dialog [2] failed to evaluate the condition [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2807</td><td>1033</td><td>The action [2] is not recognized.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2808</td><td>1033</td><td>Default button is ill-defined on dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2809</td><td>1033</td><td>On the dialog [2] the next control pointers do not form a cycle. There is a pointer from [3] to [4], but there is no further pointer.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2810</td><td>1033</td><td>On the dialog [2] the next control pointers do not form a cycle. There is a pointer from both [3] and [5] to [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2811</td><td>1033</td><td>On dialog [2] control [3] has to take focus, but it is unable to do so.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2812</td><td>1033</td><td>The event [2] is not recognized.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2813</td><td>1033</td><td>The EndDialog event was called with the argument [2], but the dialog has a parent.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2814</td><td>1033</td><td>On the dialog [2] the control [3] names a nonexistent control [4] as the next control.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2815</td><td>1033</td><td>ControlCondition table has a row without condition for the dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2816</td><td>1033</td><td>The EventMapping table refers to an invalid control [4] on dialog [2] for the event [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2817</td><td>1033</td><td>The event [2] failed to set the attribute for the control [4] on dialog [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2818</td><td>1033</td><td>In the ControlEvent table EndDialog has an unrecognized argument [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2819</td><td>1033</td><td>Control [3] on dialog [2] needs a property linked to it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2820</td><td>1033</td><td>Attempted to initialize an already initialized handler.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2821</td><td>1033</td><td>Attempted to initialize an already initialized dialog: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2822</td><td>1033</td><td>No other method can be called on dialog [2] until all the controls are added.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2823</td><td>1033</td><td>Attempted to initialize an already initialized control: [3] on dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2824</td><td>1033</td><td>The dialog attribute [3] needs a record of at least [2] field(s).</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2825</td><td>1033</td><td>The control attribute [3] needs a record of at least [2] field(s).</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2826</td><td>1033</td><td>Control [3] on dialog [2] extends beyond the boundaries of the dialog [4] by [5] pixels.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2827</td><td>1033</td><td>The button [4] on the radio button group [3] on dialog [2] extends beyond the boundaries of the group [5] by [6] pixels.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2828</td><td>1033</td><td>Tried to remove control [3] from dialog [2], but the control is not part of the dialog.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2829</td><td>1033</td><td>Attempt to use an uninitialized dialog.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2830</td><td>1033</td><td>Attempt to use an uninitialized control on dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2831</td><td>1033</td><td>The control [3] on dialog [2] does not support [5] the attribute [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2832</td><td>1033</td><td>The dialog [2] does not support the attribute [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2833</td><td>1033</td><td>Control [4] on dialog [3] ignored the message [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2834</td><td>1033</td><td>The next pointers on the dialog [2] do not form a single loop.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2835</td><td>1033</td><td>The control [2] was not found on dialog [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2836</td><td>1033</td><td>The control [3] on the dialog [2] cannot take focus.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2837</td><td>1033</td><td>The control [3] on dialog [2] wants the winproc to return [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2838</td><td>1033</td><td>The item [2] in the selection table has itself as a parent.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2839</td><td>1033</td><td>Setting the property [2] failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2840</td><td>1033</td><td>Error dialog name mismatch.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2841</td><td>1033</td><td>No OK button was found on the error dialog.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2842</td><td>1033</td><td>No text field was found on the error dialog.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2843</td><td>1033</td><td>The ErrorString attribute is not supported for standard dialogs.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2844</td><td>1033</td><td>Cannot execute an error dialog if the Errorstring is not set.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2845</td><td>1033</td><td>The total width of the buttons exceeds the size of the error dialog.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2846</td><td>1033</td><td>SetFocus did not find the required control on the error dialog.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2847</td><td>1033</td><td>The control [3] on dialog [2] has both the icon and the bitmap style set.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2848</td><td>1033</td><td>Tried to set control [3] as the default button on dialog [2], but the control does not exist.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2849</td><td>1033</td><td>The control [3] on dialog [2] is of a type, that cannot be integer valued.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2850</td><td>1033</td><td>Unrecognized volume type.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2851</td><td>1033</td><td>The data for the icon [2] is not valid.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2852</td><td>1033</td><td>At least one control has to be added to dialog [2] before it is used.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2853</td><td>1033</td><td>Dialog [2] is a modeless dialog. The execute method should not be called on it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2854</td><td>1033</td><td>On the dialog [2] the control [3] is designated as first active control, but there is no such control.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2855</td><td>1033</td><td>The radio button group [3] on dialog [2] has fewer than 2 buttons.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2856</td><td>1033</td><td>Creating a second copy of the dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2857</td><td>1033</td><td>The directory [2] is mentioned in the selection table but not found.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2858</td><td>1033</td><td>The data for the bitmap [2] is not valid.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2859</td><td>1033</td><td>Test error message.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2860</td><td>1033</td><td>Cancel button is ill-defined on dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2861</td><td>1033</td><td>The next pointers for the radio buttons on dialog [2] control [3] do not form a cycle.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2862</td><td>1033</td><td>The attributes for the control [3] on dialog [2] do not define a valid icon size. Setting the size to 16.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2863</td><td>1033</td><td>The control [3] on dialog [2] needs the icon [4] in size [5]x[5], but that size is not available. Loading the first available size.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2864</td><td>1033</td><td>The control [3] on dialog [2] received a browse event, but there is no configurable directory for the present selection. Likely cause: browse button is not authored correctly.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2865</td><td>1033</td><td>Control [3] on billboard [2] extends beyond the boundaries of the billboard [4] by [5] pixels.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2866</td><td>1033</td><td>The dialog [2] is not allowed to return the argument [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2867</td><td>1033</td><td>The error dialog property is not set.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2868</td><td>1033</td><td>The error dialog [2] does not have the error style bit set.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2869</td><td>1033</td><td>The dialog [2] has the error style bit set, but is not an error dialog.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2870</td><td>1033</td><td>The help string [4] for control [3] on dialog [2] does not contain the separator character.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2871</td><td>1033</td><td>The [2] table is out of date: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2872</td><td>1033</td><td>The argument of the CheckPath control event on dialog [2] is invalid.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2873</td><td>1033</td><td>On the dialog [2] the control [3] has an invalid string length limit: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2874</td><td>1033</td><td>Changing the text font to [2] failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2875</td><td>1033</td><td>Changing the text color to [2] failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2876</td><td>1033</td><td>The control [3] on dialog [2] had to truncate the string: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2877</td><td>1033</td><td>The binary data [2] was not found</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2878</td><td>1033</td><td>On the dialog [2] the control [3] has a possible value: [4]. This is an invalid or duplicate value.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2879</td><td>1033</td><td>The control [3] on dialog [2] cannot parse the mask string: [4].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2880</td><td>1033</td><td>Do not perform the remaining control events.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2881</td><td>1033</td><td>CMsiHandler initialization failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2882</td><td>1033</td><td>Dialog window class registration failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2883</td><td>1033</td><td>CreateNewDialog failed for the dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2884</td><td>1033</td><td>Failed to create a window for the dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2885</td><td>1033</td><td>Failed to create the control [3] on the dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2886</td><td>1033</td><td>Creating the [2] table failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2887</td><td>1033</td><td>Creating a cursor to the [2] table failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2888</td><td>1033</td><td>Executing the [2] view failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2889</td><td>1033</td><td>Creating the window for the control [3] on dialog [2] failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2890</td><td>1033</td><td>The handler failed in creating an initialized dialog.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2891</td><td>1033</td><td>Failed to destroy window for dialog [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2892</td><td>1033</td><td>[2] is an integer only control, [3] is not a valid integer value.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2893</td><td>1033</td><td>The control [3] on dialog [2] can accept property values that are at most [5] characters long. The value [4] exceeds this limit, and has been truncated.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2894</td><td>1033</td><td>Loading RICHED20.DLL failed. GetLastError() returned: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2895</td><td>1033</td><td>Freeing RICHED20.DLL failed. GetLastError() returned: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2896</td><td>1033</td><td>Executing action [2] failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2897</td><td>1033</td><td>Failed to create any [2] font on this system.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2898</td><td>1033</td><td>For [2] textstyle, the system created a '[3]' font, in [4] character set.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2899</td><td>1033</td><td>Failed to create [2] textstyle. GetLastError() returned: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_29</td><td>1033</td><td>There is not enough disk space to install the file [2].  Free some disk space and click Retry, or click Cancel to exit.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2901</td><td>1033</td><td>Invalid parameter to operation [2]: Parameter [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2902</td><td>1033</td><td>Operation [2] called out of sequence.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2903</td><td>1033</td><td>The file [2] is missing.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2904</td><td>1033</td><td>Could not BindImage file [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2905</td><td>1033</td><td>Could not read record from script file [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2906</td><td>1033</td><td>Missing header in script file [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2907</td><td>1033</td><td>Could not create secure security descriptor. Error: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2908</td><td>1033</td><td>Could not register component [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2909</td><td>1033</td><td>Could not unregister component [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2910</td><td>1033</td><td>Could not determine user's security ID.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2911</td><td>1033</td><td>Could not remove the folder [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2912</td><td>1033</td><td>Could not schedule file [2] for removal on restart.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2919</td><td>1033</td><td>No cabinet specified for compressed file: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2920</td><td>1033</td><td>Source directory not specified for file [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2924</td><td>1033</td><td>Script [2] version unsupported. Script version: [3], minimum version: [4], maximum version: [5].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2927</td><td>1033</td><td>ShellFolder id [2] is invalid.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2928</td><td>1033</td><td>Exceeded maximum number of sources. Skipping source '[2]'.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2929</td><td>1033</td><td>Could not determine publishing root. Error: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2932</td><td>1033</td><td>Could not create file [2] from script data. Error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2933</td><td>1033</td><td>Could not initialize rollback script [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2934</td><td>1033</td><td>Could not secure transform [2]. Error [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2935</td><td>1033</td><td>Could not unsecure transform [2]. Error [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2936</td><td>1033</td><td>Could not find transform [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2937</td><td>1033</td><td>Windows Installer cannot install a system file protection catalog. Catalog: [2], Error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2938</td><td>1033</td><td>Windows Installer cannot retrieve a system file protection catalog from the cache. Catalog: [2], Error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2939</td><td>1033</td><td>Windows Installer cannot delete a system file protection catalog from the cache. Catalog: [2], Error: [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2940</td><td>1033</td><td>Directory Manager not supplied for source resolution.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2941</td><td>1033</td><td>Unable to compute the CRC for file [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2942</td><td>1033</td><td>BindImage action has not been executed on [2] file.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2943</td><td>1033</td><td>This version of Windows does not support deploying 64-bit packages. The script [2] is for a 64-bit package.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2944</td><td>1033</td><td>GetProductAssignmentType failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_2945</td><td>1033</td><td>Installation of ComPlus App [2] failed with error [3].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_3</td><td>1033</td><td>Info [1]. </td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_30</td><td>1033</td><td>Source file not found: [2].  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_3001</td><td>1033</td><td>The patches in this list contain incorrect sequencing information: [2][3][4][5][6][7][8][9][10][11][12][13][14][15][16].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_3002</td><td>1033</td><td>Patch [2] contains invalid sequencing information. </td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_31</td><td>1033</td><td>Error reading from file: [3]. {{ System error [2].}}  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_32</td><td>1033</td><td>Error writing to file: [3]. {{ System error [2].}}  Verify that you have access to that directory.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_33</td><td>1033</td><td>Source file not found{{(cabinet)}}: [2].  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_34</td><td>1033</td><td>Cannot create the directory [2].  A file with this name already exists.  Please rename or remove the file and click Retry, or click Cancel to exit.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_35</td><td>1033</td><td>The volume [2] is currently unavailable.  Please select another.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_36</td><td>1033</td><td>The specified path [2] is unavailable.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_37</td><td>1033</td><td>Unable to write to the specified folder [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_38</td><td>1033</td><td>A network error occurred while attempting to read from the file [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_39</td><td>1033</td><td>An error occurred while attempting to create the directory [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_4</td><td>1033</td><td>Internal Error [1]. [2]{, [3]}{, [4]}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_40</td><td>1033</td><td>A network error occurred while attempting to create the directory [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_41</td><td>1033</td><td>A network error occurred while attempting to open the source file cabinet [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_42</td><td>1033</td><td>The specified path is too long [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_43</td><td>1033</td><td>The Installer has insufficient privileges to modify the file [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_44</td><td>1033</td><td>A portion of the path [2] exceeds the length allowed by the system.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_45</td><td>1033</td><td>The path [2] contains words that are not valid in folders.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_46</td><td>1033</td><td>The path [2] contains an invalid character.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_47</td><td>1033</td><td>[2] is not a valid short file name.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_48</td><td>1033</td><td>Error getting file security: [3] GetLastError: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_49</td><td>1033</td><td>Invalid Drive: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_5</td><td>1033</td><td>{{Disk full: }}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_50</td><td>1033</td><td>Could not create key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_51</td><td>1033</td><td>Could not open key: [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_52</td><td>1033</td><td>Could not delete value [2] from key [3]. {{ System error [4].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_53</td><td>1033</td><td>Could not delete key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_54</td><td>1033</td><td>Could not read value [2] from key [3]. {{ System error [4].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_55</td><td>1033</td><td>Could not write value [2] to key [3]. {{ System error [4].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_56</td><td>1033</td><td>Could not get value names for key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_57</td><td>1033</td><td>Could not get sub key names for key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_58</td><td>1033</td><td>Could not read security information for key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_59</td><td>1033</td><td>Could not increase the available registry space. [2] KB of free registry space is required for the installation of this application.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_6</td><td>1033</td><td>Action [Time]: [1]. [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_60</td><td>1033</td><td>Another installation is in progress. You must complete that installation before continuing this one.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_61</td><td>1033</td><td>Error accessing secured data. Please make sure the Windows Installer is configured properly and try the installation again.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_62</td><td>1033</td><td>User [2] has previously initiated an installation for product [3].  That user will need to run that installation again before using that product.  Your current installation will now continue.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_63</td><td>1033</td><td>User [2] has previously initiated an installation for product [3].  That user will need to run that installation again before using that product.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_64</td><td>1033</td><td>Out of disk space -- Volume: '[2]'; required space: [3] KB; available space: [4] KB.  Free some disk space and retry.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_65</td><td>1033</td><td>Are you sure you want to cancel?</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_66</td><td>1033</td><td>The file [2][3] is being held in use{ by the following process: Name: [4], ID: [5], Window Title: [6]}.  Close that application and retry.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_67</td><td>1033</td><td>The product [2] is already installed, preventing the installation of this product.  The two products are incompatible.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_68</td><td>1033</td><td>Out of disk space -- Volume: [2]; required space: [3] KB; available space: [4] KB.  If rollback is disabled, enough space is available. Click Cancel to quit, Retry to check available disk space again, or Ignore to continue without rollback.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_69</td><td>1033</td><td>Could not access network location [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_7</td><td>1033</td><td>[ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_70</td><td>1033</td><td>The following applications should be closed before continuing the installation:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_71</td><td>1033</td><td>Could not find any previously installed compliant products on the machine for installing this product.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_72</td><td>1033</td><td>The key [2] is not valid.  Verify that you entered the correct key.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_73</td><td>1033</td><td>The installer must restart your system before configuration of [2] can continue.  Click Yes to restart now or No if you plan to restart later.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_74</td><td>1033</td><td>You must restart your system for the configuration changes made to [2] to take effect. Click Yes to restart now or No if you plan to restart later.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_75</td><td>1033</td><td>An installation for [2] is currently suspended.  You must undo the changes made by that installation to continue.  Do you want to undo those changes?</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_76</td><td>1033</td><td>A previous installation for this product is in progress.  You must undo the changes made by that installation to continue.  Do you want to undo those changes?</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_77</td><td>1033</td><td>No valid source could be found for product [2].  The Windows Installer cannot continue.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_78</td><td>1033</td><td>Installation operation completed successfully.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_79</td><td>1033</td><td>Installation operation failed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_8</td><td>1033</td><td>{[2]}{, [3]}{, [4]}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_80</td><td>1033</td><td>Product: [2] -- [3]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_81</td><td>1033</td><td>You may either restore your computer to its previous state or continue the installation later. Would you like to restore?</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_82</td><td>1033</td><td>An error occurred while writing installation information to disk.  Check to make sure enough disk space is available, and click Retry, or Cancel to end the installation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_83</td><td>1033</td><td>One or more of the files required to restore your computer to its previous state could not be found.  Restoration will not be possible.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_84</td><td>1033</td><td>The path [2] is not valid.  Please specify a valid path.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_85</td><td>1033</td><td>Out of memory. Shut down other applications before retrying.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_86</td><td>1033</td><td>There is no disk in drive [2]. Please insert one and click Retry, or click Cancel to go back to the previously selected volume.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_87</td><td>1033</td><td>There is no disk in drive [2]. Please insert one and click Retry, or click Cancel to return to the browse dialog and select a different volume.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_88</td><td>1033</td><td>The folder [2] does not exist.  Please enter a path to an existing folder.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_89</td><td>1033</td><td>You have insufficient privileges to read this folder.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_9</td><td>1033</td><td>Message type: [1], Argument: [2]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_90</td><td>1033</td><td>A valid destination folder for the installation could not be determined.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_91</td><td>1033</td><td>Error attempting to read from the source installation database: [2].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_92</td><td>1033</td><td>Scheduling reboot operation: Renaming file [2] to [3]. Must reboot to complete operation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_93</td><td>1033</td><td>Scheduling reboot operation: Deleting file [2]. Must reboot to complete operation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_94</td><td>1033</td><td>Module [2] failed to register.  HRESULT [3].  Contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_95</td><td>1033</td><td>Module [2] failed to unregister.  HRESULT [3].  Contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_96</td><td>1033</td><td>Failed to cache package [2]. Error: [3]. Contact your support personnel.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_97</td><td>1033</td><td>Could not register font [2].  Verify that you have sufficient permissions to install fonts, and that the system supports this font.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_98</td><td>1033</td><td>Could not unregister font [2]. Verify that you have sufficient permissions to remove fonts.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ERROR_99</td><td>1033</td><td>Could not create shortcut [2]. Verify that the destination folder exists and that you can access it.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_INSTALLDIR</td><td>1033</td><td>[INSTALLDIR]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_INSTALLSHIELD</td><td>1033</td><td>InstallShield</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_INSTALLSHIELD_FORMATTED</td><td>1033</td><td>{&amp;MSSWhiteSerif8}InstallShield</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_MISSING</td><td>1033</td><td>The InstallScript engine is missing from this machine.  If available, please run ISScript.msi, or contact your support personnel for further assistance.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_OLD</td><td>1033</td><td>The InstallScript engine on this machine is older than the version required to run this setup.  If available, please install the latest version of ISScript.msi, or contact your support personnel for further assistance.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_NEXT</td><td>1033</td><td>&amp;Next &gt;</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_BROWSE</td><td>1033</td><td>Open [ProductName]'s original [SETUPEXENAME]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_INVALID</td><td>1033</td><td>This executable file does not appear to be the original executable file for [ProductName]. Without using the original [SETUPEXENAME] to install additional dependencies, [ProductName] may not work correctly. Would you like to find the original [SETUPEXENAME]?</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_SEARCH</td><td>1033</td><td>This installation may require additional dependencies. Without its dependencies, [ProductName] may not work correctly. Would you like to find the original [SETUPEXENAME]?</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PREVENT_DOWNGRADE_EXIT</td><td>1033</td><td>A newer version of this application is already installed on this computer. If you wish to install this version, please uninstall the newer version first. Click OK to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PRINT_BUTTON</td><td>1033</td><td>&amp;Print</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PRODUCTNAME_INSTALLSHIELD</td><td>1033</td><td>[ProductName] - InstallShield Wizard</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOL</td><td>1033</td><td>Creating application pool %s</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOLS</td><td>1033</td><td>Creating application Pools...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOT</td><td>1033</td><td>Creating IIS virtual directory %s</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOTS</td><td>1033</td><td>Creating IIS virtual directories...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>1033</td><td>Creating web service extension</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>1033</td><td>Creating web service extensions...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITE</td><td>1033</td><td>Creating IIS website %s</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITES</td><td>1033</td><td>Creating IIS websites...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACT</td><td>1033</td><td>Extracting information for IIS virtual directories...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACTDONE</td><td>1033</td><td>Extracted information for IIS virtual directories...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOL</td><td>1033</td><td>Removing application pool</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOLS</td><td>1033</td><td>Removing application pools...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVESITE</td><td>1033</td><td>Removing web site at port %d</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOT</td><td>1033</td><td>Removing IIS virtual directory %s</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOTS</td><td>1033</td><td>Removing IIS virtual directories...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>1033</td><td>Removing web service extension</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>1033</td><td>Removing web service extensions...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSITES</td><td>1033</td><td>Removing IIS websites...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>1033</td><td>Rolling back application pools...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKVROOTS</td><td>1033</td><td>Rolling back virtual directory and web site changes...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>1033</td><td>Rolling back web service extensions...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>1033</td><td>Replacing %s with %s in %s...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_XML_COSTING</td><td>1033</td><td>Costing XML files...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_XML_CREATE_FILE</td><td>1033</td><td>Creating XML file %s...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_XML_FILES</td><td>1033</td><td>Performing XML file changes...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_XML_REMOVE_FILE</td><td>1033</td><td>Removing XML file %s...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_XML_ROLLBACK_FILES</td><td>1033</td><td>Rolling back XML file changes...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_PROGMSG_XML_UPDATE_FILE</td><td>1033</td><td>Updating XML file %s...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SETUPEXE_EXPIRE_MSG</td><td>1033</td><td>This setup works until %s. The setup will now exit.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SETUPEXE_LAUNCH_COND_E</td><td>1033</td><td>This setup was built with an evaluation version of InstallShield and can only be launched from setup.exe.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>1033</td><td>LAUNCH~1.EXE|Launch setup.exe</td><td>0</td><td/><td>-165455796</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>1033</td><td>LAUNCH~1.EXE|Launch _IsIcoRes.Exe</td><td>0</td><td/><td>-165455796</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>1033</td><td>LAUNCH~1.EXE|Launch migrate.exe</td><td>0</td><td/><td>-165453748</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>1033</td><td>LAUNCH~1.EXE|Launch WG.exe</td><td>0</td><td/><td>-165447604</td></row>
		<row><td>IDS_SQLBROWSE_INTRO</td><td>1033</td><td>From the list of servers below, select the database server you would like to target.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_DB</td><td>1033</td><td>From the list of catalog names below, select the database catalog you would like to target.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_TEMPLATE</td><td>1033</td><td>[IS_SQLBROWSE_INTRO]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE</td><td>1033</td><td>B&amp;rowse...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE_DB</td><td>1033</td><td>Br&amp;owse...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_CATALOG</td><td>1033</td><td>&amp;Name of database catalog:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_CONNECT</td><td>1033</td><td>Connect using:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_DESC</td><td>1033</td><td>Select database server and authentication method</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_ID</td><td>1033</td><td>&amp;Login ID:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_INTRO</td><td>1033</td><td>Select the database server to install to from the list below or click Browse to see a list of all database servers. You can also specify the way to authenticate your login using your current credentials or a SQL Login ID and Password.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_PSWD</td><td>1033</td><td>&amp;Password:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_SERVER</td><td>1033</td><td>&amp;Database Server:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_SERVER2</td><td>1033</td><td>&amp;Database server that you are installing to:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_SQL</td><td>1033</td><td>S&amp;erver authentication using the Login ID and password below</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_TITLE</td><td>1033</td><td>{&amp;MSSansBold8}Database Server</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLLOGIN_WIN</td><td>1033</td><td>&amp;Windows authentication credentials of current user</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLSCRIPT_INSTALLING</td><td>1033</td><td>Executing SQL Install Script...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SQLSCRIPT_UNINSTALLING</td><td>1033</td><td>Executing SQL Uninstall Script...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_STANDARD_USE_SETUPEXE</td><td>1033</td><td>This installation cannot be run by directly launching the MSI package. You must run setup.exe.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_Advertise</td><td>1033</td><td>Will be installed on first use. (Available only if the feature supports this option.)</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_AllInstalledLocal</td><td>1033</td><td>Will be completely installed to the local hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_CustomSetup</td><td>1033</td><td>{&amp;MSSansBold8}Custom Setup Tips</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_CustomSetupDescription</td><td>1033</td><td>Custom Setup allows you to selectively install program features.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_IconInstallState</td><td>1033</td><td>The icon next to the feature name indicates the install state of the feature. Click the icon to drop down the install state menu for each feature.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_InstallState</td><td>1033</td><td>This install state means the feature...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_Network</td><td>1033</td><td>Will be installed to run from the network. (Available only if the feature supports this option.)</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_SubFeaturesInstalledLocal</td><td>1033</td><td>Will have some subfeatures installed to the local hard drive. (Available only if the feature has subfeatures.)</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_SetupTips_WillNotBeInstalled</td><td>1033</td><td>Will not be installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_Available</td><td>1033</td><td>Available</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_Bytes</td><td>1033</td><td>bytes</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_CompilingFeaturesCost</td><td>1033</td><td>Compiling cost for this feature...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_Differences</td><td>1033</td><td>Differences</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_DiskSize</td><td>1033</td><td>Disk Size</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureCompletelyRemoved</td><td>1033</td><td>This feature will be completely removed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureContinueNetwork</td><td>1033</td><td>This feature will continue to be run from the network</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureFreeSpace</td><td>1033</td><td>This feature frees up [1] on your hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD</td><td>1033</td><td>This feature, and all subfeatures, will be installed to run from the CD.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD2</td><td>1033</td><td>This feature will be installed to run from CD.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal</td><td>1033</td><td>This feature, and all subfeatures, will be installed on local hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal2</td><td>1033</td><td>This feature will be installed on local hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork</td><td>1033</td><td>This feature, and all subfeatures, will be installed to run from the network.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork2</td><td>1033</td><td>This feature will be installed to run from network.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledRequired</td><td>1033</td><td>Will be installed when required.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired</td><td>1033</td><td>This feature will be set to be installed when required.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired2</td><td>1033</td><td>This feature will be installed when required.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureLocal</td><td>1033</td><td>This feature will be installed on the local hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureLocal2</td><td>1033</td><td>This feature will be installed on your local hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork</td><td>1033</td><td>This feature will be installed to run from the network.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork2</td><td>1033</td><td>This feature will be available to run from the network.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureNotAvailable</td><td>1033</td><td>This feature will not be available.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD</td><td>1033</td><td>This feature will be installed to run from CD.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD2</td><td>1033</td><td>This feature will be available to run from CD.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureRemainLocal</td><td>1033</td><td>This feature will remain on your local hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureRemoveNetwork</td><td>1033</td><td>This feature will be removed from your local hard drive, but will be still available to run from the network.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedCD</td><td>1033</td><td>This feature will be removed from your local hard drive but will still be available to run from CD.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedUnlessRequired</td><td>1033</td><td>This feature will be removed from your local hard drive but will be set to be installed when required.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureRequiredSpace</td><td>1033</td><td>This feature requires [1] on your hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureRunFromCD</td><td>1033</td><td>This feature will continue to be run from the CD</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree</td><td>1033</td><td>This feature frees up [1] on your hard drive. It has [2] of [3] subfeatures selected. The subfeatures free up [4] on your hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree2</td><td>1033</td><td>This feature frees up [1] on your hard drive. It has [2] of [3] subfeatures selected. The subfeatures require [4] on your hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree3</td><td>1033</td><td>This feature requires [1] on your hard drive. It has [2] of [3] subfeatures selected. The subfeatures free up [4] on your hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree4</td><td>1033</td><td>This feature requires [1] on your hard drive. It has [2] of [3] subfeatures selected. The subfeatures require [4] on your hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureUnavailable</td><td>1033</td><td>This feature will become unavailable.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureUninstallNoNetwork</td><td>1033</td><td>This feature will be uninstalled completely, and you won't be able to run it from the network.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureWasCD</td><td>1033</td><td>This feature was run from the CD but will be set to be installed when required.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureWasCDLocal</td><td>1033</td><td>This feature was run from the CD but will be installed on the local hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkInstalled</td><td>1033</td><td>This feature was run from the network but will be installed when required.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkLocal</td><td>1033</td><td>This feature was run from the network but will be installed on the local hard drive.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_FeatureWillBeUninstalled</td><td>1033</td><td>This feature will be uninstalled completely, and you won't be able to run it from CD.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_Folder</td><td>1033</td><td>Fldr|New Folder</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_GB</td><td>1033</td><td>GB</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_KB</td><td>1033</td><td>KB</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_MB</td><td>1033</td><td>MB</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_Required</td><td>1033</td><td>Required</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_TimeRemaining</td><td>1033</td><td>Time remaining: {[1] min }{[2] sec}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS_UITEXT_Volume</td><td>1033</td><td>Volume</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__AgreeToLicense_0</td><td>1033</td><td>I &amp;do not accept the terms in the license agreement</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__AgreeToLicense_1</td><td>1033</td><td>I &amp;accept the terms in the license agreement</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DatabaseFolder_ChangeFolder</td><td>1033</td><td>Click Next to install to this folder, or click Change to install to a different folder.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseDir</td><td>1033</td><td>[DATABASEDIR]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseFolder</td><td>1033</td><td>{&amp;MSSansBold8}Database Folder</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DestinationFolder_Change</td><td>1033</td><td>&amp;Change...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DestinationFolder_ChangeFolder</td><td>1033</td><td>Click Next to install to this folder, or click Change to install to a different folder.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DestinationFolder_DestinationFolder</td><td>1033</td><td>{&amp;MSSansBold8}Destination Folder</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DestinationFolder_InstallTo</td><td>1033</td><td>Install [ProductName] to:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DisplayName_Custom</td><td>1033</td><td>Custom</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DisplayName_Minimal</td><td>1033</td><td>Minimal</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__DisplayName_Typical</td><td>1033</td><td>Typical</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallBrowse_11</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallBrowse_4</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallBrowse_8</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallBrowse_BrowseDestination</td><td>1033</td><td>Browse to the destination folder.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallBrowse_ChangeDestination</td><td>1033</td><td>{&amp;MSSansBold8}Change Current Destination Folder</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallBrowse_CreateFolder</td><td>1033</td><td>Create new folder|</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallBrowse_FolderName</td><td>1033</td><td>&amp;Folder name:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallBrowse_LookIn</td><td>1033</td><td>&amp;Look in:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallBrowse_UpOneLevel</td><td>1033</td><td>Up one level|</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_ServerImage</td><td>1033</td><td>The InstallShield(R) Wizard will create a server image of [ProductName] at a specified network location. To continue, click Next.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_Wizard</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallPoint_Change</td><td>1033</td><td>&amp;Change...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallPoint_EnterNetworkLocation</td><td>1033</td><td>Enter the network location or click Change to browse to a location.  Click Install to create a server image of [ProductName] at the specified network location or click Cancel to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallPoint_Install</td><td>1033</td><td>&amp;Install</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocation</td><td>1033</td><td>&amp;Network location:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocationFormatted</td><td>1033</td><td>{&amp;MSSansBold8}Network Location</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsAdminInstallPoint_SpecifyNetworkLocation</td><td>1033</td><td>Specify a network location for the server image of the product.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseButton</td><td>1033</td><td>&amp;Browse...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_11</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_4</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_8</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_BrowseDestFolder</td><td>1033</td><td>Browse to the destination folder.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_ChangeCurrentFolder</td><td>1033</td><td>{&amp;MSSansBold8}Change Current Destination Folder</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_CreateFolder</td><td>1033</td><td>Create New Folder|</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_FolderName</td><td>1033</td><td>&amp;Folder name:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_LookIn</td><td>1033</td><td>&amp;Look in:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseFolderDlg_UpOneLevel</td><td>1033</td><td>Up One Level|</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseForAccount</td><td>1033</td><td>Browse for a User Account</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseGroup</td><td>1033</td><td>Select a Group</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsBrowseUsernameTitle</td><td>1033</td><td>Select a User Name</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCancelDlg_ConfirmCancel</td><td>1033</td><td>Are you sure you want to cancel [ProductName] installation?</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCancelDlg_No</td><td>1033</td><td>&amp;No</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCancelDlg_Yes</td><td>1033</td><td>&amp;Yes</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsConfirmPassword</td><td>1033</td><td>Con&amp;firm password:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCreateNewUserTitle</td><td>1033</td><td>New User Information</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCreateUserBrowse</td><td>1033</td><td>N&amp;ew User Information...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Change</td><td>1033</td><td>&amp;Change...</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_ClickFeatureIcon</td><td>1033</td><td>Click on an icon in the list below to change how a feature is installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_CustomSetup</td><td>1033</td><td>{&amp;MSSansBold8}Custom Setup</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureDescription</td><td>1033</td><td>Feature Description</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeaturePath</td><td>1033</td><td>&lt;selected feature path&gt;</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureSize</td><td>1033</td><td>Feature size</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Help</td><td>1033</td><td>&amp;Help</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_InstallTo</td><td>1033</td><td>Install to:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_MultilineDescription</td><td>1033</td><td>Multiline description of the currently selected item</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_SelectFeatures</td><td>1033</td><td>Select the program features you want installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Space</td><td>1033</td><td>&amp;Space</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsDiskSpaceDlg_DiskSpace</td><td>1033</td><td>Disk space required for the installation exceeds available disk space.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsDiskSpaceDlg_HighlightedVolumes</td><td>1033</td><td>The highlighted volumes do not have enough disk space available for the currently selected features. You can remove files from the highlighted volumes, choose to install fewer features onto local drives, or select different destination drives.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsDiskSpaceDlg_Numbers</td><td>1033</td><td>{120}{70}{70}{70}{70}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OutOfDiskSpace</td><td>1033</td><td>{&amp;MSSansBold8}Out of Disk Space</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsDomainOrServer</td><td>1033</td><td>&amp;Domain or server:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsErrorDlg_Abort</td><td>1033</td><td>&amp;Abort</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsErrorDlg_ErrorText</td><td>1033</td><td>&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsErrorDlg_Ignore</td><td>1033</td><td>&amp;Ignore</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsErrorDlg_InstallerInfo</td><td>1033</td><td>[ProductName] Installer Information</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsErrorDlg_NO</td><td>1033</td><td>&amp;No</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsErrorDlg_OK</td><td>1033</td><td>&amp;OK</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsErrorDlg_Retry</td><td>1033</td><td>&amp;Retry</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsErrorDlg_Yes</td><td>1033</td><td>&amp;Yes</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_Finish</td><td>1033</td><td>&amp;Finish</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_InstallSuccess</td><td>1033</td><td>The InstallShield Wizard has successfully installed [ProductName]. Click Finish to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_LaunchProgram</td><td>1033</td><td>Launch the program</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_ShowReadMe</td><td>1033</td><td>Show the readme file</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_UninstallSuccess</td><td>1033</td><td>The InstallShield Wizard has successfully uninstalled [ProductName]. Click Finish to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_Update_InternetConnection</td><td>1033</td><td>Your Internet connection can be used to make sure that you have the latest updates.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_Update_PossibleUpdates</td><td>1033</td><td>Some program files might have been updated since you purchased your copy of [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_Update_SetupFinished</td><td>1033</td><td>Setup has finished installing [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_Update_YesCheckForUpdates</td><td>1033</td><td>&amp;Yes, check for program updates (Recommended) after the setup completes.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsExitDialog_WizardCompleted</td><td>1033</td><td>{&amp;TahomaBold10}InstallShield Wizard Completed</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFatalError_ClickFinish</td><td>1033</td><td>Click Finish to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFatalError_Finish</td><td>1033</td><td>&amp;Finish</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFatalError_KeepOrRestore</td><td>1033</td><td>You can either keep any existing installed elements on your system to continue this installation at a later time or you can restore your system to its original state prior to the installation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFatalError_NotModified</td><td>1033</td><td>Your system has not been modified. To complete installation at another time, please run setup again.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFatalError_RestoreOrContinueLater</td><td>1033</td><td>Click Restore or Continue Later to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFatalError_WizardCompleted</td><td>1033</td><td>{&amp;TahomaBold10}InstallShield Wizard Completed</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFatalError_WizardInterrupted</td><td>1033</td><td>The wizard was interrupted before [ProductName] could be completely installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_DiskSpaceRequirements</td><td>1033</td><td>{&amp;MSSansBold8}Disk Space Requirements</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_Numbers</td><td>1033</td><td>{120}{70}{70}{70}{70}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_SpaceRequired</td><td>1033</td><td>The disk space required for the installation of the selected features.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_VolumesTooSmall</td><td>1033</td><td>The highlighted volumes do not have enough disk space available for the currently selected features. You can remove files from the highlighted volumes, choose to install fewer features onto local drives, or select different destination drives.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFilesInUse_ApplicationsUsingFiles</td><td>1033</td><td>The following applications are using files that need to be updated by this setup. Close these applications and click Retry to continue.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFilesInUse_Exit</td><td>1033</td><td>&amp;Exit</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUse</td><td>1033</td><td>{&amp;MSSansBold8}Files in Use</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUseMessage</td><td>1033</td><td>Some files that need to be updated are currently in use.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFilesInUse_Ignore</td><td>1033</td><td>&amp;Ignore</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsFilesInUse_Retry</td><td>1033</td><td>&amp;Retry</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsGroup</td><td>1033</td><td>&amp;Group:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsGroupLabel</td><td>1033</td><td>Gr&amp;oup:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsInitDlg_1</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsInitDlg_2</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsInitDlg_PreparingWizard</td><td>1033</td><td>[ProductName] Setup is preparing the InstallShield Wizard which will guide you through the program setup process.  Please wait.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsInitDlg_WelcomeWizard</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsLicenseDlg_LicenseAgreement</td><td>1033</td><td>{&amp;MSSansBold8}License Agreement</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsLicenseDlg_ReadLicenseAgreement</td><td>1033</td><td>Please read the following license agreement carefully.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsLogonInfoDescription</td><td>1033</td><td>Specify the user name and password of the user account that will logon to use this application. The user account must be in the form DOMAIN\Username.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsLogonInfoTitle</td><td>1033</td><td>{&amp;MSSansBold8}Logon Information</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsLogonInfoTitleDescription</td><td>1033</td><td>Specify a user name and password</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsLogonNewUserDescription</td><td>1033</td><td>Select the button below to specify information about a new user that will be created during the installation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceDlg_ChangeFeatures</td><td>1033</td><td>Change which program features are installed. This option displays the Custom Selection dialog in which you can change the way features are installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceDlg_MaitenanceOptions</td><td>1033</td><td>Modify, repair, or remove the program.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceDlg_Modify</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Modify</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceDlg_ProgramMaintenance</td><td>1033</td><td>{&amp;MSSansBold8}Program Maintenance</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceDlg_Remove</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Remove</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceDlg_RemoveProductName</td><td>1033</td><td>Remove [ProductName] from your computer.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceDlg_Repair</td><td>1033</td><td>{&amp;MSSansBold8}Re&amp;pair</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceDlg_RepairMessage</td><td>1033</td><td>Repair installation errors in the program. This option fixes missing or corrupt files, shortcuts, and registry entries.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription</td><td>1033</td><td>The InstallShield(R) Wizard will allow you to modify, repair, or remove [ProductName]. To continue, click Next.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMaintenanceWelcome_WizardWelcome</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles</td><td>1033</td><td>The following applications are using files that need to be updated by this setup.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_CloseRestart</td><td>1033</td><td>Automatically close and attempt to restart applications.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_RebootAfter</td><td>1033</td><td>Do not close applications. (A reboot will be required.)</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsPatchDlg_PatchClickUpdate</td><td>1033</td><td>The InstallShield(R) Wizard will install the Patch for [ProductName] on your computer.  To continue, click Update.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsPatchDlg_PatchWizard</td><td>1033</td><td>[ProductName] Patch - InstallShield Wizard</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsPatchDlg_Update</td><td>1033</td><td>&amp;Update &gt;</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsPatchDlg_WelcomePatchWizard</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the Patch for [ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_2</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_Hidden</td><td>1033</td><td>(Hidden for now)</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_HiddenTimeRemaining</td><td>1033</td><td>)Hidden for now)Estimated time remaining:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_InstallingProductName</td><td>1033</td><td>{&amp;MSSansBold8}Installing [ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_ProgressDone</td><td>1033</td><td>Progress done</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_SecHidden</td><td>1033</td><td>(Hidden for now)Sec.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_Status</td><td>1033</td><td>Status:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_Uninstalling</td><td>1033</td><td>{&amp;MSSansBold8}Uninstalling [ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures</td><td>1033</td><td>The program features you selected are being uninstalled.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures2</td><td>1033</td><td>The program features you selected are being installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall</td><td>1033</td><td>Please wait while the InstallShield Wizard uninstalls [ProductName]. This may take several minutes.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall2</td><td>1033</td><td>Please wait while the InstallShield Wizard installs [ProductName]. This may take several minutes.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsReadmeDlg_Cancel</td><td>1033</td><td>&amp;Cancel</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsReadmeDlg_PleaseReadInfo</td><td>1033</td><td>Please read the following readme information carefully.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsReadmeDlg_ReadMeInfo</td><td>1033</td><td>{&amp;MSSansBold8}Readme Information</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_16</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_Anyone</td><td>1033</td><td>&amp;Anyone who uses this computer (all users)</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_CustomerInformation</td><td>1033</td><td>{&amp;MSSansBold8}Customer Information</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_InstallFor</td><td>1033</td><td>Install this application for:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_OnlyMe</td><td>1033</td><td>Only for &amp;me ([USERNAME])</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_Organization</td><td>1033</td><td>&amp;Organization:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_PleaseEnterInfo</td><td>1033</td><td>Please enter your information.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_SerialNumber</td><td>1033</td><td>&amp;Serial Number:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma50</td><td>1033</td><td>{\Tahoma8}{50}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma80</td><td>1033</td><td>{\Tahoma8}{80}</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsRegisterUserDlg_UserName</td><td>1033</td><td>&amp;User Name:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsResumeDlg_ResumeSuspended</td><td>1033</td><td>The InstallShield(R) Wizard will complete the suspended installation of [ProductName] on your computer. To continue, click Next.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsResumeDlg_Resuming</td><td>1033</td><td>{&amp;TahomaBold10}Resuming the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsResumeDlg_WizardResume</td><td>1033</td><td>The InstallShield(R) Wizard will complete the installation of [ProductName] on your computer. To continue, click Next.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSelectDomainOrServer</td><td>1033</td><td>Select a Domain or Server</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSelectDomainUserInstructions</td><td>1033</td><td>Use the browse buttons to select a domain\server and a user name.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupComplete_ShowMsiLog</td><td>1033</td><td>Show the Windows Installer log</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_13</td><td>1033</td><td/><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_AllFeatures</td><td>1033</td><td>All program features will be installed. (Requires the most disk space.)</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseFeatures</td><td>1033</td><td>Choose which program features you want installed and where they will be installed. Recommended for advanced users.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseSetupType</td><td>1033</td><td>Choose the setup type that best suits your needs.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Complete</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Complete</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Custom</td><td>1033</td><td>{&amp;MSSansBold8}Cu&amp;stom</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Minimal</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Minimal</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_MinimumFeatures</td><td>1033</td><td>Minimum required features will be installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SelectSetupType</td><td>1033</td><td>Please select a setup type.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SetupType</td><td>1033</td><td>{&amp;MSSansBold8}Setup Type</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Typical</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Typical</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsUserExit_ClickFinish</td><td>1033</td><td>Click Finish to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsUserExit_Finish</td><td>1033</td><td>&amp;Finish</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsUserExit_KeepOrRestore</td><td>1033</td><td>You can either keep any existing installed elements on your system to continue this installation at a later time or you can restore your system to its original state prior to the installation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsUserExit_NotModified</td><td>1033</td><td>Your system has not been modified. To install this program at a later time, please run the installation again.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsUserExit_RestoreOrContinue</td><td>1033</td><td>Click Restore or Continue Later to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsUserExit_WizardCompleted</td><td>1033</td><td>{&amp;TahomaBold10}InstallShield Wizard Completed</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsUserExit_WizardInterrupted</td><td>1033</td><td>The wizard was interrupted before [ProductName] could be completely installed.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsUserNameLabel</td><td>1033</td><td>&amp;User name:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_BackOrCancel</td><td>1033</td><td>If you want to review or change any of your installation settings, click Back. Click Cancel to exit the wizard.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ClickInstall</td><td>1033</td><td>Click Install to begin the installation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Company</td><td>1033</td><td>Company: [COMPANYNAME]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_CurrentSettings</td><td>1033</td><td>Current Settings:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_DestFolder</td><td>1033</td><td>Destination Folder:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Install</td><td>1033</td><td>&amp;Install</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Installdir</td><td>1033</td><td>[INSTALLDIR]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ModifyReady</td><td>1033</td><td>{&amp;MSSansBold8}Ready to Modify the Program</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyInstall</td><td>1033</td><td>{&amp;MSSansBold8}Ready to Install the Program</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyRepair</td><td>1033</td><td>{&amp;MSSansBold8}Ready to Repair the Program</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SelectedSetupType</td><td>1033</td><td>[SelectedSetupType]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Serial</td><td>1033</td><td>Serial: [ISX_SERIALNUM]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SetupType</td><td>1033</td><td>Setup Type:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserInfo</td><td>1033</td><td>User Information:</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserName</td><td>1033</td><td>Name: [USERNAME]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyReadyDlg_WizardReady</td><td>1033</td><td>The wizard is ready to begin installation.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram</td><td>1033</td><td>You have chosen to remove the program from your system.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickBack</td><td>1033</td><td>If you want to review or change any settings, click Back.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickRemove</td><td>1033</td><td>Click Remove to remove [ProductName] from your computer. After removal, this program will no longer be available for use.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_Remove</td><td>1033</td><td>&amp;Remove</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_RemoveProgram</td><td>1033</td><td>{&amp;MSSansBold8}Remove the Program</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsWelcomeDlg_InstallProductName</td><td>1033</td><td>The InstallShield(R) Wizard will install [ProductName] on your computer. To continue, click Next.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsWelcomeDlg_WarningCopyright</td><td>1033</td><td>WARNING: This program is protected by copyright law and international treaties.</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__IsWelcomeDlg_WelcomeProductName</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__TargetReq_DESC_COLOR</td><td>1033</td><td>The color settings of your system are not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__TargetReq_DESC_OS</td><td>1033</td><td>The operating system is not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__TargetReq_DESC_PROCESSOR</td><td>1033</td><td>The processor is not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__TargetReq_DESC_RAM</td><td>1033</td><td>The amount of RAM is not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>IDS__TargetReq_DESC_RESOLUTION</td><td>1033</td><td>The screen resolution is not adequate for running [ProductName].</td><td>0</td><td/><td>-165429204</td></row>
		<row><td>ID_STRING1</td><td>1033</td><td>http://www.GPS.com</td><td>0</td><td/><td>-165476276</td></row>
		<row><td>ID_STRING2</td><td>1033</td><td>GPS</td><td>0</td><td/><td>-165476276</td></row>
		<row><td>ID_STRING3</td><td>1033</td><td>LAUNCH~1.EXE|Launch setup.exe</td><td>0</td><td/><td>-165433268</td></row>
		<row><td>IIDS_UITEXT_FeatureUninstalled</td><td>1033</td><td>This feature will remain uninstalled.</td><td>0</td><td/><td>-165429204</td></row>
	</table>

	<table name="ISSwidtagProperty">
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
		<row><td>UniqueId</td><td>7AB59A19-71C8-44FA-9078-A9CDB2056BAA</td></row>
	</table>

	<table name="ISTargetImage">
		<col key="yes" def="s13">UpgradedImage_</col>
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="i2">Order</col>
		<col def="I4">Flags</col>
		<col def="i2">IgnoreMissingFiles</col>
	</table>

	<table name="ISUpgradeMsiItem">
		<col key="yes" def="s72">UpgradeItem</col>
		<col def="s0">ObjectSetupPath</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="i2">ISAttributes</col>
	</table>

	<table name="ISUpgradedImage">
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="s8">Family</col>
	</table>

	<table name="ISVirtualDirectory">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualPackage">
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRegistry">
		<col key="yes" def="s72">Registry_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRelease">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualShortcut">
		<col key="yes" def="s72">Shortcut_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISWSEWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISXmlElement">
		<col key="yes" def="s72">ISXmlElement</col>
		<col def="s72">ISXmlFile_</col>
		<col def="S72">ISXmlElement_Parent</col>
		<col def="L0">XPath</col>
		<col def="L0">Content</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlElementAttrib">
		<col key="yes" def="s72">ISXmlElementAttrib</col>
		<col key="yes" def="s72">ISXmlElement_</col>
		<col def="L255">Name</col>
		<col def="L0">Value</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlFile">
		<col key="yes" def="s72">ISXmlFile</col>
		<col def="l255">FileName</col>
		<col def="s72">Component_</col>
		<col def="s72">Directory</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">SelectionNamespaces</col>
		<col def="S255">Encoding</col>
	</table>

	<table name="ISXmlLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col def="S255">Element</col>
		<col def="S255">Attribute</col>
		<col def="I2">ISAttributes</col>
	</table>

	<table name="Icon">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">ISIconIndex</col>
		<row><td>ARPPRODUCTICON.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\setupicon.ico</td><td>0</td></row>
		<row><td>UNINST_Uninstall_S_60A8132B4672488BBA6B6AE74365101C.exe</td><td/><td>C:\Program Files (x86)\InstallShield\2015LE\Redist\Language Independent\OS Independent\uninstall.ico</td><td>0</td></row>
		<row><td>WG.exe_DE1B06CDE5B44DB89FF1EEA293616826.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>_IsIcoRes.Exe_99F0ECA5704046AE8CFB6916E0495EA6.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>migrate.exe_AF1BE9C1A47B48DD9666E96A96E01754.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>setup.exe1_8B91DBF9C81647ABAC920AA546AD38DB.exe</td><td/><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\setup.exe</td><td>0</td></row>
		<row><td>setup.exe_516565320F7A463B82DA1A9B6B817923.exe</td><td/><td>C:\Users\pc\Desktop\GPS\Instalador\Instalador\Express\DVD-5\DiskImages\DISK1\setup.exe</td><td>0</td></row>
	</table>

	<table name="IniFile">
		<col key="yes" def="s72">IniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l255">Section</col>
		<col def="l128">Key</col>
		<col def="s255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="IniLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s255">FileName</col>
		<col def="s96">Section</col>
		<col def="s128">Key</col>
		<col def="I2">Field</col>
		<col def="I2">Type</col>
	</table>

	<table name="InstallExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AllocateRegistrySpace</td><td>NOT Installed</td><td>1550</td><td>AllocateRegistrySpace</td><td/></row>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>BindImage</td><td/><td>4300</td><td>BindImage</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateFolders</td><td/><td>3700</td><td>CreateFolders</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>DeleteServices</td><td>VersionNT</td><td>2000</td><td>DeleteServices</td><td/></row>
		<row><td>DuplicateFiles</td><td/><td>4210</td><td>DuplicateFiles</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td>NOT ISSETUPDRIVEN</td><td>420</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>Not Installed And Not ISRUNSETUPTYPEADDLOCALEVENT</td><td>1050</td><td>ISRunSetupTypeAddLocalEvent</td><td/></row>
		<row><td>ISSelfRegisterCosting</td><td/><td>2201</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td/><td>5601</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td/><td>6601</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td/><td>2202</td><td/><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1501</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallODBC</td><td/><td>5400</td><td>InstallODBC</td><td/></row>
		<row><td>InstallServices</td><td>VersionNT</td><td>5800</td><td>InstallServices</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1010</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>MoveFiles</td><td/><td>3800</td><td>MoveFiles</td><td/></row>
		<row><td>MsiConfigureServices</td><td>VersionMsi &gt;= "5.00"</td><td>5850</td><td>MSI5 MsiConfigureServices</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>MsiUnpublishAssemblies</td><td/><td>1750</td><td>MsiUnpublishAssemblies</td><td/></row>
		<row><td>PatchFiles</td><td/><td>4090</td><td>PatchFiles</td><td/></row>
		<row><td>ProcessComponents</td><td/><td>1600</td><td>ProcessComponents</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterComPlus</td><td/><td>5700</td><td>RegisterComPlus</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterFonts</td><td/><td>5300</td><td>RegisterFonts</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProduct</td><td/><td>6100</td><td>RegisterProduct</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>5500</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>RegisterUser</td><td/><td>6000</td><td>RegisterUser</td><td/></row>
		<row><td>RemoveDuplicateFiles</td><td/><td>3400</td><td>RemoveDuplicateFiles</td><td/></row>
		<row><td>RemoveEnvironmentStrings</td><td/><td>3300</td><td>RemoveEnvironmentStrings</td><td/></row>
		<row><td>RemoveExistingProducts</td><td/><td>1410</td><td>RemoveExistingProducts</td><td/></row>
		<row><td>RemoveFiles</td><td/><td>3500</td><td>RemoveFiles</td><td/></row>
		<row><td>RemoveFolders</td><td/><td>3600</td><td>RemoveFolders</td><td/></row>
		<row><td>RemoveIniValues</td><td/><td>3100</td><td>RemoveIniValues</td><td/></row>
		<row><td>RemoveODBC</td><td/><td>2400</td><td>RemoveODBC</td><td/></row>
		<row><td>RemoveRegistryValues</td><td/><td>2600</td><td>RemoveRegistryValues</td><td/></row>
		<row><td>RemoveShortcuts</td><td/><td>3200</td><td>RemoveShortcuts</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>850</td><td>ResolveSource</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
		<row><td>SelfRegModules</td><td/><td>5600</td><td>SelfRegModules</td><td/></row>
		<row><td>SelfUnregModules</td><td/><td>2200</td><td>SelfUnregModules</td><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td/><td>1100</td><td>SetARPINSTALLLOCATION</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetODBCFolders</td><td/><td>1200</td><td>SetODBCFolders</td><td/></row>
		<row><td>StartServices</td><td>VersionNT</td><td>5900</td><td>StartServices</td><td/></row>
		<row><td>StopServices</td><td>VersionNT</td><td>1900</td><td>StopServices</td><td/></row>
		<row><td>UnpublishComponents</td><td/><td>1700</td><td>UnpublishComponents</td><td/></row>
		<row><td>UnpublishFeatures</td><td/><td>1800</td><td>UnpublishFeatures</td><td/></row>
		<row><td>UnregisterClassInfo</td><td/><td>2700</td><td>UnregisterClassInfo</td><td/></row>
		<row><td>UnregisterComPlus</td><td/><td>2100</td><td>UnregisterComPlus</td><td/></row>
		<row><td>UnregisterExtensionInfo</td><td/><td>2800</td><td>UnregisterExtensionInfo</td><td/></row>
		<row><td>UnregisterFonts</td><td/><td>2500</td><td>UnregisterFonts</td><td/></row>
		<row><td>UnregisterMIMEInfo</td><td/><td>3000</td><td>UnregisterMIMEInfo</td><td/></row>
		<row><td>UnregisterProgIdInfo</td><td/><td>2900</td><td>UnregisterProgIdInfo</td><td/></row>
		<row><td>UnregisterTypeLibraries</td><td/><td>2300</td><td>UnregisterTypeLibraries</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>WriteEnvironmentStrings</td><td/><td>5200</td><td>WriteEnvironmentStrings</td><td/></row>
		<row><td>WriteIniValues</td><td/><td>5100</td><td>WriteIniValues</td><td/></row>
		<row><td>WriteRegistryValues</td><td/><td>5000</td><td>WriteRegistryValues</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="InstallShield">
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
		<row><td>ActiveLanguage</td><td>1033</td></row>
		<row><td>Comments</td><td/></row>
		<row><td>CurrentMedia</td><td dt:dt="bin.base64" md5="de9f554a3bc05c12be9c31b998217995">
UwBpAG4AZwBsAGUASQBtAGEAZwBlAAEARQB4AHAAcgBlAHMAcwA=
			</td></row>
		<row><td>DefaultProductConfiguration</td><td>Express</td></row>
		<row><td>EnableSwidtag</td><td>1</td></row>
		<row><td>ISCompilerOption_CompileBeforeBuild</td><td>1</td></row>
		<row><td>ISCompilerOption_Debug</td><td>0</td></row>
		<row><td>ISCompilerOption_IncludePath</td><td/></row>
		<row><td>ISCompilerOption_LibraryPath</td><td/></row>
		<row><td>ISCompilerOption_MaxErrors</td><td>50</td></row>
		<row><td>ISCompilerOption_MaxWarnings</td><td>50</td></row>
		<row><td>ISCompilerOption_OutputPath</td><td>&lt;ISProjectDataFolder&gt;\Script Files</td></row>
		<row><td>ISCompilerOption_PreProcessor</td><td>_ISSCRIPT_NEW_STYLE_DLG_DEFS</td></row>
		<row><td>ISCompilerOption_WarningLevel</td><td>3</td></row>
		<row><td>ISCompilerOption_WarningsAsErrors</td><td>1</td></row>
		<row><td>ISTheme</td><td>InstallShield Blue.theme</td></row>
		<row><td>ISUSLock</td><td>{FD90E2E6-768C-43A2-B68B-855B15981C92}</td></row>
		<row><td>ISUSSignature</td><td>{A74D9B42-09CD-4B03-9563-BDE763B38B20}</td></row>
		<row><td>ISVisitedViews</td><td>viewAssistant,viewISToday</td></row>
		<row><td>Limited</td><td>1</td></row>
		<row><td>LockPermissionMode</td><td>1</td></row>
		<row><td>MsiExecCmdLineOptions</td><td/></row>
		<row><td>MsiLogFile</td><td/></row>
		<row><td>OnUpgrade</td><td>0</td></row>
		<row><td>Owner</td><td/></row>
		<row><td>PatchFamily</td><td>MyPatchFamily1</td></row>
		<row><td>PatchSequence</td><td>1.0.0</td></row>
		<row><td>SaveAsSchema</td><td/></row>
		<row><td>SccEnabled</td><td>0</td></row>
		<row><td>SccPath</td><td/></row>
		<row><td>SchemaVersion</td><td>776</td></row>
		<row><td>Type</td><td>MSIE</td></row>
	</table>

	<table name="InstallUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td/><td>430</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>InstallWelcome</td><td>Not Installed</td><td>1210</td><td>InstallWelcome</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>Installed And Not RESUME And Not Preselected And Not PATCH</td><td>1230</td><td>MaintenanceWelcome</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1200</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>PatchWelcome</td><td>Installed And PATCH And Not IS_MAJOR_UPGRADE</td><td>1205</td><td>Patch Panel</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>990</td><td>ResolveSource</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>420</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1240</td><td>SetupProgress</td><td/></row>
		<row><td>SetupResume</td><td>Installed And (RESUME Or Preselected) And Not PATCH</td><td>1220</td><td>SetupResume</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="IsolatedComponent">
		<col key="yes" def="s72">Component_Shared</col>
		<col key="yes" def="s72">Component_Application</col>
	</table>

	<table name="LaunchCondition">
		<col key="yes" def="s255">Condition</col>
		<col def="l255">Description</col>
	</table>

	<table name="ListBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="ListView">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
		<col def="S72">Binary_</col>
	</table>

	<table name="LockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
	</table>

	<table name="MIME">
		<col key="yes" def="s64">ContentType</col>
		<col def="s255">Extension_</col>
		<col def="S38">CLSID</col>
	</table>

	<table name="Media">
		<col key="yes" def="i2">DiskId</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="MoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">SourceName</col>
		<col def="L255">DestName</col>
		<col def="S72">SourceFolder</col>
		<col def="s72">DestFolder</col>
		<col def="i2">Options</col>
	</table>

	<table name="MsiAssembly">
		<col key="yes" def="s72">Component_</col>
		<col def="s38">Feature_</col>
		<col def="S72">File_Manifest</col>
		<col def="S72">File_Application</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="MsiAssemblyName">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="MsiDigitalCertificate">
		<col key="yes" def="s72">DigitalCertificate</col>
		<col def="v0">CertData</col>
	</table>

	<table name="MsiDigitalSignature">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s72">SignObject</col>
		<col def="s72">DigitalCertificate_</col>
		<col def="V0">Hash</col>
	</table>

	<table name="MsiDriverPackages">
		<col key="yes" def="s72">Component</col>
		<col def="i4">Flags</col>
		<col def="I4">Sequence</col>
		<col def="S0">ReferenceComponents</col>
	</table>

	<table name="MsiEmbeddedChainer">
		<col key="yes" def="s72">MsiEmbeddedChainer</col>
		<col def="S255">Condition</col>
		<col def="S255">CommandLine</col>
		<col def="s72">Source</col>
		<col def="I4">Type</col>
	</table>

	<table name="MsiEmbeddedUI">
		<col key="yes" def="s72">MsiEmbeddedUI</col>
		<col def="s255">FileName</col>
		<col def="i2">Attributes</col>
		<col def="I4">MessageFilter</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="MsiFileHash">
		<col key="yes" def="s72">File_</col>
		<col def="i2">Options</col>
		<col def="i4">HashPart1</col>
		<col def="i4">HashPart2</col>
		<col def="i4">HashPart3</col>
		<col def="i4">HashPart4</col>
	</table>

	<table name="MsiLockPermissionsEx">
		<col key="yes" def="s72">MsiLockPermissionsEx</col>
		<col def="s72">LockObject</col>
		<col def="s32">Table</col>
		<col def="s0">SDDLText</col>
		<col def="S255">Condition</col>
	</table>

	<table name="MsiPackageCertificate">
		<col key="yes" def="s72">PackageCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchCertificate">
		<col key="yes" def="s72">PatchCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchMetadata">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="S72">Company</col>
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="MsiPatchOldAssemblyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="S72">Assembly_</col>
	</table>

	<table name="MsiPatchOldAssemblyName">
		<col key="yes" def="s72">Assembly</col>
		<col key="yes" def="s255">Name</col>
		<col def="S255">Value</col>
	</table>

	<table name="MsiPatchSequence">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="s0">PatchFamily</col>
		<col key="yes" def="S0">Target</col>
		<col def="s0">Sequence</col>
		<col def="i2">Supersede</col>
	</table>

	<table name="MsiServiceConfig">
		<col key="yes" def="s72">MsiServiceConfig</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="i4">ConfigType</col>
		<col def="S0">Argument</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiServiceConfigFailureActions">
		<col key="yes" def="s72">MsiServiceConfigFailureActions</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="I4">ResetPeriod</col>
		<col def="L255">RebootMessage</col>
		<col def="L255">Command</col>
		<col def="S0">Actions</col>
		<col def="S0">DelayActions</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiShortcutProperty">
		<col key="yes" def="s72">MsiShortcutProperty</col>
		<col def="s72">Shortcut_</col>
		<col def="s0">PropertyKey</col>
		<col def="s0">PropVariantValue</col>
	</table>

	<table name="ODBCAttribute">
		<col key="yes" def="s72">Driver_</col>
		<col key="yes" def="s40">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCDataSource">
		<col key="yes" def="s72">DataSource</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s255">DriverDescription</col>
		<col def="i2">Registration</col>
	</table>

	<table name="ODBCDriver">
		<col key="yes" def="s72">Driver</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="ODBCSourceAttribute">
		<col key="yes" def="s72">DataSource_</col>
		<col key="yes" def="s32">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCTranslator">
		<col key="yes" def="s72">Translator</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="Patch">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="i2">Sequence</col>
		<col def="i4">PatchSize</col>
		<col def="i2">Attributes</col>
		<col def="V0">Header</col>
		<col def="S38">StreamRef_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="PatchPackage">
		<col key="yes" def="s38">PatchId</col>
		<col def="i2">Media_</col>
	</table>

	<table name="ProgId">
		<col key="yes" def="s255">ProgId</col>
		<col def="S255">ProgId_Parent</col>
		<col def="S38">Class_</col>
		<col def="L255">Description</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="Property">
		<col key="yes" def="s72">Property</col>
		<col def="L0">Value</col>
		<col def="S255">ISComments</col>
		<row><td>ALLUSERS</td><td>1</td><td/></row>
		<row><td>ARPINSTALLLOCATION</td><td/><td/></row>
		<row><td>ARPPRODUCTICON</td><td>ARPPRODUCTICON.exe</td><td/></row>
		<row><td>ARPSIZE</td><td/><td/></row>
		<row><td>ARPURLINFOABOUT</td><td>##ID_STRING1##</td><td/></row>
		<row><td>AgreeToLicense</td><td>No</td><td/></row>
		<row><td>ApplicationUsers</td><td>AllUsers</td><td/></row>
		<row><td>DWUSINTERVAL</td><td>30</td><td/></row>
		<row><td>DWUSLINK</td><td>CEDCA05F896B90988EACE77F79DC978FD9BB878F799C7798CE0B808899DCF7387E3C873FEEAC</td><td/></row>
		<row><td>DefaultUIFont</td><td>ExpressDefault</td><td/></row>
		<row><td>DialogCaption</td><td>InstallShield for Windows Installer</td><td/></row>
		<row><td>DiskPrompt</td><td>[1]</td><td/></row>
		<row><td>DiskSerial</td><td>1234-5678</td><td/></row>
		<row><td>DisplayNameCustom</td><td>##IDS__DisplayName_Custom##</td><td/></row>
		<row><td>DisplayNameMinimal</td><td>##IDS__DisplayName_Minimal##</td><td/></row>
		<row><td>DisplayNameTypical</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>Display_IsBitmapDlg</td><td>1</td><td/></row>
		<row><td>ErrorDialog</td><td>SetupError</td><td/></row>
		<row><td>INSTALLLEVEL</td><td>200</td><td/></row>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td><td/></row>
		<row><td>ISENABLEDWUSFINISHDIALOG</td><td/><td/></row>
		<row><td>ISSHOWMSILOG</td><td/><td/></row>
		<row><td>ISVROOT_PORT_NO</td><td>0</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_COST</td><td>##IDS_COMPLUS_PROGRESSTEXT_COST##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_INSTALL##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_UNINSTALL##</td><td/></row>
		<row><td>IS_PREVENT_DOWNGRADE_EXIT</td><td>##IDS_PREVENT_DOWNGRADE_EXIT##</td><td/></row>
		<row><td>IS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>##IDS_PROGMSG_TEXTFILECHANGS_REPLACE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_COSTING</td><td>##IDS_PROGMSG_XML_COSTING##</td><td/></row>
		<row><td>IS_PROGMSG_XML_CREATE_FILE</td><td>##IDS_PROGMSG_XML_CREATE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_FILES</td><td>##IDS_PROGMSG_XML_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_REMOVE_FILE</td><td>##IDS_PROGMSG_XML_REMOVE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_ROLLBACK_FILES</td><td>##IDS_PROGMSG_XML_ROLLBACK_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_UPDATE_FILE</td><td>##IDS_PROGMSG_XML_UPDATE_FILE##</td><td/></row>
		<row><td>IS_SQLSERVER_AUTHENTICATION</td><td>0</td><td/></row>
		<row><td>IS_SQLSERVER_DATABASE</td><td/><td/></row>
		<row><td>IS_SQLSERVER_PASSWORD</td><td/><td/></row>
		<row><td>IS_SQLSERVER_SERVER</td><td/><td/></row>
		<row><td>IS_SQLSERVER_USERNAME</td><td>sa</td><td/></row>
		<row><td>InstallChoice</td><td>AR</td><td/></row>
		<row><td>LAUNCHREADME</td><td>1</td><td/></row>
		<row><td>Manufacturer</td><td>##COMPANY_NAME##</td><td/></row>
		<row><td>PIDKEY</td><td/><td/></row>
		<row><td>PIDTemplate</td><td>12345&lt;###-%%%%%%%&gt;@@@@@</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOL</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOT</td><td>##IDS_PROGMSG_IIS_CREATEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOTS</td><td>##IDS_PROGMSG_IIS_CREATEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITE</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITE##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITES</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACT</td><td>##IDS_PROGMSG_IIS_EXTRACT##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONEz</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTzDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOL</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVESITE</td><td>##IDS_PROGMSG_IIS_REMOVESITE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOT</td><td>##IDS_PROGMSG_IIS_REMOVEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOTS</td><td>##IDS_PROGMSG_IIS_REMOVEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSITES</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>##IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKVROOTS</td><td>##IDS_PROGMSG_IIS_ROLLBACKVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>ProductCode</td><td>{174799AC-D8F3-4E5F-9AF2-BD208A248C3D}</td><td/></row>
		<row><td>ProductName</td><td>Setup1</td><td/></row>
		<row><td>ProductVersion</td><td>1.00.0000</td><td/></row>
		<row><td>ProgressType0</td><td>install</td><td/></row>
		<row><td>ProgressType1</td><td>Installing</td><td/></row>
		<row><td>ProgressType2</td><td>installed</td><td/></row>
		<row><td>ProgressType3</td><td>installs</td><td/></row>
		<row><td>RebootYesNo</td><td>Yes</td><td/></row>
		<row><td>ReinstallFileVersion</td><td>o</td><td/></row>
		<row><td>ReinstallModeText</td><td>omus</td><td/></row>
		<row><td>ReinstallRepair</td><td>r</td><td/></row>
		<row><td>RestartManagerOption</td><td>CloseRestart</td><td/></row>
		<row><td>SERIALNUMBER</td><td/><td/></row>
		<row><td>SERIALNUMVALSUCCESSRETVAL</td><td>1</td><td/></row>
		<row><td>SHOWLAUNCHPROGRAM</td><td>0</td><td/></row>
		<row><td>SecureCustomProperties</td><td>ISFOUNDNEWERPRODUCTVERSION;USERNAME;COMPANYNAME;ISX_SERIALNUM;SUPPORTDIR</td><td/></row>
		<row><td>SelectedSetupType</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>SetupType</td><td>Typical</td><td/></row>
		<row><td>UpgradeCode</td><td>{80EF8BA7-8B13-4482-B957-B82FEEE3F6B4}</td><td/></row>
		<row><td>_IsMaintenance</td><td>Change</td><td/></row>
		<row><td>_IsSetupTypeMin</td><td>Typical</td><td/></row>
	</table>

	<table name="PublishComponent">
		<col key="yes" def="s38">ComponentId</col>
		<col key="yes" def="s255">Qualifier</col>
		<col key="yes" def="s72">Component_</col>
		<col def="L0">AppData</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="RadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="L64">Text</col>
		<col def="L50">Help</col>
		<col def="I4">ISControlId</col>
		<row><td>AgreeToLicense</td><td>1</td><td>No</td><td>0</td><td>15</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_0##</td><td/><td/></row>
		<row><td>AgreeToLicense</td><td>2</td><td>Yes</td><td>0</td><td>0</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_1##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>1</td><td>AllUsers</td><td>1</td><td>7</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_Anyone##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>2</td><td>OnlyCurrentUser</td><td>1</td><td>23</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>1</td><td>CloseRestart</td><td>6</td><td>9</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_CloseRestart##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>2</td><td>Reboot</td><td>6</td><td>21</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_RebootAfter##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>1</td><td>Change</td><td>0</td><td>0</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Modify##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>2</td><td>Reinstall</td><td>0</td><td>60</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Repair##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>3</td><td>Remove</td><td>0</td><td>120</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Remove##</td><td/><td/></row>
		<row><td>_IsSetupTypeMin</td><td>1</td><td>Typical</td><td>1</td><td>6</td><td>264</td><td>14</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td/><td/></row>
	</table>

	<table name="RegLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="I2">Type</col>
	</table>

	<table name="Registry">
		<col key="yes" def="s72">Registry</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="S0">Value</col>
		<col def="s72">Component_</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="RemoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">FileName</col>
		<col def="s72">DirProperty</col>
		<col def="i2">InstallMode</col>
		<row><td>FileKey1</td><td>setup.exe</td><td/><td>gps</td><td>2</td></row>
		<row><td>FileKey2</td><td>setup.exe</td><td/><td>setup1</td><td>2</td></row>
		<row><td>UNINST_Uninstall_Setup1</td><td>IS_ININSTALL_SHORTCUT</td><td/><td>setup1</td><td>2</td></row>
		<row><td>WG.exe</td><td>WG.exe</td><td/><td>setup1</td><td>2</td></row>
		<row><td>_IsIcoRes.Exe</td><td>_IsIcoRes.Exe</td><td/><td>setup1</td><td>2</td></row>
		<row><td>migrate.exe</td><td>migrate.exe</td><td/><td>setup1</td><td>2</td></row>
		<row><td>setup.exe</td><td>setup.exe</td><td/><td>setup1</td><td>2</td></row>
	</table>

	<table name="RemoveIniFile">
		<col key="yes" def="s72">RemoveIniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l96">Section</col>
		<col def="l128">Key</col>
		<col def="L255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="RemoveRegistry">
		<col key="yes" def="s72">RemoveRegistry</col>
		<col def="i2">Root</col>
		<col def="l255">Key</col>
		<col def="L255">Name</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ReserveCost">
		<col key="yes" def="s72">ReserveKey</col>
		<col def="s72">Component_</col>
		<col def="S72">ReserveFolder</col>
		<col def="i4">ReserveLocal</col>
		<col def="i4">ReserveSource</col>
	</table>

	<table name="SFPCatalog">
		<col key="yes" def="s255">SFPCatalog</col>
		<col def="V0">Catalog</col>
		<col def="S0">Dependency</col>
	</table>

	<table name="SelfReg">
		<col key="yes" def="s72">File_</col>
		<col def="I2">Cost</col>
	</table>

	<table name="ServiceControl">
		<col key="yes" def="s72">ServiceControl</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="S255">Arguments</col>
		<col def="I2">Wait</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ServiceInstall">
		<col key="yes" def="s72">ServiceInstall</col>
		<col def="s255">Name</col>
		<col def="L255">DisplayName</col>
		<col def="i4">ServiceType</col>
		<col def="i4">StartType</col>
		<col def="i4">ErrorControl</col>
		<col def="S255">LoadOrderGroup</col>
		<col def="S255">Dependencies</col>
		<col def="S255">StartName</col>
		<col def="S255">Password</col>
		<col def="S255">Arguments</col>
		<col def="s72">Component_</col>
		<col def="L255">Description</col>
	</table>

	<table name="Shortcut">
		<col key="yes" def="s72">Shortcut</col>
		<col def="s72">Directory_</col>
		<col def="l128">Name</col>
		<col def="s72">Component_</col>
		<col def="s255">Target</col>
		<col def="S255">Arguments</col>
		<col def="L255">Description</col>
		<col def="I2">Hotkey</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I2">ShowCmd</col>
		<col def="S72">WkDir</col>
		<col def="S255">DisplayResourceDLL</col>
		<col def="I2">DisplayResourceId</col>
		<col def="S255">DescriptionResourceDLL</col>
		<col def="I2">DescriptionResourceId</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISShortcutName</col>
		<col def="I4">ISAttributes</col>
		<row><td>UNINST_Uninstall_Setup1</td><td>setup1</td><td>UNINST|Uninstall Setup1</td><td>IS_ININSTALL_SHORTCUT</td><td>[SystemFolder]msiexec.exe</td><td>/x {174799AC-D8F3-4E5F-9AF2-BD208A248C3D}</td><td/><td/><td>UNINST_Uninstall_S_60A8132B4672488BBA6B6AE74365101C.exe</td><td>0</td><td>1</td><td/><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>WG.exe</td><td>setup1</td><td>##IDS_SHORTCUT_DISPLAY_NAME4##</td><td>WG.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>WG.exe_DE1B06CDE5B44DB89FF1EEA293616826.exe</td><td>0</td><td>1</td><td>TOOLS4</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>_IsIcoRes.Exe</td><td>setup1</td><td>##IDS_SHORTCUT_DISPLAY_NAME2##</td><td>_IsIcoRes.Exe</td><td>AlwaysInstall</td><td/><td/><td/><td>_IsIcoRes.Exe_99F0ECA5704046AE8CFB6916E0495EA6.exe</td><td>0</td><td>1</td><td>INTERM</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>migrate.exe</td><td>setup1</td><td>##IDS_SHORTCUT_DISPLAY_NAME3##</td><td>migrate.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>migrate.exe_AF1BE9C1A47B48DD9666E96A96E01754.exe</td><td>0</td><td>1</td><td>TOOLS</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>setup.exe</td><td>setup1</td><td>##IDS_SHORTCUT_DISPLAY_NAME1##</td><td>setup.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>setup.exe_516565320F7A463B82DA1A9B6B817923.exe</td><td>1</td><td>1</td><td>DISK1</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>setup.exe1</td><td>DesktopFolder</td><td>##IDS_SHORTCUT_DISPLAY_NAME1##</td><td>setup.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>setup.exe1_8B91DBF9C81647ABAC920AA546AD38DB.exe</td><td>1</td><td>1</td><td>DISK1</td><td/><td/><td/><td/><td/><td/><td/></row>
	</table>

	<table name="Signature">
		<col key="yes" def="s72">Signature</col>
		<col def="s255">FileName</col>
		<col def="S20">MinVersion</col>
		<col def="S20">MaxVersion</col>
		<col def="I4">MinSize</col>
		<col def="I4">MaxSize</col>
		<col def="I4">MinDate</col>
		<col def="I4">MaxDate</col>
		<col def="S255">Languages</col>
	</table>

	<table name="TextStyle">
		<col key="yes" def="s72">TextStyle</col>
		<col def="s32">FaceName</col>
		<col def="i2">Size</col>
		<col def="I4">Color</col>
		<col def="I2">StyleBits</col>
		<row><td>Arial8</td><td>Arial</td><td>8</td><td/><td/></row>
		<row><td>Arial9</td><td>Arial</td><td>9</td><td/><td/></row>
		<row><td>ArialBlue10</td><td>Arial</td><td>10</td><td>16711680</td><td/></row>
		<row><td>ArialBlueStrike10</td><td>Arial</td><td>10</td><td>16711680</td><td>8</td></row>
		<row><td>CourierNew8</td><td>Courier New</td><td>8</td><td/><td/></row>
		<row><td>CourierNew9</td><td>Courier New</td><td>9</td><td/><td/></row>
		<row><td>ExpressDefault</td><td>Tahoma</td><td>8</td><td/><td/></row>
		<row><td>MSGothic9</td><td>MS Gothic</td><td>9</td><td/><td/></row>
		<row><td>MSSGreySerif8</td><td>MS Sans Serif</td><td>8</td><td>8421504</td><td/></row>
		<row><td>MSSWhiteSerif8</td><td>Tahoma</td><td>8</td><td>16777215</td><td/></row>
		<row><td>MSSansBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>MSSansSerif8</td><td>MS Sans Serif</td><td>8</td><td/><td/></row>
		<row><td>MSSansSerif9</td><td>MS Sans Serif</td><td>9</td><td/><td/></row>
		<row><td>Tahoma10</td><td>Tahoma</td><td>10</td><td/><td/></row>
		<row><td>Tahoma8</td><td>Tahoma</td><td>8</td><td/><td/></row>
		<row><td>Tahoma9</td><td>Tahoma</td><td>9</td><td/><td/></row>
		<row><td>TahomaBold10</td><td>Tahoma</td><td>10</td><td/><td>1</td></row>
		<row><td>TahomaBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>Times8</td><td>Times New Roman</td><td>8</td><td/><td/></row>
		<row><td>Times9</td><td>Times New Roman</td><td>9</td><td/><td/></row>
		<row><td>TimesItalic12</td><td>Times New Roman</td><td>12</td><td/><td>2</td></row>
		<row><td>TimesItalicBlue10</td><td>Times New Roman</td><td>10</td><td>16711680</td><td>2</td></row>
		<row><td>TimesRed16</td><td>Times New Roman</td><td>16</td><td>255</td><td/></row>
		<row><td>VerdanaBold14</td><td>Verdana</td><td>13</td><td/><td>1</td></row>
	</table>

	<table name="TypeLib">
		<col key="yes" def="s38">LibID</col>
		<col key="yes" def="i2">Language</col>
		<col key="yes" def="s72">Component_</col>
		<col def="I4">Version</col>
		<col def="L128">Description</col>
		<col def="S72">Directory_</col>
		<col def="s38">Feature_</col>
		<col def="I4">Cost</col>
	</table>

	<table name="UIText">
		<col key="yes" def="s72">Key</col>
		<col def="L255">Text</col>
		<row><td>AbsentPath</td><td/></row>
		<row><td>GB</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>KB</td><td>##IDS_UITEXT_KB##</td></row>
		<row><td>MB</td><td>##IDS_UITEXT_MB##</td></row>
		<row><td>MenuAbsent</td><td>##IDS_UITEXT_FeatureNotAvailable##</td></row>
		<row><td>MenuAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired2##</td></row>
		<row><td>MenuAllCD</td><td>##IDS_UITEXT_FeatureInstalledCD##</td></row>
		<row><td>MenuAllLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal##</td></row>
		<row><td>MenuAllNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork##</td></row>
		<row><td>MenuCD</td><td>##IDS_UITEXT_FeatureInstalledCD2##</td></row>
		<row><td>MenuLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal2##</td></row>
		<row><td>MenuNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork2##</td></row>
		<row><td>NewFolder</td><td>##IDS_UITEXT_Folder##</td></row>
		<row><td>SelAbsentAbsent</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>SelAbsentAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired##</td></row>
		<row><td>SelAbsentCD</td><td>##IDS_UITEXT_FeatureOnCD##</td></row>
		<row><td>SelAbsentLocal</td><td>##IDS_UITEXT_FeatureLocal##</td></row>
		<row><td>SelAbsentNetwork</td><td>##IDS_UITEXT_FeatureNetwork##</td></row>
		<row><td>SelAdvertiseAbsent</td><td>##IDS_UITEXT_FeatureUnavailable##</td></row>
		<row><td>SelAdvertiseAdvertise</td><td>##IDS_UITEXT_FeatureInstalledRequired##</td></row>
		<row><td>SelAdvertiseCD</td><td>##IDS_UITEXT_FeatureOnCD2##</td></row>
		<row><td>SelAdvertiseLocal</td><td>##IDS_UITEXT_FeatureLocal2##</td></row>
		<row><td>SelAdvertiseNetwork</td><td>##IDS_UITEXT_FeatureNetwork2##</td></row>
		<row><td>SelCDAbsent</td><td>##IDS_UITEXT_FeatureWillBeUninstalled##</td></row>
		<row><td>SelCDAdvertise</td><td>##IDS_UITEXT_FeatureWasCD##</td></row>
		<row><td>SelCDCD</td><td>##IDS_UITEXT_FeatureRunFromCD##</td></row>
		<row><td>SelCDLocal</td><td>##IDS_UITEXT_FeatureWasCDLocal##</td></row>
		<row><td>SelChildCostNeg</td><td>##IDS_UITEXT_FeatureFreeSpace##</td></row>
		<row><td>SelChildCostPos</td><td>##IDS_UITEXT_FeatureRequiredSpace##</td></row>
		<row><td>SelCostPending</td><td>##IDS_UITEXT_CompilingFeaturesCost##</td></row>
		<row><td>SelLocalAbsent</td><td>##IDS_UITEXT_FeatureCompletelyRemoved##</td></row>
		<row><td>SelLocalAdvertise</td><td>##IDS_UITEXT_FeatureRemovedUnlessRequired##</td></row>
		<row><td>SelLocalCD</td><td>##IDS_UITEXT_FeatureRemovedCD##</td></row>
		<row><td>SelLocalLocal</td><td>##IDS_UITEXT_FeatureRemainLocal##</td></row>
		<row><td>SelLocalNetwork</td><td>##IDS_UITEXT_FeatureRemoveNetwork##</td></row>
		<row><td>SelNetworkAbsent</td><td>##IDS_UITEXT_FeatureUninstallNoNetwork##</td></row>
		<row><td>SelNetworkAdvertise</td><td>##IDS_UITEXT_FeatureWasOnNetworkInstalled##</td></row>
		<row><td>SelNetworkLocal</td><td>##IDS_UITEXT_FeatureWasOnNetworkLocal##</td></row>
		<row><td>SelNetworkNetwork</td><td>##IDS_UITEXT_FeatureContinueNetwork##</td></row>
		<row><td>SelParentCostNegNeg</td><td>##IDS_UITEXT_FeatureSpaceFree##</td></row>
		<row><td>SelParentCostNegPos</td><td>##IDS_UITEXT_FeatureSpaceFree2##</td></row>
		<row><td>SelParentCostPosNeg</td><td>##IDS_UITEXT_FeatureSpaceFree3##</td></row>
		<row><td>SelParentCostPosPos</td><td>##IDS_UITEXT_FeatureSpaceFree4##</td></row>
		<row><td>TimeRemaining</td><td>##IDS_UITEXT_TimeRemaining##</td></row>
		<row><td>VolumeCostAvailable</td><td>##IDS_UITEXT_Available##</td></row>
		<row><td>VolumeCostDifference</td><td>##IDS_UITEXT_Differences##</td></row>
		<row><td>VolumeCostRequired</td><td>##IDS_UITEXT_Required##</td></row>
		<row><td>VolumeCostSize</td><td>##IDS_UITEXT_DiskSize##</td></row>
		<row><td>VolumeCostVolume</td><td>##IDS_UITEXT_Volume##</td></row>
		<row><td>bytes</td><td>##IDS_UITEXT_Bytes##</td></row>
	</table>

	<table name="Upgrade">
		<col key="yes" def="s38">UpgradeCode</col>
		<col key="yes" def="S20">VersionMin</col>
		<col key="yes" def="S20">VersionMax</col>
		<col key="yes" def="S255">Language</col>
		<col key="yes" def="i4">Attributes</col>
		<col def="S255">Remove</col>
		<col def="s72">ActionProperty</col>
		<col def="S72">ISDisplayName</col>
		<row><td>{00000000-0000-0000-0000-000000000000}</td><td>***ALL_VERSIONS***</td><td></td><td></td><td>2</td><td/><td>ISFOUNDNEWERPRODUCTVERSION</td><td>ISPreventDowngrade</td></row>
	</table>

	<table name="Verb">
		<col key="yes" def="s255">Extension_</col>
		<col key="yes" def="s32">Verb</col>
		<col def="I2">Sequence</col>
		<col def="L255">Command</col>
		<col def="L255">Argument</col>
	</table>

	<table name="_Validation">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s32">Column</col>
		<col def="s4">Nullable</col>
		<col def="I4">MinValue</col>
		<col def="I4">MaxValue</col>
		<col def="S255">KeyTable</col>
		<col def="I2">KeyColumn</col>
		<col def="S32">Category</col>
		<col def="S255">Set</col>
		<col def="S255">Description</col>
		<row><td>ActionText</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to be described.</td></row>
		<row><td>ActionText</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description displayed in progress dialog and log when action is executing.</td></row>
		<row><td>ActionText</td><td>Template</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Optional localized format template used to format action data records for display during action execution.</td></row>
		<row><td>AdminExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdminUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AppId</td><td>ActivateAtStorage</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>AppId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td/></row>
		<row><td>AppId</td><td>DllSurrogate</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>LocalService</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>RemoteServerName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>AppId</td><td>RunAsInteractiveUser</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>ServiceParameters</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppSearch</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The property associated with a Signature</td></row>
		<row><td>AppSearch</td><td>Signature_</td><td>N</td><td/><td/><td>ISXmlLocator;Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>BBControl</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>BBControl</td><td>BBControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a billboard, but can repeat on different billboard.</td></row>
		<row><td>BBControl</td><td>Billboard_</td><td>N</td><td/><td/><td>Billboard</td><td>1</td><td>Identifier</td><td/><td>External key to the Billboard table, name of the billboard.</td></row>
		<row><td>BBControl</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>BBControl</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>BBControl</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Billboard</td><td>Action</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of an action. The billboard is displayed during the progress messages received from this action.</td></row>
		<row><td>Billboard</td><td>Billboard</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the billboard.</td></row>
		<row><td>Billboard</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>An external key to the Feature Table. The billboard is shown only if this feature is being installed.</td></row>
		<row><td>Billboard</td><td>Ordering</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>A positive integer. If there is more than one billboard corresponding to an action they will be shown in the order defined by this column.</td></row>
		<row><td>Binary</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Binary</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Binary</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique key identifying the binary data.</td></row>
		<row><td>BindImage</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>The index into the File table. This must be an executable file.</td></row>
		<row><td>BindImage</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Paths</td><td/><td>A list of ;  delimited paths that represent the paths to be searched for the import DLLS. The list is usually a list of properties each enclosed within square brackets [] .</td></row>
		<row><td>CCPSearch</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>CheckBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to the item.</td></row>
		<row><td>CheckBox</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with the item.</td></row>
		<row><td>Class</td><td>AppId_</td><td>Y</td><td/><td/><td>AppId</td><td>1</td><td>Guid</td><td/><td>Optional AppID containing DCOM information for associated application (string GUID).</td></row>
		<row><td>Class</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>optional argument for LocalServers.</td></row>
		<row><td>Class</td><td>Attributes</td><td>Y</td><td/><td>32767</td><td/><td/><td/><td/><td>Class registration attributes.</td></row>
		<row><td>Class</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The CLSID of an OLE factory.</td></row>
		<row><td>Class</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Class</td><td>Context</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The numeric server context for this server. CLSCTX_xxxx</td></row>
		<row><td>Class</td><td>DefInprocHandler</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td>1;2;3</td><td>Optional default inproc handler.  Only optionally provided if Context=CLSCTX_LOCAL_SERVER.  Typically "ole32.dll" or "mapi32.dll"</td></row>
		<row><td>Class</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Class.</td></row>
		<row><td>Class</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Class</td><td>FileTypeMask</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional string containing information for the HKCRthis CLSID) key. If multiple patterns exist, they must be delimited by a semicolon, and numeric subkeys will be generated: 0,1,2...</td></row>
		<row><td>Class</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>Class</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this CLSID. Will be written under the DefaultIcon key.</td></row>
		<row><td>Class</td><td>ProgId_Default</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this CLSID.</td></row>
		<row><td>ComboBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list.	The integers do not have to be consecutive.</td></row>
		<row><td>ComboBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same combobox.</td></row>
		<row><td>ComboBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ComboBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>CompLocator</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>CompLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>CompLocator</td><td>Type</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>A boolean value that determines if the registry value is a filename or a directory location.</td></row>
		<row><td>Complus</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the ComPlus component.</td></row>
		<row><td>Complus</td><td>ExpType</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>ComPlus component attributes.</td></row>
		<row><td>Component</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Remote execution option, one of irsEnum</td></row>
		<row><td>Component</td><td>Component</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>Component</td><td>ComponentId</td><td>Y</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>Component</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this component if the specified condition evaluates to the 'True' state. If a component is disabled, it will not be installed, regardless of the 'Action' state associated with the component.</td></row>
		<row><td>Component</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Required key of a Directory table record. This is actually a property name whose value contains the actual path, set either by the AppSearch action or with the default setting obtained from the Directory table.</td></row>
		<row><td>Component</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component.</td></row>
		<row><td>Component</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsCommit</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsInstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsRollback</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsUninstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISRegFileToMergeAtBuild</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path and File name of a .REG file to merge into the component at build time.</td></row>
		<row><td>Component</td><td>ISScanAtBuildFile</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File used by the Dot Net scanner to populate dependant assemblies' File_Application field.</td></row>
		<row><td>Component</td><td>KeyPath</td><td>Y</td><td/><td/><td>File;ODBCDataSource;Registry</td><td>1</td><td>Identifier</td><td/><td>Either the primary key into the File table, Registry table, or ODBCDataSource table. This extract path is stored when the component is installed, and is used to detect the presence of the component and to return the path to it.</td></row>
		<row><td>Condition</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression evaluated to determine if Level in the Feature table is to change.</td></row>
		<row><td>Condition</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Reference to a Feature entry in Feature table.</td></row>
		<row><td>Condition</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>New selection Level to set in Feature table if Condition evaluates to TRUE.</td></row>
		<row><td>Control</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>Control</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>Control</td><td>Control</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>Control</td><td>Control_Next</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>The name of an other control on the same dialog. This link defines the tab order of the controls. The links have to form one or more cycles!</td></row>
		<row><td>Control</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>Control</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>Control</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>Control</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>Control</td><td>ISWindowStyle</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control.</td></row>
		<row><td>Control</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of a defined property to be linked to this control.</td></row>
		<row><td>Control</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>Control</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>Control</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ControlCondition</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>Default;Disable;Enable;Hide;Show</td><td>The desired action to be taken on the specified control.</td></row>
		<row><td>ControlCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions the action should be triggered.</td></row>
		<row><td>ControlCondition</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>ControlCondition</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Argument</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A value to be used as a modifier when triggering a particular event.</td></row>
		<row><td>ControlEvent</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions an event should be triggered.</td></row>
		<row><td>ControlEvent</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control</td></row>
		<row><td>ControlEvent</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>An identifier that specifies the type of the event that should take place when the user interacts with control specified by the first two entries.</td></row>
		<row><td>ControlEvent</td><td>Ordering</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>An integer used to order several events tied to the same control. Can be left blank.</td></row>
		<row><td>CreateFolder</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>CreateFolder</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Primary key, could be foreign key into the Directory table.</td></row>
		<row><td>CustomAction</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, name of action, normally appears in sequence table unless private use.</td></row>
		<row><td>CustomAction</td><td>ExtendedType</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The numeric custom action type info flags.</td></row>
		<row><td>CustomAction</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this custom action.</td></row>
		<row><td>CustomAction</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>CustomSource</td><td/><td>The table reference of the source of the code.</td></row>
		<row><td>CustomAction</td><td>Target</td><td>Y</td><td/><td/><td>ISDLLWrapper;ISInstallScriptAction</td><td>1</td><td>Formatted</td><td/><td>Excecution parameter, depends on the type of custom action</td></row>
		<row><td>CustomAction</td><td>Type</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>The numeric custom action type, consisting of source location, code type, entry, option flags.</td></row>
		<row><td>Dialog</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>Dialog</td><td>Control_Cancel</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the cancel control. Hitting escape or clicking on the close icon on the dialog is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_Default</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the default control. Hitting return is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_First</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the control that has the focus when the dialog is created.</td></row>
		<row><td>Dialog</td><td>Dialog</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>Dialog</td><td>HCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Horizontal position of the dialog on a 0-100 scale. 0 means left end, 100 means right end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>Dialog</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this dialog.</td></row>
		<row><td>Dialog</td><td>ISResourceId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A Number the Specifies the Dialog ID to be used in Dialog Export</td></row>
		<row><td>Dialog</td><td>ISWindowStyle</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control. This is only used in Script Based Setups.</td></row>
		<row><td>Dialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>Dialog</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A text string specifying the title to be displayed in the title bar of the dialog's window.</td></row>
		<row><td>Dialog</td><td>VCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Vertical position of the dialog on a 0-100 scale. 0 means top end, 100 means bottom end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>Directory</td><td>DefaultDir</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The default sub-path under parent's path.</td></row>
		<row><td>Directory</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for directory entry, primary key. If a property by this name is defined, it contains the full path to the directory.</td></row>
		<row><td>Directory</td><td>Directory_Parent</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Reference to the entry in this table specifying the default parent directory. A record parented to itself or with a Null parent represents a root of the install tree.</td></row>
		<row><td>Directory</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7</td><td>This is used to store Installshield custom properties of a directory.  Currently the only one is Shortcut.</td></row>
		<row><td>Directory</td><td>ISDescription</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of folder</td></row>
		<row><td>Directory</td><td>ISFolderName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is used in Pro projects because the pro identifier used in the tree wasn't necessarily unique.</td></row>
		<row><td>DrLocator</td><td>Depth</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The depth below the path to which the Signature_ is recursively searched. If absent, the depth is assumed to be 0.</td></row>
		<row><td>DrLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table. If null and the Path column does not expand to a full path, then all the fixed drives of the user system are searched using the Path.</td></row>
		<row><td>DrLocator</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>AnyPath</td><td/><td>The path on the user system. This is a either a subpath below the value of the Parent or a full path. The path may contain properties enclosed within [ ] that will be expanded.</td></row>
		<row><td>DrLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>DuplicateFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>DestFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to a destination folder.</td></row>
		<row><td>DuplicateFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename to be given to the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>DuplicateFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing the source file to be duplicated.</td></row>
		<row><td>Environment</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the environmental value.</td></row>
		<row><td>Environment</td><td>Environment</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the environmental variable setting</td></row>
		<row><td>Environment</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the environmental value.</td></row>
		<row><td>Environment</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to set in the environmental settings.</td></row>
		<row><td>Error</td><td>Error</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer error number, obtained from header file IError(...) macros.</td></row>
		<row><td>Error</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Error formatting template, obtained from user ed. or localizers.</td></row>
		<row><td>EventMapping</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of the control attribute, that is set when this event is received.</td></row>
		<row><td>EventMapping</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>EventMapping</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the Dialog.</td></row>
		<row><td>EventMapping</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>An identifier that specifies the type of the event that the control subscribes to.</td></row>
		<row><td>Extension</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Extension</td><td>Extension</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Extension</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Extension</td><td>MIME_</td><td>Y</td><td/><td/><td>MIME</td><td>1</td><td>Text</td><td/><td>Optional Context identifier, typically "type/format" associated with the extension</td></row>
		<row><td>Extension</td><td>ProgId_</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this extension.</td></row>
		<row><td>Feature</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2;4;5;6;8;9;10;16;17;18;20;21;22;24;25;26;32;33;34;36;37;38;48;49;50;52;53;54</td><td>Feature attributes</td></row>
		<row><td>Feature</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>Feature</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>UpperCase</td><td/><td>The name of the Directory that can be configured by the UI. A non-null value will enable the browse button.</td></row>
		<row><td>Feature</td><td>Display</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>Feature</td><td>Feature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>Feature</td><td>Feature_Parent</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Optional key of a parent record in the same table. If the parent is not selected, then the record will not be installed. Null indicates a root item.</td></row>
		<row><td>Feature</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Comments</td></row>
		<row><td>Feature</td><td>ISFeatureCabName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Name of CAB used when compressing CABs by Feature. Used to override build generated name for CAB file.</td></row>
		<row><td>Feature</td><td>ISProFeatureName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the feature used by pro projects.  This doesn't have to be unique.</td></row>
		<row><td>Feature</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this  feature will be built in a particular release.</td></row>
		<row><td>Feature</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The install level at which record will be initially selected. An install level of 0 will disable an item and prevent its display.</td></row>
		<row><td>Feature</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Short text identifying a visible feature item.</td></row>
		<row><td>FeatureComponents</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>FeatureComponents</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>File</td><td>Attributes</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing file attributes (with the decimal value of each bit position in parentheses)</td></row>
		<row><td>File</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>File</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token, must match identifier in cabinet.  For uncompressed files, this field is ignored.</td></row>
		<row><td>File</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>File name used for installation.  This may contain a "short name|long name" pair.  It may be just a long name, hence it cannot be of the Filename data type.</td></row>
		<row><td>File</td><td>FileSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>File</td><td>ISAttributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>This field contains the following attributes: UseSystemSettings(0x1)</td></row>
		<row><td>File</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>File</td><td>ISComponentSubFolder_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key referencing component subfolder containing this file.  Only for Pro.</td></row>
		<row><td>File</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>List of decimal language Ids, comma-separated if more than one.</td></row>
		<row><td>File</td><td>Sequence</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>File</td><td>Version</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Version</td><td/><td>Version string for versioned files;  Blank for unversioned files.</td></row>
		<row><td>FileSFPCatalog</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>File associated with the catalog</td></row>
		<row><td>FileSFPCatalog</td><td>SFPCatalog_</td><td>N</td><td/><td/><td>SFPCatalog</td><td>1</td><td>Text</td><td/><td>Catalog associated with the file</td></row>
		<row><td>Font</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing font file.</td></row>
		<row><td>Font</td><td>FontTitle</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Font name.</td></row>
		<row><td>ISAssistantTag</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISAssistantTag</td><td>Tag</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Color</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Duration</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Effect</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Font</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>ISBillboard</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Origin</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Sequence</td><td>N</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Style</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Target</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the chained package. Used only in the IDE.</td></row>
		<row><td>ISChainPackage</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Options</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Package</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>ProductCode</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>SourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>ISChainPackageData</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>ISChainPackageData</td><td>Options</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Package_</td><td>N</td><td/><td/><td>ISChainPackage</td><td>1</td><td>Identifier</td><td/><td/></row>
		<row><td>ISClrWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISClrWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISClrWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISComCatalogAttribute</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The named attribute for a catalog object.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A value associated with the attribute defined in the ItemName column.</td></row>
		<row><td>ISComCatalogCollection</td><td>CollectionName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A catalog collection name.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogCollection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogCollection_</td><td>N</td><td/><td/><td>ISComCatalogCollection</td><td>1</td><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogObject</td><td>DisplayName</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The display name of a catalog object.</td></row>
		<row><td>ISComCatalogObject</td><td>ISComCatalogObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplication</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>ComputerName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Computer name that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusApplication</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application.</td></row>
		<row><td>ISComPlusApplication</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>AlterDLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Alternate filename of the COM+ application component. Will be used for a .NET serviced component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>CLSID of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>DLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplicationDLL</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ProgId</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ProgId of the COM+ application component.</td></row>
		<row><td>ISComPlusProxy</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusProxy</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application proxy.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusProxy</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusProxy table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusProxyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusServerFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComponentExtended</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>ISComponentExtended</td><td>FTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>FTP Location</td></row>
		<row><td>ISComponentExtended</td><td>FilterProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property to set if you want to filter a component</td></row>
		<row><td>ISComponentExtended</td><td>HTTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HTTP Location</td></row>
		<row><td>ISComponentExtended</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Language</td></row>
		<row><td>ISComponentExtended</td><td>Miscellaneous</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Miscellaneous</td></row>
		<row><td>ISComponentExtended</td><td>OS</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of OSs</td></row>
		<row><td>ISComponentExtended</td><td>Platforms</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of Platforms.</td></row>
		<row><td>ISCustomActionReference</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into theICustomAction table.</td></row>
		<row><td>ISCustomActionReference</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Contents of the file speciifed in ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>FileType</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>file type of the file specified  ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>ISCAReferenceFilePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.  This column only exists in ISM.</td></row>
		<row><td>ISDIMDependency</td><td>ISDIMReference_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMDependency table</td></row>
		<row><td>ISDIMDependency</td><td>RequiredBuildVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the build version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMajorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the major version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMinorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the minor version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredRevisionVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the revision version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredUUID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>the UUID identifying the required DIM</td></row>
		<row><td>ISDIMReference</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISDIMReference</td><td>ISDIMReference</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>This is the primary key to the ISDIMReference table</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMDependency_</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMDependency table.</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMReference_Parent</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMVariable</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMVariable table</td></row>
		<row><td>ISDIMVariable</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of a variable defined in the .dim file</td></row>
		<row><td>ISDIMVariable</td><td>NewValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>New value that you want to override with</td></row>
		<row><td>ISDIMVariable</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type of the variable. 0: Build Variable, 1: Runtime Variable</td></row>
		<row><td>ISDLLWrapper</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISDLLWrapper</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISDLLWrapper</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISDLLWrapper</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISDependency</td><td>Exclude</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDependency</td><td>ISDependency</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDisk1File</td><td>Disk</td><td>Y</td><td/><td/><td/><td/><td/><td>-1;0;1</td><td>Used to differentiate between disk1(1), last disk(-1), and other(0).</td></row>
		<row><td>ISDisk1File</td><td>ISBuildSourcePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of file to be copied to Disk1 folder</td></row>
		<row><td>ISDisk1File</td><td>ISDisk1File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for ISDisk1File table</td></row>
		<row><td>ISDynamicFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>ISDynamicFile</td><td>ExcludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for excluded files.</td></row>
		<row><td>ISDynamicFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7;8;9;10;11;12;13;14;15</td><td>This is used to store Installshield custom properties of a dynamic filet.  Currently the only one is SelfRegister.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for included files.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Include flags.</td></row>
		<row><td>ISDynamicFile</td><td>SourceFolder</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Feature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>ModuleID</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>ISSetupPrerequisites_</td><td>N</td><td/><td/><td>ISSetupPrerequisites</td><td>1</td><td/><td/><td/></row>
		<row><td>ISFileManifests</td><td>File_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISFileManifests</td><td>Manifest_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISIISItem</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key to Component table.</td></row>
		<row><td>ISIISItem</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable Item Name.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for each item.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem_Parent</td><td>Y</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>This record's parent record.</td></row>
		<row><td>ISIISItem</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td/><td>IIS resource type.</td></row>
		<row><td>ISIISProperty</td><td>FriendlyName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property name.</td></row>
		<row><td>ISIISProperty</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Flags.</td></row>
		<row><td>ISIISProperty</td><td>ISIISItem_</td><td>N</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>Primary key for table, foreign key into ISIISItem.</td></row>
		<row><td>ISIISProperty</td><td>ISIISProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for table.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property attributes.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataProp</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property ID.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataUserType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property user data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property value.</td></row>
		<row><td>ISIISProperty</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Order sequencing.</td></row>
		<row><td>ISIISProperty</td><td>Schema</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS7 schema information.</td></row>
		<row><td>ISInstallScriptAction</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISInstallScriptAction</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISInstallScriptAction</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISInstallScriptAction</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISLanguage</td><td>ISLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the language ID.</td></row>
		<row><td>ISLanguage</td><td>Included</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1</td><td>Specify whether this language should be included.</td></row>
		<row><td>ISLinkerLibrary</td><td>ISLinkerLibrary</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the link library.</td></row>
		<row><td>ISLinkerLibrary</td><td>Library</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the object library (.obl file).</td></row>
		<row><td>ISLinkerLibrary</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Order of the Library</td></row>
		<row><td>ISLocalControl</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>ISLocalControl</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>ISLocalControl</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>ISLocalControl</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>ISLocalControl</td><td>Height</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>ISLocalControl</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalControl</td><td>Width</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>X</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>Y</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalDialog</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Dialog_</td><td>Y</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>ISLanguage_</td><td>Y</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalDialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>ISLocalDialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalRadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalRadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td>RadioButton</td><td>2</td><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ISLocalRadioButton</td><td>Property</td><td>N</td><td/><td/><td>RadioButton</td><td>1</td><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>ISLocalRadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLocalRadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLockPermissions</td><td>Attributes</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permissions attributes mask, 1==Deny access; 2==No inherit, 4==Ignore apply failures, 8==Target object is 64-bit</td></row>
		<row><td>ISLockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set.</td></row>
		<row><td>ISLockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into CreateFolder, Registry, or File table</td></row>
		<row><td>ISLockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.</td></row>
		<row><td>ISLockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>ISLockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set. This can be a property, hardcoded named, or SID string</td></row>
		<row><td>ISLogicalDisk</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>ISLogicalDisk</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDisk</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDisk</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>ISLogicalDisk</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>ISLogicalDisk</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Feature_</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table,</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties, like Compressed, etc.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISLogicalDisk_</td><td>N</td><td>1</td><td>32767</td><td>ISLogicalDisk</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISLogicalDisk table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the file for this media.</td></row>
		<row><td>ISMergeModule</td><td>Destination</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Destination.</td></row>
		<row><td>ISMergeModule</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a merge module.</td></row>
		<row><td>ISMergeModule</td><td>ISMergeModule</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The GUID identifying the merge module.</td></row>
		<row><td>ISMergeModule</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModule</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the merge module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Attributes (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ContextData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ContextData  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DefaultValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DefaultValue  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DisplayName (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Format</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Format (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpKeyword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpKeyword (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpLocation (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>The module signature, a foreign key into the ISMergeModule table</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ModuleConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Identifier, foreign key into ModuleConfiguration table (ModuleConfiguration.Name)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Type (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for this item.</td></row>
		<row><td>ISObject</td><td>Language</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObject</td><td>ObjectName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>IncludeInBuild</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Boolean, 0 for false non 0 for true</td></row>
		<row><td>ISObjectProperty</td><td>ObjectName</td><td>Y</td><td/><td/><td>ISObject</td><td>1</td><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISPatchConfigImage</td><td>PatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfigurationTable</td></row>
		<row><td>ISPatchConfigImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISUpgradedImageTable</td></row>
		<row><td>ISPatchConfiguration</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>PatchConfiguration attributes</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPCDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether Product Codes may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPVDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether the Major Product Version may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>EnablePatchCache</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Enable Patch cacheing</td></row>
		<row><td>ISPatchConfiguration</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Patching API Flags</td></row>
		<row><td>ISPatchConfiguration</td><td>IncludeWholeFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to build a binary level patch</td></row>
		<row><td>ISPatchConfiguration</td><td>LeaveDecompressed</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to leave intermediate files devcompressed when finished</td></row>
		<row><td>ISPatchConfiguration</td><td>MinMsiVersion</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Minimum Required MSI Version</td></row>
		<row><td>ISPatchConfiguration</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfiguration</td><td>OptimizeForSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Optimize for large files</td></row>
		<row><td>ISPatchConfiguration</td><td>OutputPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Location</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchCacheDir</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to recieve the Patch Cache information</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuid</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Unique Patch Identifier</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuidsToReplace</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of Patch Guids to unregister</td></row>
		<row><td>ISPatchConfiguration</td><td>TargetProductCodes</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of target Product Codes</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>ISPatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration Property value</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the Patch Configuration Property</td></row>
		<row><td>ISPatchExternalFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filekey</td></row>
		<row><td>ISPatchExternalFile</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filepath</td></row>
		<row><td>ISPatchExternalFile</td><td>ISUpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the isupgraded image table</td></row>
		<row><td>ISPatchExternalFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Uniqu name to identify this record.</td></row>
		<row><td>ISPatchWholeFile</td><td>Component</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Component containing file key</td></row>
		<row><td>ISPatchWholeFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key of file to be included as whole</td></row>
		<row><td>ISPatchWholeFile</td><td>UpgradedImage</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to ISUpgradedImage Table</td></row>
		<row><td>ISPathVariable</td><td>ISPathVariable</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The name of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>TestValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The test value of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4;8</td><td>The type of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The value of the path variable.</td></row>
		<row><td>ISProductConfiguration</td><td>GeneratePackageCode</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td>0;1</td><td>Indicates whether or not to generate a package code.</td></row>
		<row><td>ISProductConfiguration</td><td>ISProductConfiguration</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the product configuration.</td></row>
		<row><td>ISProductConfiguration</td><td>ProductConfigurationFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Product configuration (release) flags.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>InstanceId</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Identifies the instance number of this instance. This value is stored in the Property InstanceId.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Property</td><td>N</td><td/><td/><td>Property</td><td>1</td><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property. Never null or empty.</td></row>
		<row><td>ISRelease</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISRelease</td><td>BuildLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build location.</td></row>
		<row><td>ISRelease</td><td>CDBrowser</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Demoshield browser location.</td></row>
		<row><td>ISRelease</td><td>DefaultLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Default language for setup.</td></row>
		<row><td>ISRelease</td><td>DigitalPVK</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing private key (.pvk) file.</td></row>
		<row><td>ISRelease</td><td>DigitalSPC</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing Software Publisher Certificate (.spc) file.</td></row>
		<row><td>ISRelease</td><td>DigitalURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing URL.</td></row>
		<row><td>ISRelease</td><td>DiskClusterSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Disk cluster size.</td></row>
		<row><td>ISRelease</td><td>DiskSize</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk size.</td></row>
		<row><td>ISRelease</td><td>DiskSizeUnit</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk size units (KB or MB).</td></row>
		<row><td>ISRelease</td><td>DiskSpanning</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk spanning (automatic, enforce size, etc.).</td></row>
		<row><td>ISRelease</td><td>DotNetBuildConfiguration</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Configuration for .NET solutions.</td></row>
		<row><td>ISRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISRelease</td><td>ISRelease</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISRelease</td><td>ISSetupPrerequisiteLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3</td><td>Location the Setup Prerequisites will be placed in</td></row>
		<row><td>ISRelease</td><td>MediaLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location on disk.</td></row>
		<row><td>ISRelease</td><td>MsiCommandLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command line passed to the msi package from setup.exe</td></row>
		<row><td>ISRelease</td><td>MsiSourceType</td><td>N</td><td>-1</td><td>4</td><td/><td/><td/><td/><td>MSI media source type.</td></row>
		<row><td>ISRelease</td><td>PackageName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Package name.</td></row>
		<row><td>ISRelease</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password.</td></row>
		<row><td>ISRelease</td><td>Platforms</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Platforms supported (Intel, Alpha, etc.).</td></row>
		<row><td>ISRelease</td><td>ReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Release flags.</td></row>
		<row><td>ISRelease</td><td>ReleaseType</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4</td><td>Release type (single, uncompressed, etc.).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Languages supported (for component filtering).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesUI</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>UI languages supported.</td></row>
		<row><td>ISRelease</td><td>SupportedOSs</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Indicate which operating systmes are supported.</td></row>
		<row><td>ISRelease</td><td>SynchMsi</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>MSI file to synchronize file keys and other data with (patch-like functionality).</td></row>
		<row><td>ISRelease</td><td>Type</td><td>N</td><td>0</td><td>6</td><td/><td/><td/><td/><td>Release type (CDROM, Network, etc.).</td></row>
		<row><td>ISRelease</td><td>URLLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location via URL.</td></row>
		<row><td>ISRelease</td><td>VersionCopyright</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Version stamp information.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property name</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property value</td></row>
		<row><td>ISReleaseExtended</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISReleaseExtended</td><td>CertPassword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital certificate password</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateDBaseNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate database for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateIdNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate ID for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificatePasswordNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetBaseLanguage</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Base Languge of .NET Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetFxCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to DotNetFx.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangPackCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to LangPack.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangaugePacks</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>.NET Redist language packs to include</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of .NET framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .NET framework Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetVersion</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Version of .NET framework Redist (1.0, 1.1)</td></row>
		<row><td>ISReleaseExtended</td><td>EngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of msi engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of ISScript  engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to InstallShield scripting engine</td></row>
		<row><td>ISReleaseExtended</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseExtended</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to vjredist.exe</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of J# framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>MsiEngineVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding selected MSI engine versions included in this release</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickCabName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickHtmlName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated html page</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickTargetBrowser</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Target browser (IE, Netscape, both...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebCabSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of the cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>WebLocalCachePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to cache downloaded package</td></row>
		<row><td>ISReleaseExtended</td><td>WebType</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Type of web install (One Executable, Downloader...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .msi package</td></row>
		<row><td>ISReleaseExtended</td><td>Win9xMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Ansi MSI engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinMsi30Url</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to MSI 3.0 engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinNTMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Unicode MSI engine</td></row>
		<row><td>ISReleaseProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISReleaseProperty</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISReleaseProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISReleaseProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISReleasePublishInfo</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item description</td></row>
		<row><td>ISReleasePublishInfo</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item display name</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding various attributes</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleasePublishInfo</td><td>Publisher</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item publisher</td></row>
		<row><td>ISReleasePublishInfo</td><td>Repository</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository which to  publish the built merge module</td></row>
		<row><td>ISSQLConnection</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>BatchSeparator</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>CmdTimeout</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Database</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ISSQLConnection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnection record.</td></row>
		<row><td>ISSQLConnection</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Password</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Server</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>UserName</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnectionDBServer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnectionDBServer record.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLDBMetaData_</td><td>N</td><td/><td/><td>ISSQLDBMetaData</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLDBMetaData table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnAdditional</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDatabase</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDriver</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnNetLibrary</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPassword</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPort</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnServer</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnUserID</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnWindowsSecurity</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoDriverName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DsnODBCName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISSQLDBMetaData</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLDBMetaData record.</td></row>
		<row><td>ISSQLDBMetaData</td><td>InsertRecordCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>LocalInstanceNames</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>QueryDatabasesCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_ColumnType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SelectTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SwitchDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestDatabaseCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd2</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionBeginToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionEndToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionInfoCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>WinAuthentUserId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnectionDBServer_</td><td>Y</td><td/><td/><td>ISSQLConnectionDBServer</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnectionDBServer table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLRequirement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLRequirement record.</td></row>
		<row><td>ISSQLRequirement</td><td>MajorVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ServicePackLevel</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrNumber</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ISSQLScriptFile_</td><td>Y</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptError</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Custom end-user message. Reserved for future use.</td></row>
		<row><td>ISSQLScriptFile</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comments</td></row>
		<row><td>ISSQLScriptFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the SQL script.</td></row>
		<row><td>ISSQLScriptFile</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this script if the specified condition evaluates to the 'False' state. If a script is disabled, it will not be installed regardless of the 'Action' state associated with the component.</td></row>
		<row><td>ISSQLScriptFile</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the SQL script file.</td></row>
		<row><td>ISSQLScriptFile</td><td>ErrorHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISSQLScriptFile</td><td>ISSQLScriptFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptFile</td><td>InstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at install</td></row>
		<row><td>ISSQLScriptFile</td><td>Scheduling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>UninstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at Uninstall</td></row>
		<row><td>ISSQLScriptFile</td><td>Version</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Schema Version (#####.#####.#####.#####)</td></row>
		<row><td>ISSQLScriptImport</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Database</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ExcludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptImport</td><td>IncludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Server</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>UserName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptReplace</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLScriptReplace record.</td></row>
		<row><td>ISSQLScriptReplace</td><td>Replace</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Search</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISScriptFile</td><td>ISScriptFile</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the full path of the script file. The path portion may be expressed in path variable form.</td></row>
		<row><td>ISSelfReg</td><td>CmdLine</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>Cost</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>FileKey</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key to the file table</td></row>
		<row><td>ISSelfReg</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the file name to use when streaming the file to the support files location</td></row>
		<row><td>ISSetupFile</td><td>ISSetupFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSetupFile table</td></row>
		<row><td>ISSetupFile</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Four digit language identifier.  0 for Language Neutral</td></row>
		<row><td>ISSetupFile</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Link to the source file on the build machine</td></row>
		<row><td>ISSetupFile</td><td>Splash</td><td>Y</td><td/><td/><td/><td/><td>Short</td><td/><td>Boolean value indication whether his setup file entry belongs in the Splasc Screen section</td></row>
		<row><td>ISSetupFile</td><td>Stream</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The bits to stream to the support location</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this prereq  will be included in a particular release.</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupPrerequisites</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupType</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>ISSetupType</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>ISSetupType</td><td>Display</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>ISSetupType</td><td>Display_Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>ISSetupType</td><td>ISSetupType</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>ISSetupType_</td><td>N</td><td/><td/><td>ISSetupType</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSetupType table.</td></row>
		<row><td>ISStorages</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Path to the file to stream into sub-storage</td></row>
		<row><td>ISStorages</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Name of the sub-storage key</td></row>
		<row><td>ISString</td><td>Comment</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comment</td></row>
		<row><td>ISString</td><td>Encoded</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Encoding for multi-byte strings.</td></row>
		<row><td>ISString</td><td>ISLanguage_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISString</td><td>ISString</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String id.</td></row>
		<row><td>ISString</td><td>TimeStamp</td><td>Y</td><td/><td/><td/><td/><td>Time/Date</td><td/><td>Time Stamp. MSI's Time/Date column type is just an int, with bits packed in a certain order.</td></row>
		<row><td>ISString</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>real string value.</td></row>
		<row><td>ISSwidtagProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISSwidtagProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property value</td></row>
		<row><td>ISTargetImage</td><td>Flags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>IgnoreMissingFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>If true, ignore missing source files when creating patch</td></row>
		<row><td>ISTargetImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the target image</td></row>
		<row><td>ISTargetImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the TargetImage</td></row>
		<row><td>ISTargetImage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>foreign key to the upgraded Image table</td></row>
		<row><td>ISUpgradeMsiItem</td><td>ISAttributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1</td><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ObjectSetupPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The path to the setup you want to upgrade.</td></row>
		<row><td>ISUpgradeMsiItem</td><td>UpgradeItem</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the Upgrade Item.</td></row>
		<row><td>ISUpgradedImage</td><td>Family</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the image family</td></row>
		<row><td>ISUpgradedImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the upgraded image</td></row>
		<row><td>ISUpgradedImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the UpgradedImage</td></row>
		<row><td>ISVirtualDirectory</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISVirtualDirectory</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualDirectory</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File  table.</td></row>
		<row><td>ISVirtualFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualPackage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualPackage</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRegistry</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualRegistry</td><td>Registry_</td><td>N</td><td/><td/><td>Registry</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Registry table.</td></row>
		<row><td>ISVirtualRegistry</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISVirtualRelease</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISVirtualRelease</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISVirtualRelease</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualShortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualShortcut</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Shortcut table.</td></row>
		<row><td>ISVirtualShortcut</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISWSEWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISWSEWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISWSEWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISXmlElement</td><td>Content</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Element contents</td></row>
		<row><td>ISXmlElement</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML element attributes</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement_Parent</td><td>Y</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElement</td><td>ISXmlFile_</td><td>N</td><td/><td/><td>ISXmlFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into XmlFile table.</td></row>
		<row><td>ISXmlElement</td><td>XPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XPath fragment including any operators</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML elementattib attributes</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElementAttrib</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element attribute</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElement_</td><td>N</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElementAttrib</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute name</td></row>
		<row><td>ISXmlElementAttrib</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute value</td></row>
		<row><td>ISXmlFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>ISXmlFile</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISXmlFile</td><td>Encoding</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XML File Encoding</td></row>
		<row><td>ISXmlFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized XML file name</td></row>
		<row><td>ISXmlFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML file attributes</td></row>
		<row><td>ISXmlFile</td><td>ISXmlFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized,internal token for Xml file</td></row>
		<row><td>ISXmlFile</td><td>SelectionNamespaces</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Selection namespaces</td></row>
		<row><td>ISXmlLocator</td><td>Attribute</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>The name of an attribute within the XML element.</td></row>
		<row><td>ISXmlLocator</td><td>Element</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>XPath query that will locate an element in an XML file.</td></row>
		<row><td>ISXmlLocator</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISXmlLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table.</td></row>
		<row><td>ISXmlLocator</td><td>Signature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, ISXmlLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>Icon</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Icon</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Icon</td><td>ISIconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index to be extracted.</td></row>
		<row><td>Icon</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key. Name of the icon file.</td></row>
		<row><td>IniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;3</td><td>The type of modification to be made, one of iifEnum</td></row>
		<row><td>IniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the .INI value.</td></row>
		<row><td>IniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>IniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to write the information</td></row>
		<row><td>IniFile</td><td>IniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>IniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>IniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>IniFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be written.</td></row>
		<row><td>IniLocator</td><td>Field</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The field in the .INI line. If Field is null or 0 the entire line is read.</td></row>
		<row><td>IniLocator</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name.</td></row>
		<row><td>IniLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key value (followed by an equals sign in INI file).</td></row>
		<row><td>IniLocator</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Section name within in file (within square brackets in INI file).</td></row>
		<row><td>IniLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>IniLocator</td><td>Type</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>An integer value that determines if the .INI value read is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>InstallExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>InstallShield</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>InstallShield</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>InstallUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>IsolatedComponent</td><td>Component_Application</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item for application</td></row>
		<row><td>IsolatedComponent</td><td>Component_Shared</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item to be isolated</td></row>
		<row><td>LaunchCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression which must evaluate to TRUE in order for install to commence.</td></row>
		<row><td>LaunchCondition</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable text to display when condition fails and install must abort.</td></row>
		<row><td>ListBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listbox.</td></row>
		<row><td>ListBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>ListView</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>The name of the icon to be displayed with the icon. The binary information is looked up from the Binary Table.</td></row>
		<row><td>ListView</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListView</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listview.</td></row>
		<row><td>ListView</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListView</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>LockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set. (usually a property)</td></row>
		<row><td>LockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry or File table</td></row>
		<row><td>LockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.  Full Control = 268435456 (GENERIC_ALL = 0x10000000)</td></row>
		<row><td>LockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>Directory;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>LockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set.  (usually a property)</td></row>
		<row><td>MIME</td><td>CLSID</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>Optional associated CLSID.</td></row>
		<row><td>MIME</td><td>ContentType</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Primary key. Context identifier, typically "type/format".</td></row>
		<row><td>MIME</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>Optional associated extension (without dot)</td></row>
		<row><td>Media</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>Media</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>Media</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>Media</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>Media</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>Media</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>MoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>If this component is not "selected" for installation or removal, no action will be taken on the associated MoveFile entry</td></row>
		<row><td>MoveFile</td><td>DestFolder</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>MoveFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name to be given to the original file after it is moved or copied.  If blank, the destination file will be given the same name as the source file</td></row>
		<row><td>MoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular MoveFile record</td></row>
		<row><td>MoveFile</td><td>Options</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Integer value specifying the MoveFile operating mode, one of imfoEnum</td></row>
		<row><td>MoveFile</td><td>SourceFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the source directory</td></row>
		<row><td>MoveFile</td><td>SourceName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the source file(s) to be moved or copied.  Can contain the '*' or '?' wildcards.</td></row>
		<row><td>MsiAssembly</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Assembly attributes</td></row>
		<row><td>MsiAssembly</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssembly</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>MsiAssembly</td><td>File_Application</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File table, denoting the application context for private assemblies. Null for global assemblies.</td></row>
		<row><td>MsiAssembly</td><td>File_Manifest</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the manifest file for the assembly.</td></row>
		<row><td>MsiAssemblyName</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiAssemblyName</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiDigitalCertificate</td><td>CertData</td><td>N</td><td/><td/><td/><td/><td>Binary</td><td/><td>A certificate context blob for a signer certificate</td></row>
		<row><td>MsiDigitalCertificate</td><td>DigitalCertificate</td><td>N</td><td/><td/><td>MsiPackageCertificate</td><td>2</td><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiDigitalSignature</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>Foreign key to MsiDigitalCertificate table identifying the signer certificate</td></row>
		<row><td>MsiDigitalSignature</td><td>Hash</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>The encoded hash blob from the digital signature</td></row>
		<row><td>MsiDigitalSignature</td><td>SignObject</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key to Media table</td></row>
		<row><td>MsiDigitalSignature</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Reference to another table name (only Media table is supported)</td></row>
		<row><td>MsiDriverPackages</td><td>Component</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>MsiDriverPackages</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Driver package flags</td></row>
		<row><td>MsiDriverPackages</td><td>ReferenceComponents</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiDriverPackages</td><td>Sequence</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Installation sequence number</td></row>
		<row><td>MsiEmbeddedChainer</td><td>CommandLine</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>MsiEmbeddedChainer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>CustomSource</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Integer</td><td>2;18;50</td><td/></row>
		<row><td>MsiEmbeddedUI</td><td>Attributes</td><td>N</td><td>0</td><td>3</td><td/><td/><td>Integer</td><td/><td>Information about the data in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>This column contains binary information.</td></row>
		<row><td>MsiEmbeddedUI</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>The name of the file that receives the binary information in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>MsiEmbeddedUI</td><td>MessageFilter</td><td>Y</td><td>0</td><td>234913791</td><td/><td/><td>Integer</td><td/><td>Specifies the types of messages that are sent to the user interface DLL. This column is only relevant for rows with the msidbEmbeddedUI attribute.</td></row>
		<row><td>MsiEmbeddedUI</td><td>MsiEmbeddedUI</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The primary key for the table.</td></row>
		<row><td>MsiFileHash</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing file with this hash</td></row>
		<row><td>MsiFileHash</td><td>HashPart1</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart2</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart3</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart4</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>Options</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Various options and attributes for this hash.</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Expression which must evaluate to TRUE in order for this set of permissions to be applied</td></row>
		<row><td>MsiLockPermissionsEx</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry, File, CreateFolder, or ServiceInstall table</td></row>
		<row><td>MsiLockPermissionsEx</td><td>MsiLockPermissionsEx</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiLockPermissionsEx</td><td>SDDLText</td><td>N</td><td/><td/><td/><td/><td>FormattedSDDLText</td><td/><td>String to indicate permissions to be applied to the LockObject</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry;ServiceInstall</td><td>Reference to another table name</td></row>
		<row><td>MsiPackageCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPackageCertificate</td><td>PackageCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPatchCertificate</td><td>PatchCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchMetadata</td><td>Company</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional company name</td></row>
		<row><td>MsiPatchMetadata</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfiguration table</td></row>
		<row><td>MsiPatchMetadata</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the metadata</td></row>
		<row><td>MsiPatchMetadata</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the metadata</td></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>Assembly_</td><td>Y</td><td/><td/><td>MsiPatchOldAssemblyName</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Assembly</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchSequence</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the patch configuration table</td></row>
		<row><td>MsiPatchSequence</td><td>PatchFamily</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the family to which this patch belongs</td></row>
		<row><td>MsiPatchSequence</td><td>Sequence</td><td>N</td><td/><td/><td/><td/><td>Version</td><td/><td>The version of this patch in this family</td></row>
		<row><td>MsiPatchSequence</td><td>Supersede</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td>Supersede</td></row>
		<row><td>MsiPatchSequence</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Target product codes for this patch family</td></row>
		<row><td>MsiServiceConfig</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Argument(s) for service configuration. Value depends on the content of the ConfigType field</td></row>
		<row><td>MsiServiceConfig</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfig</td><td>ConfigType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Service Configuration Option</td></row>
		<row><td>MsiServiceConfig</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfig</td><td>MsiServiceConfig</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>MsiServiceConfig</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Actions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of integer actions separated by [~] delimiters: 0 = SC_ACTION_NONE, 1 = SC_ACTION_RESTART, 2 = SC_ACTION_REBOOT, 3 = SC_ACTION_RUN_COMMAND. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Command line of the process to CreateProcess function to execute</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>DelayActions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of delays (time in milli-seconds), separated by [~] delmiters, to wait before taking the corresponding Action. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>MsiServiceConfigFailureActions</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>RebootMessage</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Message to be broadcast to server users before rebooting</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>ResetPeriod</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Time in seconds after which to reset the failure count to zero. Leave blank if it should never be reset</td></row>
		<row><td>MsiShortcutProperty</td><td>MsiShortcutProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiShortcutProperty</td><td>PropVariantValue</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>String representation of the value in the property</td></row>
		<row><td>MsiShortcutProperty</td><td>PropertyKey</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Canonical string representation of the Property Key being set</td></row>
		<row><td>MsiShortcutProperty</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Shortcut table</td></row>
		<row><td>ODBCAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC driver attribute</td></row>
		<row><td>ODBCAttribute</td><td>Driver_</td><td>N</td><td/><td/><td>ODBCDriver</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC driver in ODBCDriver table</td></row>
		<row><td>ODBCAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC driver attribute</td></row>
		<row><td>ODBCDataSource</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDataSource</td><td>DataSource</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for data source</td></row>
		<row><td>ODBCDataSource</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for data source</td></row>
		<row><td>ODBCDataSource</td><td>DriverDescription</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Reference to driver description, may be existing driver</td></row>
		<row><td>ODBCDataSource</td><td>Registration</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Registration option: 0=machine, 1=user, others t.b.d.</td></row>
		<row><td>ODBCDriver</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDriver</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for driver, non-localized</td></row>
		<row><td>ODBCDriver</td><td>Driver</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for driver</td></row>
		<row><td>ODBCDriver</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key driver file</td></row>
		<row><td>ODBCDriver</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key driver setup DLL</td></row>
		<row><td>ODBCSourceAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC data source attribute</td></row>
		<row><td>ODBCSourceAttribute</td><td>DataSource_</td><td>N</td><td/><td/><td>ODBCDataSource</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC data source in ODBCDataSource table</td></row>
		<row><td>ODBCSourceAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC data source attribute</td></row>
		<row><td>ODBCTranslator</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCTranslator</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for translator</td></row>
		<row><td>ODBCTranslator</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key translator file</td></row>
		<row><td>ODBCTranslator</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key translator setup DLL</td></row>
		<row><td>ODBCTranslator</td><td>Translator</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for translator</td></row>
		<row><td>Patch</td><td>Attributes</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing patch attributes</td></row>
		<row><td>Patch</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, non-localized token, foreign key to File table, must match identifier in cabinet.</td></row>
		<row><td>Patch</td><td>Header</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The patch header, used for patch validation.</td></row>
		<row><td>Patch</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to patch header.</td></row>
		<row><td>Patch</td><td>PatchSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of patch in bytes (long integer).</td></row>
		<row><td>Patch</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Primary key, sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>Patch</td><td>StreamRef_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>External key into the MsiPatchHeaders table specifying the row that contains the patch header stream.</td></row>
		<row><td>PatchPackage</td><td>Media_</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Foreign key to DiskId column of Media table. Indicates the disk containing the patch package.</td></row>
		<row><td>PatchPackage</td><td>PatchId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A unique string GUID representing this patch.</td></row>
		<row><td>ProgId</td><td>Class_</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>The CLSID of an OLE factory corresponding to the ProgId.</td></row>
		<row><td>ProgId</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Program identifier.</td></row>
		<row><td>ProgId</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component, like ExtractIcon, etc.</td></row>
		<row><td>ProgId</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>ProgId</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this ProgId. Will be written under the DefaultIcon key.</td></row>
		<row><td>ProgId</td><td>ProgId</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The Program Identifier. Primary key.</td></row>
		<row><td>ProgId</td><td>ProgId_Parent</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>The Parent Program Identifier. If specified, the ProgId column becomes a version independent prog id.</td></row>
		<row><td>Property</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Property</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>Property</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>PublishComponent</td><td>AppData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is localisable Application specific data that can be associated with a Qualified Component.</td></row>
		<row><td>PublishComponent</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID that represents the component id that will be requested by the alien product.</td></row>
		<row><td>PublishComponent</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>PublishComponent</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Feature table.</td></row>
		<row><td>PublishComponent</td><td>Qualifier</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is defined only when the ComponentId column is an Qualified Component Id. This is the Qualifier for ProvideComponentIndirect.</td></row>
		<row><td>RadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>RadioButton</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>RadioButton</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>RadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>RadioButton</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>RadioButton</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible title to be assigned to the radio button.</td></row>
		<row><td>RadioButton</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this button. Selecting the button will set the associated property to this value.</td></row>
		<row><td>RadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>RadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RegLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RegLocator</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RegLocator</td><td>Root</td><td>N</td><td>0</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>RegLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table. If the type is 0, the registry values refers a directory, and _Signature is not a foreign key.</td></row>
		<row><td>RegLocator</td><td>Type</td><td>Y</td><td>0</td><td>18</td><td/><td/><td/><td/><td>An integer value that determines if the registry value is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>Registry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the registry value.</td></row>
		<row><td>Registry</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a registry item.  Currently the only one is Automatic.</td></row>
		<row><td>Registry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>Registry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>Registry</td><td>Registry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Registry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>Registry</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The registry value.</td></row>
		<row><td>RemoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>DirProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to the folder of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>RemoveFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>InstallMode</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;3</td><td>Installation option, one of iimEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>2;4</td><td>The type of modification to be made, one of iifEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the .INI value.</td></row>
		<row><td>RemoveIniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>RemoveIniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to delete the information</td></row>
		<row><td>RemoveIniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>RemoveIniFile</td><td>RemoveIniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveIniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>RemoveIniFile</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be deleted. The value is required when Action is iifIniRemoveTag</td></row>
		<row><td>RemoveRegistry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RemoveRegistry</td><td>RemoveRegistry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveRegistry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum</td></row>
		<row><td>ReserveCost</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reserve a specified amount of space if this component is to be installed.</td></row>
		<row><td>ReserveCost</td><td>ReserveFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>ReserveCost</td><td>ReserveKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular ReserveCost record</td></row>
		<row><td>ReserveCost</td><td>ReserveLocal</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed locally.</td></row>
		<row><td>ReserveCost</td><td>ReserveSource</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed to run from the source location.</td></row>
		<row><td>SFPCatalog</td><td>Catalog</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>SFP Catalog</td></row>
		<row><td>SFPCatalog</td><td>Dependency</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Parent catalog - only used by SFP</td></row>
		<row><td>SFPCatalog</td><td>SFPCatalog</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>File name for the catalog.</td></row>
		<row><td>SelfReg</td><td>Cost</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The cost of registering the module.</td></row>
		<row><td>SelfReg</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the module that needs to be registered.</td></row>
		<row><td>ServiceControl</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments for the service.  Separate by [~].</td></row>
		<row><td>ServiceControl</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceControl</td><td>Event</td><td>N</td><td>0</td><td>187</td><td/><td/><td/><td/><td>Bit field:  Install:  0x1 = Start, 0x2 = Stop, 0x8 = Delete, Uninstall: 0x10 = Start, 0x20 = Stop, 0x80 = Delete</td></row>
		<row><td>ServiceControl</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>ServiceControl</td><td>ServiceControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceControl</td><td>Wait</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Boolean for whether to wait for the service to fully start</td></row>
		<row><td>ServiceInstall</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments to include in every start of the service, passed to WinMain</td></row>
		<row><td>ServiceInstall</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceInstall</td><td>Dependencies</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Other services this depends on to start.  Separate by [~], and end with [~][~]</td></row>
		<row><td>ServiceInstall</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of service.</td></row>
		<row><td>ServiceInstall</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>External Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>ErrorControl</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Severity of error if service fails to start</td></row>
		<row><td>ServiceInstall</td><td>LoadOrderGroup</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>LoadOrderGroup</td></row>
		<row><td>ServiceInstall</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Internal Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>password to run service with.  (with StartName)</td></row>
		<row><td>ServiceInstall</td><td>ServiceInstall</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceInstall</td><td>ServiceType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>ServiceInstall</td><td>StartName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>User or object name to run service as</td></row>
		<row><td>ServiceInstall</td><td>StartType</td><td>N</td><td>0</td><td>4</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>Shortcut</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command-line arguments for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table denoting the component whose selection gates the the shortcut creation/deletion.</td></row>
		<row><td>Shortcut</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The description for the shortcut.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The description name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the shortcut file is created.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The display name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Hotkey</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The hotkey for the shortcut. It has the virtual-key code for the key in the low-order byte, and the modifier flags in the high-order byte.</td></row>
		<row><td>Shortcut</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a shortcut.  Mainly used in pro project types.</td></row>
		<row><td>Shortcut</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Shortcut.</td></row>
		<row><td>Shortcut</td><td>ISShortcutName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A non-unique name for the shortcut.  Mainly used by pro pro project types.</td></row>
		<row><td>Shortcut</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>The icon index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the external icon file for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the shortcut to be created.</td></row>
		<row><td>Shortcut</td><td>Shortcut</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Shortcut</td><td>ShowCmd</td><td>Y</td><td/><td/><td/><td/><td/><td>1;3;7</td><td>The show command for the application window.The following values may be used.</td></row>
		<row><td>Shortcut</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Shortcut</td><td/><td>The shortcut target. This is usually a property that is expanded to a file or a folder that the shortcut points to.</td></row>
		<row><td>Shortcut</td><td>WkDir</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property defining location of working directory.</td></row>
		<row><td>Signature</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the file. This may contain a "short name|long name" pair.</td></row>
		<row><td>Signature</td><td>Languages</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>The languages supported by the file.</td></row>
		<row><td>Signature</td><td>MaxDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum creation date of the file.</td></row>
		<row><td>Signature</td><td>MaxSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum size of the file.</td></row>
		<row><td>Signature</td><td>MaxVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum version of the file.</td></row>
		<row><td>Signature</td><td>MinDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum creation date of the file.</td></row>
		<row><td>Signature</td><td>MinSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum size of the file.</td></row>
		<row><td>Signature</td><td>MinVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum version of the file.</td></row>
		<row><td>Signature</td><td>Signature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The table key. The Signature represents a unique file signature.</td></row>
		<row><td>TextStyle</td><td>Color</td><td>Y</td><td>0</td><td>16777215</td><td/><td/><td/><td/><td>A long integer indicating the color of the string in the RGB format (Red, Green, Blue each 0-255, RGB = R + 256*G + 256^2*B).</td></row>
		<row><td>TextStyle</td><td>FaceName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A string indicating the name of the font used. Required. The string must be at most 31 characters long.</td></row>
		<row><td>TextStyle</td><td>Size</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The size of the font used. This size is given in our units (1/12 of the system font height). Assuming that the system font is set to 12 point size, this is equivalent to the point size.</td></row>
		<row><td>TextStyle</td><td>StyleBits</td><td>Y</td><td>0</td><td>15</td><td/><td/><td/><td/><td>A combination of style bits.</td></row>
		<row><td>TextStyle</td><td>TextStyle</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the style. The primary key of this table. This name is embedded in the texts to indicate a style change.</td></row>
		<row><td>TypeLib</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>TypeLib</td><td>Cost</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The cost associated with the registration of the typelib. This column is currently optional.</td></row>
		<row><td>TypeLib</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>TypeLib</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Optional. The foreign key into the Directory table denoting the path to the help file for the type library.</td></row>
		<row><td>TypeLib</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the type library to be operational.</td></row>
		<row><td>TypeLib</td><td>Language</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The language of the library.</td></row>
		<row><td>TypeLib</td><td>LibID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The GUID that represents the library.</td></row>
		<row><td>TypeLib</td><td>Version</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The version of the library. The major version is in the upper 8 bits of the short integer. The minor version is in the lower 8 bits.</td></row>
		<row><td>UIText</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key that identifies the particular string.</td></row>
		<row><td>UIText</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The localized version of the string.</td></row>
		<row><td>Upgrade</td><td>ActionProperty</td><td>N</td><td/><td/><td/><td/><td>UpperCase</td><td/><td>The property to set when a product in this set is found.</td></row>
		<row><td>Upgrade</td><td>Attributes</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The attributes of this product set.</td></row>
		<row><td>Upgrade</td><td>ISDisplayName</td><td>Y</td><td/><td/><td>ISUpgradeMsiItem</td><td>1</td><td/><td/><td/></row>
		<row><td>Upgrade</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>A comma-separated list of languages for either products in this set or products not in this set.</td></row>
		<row><td>Upgrade</td><td>Remove</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The list of features to remove when uninstalling a product from this set.  The default is "ALL".</td></row>
		<row><td>Upgrade</td><td>UpgradeCode</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The UpgradeCode GUID belonging to the products in this set.</td></row>
		<row><td>Upgrade</td><td>VersionMax</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Upgrade</td><td>VersionMin</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Verb</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Optional value for the command arguments.</td></row>
		<row><td>Verb</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command text.</td></row>
		<row><td>Verb</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Verb</td><td>Sequence</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Order within the verbs for a particular extension. Also used simply to specify the default verb.</td></row>
		<row><td>Verb</td><td>Verb</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The verb for the command.</td></row>
		<row><td>_Validation</td><td>Category</td><td>Y</td><td/><td/><td/><td/><td/><td>"Text";"Formatted";"Template";"Condition";"Guid";"Path";"Version";"Language";"Identifier";"Binary";"UpperCase";"LowerCase";"Filename";"Paths";"AnyPath";"WildCardFilename";"RegPath";"KeyFormatted";"CustomSource";"Property";"Cabinet";"Shortcut";"URL";"DefaultDir"</td><td>String category</td></row>
		<row><td>_Validation</td><td>Column</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of column</td></row>
		<row><td>_Validation</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of column</td></row>
		<row><td>_Validation</td><td>KeyColumn</td><td>Y</td><td>1</td><td>32</td><td/><td/><td/><td/><td>Column to which foreign key connects</td></row>
		<row><td>_Validation</td><td>KeyTable</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>For foreign key, Name of table to which data must link</td></row>
		<row><td>_Validation</td><td>MaxValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Maximum value allowed</td></row>
		<row><td>_Validation</td><td>MinValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Minimum value allowed</td></row>
		<row><td>_Validation</td><td>Nullable</td><td>N</td><td/><td/><td/><td/><td/><td>Y;N;@</td><td>Whether the column is nullable</td></row>
		<row><td>_Validation</td><td>Set</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Set of values that are permitted</td></row>
		<row><td>_Validation</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of table</td></row>
	</table>
</msi>
