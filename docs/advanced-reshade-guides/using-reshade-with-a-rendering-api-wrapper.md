---
title: Using ReShade with a Rendering API Wrapper
layout: page
nav_order: 2
parent: Advanced ReShade Guides
---

# Using ReShade with a Rendering API Wrapper

Rendering API wrappers are powerful tools that can bridge different versions of rendering APIs. 

Commonly, they enable conversion of older APIs (e.g., DirectX 9) into modern ones like Vulkan. 

This can offer benefits like ensuring ReShade shaders compile smoothly or boosting performance in older games.

---

## DXVK: Wrapping DirectX to Vulkan

DXVK is a tool designed to transform DirectX games to run on the Vulkan API. It's especially valuable for adapting older DirectX 9 games to benefit from newer compute shaders incompatible with DX9.

<details markdown="block" class="details-tree">
<summary>Installing DXVK</summary>

---

### 1. Download DXVK

Acquire the latest DXVK version from [their GitHub releases](https://github.com/doitsujin/dxvk/releases).

---

### 2. Locate Your Game Directory

For this guide, ULTRAKILL will serve as our example.

  * If you're unsure where your game directory is located, please see our guide on [how to locate your game's executable](https://guides.martysmods.com/docs/special-and-others/finding-your-game-executable-and-directory/) for assistance!

---

### 3. Determine Game's Rendering API & Architecture

Refer to [PCGamingWiki](https://pcgamingwiki.com/) to understand your game's rendering API and architecture.

  ![Game's API](../images/using-reshade-with-a-rendering-api-wrapper/pcgamingwiki_game_api.png)

  ![Game's Architecture](../images/using-reshade-with-a-rendering-api-wrapper/pcgamingwiki_game_api_bit_arch.png)

---

### 4. Extract DXVK Files

* Unzip the DXVK archive (e.g., `dxvk-2.2.tar.gz`) using a tool like [7zip](https://www.7-zip.org/).

* Within the archive, you'll spot two directories: `x64` and `x32`.

  ![DXVK Archive](../images/using-reshade-with-a-rendering-api-wrapper/dxvk_7zip_arch.png)

Ensure to choose the appropriate architecture based on the details from PCGamingWiki (Step 3).

---

### 5. Choose the Relevant DXVK DLL

Inside the chosen architecture directory, you'll find multiple files. These correspond to different rendering APIs:

 * dxgi.dll - DX11/DX12

 * d3d11.dll - DX11

 * d3d10core.dll - DX10

 * d3d9.dll - DX9

---

### 6. Transfer the DLL to Game Directory

Ensure the chosen DLL is in the same location as the game's executable.

![Transfer DLL](../images/using-reshade-with-a-rendering-api-wrapper/dxvk_install_drag.png)

---

### 7. Reinstall & Test ReShade

Install ReShade for your game using the Vulkan API and give it a test run. 

If ReShade doesn't display after Vulkan installation, you might have selected an incorrect application or used the wrong architecture/DLL.

</details>

---
## DGVoodoo 2: Wrapping 3DFX Glide and Direct3D / DirectX (1 to 9) to DirectX12
DGVoodoo2 is a tool designed to wrap old proprietary renderers from 3DFX and very old Direct3D renderers to more recent DirectX equivalents. It is not only valuable to make old titles benefit of Compute Shaders and other advanced features where a Vulkan GPU isn't applicable, but also to make old titles work better on modern OSes and even fix old graphical issues with them.

After that is done, when installing ReShade on a dgVoodoo2-wrapped game, you'll have to select the option for DirectX11/12. Keep that in mind, otherwise, ReShade won't work.

<details markdown="block" class="details-tree">
<summary>Installing DGVoodoo 2 (for 3DFX Glide)</summary>

---
### 1. Download DGVoodoo2

Acquire the latest version of dgVoodoo2 from [dege's website](http://dege.freeweb.hu/dgVoodoo2/dgVoodoo2/), as the time of writing this guide, the latest version is 2.83.1.

---
### 2. Extract the downloaded files
Extract the files somewhere you can find them later or when you need it again. Make sure you have permissions to write on this directory. I'd suggest extracting it to Documents or even the Desktop. As long as you have permissions on its directory, its better.

---
### 3 . Locate your game directory
For this example, i'll be using the old Ubisoft game, POD (Planet of Death), it uses the Glide renderer, the instructions are similar for DirectX, but might differ a bit, in the latter example, we'll use a DirectX game.

  * If you're unsure where your game directory is located, please see our guide on [how to locate your game's executable](https://guides.martysmods.com/docs/special-and-others/finding-your-game-executable-and-directory/) for assistance!

---
### 4. Locate the game directory within dgVoodoo2

Now that we got our directory and files extracted, its time to install it.
To prevent issues, we recommend you to run the tool as Administrator, since we're likely to try to write to folders which requires elevated permissions. After opening, you'll be greeted with its main window.

![Main Window, General tab](../images/using-reshade-with-a-rendering-api-wrapper/dgvoodoo2_main_window.png)
To start installing dgVoodoo2 to your desired game, click on the button named "Add", and then navigate to the game's directory as located before.

![Find Directory Dialogue](../images/using-reshade-with-a-rendering-api-wrapper/dgvoodoo2_directory_dialogue.png)
Now that its done, we can start configuring it. It is not quite installed yet, but we'll leave that for the end.

---
### 5. Configure the game
To configure dgVoodoo2 to the game, click on the tab that says "Glide". Most of the options are self-explainatory, but its worth going through some of them and explaining.

![All of the options and buttons on the tab](../images/using-reshade-with-a-rendering-api-wrapper/dgvoodoo2_glide_tab.png)

First one worth taking note is the 3Dfx card option. This will tell the game which "GPU" you have. As in, what GPU functions and specs dgVoodoo2 will simulate. Most games work on default settings, but some of them might require specific models.

Second one is the Onboard RAM, this will define how much RAM your "GPU" has, most games works on 8MB, but if you want to bump up the graphics on a few of them, they might require 16MB.

In texturing, most of them can be left as-is, but if you feel the need to change, go to the Memory Size and Texturing drop-down menus. Those are useful to define how much Memory Size each mapping unit has and how many of them. Only Voodoo3 and onward had variants with different TMUs, so if you plan on keeping using the Voodoo2, this isn't required. 

In Miscellaneous, you can disable the "3Dfx Watermark" checkbox to disable the watermark in the games, or leave it enabled. It is purely aesthetic.

After all that's done, all that remains is copying the DLL and running the game.

---
### 6. Finishing dgVoodoo2 installation
After all that, its time to get to work, open 2 Explorer windows, in one of them, go to the game directory, in another, go to the dgVoodoo2 directory. After going there, open the 3dfx folder, select x86, drag and drop the 3 DLL files to the game directory. Then run the game, and it should be installed.

That covers it for dgVoodoo2 glide installation.
![Final Stretch](../images/using-reshade-with-a-rendering-api-wrapper/dgvoodoo2_dlls.png)

---
</details>

<details markdown="block" class="details-tree">
<summary>Installing DGVoodoo 2 (for DirectX)</summary>

---
### 1. Download DGVoodoo2

Acquire the latest version of dgVoodoo2 from [dege's website](http://dege.freeweb.hu/dgVoodoo2/dgVoodoo2/), as the time of writing this guide, the latest version is 2.83.1.

---
### 2. Extract the downloaded files
Extract the files somewhere you can find them later or when you need it again. Make sure you have permissions to write on this directory. I'd suggest extracting it to Documents or even the Desktop. As long as you have permissions on its directory, its better.

---
### 3 . Locate your game directory
For this example, this time i'll be using TrackMania Sunrise, which is an old DirectX 8-9 game.

  * If you're unsure where your game directory is located, please see our guide on [how to locate your game's executable](https://guides.martysmods.com/docs/special-and-others/finding-your-game-executable-and-directory/) for assistance!

---
### 4. Locate the game directory within dgVoodoo2

Now that we got our directory and files extracted, its time to install it.
To prevent issues, we recommend you to run the tool as Administrator, since we're likely to try to write to folders which requires elevated permissions. After opening, you'll be greeted with its main window.

![Main Window, General tab](../images/using-reshade-with-a-rendering-api-wrapper/dgvoodoo2_main_window.png)
To start installing dgVoodoo2 to your desired game, click on the button named "Add", and then navigate to the game's directory as located before.

![Find Directory Dialogue](../images/using-reshade-with-a-rendering-api-wrapper/dgvoodoo2_directory_dialogue.png)
Now that its done, we can start configuring it. It is not quite installed yet, but we'll leave that for the end.

---
### 5. Configure the game
To configure dgVoodoo2 to the game, click on the tab that says "DirectX". Most of the options are self-explainatory, but its worth going through some of them and explaining.

![All of the options and buttons on the tab](../images/using-reshade-with-a-rendering-api-wrapper/dgvoodoo2_dx_tab.png)

Videocard is the card dgVoodoo2 will be emulating. Some games requires specific brands for features, but most of the time, dgVoodoo 3D Virtual accelerated card will work just fine. Set it to the max VRAM you have available.

In the Miscellaneous section, make sure to disable the checkbox with "dgVoodoo watermark". This will remove the watermark on the lower-right of the screen.

---
### 6. Finishing dgVoodoo2 installation
After all that, its time to get to work, open 2 Explorer windows, in one of them, go to the game directory, in another, go to the dgVoodoo2 directory. 
After going there, open the MS folder, now, take note of what DLLs to move in a game-to-game basics:

 * If its a Direct3D (1 to 7) game, the DLLs are: D3DImm.dll and DDraw.dll
 * If its a DirectX 8 game, the DLL is: D3D8.dll
 * If its a DirectX 9 game, the DLL is: D3D9.dll
	
If you are in doubt on what DLL to use, check the [PCGamingWiki](https://pcgamingwiki.com/) page to get its architecture and DirectX version.

That covers it for dgVoodoo2 Direct3D installation.
![Final Stretch](../images/using-reshade-with-a-rendering-api-wrapper/dgvoodoo2_dx_dlls.png)

---
</details>

