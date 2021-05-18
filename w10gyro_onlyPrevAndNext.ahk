/*! Inirdin
	Custom remapping for W10 GYRO remote by Pepper Jobs
    2021
    
	REMAPPING Previous ⏪ and Next ⏩ BUTTONS AT THE FRONT OF THE REMOTE 
	Doesn't block original input! 
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

InputMsg(wParam, lParam) {
	data :=
    devhandle:= AHKHID_GetInputInfo(lParam, II_DEVHANDLE)
    data_code:= Bin2Hex(&uData, AHKHID_GetInputData(lParam, uData))

									; Buttons		| CUSTOM MAPPING
	if (data_code="03B400")			; Previous ⏪ 	| Media_Prev
	{
		;MsgBox, Previous ; Debug message			
		SendInput {Media_Prev} ; suggested CUSTOM MAPPING
		return
    }
    else if (data_code="03B300")	; Next ⏩ 		| Media_Next
	{
		;MsgBox, Next ; Debug message	
		SendInput {Media_Next} ; suggested CUSTOM MAPPING
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