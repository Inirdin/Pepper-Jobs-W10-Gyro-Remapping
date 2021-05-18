# Pepper-Jobs-W10-Gyro-Remapping
Custom AHK scripts to remap the W10 Gyro with help of AHKHID

## Requrements
- Install AHK
- Download AHKHID (https://autohotkey.com/board/topic/38015-ahkhid-an-ahk-implementation-of-the-hid-functions/) and place it alongside with the script

You can customize tray icon by placing file w10gyro.icon alingside with script

If you don't need functionality of AHK, use only "w10gyro_onlyPrevAndNext.ahk" with Microsoft PowerToys (https://github.com/microsoft/PowerToys)

## Scripts
### Basic remapping
Download: **w10gyro.ahk**<br>
Replaces all keys and shortcuts (except special keys) used on the front of the remote. But it also interprets keys and keyboard shortcuts same way on the back of the remote and on every other keyboard!

### Toggling between original and custom remapping (Recommended)
Download: **w10gyro_toggle.ahk**<br>
Probably overcomplicated but works. Temporarily replaces all keys and shortcuts (except special keys) used on the front of the remote. But it also interprets keys and keyboard shortcuts same way on the back of the remote and on every other keyboard!

### Remapping only Previous ⏪ and Next ⏩ buttons
Download: **w10gyro_onlyPrevAndNext.ahk**<br>
Replaces only Previous ⏪ and Next ⏩ buttons with standard multimedia keys Media_Prev and Media_Next. Doesn't block the original input!

### Advanced remapping trash (NOT recommended)
Download: **w10gyro_interception.ahk**<br>
Blocks all inputs from the remote except the special buttons, but doesn't affect other keyboards!
Needs AHI: https://github.com/evilC/AutoHotInterception
