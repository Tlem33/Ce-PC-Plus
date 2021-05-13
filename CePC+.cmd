:: CePC+.cmd - Par Tlem33
:: Ce batch permet d'afficher le nom de la machine sur l'icône "Ce PC".
::
:: Lire le fichier README.md pour plus d'informations.
::
:: Version 1.3 du 13/12/2020
:: https://github.com/Tlem33/CePC-Plus  
::

@Echo Off
Cls

:: Version :
Set Version=1.3

::Get Admin Right
Net.exe session 1>NUL 2>NUL || (Powershell start-process """%~dpnx0""" -verb RunAs & Exit /b 1)


:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (
	Set SetAcl="%~DP0bin\SetACLx64.exe"
) ELSE (
	Set SetAcl="%~DP0bin\SetACLx86.exe"
)
::Check If SetACL.exe exist
If Not Exist %SetAcl% (
	Color 0C
	Echo Le programme %SetAcl% n'a pas ‚t‚ trouv‚.
	Echo Veuillez corriger le problŠme et relancez ce batch.
	Echo.
	Echo Appuyez sur une touche pour quitter.
	Pause>Nul
	Exit
)


: Menu
Cls
Color 0F
Echo                         ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
Echo                         º                              º
Echo                         º          CePC+ v%version%          º
Echo                         º                              º
Echo                         ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
Echo.
Echo.
Echo Quelle action d‚sirez-vous effectuer ?
Echo.
Echo      1 - Renommer "Ce PC" en "Ce PC (NomduPC)"
Echo.
Echo      2 - Remettre la valeur d'origine
Echo.
Echo      3 - Quitter
Echo.
Set /P Var=Entrez votre choix (1, 2 ou 3) ?
If "%Var%"=="1" Goto :NewValue
If "%Var%"=="2" Goto :OldValue
If "%Var%"=="3" Exit
Goto :Menu


:NewValue
Cls
Echo Modification des droits de la cl‚ de registre.
Echo ==============================================
%SetAcl% -on "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -ot reg -actn setowner -ownr "n:Administrateurs"
%SetAcl% -on "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -ot reg -actn ace -ace "n:Administrateurs;p:full"
Echo.
Echo Modification des cl‚s de registre
Echo ==================================
REG ADD "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /f /v "LocalizedString" /t REG_EXPAND_SZ /d "Ce PC (%%ComputerName%%)"
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /f /t REG_EXPAND_SZ /d "Ce PC (%%ComputerName%%)"

If %ERRORLEVEL%==0 (
	Color 0A
	Echo.
	Echo.
	Echo Op‚ration termin‚e avec succŠs.
	ie4uinit.exe -show
) Else (
	Color 0C
	Echo.
	Echo.
	Echo Echec de la modification ^(voir le message d'erreur ci-dessus^).
)
Goto :EOF

:OldValue
Cls
Echo Modification de la cl‚ de registre
Echo ==================================
REG ADD "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /f /v "LocalizedString" /t REG_EXPAND_SZ /d "@%SystemRoot%\system32\shell32.dll,-9216"

If %ERRORLEVEL%==0 (
	Color 0A
	Echo.
	Echo.
	Echo Op‚ration termin‚e avec succŠs.
	ie4uinit.exe -show
) Else (
	Color 0C
	Echo.
	Echo.
	Echo Echec de la modification ^(voir le message d'erreur ci-dessus^).
	Echo Appuyez sur une touche pour quitter.
	Pause>Nul & Exit
)
Goto :EOF

:EOF
Echo Appuyez sur une touche pour terminer.
Pause>Nul & Exit
