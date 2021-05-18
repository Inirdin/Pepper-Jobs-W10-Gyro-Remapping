/*! Inirdin
	Custom remapping for W10 GYRO remote by Pepper Jobs
    2021
    
	LIMITATIONS! 
	This script doesn't see difference between front and back of the remote! If you remap key on the fron of the remote like "Win+Up" you will not be able to use this keyboard shortcut even on the back of the remote or on the regular keyboard! That's why you shouldn't probably remap the "Task Manager" button unless you have another way to access Task Manager.
	
	Special keys:
	Vol- 🔉, Vol+ 🔊, Play-Pause ⏯️, Previous ⏪, Next ⏩
	These keys don't behave as regular keystrokes but use other input method by sending data values
	
	If you don't need complex functionality of AutoHotKey you can use app called Microsoft PowerToys for the regular keys, but special keys can't be remapped with it
	If you want to only remap Previous ⏪, Next ⏩ you can delete whole section called "FRONT OF THE REMOTE (Regular keys)"
	_________________________________________________
    
	1. AHKHID.ahk needs to be in same folder as this script
	2. Run this script unchanged for frist time to test if all buttons show debug messages
	3. Comment debug messages with ";" or delete them
	4. Add custom remapping instead of "; HERE YOU CAN ADD YOUR CUSTOM MAPPING"
	5. If you don't want to remap specific key, comment etyte section (including return) it with ";" or delete it
	_________________________________________________
	
	Original mapping of the front of the remote
	       ---   |   ------   |   ---
	
	      Win+X  |   F5       |  Alt+F4
	      Win+B  |   Win+Q    |  Win+I
	 Browser_Home|Ctrl+Alt+Del|  Win+A
	       Tab   |   Win+E    |   Win
	
	      Win+D  |   Up       |  Win+Tab
	      Left   |   Enter    |  Right
	       Esc   |   Down     |  AppsKey
	
	     03EA00  |   ------   |  03E900
	
	   Alt+Left  |   Alt+Up   |  Alt+Right
	     03B400  |   03CD00   |  03B300
	
	 Win+Up | Win+Down | Win+Left | Win+Right
	
*/
#SingleInstance force
#Persistent
#Include AHKHID.ahk

; Tray icon
I_Icon = w10gyro.ico
ICON [I_Icon]
if I_Icon <>
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%

Gui, +LastFound
hGui := WinExist()
OnMessage(0xFF, "InputMsg")
AHKHID_Register(12, 1,hGui, RIDEV_INPUTSINK)	; Registering UsagePage (12) and Usage (1) for Special Buttons

; =============================================================================
; FRONT OF THE REMOTE (Regular keys)
; =============================================================================

			; Original Keys	| Buttons		| CUSTOM MAPPING
<#X::		; Win + X		| Main M		| 
	MsgBox, Main M ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
F5::		; F5			| Refresh		| 
	MsgBox, Refresh ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
<!F4::		; Alt + F4		| Close			| 
	MsgBox, Close ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return

<#B::		; Win + B		| Notification	|  
	MsgBox, Notification ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
<#Q::		; Win + Q		| Search		| 
	MsgBox, Search ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
<#I::		; Win + I		| Settings		| 
	MsgBox, Settings ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return

Browser_Home:: ; Browser_Home| Browser		| 
	MsgBox, Browser ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
; Ctrl+Alt+Delete | Task Manager	| probably don't remap dis, idk
;
;

<#A::		; Win + A		| Action Ctr	|  
	MsgBox, Action Ctr ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return

Tab::		; Tab			| Tab			| 
	MsgBox, Tab ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
<#E::		; Win + E		| File Explorer	|  
	MsgBox, File Explorer ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
LWin::		; Win			| Win			|  
	MsgBox, Win ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return

; -----------------------------------------------------------------------------
<#D::		; Win + D 		| Desktop		| Example
	MsgBox, Desktop ; Debug message
	return
Up::		; Up 			| ▲				| 
	MsgBox, Up ; Debug message                           
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING    
	return                                    
<#Tab::		; Win + Tab		| Tasks			| 
	MsgBox, Tasks ; Debug message                            
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING    
	return                                    
	                                          
Left::		; Left	 		| ◄				| 
	MsgBox, Left ; Debug message                            
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING    
	return                                    
Enter::		; Enter			| Enter/OK		| 
	MsgBox, Enter/OK ; Debug message
	; Acts as left click, didn't try to remap this, maybe doesn't work
	return
Right::		; Right			| ►				|
	MsgBox, Right ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
	
Esc::		; Escape 		| Esc			|
	MsgBox, Esc ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
Down::		; Down 			| ▼				|
	MsgBox, Down ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
AppsKey::	; AppsKey		| Menu/R		|
	MsgBox, Menu/R ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return

; -----------------------------------------------------------------------------
VK8A::		; Volume_Down	| Vol-			| 
	MsgBox, Vol- ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
