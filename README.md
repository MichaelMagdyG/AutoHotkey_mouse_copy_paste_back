# AutoHotkey Mouse Copy-Paste-Delete-Back

A lightweight AutoHotkey script that enhances your mouse buttons with quick actions for **copy, paste, delete, and back navigation**, including on-screen notifications.

## 🚀 Features

- **Hold Left Click (≥ 0.4s)** → `Ctrl + C` (Copy)  
  Displays tooltip: `Copied!`
- **Hold Right Click (≥ 0.4s)** → `Ctrl + V` (Paste)  
  Displays tooltip: `Pasted!`
- **Tap Middle Click** → `Alt + Left` (Navigate Back)  
  Displays tooltip: `Back!`
- **Hold Middle Click (≥ 0.4s)** → `Delete` (Delete selected text or next character)  
  Displays tooltip: `Deleted!`

## 📥 Requirements

- Windows 7/8/10/11  
- [AutoHotkey](https://www.autohotkey.com/) installed

## ⚡ Installation & Usage

1. Download or clone this repository.  
2. Double-click the script file:  
   `AutoHotkey_mouse_copy_paste_delete_back.ahk`  
3. The script will run in the system tray.  
4. Use your mouse buttons to trigger the enhanced actions.

## 💡 Notes

- Tooltips appear briefly (~0.1s) to confirm the action.  
- Adjust the hold duration by changing `T0.4` in the script.  
- The script does **not interfere** with normal click behavior for short taps on Left/Right buttons.

## 🛠 Customization

- Change tooltip duration by editing the `SetTimer, RemoveTooltip, -100` value (milliseconds).  
- Modify keys or add new actions by editing the relevant sections of the script.

