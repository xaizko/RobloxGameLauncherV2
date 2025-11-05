# Roblox Game Launcher V2 🚀🎮

A better version of the original Roblox game launcher that is now less path dependent and easier to use.  
This repository contains a Windows-focused launcher built with PowerShell and Batchfile that places the launching logic directly into shortcuts for a clean, single-click experience.

> Note: This is an upgrade from v1 — it uses fewer path/math dependencies and doesn't create additional scripts; the launcher is directly built into the shortcuts.

---

🚀 Quick Start

1. Clone or download the repository
   - Clone:
     ```bash
     git clone https://github.com/xaizko/RobloxGameLauncherV2.git
     ```
   - Or download the ZIP from GitHub and extract.

2. Copy the ID of the roblox game you want. This can be foud in the URL
   - For deepwoken the URL would be:
     ```bash
     https://www.roblox.com/games/4111023553/Deepwoken-Duskguard
     ```
   - Therefore the ID is ```4111023553```
3. Getting an icon (Optional Step)
   - Save the image to your computer and then go to an online converter that converts the picture into a ```.ico``` file (Necessary)
   - Right click on the new ```.ico``` file and click "Copy as Path"
   - Paste into script when prompted
   - Note: There is an included icons folder where you can leave all your icons in order to manage them
4. Run ```ShortcutRunner.bat```
   - Follow the instructions like pasting the ID and icon file path and you're done

---

❓ FAQ

Q: Is this safe?  
A: The project is a simple launcher wrapper that calls the official Roblox client. Review the code before running if you have security concerns.

---

🤝 Contributing

- Bug reports and feature requests: open an Issue on the repository.
- Pull requests: welcome — please follow a clear commit message and include a short description of changes.