; 			Airmouse button					| Can't be remapped
;
;
VK8B::		; Volume_Up		| Vol+			| 
	MsgBox, Vol+ ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return

; -----------------------------------------------------------------------------
<!Left::	; Alt + Left	| Back			| 
	MsgBox, Back ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
<!Up::		; Alt + Up 		| Move Up		| 
	MsgBox, Move Up ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
<!Right::	; Alt + Right	| Forward		| 
	MsgBox, Forward ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return

; -----------------------------------------------------------------------------
<#Up::		; Win + Up		| ▀				| 
	MsgBox, Win + Up ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
<#Down::	; Win + Down	| ▄ 			| 
	MsgBox, Win + Down ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
<#Left::	; Win + Left	| ▌				| 
	MsgBox, Win + Left ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return
<#Right::	; Win + Right	| ▐				| 
	MsgBox, Win + Right ; Debug message
	; HERE YOU CAN ADD YOUR CUSTOM MAPPING
	return

; =================================================================================
; SPECIAL BUTTONS AT THE FRONT OF THE REMOTE 
; Vol- 🔉, Vol+ 🔊, Play-Pause ⏯️, Previous ⏪, Next ⏩
; Doesn't block original input! You can negate the original input except ⏪ and ⏩
; =================================================================================
InputMsg(wParam, lParam) {
	data :=
    devhandle:= AHKHID_GetInputInfo(lParam, II_DEVHANDLE)
    data_code:= Bin2Hex(&uData, AHKHID_GetInputData(lParam, uData))

									; Buttons		| CUSTOM MAPPING
	if (data_code="03EA00") 		; Vol- 🔉 		| Media_Prev
	{
		MsgBox, Vol- ; Debug message			
		;SendInput {Volume_Up} ; Negate original Input
		; HERE YOU CAN ADD YOUR CUSTOM MAPPING
		return
    }
    else if (data_code="03E900")	; Vol+ 🔊		| Media_Play_Pause
	{
		MsgBox, Vol+ ; Debug message	
		;SendInput {Volume_Down} ; Negate original Input
		; HERE YOU CAN ADD YOUR CUSTOM MAPPING
		return
    }
	else if (data_code="03B400")	; Previous ⏪ 	| Media_Prev
	{
		MsgBox, Previous ; Debug message			
		;SendInput {Media_Prev} ; suggested CUSTOM MAPPING
		return
    }
    else if (data_code="03CD00")	; Play-Pause ⏯️ | Media_Play_Pause
	{
		MsgBox, Play-Pause ; Debug message	
		SendInput {Media_Play_Pause} ; Negate original Input
		return
    }
    else if (data_code="03B300")	; Next ⏩ 		| Media_Next
	{
		MsgBox, Next ; Debug message	
		;SendInput {Media_Next}	; suggested CUSTOM MAPPING
		return
    }
	return
}

;By Laszlo, adapted by TheGood, function from AHKHID example required to remap the special keys
;http://www.autohotkey.com/forum/viewtopic.php?p=377086#377086
Bin2Hex(addr,len) {
    Static fun, ptr 
    If (fun = "") {
        If A_IsUnicode
            If (A_PtrSize = 8)
                h=4533c94c8bd14585c07e63458bd86690440fb60248ffc2418bc9410fb6c0c0e8043c090fb6c00f97c14180e00f66f7d96683e1076603c8410fb6c06683c1304180f8096641890a418bc90f97c166f7d94983c2046683e1076603c86683c13049ffcb6641894afe75a76645890ac366448909c3
            Else h=558B6C241085ED7E5F568B74240C578B7C24148A078AC8C0E90447BA090000003AD11BD2F7DA66F7DA0FB6C96683E2076603D16683C230668916240FB2093AD01BC9F7D966F7D96683E1070FB6D06603CA6683C13066894E0283C6044D75B433C05F6689065E5DC38B54240833C966890A5DC3
        Else h=558B6C241085ED7E45568B74240C578B7C24148A078AC8C0E9044780F9090F97C2F6DA80E20702D1240F80C2303C090F97C1F6D980E10702C880C1308816884E0183C6024D75CC5FC606005E5DC38B542408C602005DC3
        VarSetCapacity(fun, StrLen(h) // 2)
        Loop % StrLen(h) // 2
            NumPut("0x" . SubStr(h, 2 * A_Index - 1, 2), fun, A_Index - 1, "Char")
        ptr := A_PtrSize ? "Ptr" : "UInt"
        DllCall("VirtualProtect", ptr, &fun, ptr, VarSetCapacity(fun), "UInt", 0x40, "UInt*", 0)
    }
    VarSetCapacity(hex, A_IsUnicode ? 4 * len + 2 : 2 * len + 1)
    DllCall(&fun, ptr, &hex, ptr, addr, "UInt", len, "CDecl")
    VarSetCapacity(hex, -1) ; update StrLen
    Return hex
}