#============== Start Process ==================

# $PROFILE | Select-Object -Property AllUsersAllHosts,AllUsersCurrentHost,CurrentUserAllHosts,CurrentUserCurrentHost | Format-List
function Write-HostCenter { param($Message) Write-Host ("{0}{1}" -f (' ' * (([Math]::Max(0, $Host.UI.RawUI.BufferSize.Width / 2) - [Math]::Floor($Message.Length / 2)))), $Message) }

Write-Host " " 
Write-HostCenter '#  ..#######.....##......##....#######...#######..########..#######...#######.  #'
Write-HostCenter '#  .##.....##..####....####...##.....##.##.....##.##....##.##.....##.##.....##  #'
Write-HostCenter '#  ........##....##......##..........##.##.....##.....##...##.....##.##.....##  #'
Write-HostCenter '#  ..#######.....##......##....#######...########....##.....########..#######.  #'
Write-HostCenter '#  .##...........##......##...##...............##...##............##.##.....##  #'
Write-HostCenter '#  .##...........##......##...##........##.....##...##.....##.....##.##.....##  #'
Write-HostCenter '#  .#########..######..######.#########..#######....##......#######...#######.  #'

Write-Host " " 
Write-HostCenter 'There Is No Place Like 127.0.0.1'
Write-Host " " 
Write-HostCenter 'Alkahfi Studio'
Write-Host " " 


If (-Not (Test-Path Variable:PSise)) {  # Only run this in the console and not in the ISE
    Import-Module Get-ChildItemColor
    
    Set-Alias l Get-ChildItem -option AllScope
    Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}

Set-PSReadlineOption -Color @{
    "Command" 	= [ConsoleColor]::Green
    "Parameter" = [ConsoleColor]::Gray
    "Operator" 	= [ConsoleColor]::Magenta
    "Variable" 	= [ConsoleColor]::White
    "String" 	= [ConsoleColor]::Yellow
    "Number" 	= [ConsoleColor]::Blue
    "Type" 		= [ConsoleColor]::Cyan
    "Comment" 	= [ConsoleColor]::DarkCyan
}


# Dracula Prompt Configuration
 Import-Module Get-ChildItemColor
Import-Module posh-git
$Global:GetChildItemColorVerticalSpace = 0
$GitPromptSettings.DefaultPromptPrefix.Text = "$([char]0x2192) " # arrow unicode symbol
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.DefaultPromptPath.ForegroundColor =[ConsoleColor]::Cyan
$GitPromptSettings.DefaultPromptSuffix.Text = "$([char]0x203A) " # chevron unicode symbol
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::Magenta
# Dracula Git Status Configuration
$GitPromptSettings.BeforeStatus.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.BranchColor.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.AfterStatus.ForegroundColor = [ConsoleColor]::Blue

