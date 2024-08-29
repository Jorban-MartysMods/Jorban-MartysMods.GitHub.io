---
title: Finding the Architecture Type of an Executable
layout: page
parent: Additional Guides
nav_order: 97
---

# Finding the Architecture Type of an Executable

When modding with graphics injections, accurately identifying the architecture type of your game's executable is crucial. Whether you're an experienced modder or new to the scene, knowing whether your game uses a 32-bit or 64-bit executable is essential for ensuring compatibility and the proper functioning of tools like ReShade and other graphics mods.

---

## Steps to Determine the Architecture Type

1. **Open Your Game:** Start your game as you normally would, then press "Alt + Tab" to return to your Desktop while the game runs in the background.

2. **Open Task Manager:** Press "Ctrl + Shift + Esc" to open Task Manager, or right-click on the taskbar and select "Task Manager" from the context menu.

3. **Locate the Game's Executable:** In Task Manager, go to the "Processes" tab and find your game's executable. The process name should match the name of the game's application.

4. **Identify the Architecture:**
   * **32-Bit Architecture:** If the game is running in 32-bit mode, the process name will have a tag that says "(32 Bits)" next to it.
     
     ![Showing Task Manager with Highlight on 32-Bit](../images/finding-the-architecture-type-of-an-executable/hl2-32bit.webp)

   * **64-Bit Architecture:** If there is no "(32 Bits)" tag, the game is using a 64-bit architecture.
     
     ![Showing Task Manager with Highlight on No Architecture](../images/finding-the-architecture-type-of-an-executable/ultrakill-32bit.webp)