[Setup]
AppId={{8E2D3F4A-6B1C-4A7E-9F20-IGU17DEBUG01}
AppName=IGU17 Modbus Debugger
AppVersion=1.0.0
AppPublisher=Your Company
DefaultDirName={localappdata}\Programs\IGU17Debugger
DefaultGroupName=IGU17 Debugger
DisableProgramGroupPage=yes
OutputDir=installer
OutputBaseFilename=IGU17Debugger_Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=lowest
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
UninstallDisplayIcon={app}\IGU17Debugger.exe

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "dist\IGU17Debugger\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\IGU17 Modbus Debugger"; Filename: "{app}\IGU17Debugger.exe"
Name: "{group}\{cm:UninstallProgram,IGU17 Modbus Debugger}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\IGU17 Modbus Debugger"; Filename: "{app}\IGU17Debugger.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\IGU17Debugger.exe"; Description: "{cm:LaunchProgram,IGU17 Modbus Debugger}"; Flags: nowait postinstall skipifsilent