#Produk Adobe & Corel
	function pspp {Start-process "C:\Program Files\Adobe\Adobe Photoshop CC 2017\Photoshop.exe"}
	function psp{Start-Process  "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop 2020.lnk"}
	function ai{Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Illustrator 2020.lnk"}
	function aicc {Start-process "C:\Program Files\Adobe\Adobe Illustrator CC 2017\Adobe Illustrator CC 2017.lnk" }
	function id {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Master Collection CC 2017\Adobe InDesign CC 2017.lnk"}
	function ae {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Master Collection CC 2017\Adobe After Effects CC 2017.lnk"}
	function dm {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Dimension.lnk"}
	function ins {Start-Process "C:\Users\User_Name\AppData\Local\invision-studio\app-1.20.0\InVision Studio.exe"}
	function au {Start-process "C:\Program Files\Adobe\Adobe Audition CC 2017\Adobe Audition CC.exe"}
	function cc {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Creative Cloud.lnk"}
	function pr {Start-process "C:\Program Files\Adobe\Adobe Premiere Pro CC 2017\Adobe Premiere Pro.exe"}
	function en {Start-process "C:\Program Files\Adobe\Adobe Media Encoder CC 2017\Adobe Media Encoder.exe"}
	function krita{Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Krita\Krita (x64).lnk"}
	function xd {Start-process  "C:\Users\User_Name\Desktop\Adobe XD - Shortcut.lnk"}
	function cdr {Start-process "C:\Program Files\Corel\CorelDRAW Graphics Suite X8\Programs64\CorelDRW.exe"}
	function adobe {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Creative Cloud.lnk"}
	#function bootstrap { Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Bootstrap Studio\Bootstrap Studio.lnk"}
	function figma {start-process  "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Figma, Inc\Figma.lnk"}
	function xpiks{start-process "F:\Programs\Xpiks\Xpiks.exe"}

	#Browser
	function mz {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox.lnk"}
	function ch {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk"}
	function uc {Start-process UCBrowser.exe}
	function opera{Start-Process "C:\Users\User_Name\Desktop\Opera GX Browser.lnk"}
	function mdev{start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox Developer Edition.lnk"}
	function firemin{Start-Process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Firemin.lnk"}

	#Remote & Network
	function packettracer{Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Cisco Packet Tracer\Cisco Packet Tracer.lnk"}
	function dukto {Start-process "C:\Program Files (x86)\Dukto\dukto.exe"}
	function putty {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PuTTY (64-bit)\PuTTY.lnk"}
	function bitvise {Start-process "C:\Program Files (x86)\Bitvise SSH Client\BvSsh.exe"}
	function mobax {Start-process  "C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe"}
	function mob	{Start-Process "F:\Programs\MobaXterm_Personal_10.8.exe"}
	function bdcam {Start-process "C:\Program Files (x86)\Bandicam\bdcam.exe"}
	function wireshark {Start-process "C:\Program Files\Wireshark\Wireshark.exe"}
	function vbox {Start-process "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"}
	function vpnub {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OpenVPN\OpenVPN GUI.lnk"}
	function ampps {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Ampps\Ampps.lnk"}
	function netwatch{Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\NirSoft Wireless Network Watcher\Wireless Network Watcher.lnk"}
	function cmd{Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk"}
	function ping-google {ping 8.8.8.8 -t}
	function shell{Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk"}
	function hterminal{Start-Process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ZEIT, Inc\Hyper.lnk"}
	function pwshelise{Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell ISE.lnk"}
	function we{Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk"}
	function cpanel{Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Control Panel.lnk"}
	function ubuntu{Start-process "C:\Program Files\WindowsApps\CanonicalGroupLimited.Ubuntu18.04onWindows_1804.2020.423.0_x64__79rhkp1fndgsc\ubuntu1804.exe"}
	#function ubuntu16{start-process "C:\Program Files\WindowsApps\CanonicalGroupLimited.Ubuntu16.04onWindows_2020.1604.14.0_x64__79rhkp1fndgsc\ubuntu1604.exe"}
	function larag{start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Laragon\Laragon.lnk"}
	function gns3{Start-process gns3.exe}
	function teamv{Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TeamViewer 13.lnk"}
	function mamp{Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MAMP\Mamp.lnk" }
	function fz{ Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\FileZilla FTP Client\FileZilla.lnk"}
	function wifi-analyzer { Start-Process "C:\Users\User_Name\Desktop\WiFi Analyzer - Shortcut.lnk"}
	function iconman{ Start-Process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Iconset.lnk"}
	function msterminal{ Start-Process "C:\Users\User_Name\Desktop\Windows Terminal (Preview) - Shortcut.lnk"}
	function ipgateway { 
	Get-WmiObject -Class Win32_IP4RouteTable |
	where { $_.destination -eq '0.0.0.0' -and $_.mask -eq '0.0.0.0'} |
	Sort-Object metric1 | select nexthop, metric1, interfaceindex
  }


	#Multimedia
	function daum {Start-process "C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe"}
	function vlc {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player.lnk"}
	function snipingtool{Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Snipping Tool.lnk"}
	function simplenote {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Simnet\Simple Sticky Notes\Simple Sticky Notes.lnk"}
	function idm {Start-process "C:\Program Files (x86)\Internet Download Manager\IDMan.exe"}
	function winrar{Start-process "C:\Program Files\WinRAR\WinRAR.exe"}
	function revo-uninstaller{Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Revo Uninstaller Pro\Revo Uninstaller Pro.lnk"}
	function handbrake{start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\HandBrake\HandBrake.lnk"}
	function cinema4d {start-process "C:\Program Files\MAXON\Cinema 4D R20\CINEMA 4D.exe"}
	function torrent {start-process C:\Users\User_Name\Desktop\µTorrent.lnk}
	function toys{Start-Process  "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PowerToys (Preview).lnk"}
	function webex {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Cisco Webex Meetings\Cisco Webex Meetings.lnk"}

	# Ms Office
	function word {Start-process "C:\Program Files\Microsoft Office\Office15\WINWORD.EXE" }
	function ppt {Start-process "C:\Program Files\Microsoft Office\Office15\POWERPNT.EXE" }
	function excel {Start-process "C:\Program Files\Microsoft Office\Office15\EXCEL.EXE"}
	function edge {start microsoft-edge:}

	#Sosial Media
	function line {Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\LINE.lnk"}
	function wa {Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WhatsApp\WhatsApp.lnk"}
	function telegram {Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Telegram Desktop\Telegram.lnk"}

	# Ide & Text Editor
	function npp {Start-process notepad++.exe}
	function notepad{Start-process notepad.exe}
	function adsu {Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Android Studio\Android Studio.lnk"}
	function atom {Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\GitHub, Inc\Atom.lnk"}
	function vscode {Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"}
	function netbeans{Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Apache NetBeans\Apache NetBeans IDE 11.1.lnk"}
	function vim{Start-process "C:\Program Files (x86)\Vim\vim81\gvim.exe"}
	function rb{Start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Ruby 2.5.3-1-x64 with MSYS2\Interactive Ruby.lnk"}
	function gitcmd{Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\Git Bash.lnk"}
	function pyc{Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\JetBrains\PyCharm 2019.3.1.lnk"}
	function geny{Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Genymotion\Genymotion.lnk"}
	function read{Start-process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Acrobat Reader DC.lnk"}
	function intellij {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\JetBrains\IntelliJ IDEA 2019.3.lnk" }
	function psm{Start-Process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Postman\Postman.lnk"}
	function mysql {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MySQL\MySQL Server 8.0\MySQL 8.0 Command Line Client.lnk"}
	function workbench {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MySQL\MySQL Workbench 8.0 CE.lnk"}
	function dg {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\JetBrains\DataGrip 2019.3.1.lnk"}
	#function gitdekstop{ Start-Process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\GitHub, Inc\GitHub Desktop.lnk"}
	function sourcetree{ Start-Process "C:\Users\User_Name\AppData\Local\SourceTree\SourceTree.exe"}
	function codium { Start-Process  "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VSCodium\VSCodium.lnk" }
	function sublime { Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sublime Text 3.lnk"}
	function lite{Start-Process "H:\SQLiteStudio\SQLiteStudio.exe "}
	
	
	#Management App
	function tabby {start-process "C:\Users\User_Name\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\tabby.lnk"}
	function magican{ii "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Samsung Magician\Samsung Magician.lnk"}

	#Open Directory

	# C Directory
	function c {ii C:\}
	function user {ii C:\Users}
	function us212{ii C:\Users\User_Name}
	function vag{ii C:\Users\User_Name\Vagrant}
	function downloads{ii G:\}
	function windows{ii C:\Windows}
	function hosts{ii C:\Windows\System32\drivers\etc}
	function boxes{ii C:\Users\User_Name\.vagrant.d\boxes}
	function nasyid{ii E:\Video\Nasyid }
	function box {ii C:\Users\User_Name\Dropbox}
	function desktop {ii C:\Users\User_Name\Desktop}
	function drive {ii "C:\Users\User_Name\Google Drive"}

	#D Directory
	function d {ii D:\}
	function design{ii D:\Design}

	#E Directory
	function e {ii E:\}
	function filkom {ii "E:\FILKOM UB"}

	#F Directory
	function f {ii F:\}
	
	function g {ii G:\}
	function dh {ii H:\}
	function web {ii H:\web\}
	function lamp {ii H:\web\Lamp_Server\}
	
	#listtypeFile
	function lltype($type){
	Get-ChildItem -Path .\ -Filter *$type -File -Name| ForEach-Object {
    [System.IO.Path]::GetFileNameWithoutExtension($_)
	}
	}
	
	function lstype($type){
	Get-ChildItem -Path $path -Recurse -Filter *$type -File -Name| ForEach-Object {
    [System.IO.Path]::GetFileNameWithoutExtension($_)
	}
	}
	
	function agent {
	Get-Service ssh-agent
	}
	
	function lsname($name){
	Get-ChildItem -Path .\ -Filter "*$name*"
	}
	
	function getname($name){
	Get-ChildItem -Path $path -Recurse -Filter "*$name*"
	}
	
	function change-name($name, $counts,$type){
	Dir *$type  | ForEach-Object  -begin { $count= $counts }  -process { rename-item $_ -NewName "$name$count$type"; $count++ }
		}
		
	function png-to-jpg{
		magick mogrify -format jpg *.png
	}
	
	function jpg-to-png{
		magick mogrify -format png *.jpg
	}
		
	#listDirectory
	function lsdir{
	ls -directory | Format-Wide 
	}
	
	function ll{
	ls | Format-Wide
	}
	

  # ======== Computer Utility ===========
  function hello {
  echo "Hello World"
  }

  function off {
  Stop-Computer
  }

  function reboot {
  Restart-Computer
  }

  function rm {
  Remove-item
  }

  function rmr($file) {
  Remove-item $file -recurse
  }

  function stop($ProcessName){
  Stop-Process -Name "$ProcessName"
  }

  function date {
  Get-date
  }

  function mv{
  Move-Item
  }
  
  function setting{
  start ms-settings:
  }

 function sshserver($status){
Write-Host "Ssh: Server $status  "
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0   
}

function sshclient($status){
Write-Host "Ssh: Client $status    "
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
}
  
  
  function profile-location{
  $PROFILE | Select-Object -Property AllUsersAllHosts,AllUsersCurrentHost,CurrentUserAllHosts,CurrentUserCurrentHost | Format-List
  }
  
  function mvtype($type, $destination){
  Get-ChildItem -Path .\ -Filter *$type -File | ForEach-Object { Move-Item $_ -Destination $destination }
  #Get-ChildItem -Filter $type  | Move-Item -Destination $destination -Whatif 
  }
  
   function cpall($type, $destination){
  Copy-Item $type -Destination $destination -Recurse 
  #Get-ChildItem -Filter $type  | Move-Item -Destination $destination -Whatif 
  }
  
  function mvname($name, $destination){
  Get-ChildItem -Path .\ -Filter "*$name*" | ForEach-Object { Move-Item $_ -Destination $destination }
  }
  
  function task{
  Get-process
  }
  
  function trees{
  tree /F /A
  }

  function ren($newname){
  rename-item -newname $newname
  }

  function touch($Name){
  new-item -name $Name -type "file"
  }
  
  function info {
   systeminfo /fo csv | ConvertFrom-Csv | select OS*, System*, Hotfix* | Format-List
   }
  
  function unzip($zipfile, $outpath){
	Expand-Archive -Path $zipfile -DestinationPath $outpath
  }

  function appdata{
  ii C:\Program Files\WindowsAPPS
  }
  
  function check-disk{
  gdr -PSProvider 'FileSystem'
  }
  
  function tanggal{
  Show-Calendar
  }
  
  function ram-model{
  [Cmdletbinding()] 
Param( 
    [string]$Computername = "localhost" 
) 
cls 
$PysicalMemory = Get-WmiObject -class "win32_physicalmemory" -namespace "root\CIMV2" -ComputerName $Computername 
 
Write-Host "Computroon Support 07488283150 RAM Modules:" -ForegroundColor Green 
$PysicalMemory | Format-Table Tag,BankLabel,@{n="Capacity(GB)";e={$_.Capacity/1GB}},Manufacturer,PartNumber,Speed -AutoSize 
 
Write-Host "Total Memory:" -ForegroundColor Green 
Write-Host "$((($PysicalMemory).Capacity | Measure-Object -Sum).Sum/1GB)GB" 
 
$TotalSlots = ((Get-WmiObject -Class "win32_PhysicalMemoryArray" -namespace "root\CIMV2" -ComputerName $Computername).MemoryDevices | Measure-Object -Sum).Sum 
Write-Host "`nTotal Memory Slots:" -ForegroundColor Green 
Write-Host $TotalSlots 
 
$UsedSlots = (($PysicalMemory) | Measure-Object).Count  
Write-Host "`nUsed Memory Slots:" -ForegroundColor Green 
Write-Host $UsedSlots 
 
If($UsedSlots -eq $TotalSlots) 
{ 
    Write-Host "All memory slots are filled up, none is empty!" -ForegroundColor Yellow 
}
}
	#Help
	function helpstart {echo "
	Usage Start Programs Using Powershell Windows

	========= Design Aplication =========
	ai 			For Adobe Illustrator
	psp			For Adobe Photoshop
	dm 			For Adobe Dimension
	ae			For Adobe After Effects
	pr 			For Adobe Premiere
	id			For Adobe InDesign
	au			For Adobe Audition
	en			For Adobe Encoder
	cdr			For CorelDRAW

	========= Browser Aplication =========
	mz			For Mozila FireFox
	ch			For Google Chrome
	uc 			For UCBrowser

	========= Multimedia Aplication =========
	daum			For Daum PotPlayer
	vlc 			For VLC Player
	bdcam			For Bandicam
	handbrake		For Handbrake
	cinema4d		For Cinema 4D

	========= Utility Aplication =========
	snipingtool		For SnippingTool
	simplenote 		For Simplenote
	idm        		For Internet Download Manager
	winrar     		For WinRAR
	uninstall		For Revo Uninstaller
	vbox			For VirtualBox
	cmd      		For Command Prompt
	we       		For Windows Explorer
	cpanel   		For Control Panel
	pwshel			For Poweshell
	pwshelise		For Poweshell ISE
	taskmgr			For Task Manager

	========= Remote & Network Aplication =========
	dukto			For Dukto Transfer Files
	putty			For Putty Remote SSH
	bitvise			For Bitvise Remote SSH
	mobax			For MobaXterm
	wireshark		For Wireshark
	vpnub			For VPN Ub Public
	xampp			For XAMPP
	ubuntu   		For Ubuntu16
	netwatch		For Network Watcher
	testc			For Ping 8.8.8.8
	gns3    		For GNS3
	teamv   		For Team Viewer
	fz     			For FIlezila

	========= IDEA & Text Editor Aplication =========
	adsu			For Android Studio
	atom   			For Atom Editor
	pyc				For PyCharm
	vscode 			For Visual Studio Code
	notepad			For Notepad
	npp    			For Notepad++
	netbeans		For NetBeans
	vim      		For VIm Editor
	gitcmd      		For Git CMD
	geny     		For Genymotion\Genymotion
	mongo			For MongoDB\Server\4

	========= Microsoft Office Aplication =========
	word			For Microsoft Word
	ppt 			For Microsoft PowerPoint
	excel			For Microsoft Excel
	edge			For Microsoft Edge

	========= Social Media Aplication =========
	line			For LINE Aplication
	wa  			For WhatsApp Aplication
	telegram		For Telegram Aplication

	========= Open Directory Path =============
	C				Open Disk C
	D 				Open Disk D
	E 				Open Disk E
	F 				Open Disk F
	212				Open Directory Users\User_Name
	user				Open Directory Users
	vagrant				Open Directory Users\User_Name\Vagrant
	Downloads 			Open Directory Users\User_Name\Downloads
	Windows				Open Directory Windows
	Hosts				Open Directory Windows\System32\drivers\etc
	Design				Open Directory D\Design
	Filkom				Open Directory E\FIlkom UB

	"}