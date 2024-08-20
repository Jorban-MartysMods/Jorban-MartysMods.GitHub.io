---
title: Using ReShade with Other Graphics Injection Tools
layout: page
nav_order: 98
parent: Additional Guides
---

# **Using ReShade with Other Graphics Injection Tools**

Graphics injection tools, such as ENB and SpecialK, allow users to make significant modifications to a game's visuals, enhancing and customizing the visual experience. These tools typically involve injecting `.dll` files into the game, which can sometimes conflict with each other if not set up correctly. This guide will walk you through the process of installing and using ReShade alongside other graphics injection tools like ENB and SpecialK, ensuring smooth integration and optimal performance.

---

<details markdown="block" class="details-tree">
<summary>ENBSeries</summary>

## Installing ENB alongside ReShade:

ENBSeries, developed by Boris Vorontsov, is a powerful tool for overhauling game visuals. It provides extensive customization options, allowing users to tweak various parameters to achieve their desired visual style. While ENBSeries offers a wide range of features, it must be configured correctly when used with ReShade to prevent conflicts.

ENBSeries is often used in conjunction with ReShade to further enhance game visuals. However, unlike ReShade, ENBSeries is game-specific, requiring a unique version for each supported game. This specificity allows ENBSeries to access game resources tailored to that particular game, such as time-of-day settings, texture information, and more.

---

<details markdown="block" class="details-tree">
<summary>Installing via ENBProxy</summary>

1. **Download ENBSeries:** Visit the [ENBSeries website](http://enbdev.com/download.html) and download the version specific to your game. Consider searching for pre-made ENB presets, as the default download includes only a few example shaders.

2. **Extract Files:** Unzip the downloaded file and extract its contents into your game's root folder. If you’re unsure where the root folder is located, refer to [this guide](https://guides.martysmods.com/docs/additional-guides/finding-your-game-executable-and-directory/).

3. **Rename ReShade DLL:** Rename the ReShade `.dll` file (typically named `dxgi.dll` or `d3d11.dll`) to `reshade.dll`.

4. **Edit enbseries.ini:** Open the `enbseries.ini` file and modify the following lines:
```ini
   EnableProxyLibrary=true
   InitProxyFunctions=false
   ProxyLibrary=reshade.dll
```

{: .warning }
Ensure you follow the exact capitalization as shown. Incorrect capitalization may prevent ENB or ReShade from loading properly.

</details>

---

<details markdown="block" class="details-tree">
<summary>Installing via Ultimate ASI Loader</summary>

For older DirectX 9 games, additional tools may be required to ensure compatibility. One such tool is the [Ultimate ASI Loader](https://github.com/ThirteenAG/Ultimate-ASI-Loader).

1. **Download Ultimate ASI Loader:** Get the latest version of [ASI Loader](https://github.com/ThirteenAG/Ultimate-ASI-Loader/releases/).

2. **Extract Files:** Unzip the downloaded file and extract its contents into your game’s root folder. If needed, refer to [our guide on finding your game's root folder.](https://guides.martysmods.com/docs/additional-guides/finding-your-game-executable-and-directory/)

3. **Resolve File Name Conflicts:** If there are conflicting file names, use one of the alternative ASI Loader file names listed below:

    * d3d8.dll
    * d3d9.dll
    * d3d11.dll
    * ddraw.dll
    * dinput.dll
    * dinput8.dll
    * dsound.dll
    * msacm32.dll
    * msvfw32.dll
    * version.dll
    * vobisFile.dll
    * wininet.dll
    * winmm.dll
    * xlive.dll

4. **Create Plugins Folder:** In your game’s root folder, create a new folder named `plugins`.

5. **Move ReShade Files:** Move the following ReShade files into the `plugins` folder:
   * `reshade-shaders`
   * `ReShade.ini`
   * `ReshadePreset.ini`
   * `d3d9.dll`, `d3d10.dll`, `d3d11.dll`, `d3d12.dll`, or `dxgi.dll` (depending on your game’s DirectX version)

6. **Change ReShade DLL Extension:** Change the extension of the ReShade DLL file to `.asi`.

7. **Install ENBSeries:** Download and extract the ENBSeries files into the game’s root folder.

{: .important }
With ReShade now loaded from the `plugins` folder, any new shaders or textures should be placed in `GAME_FOLDER/plugins/reshade-shaders/`. ReShade Addons should be placed in `GAME_FOLDER/plugins/`.

</details>

</details>

---

<details markdown="block" class="details-tree">
<summary>SpecialK</summary>

SpecialK, developed by Kaldaien, is a versatile tool designed to enhance game performance and provide additional features for PC games. It offers capabilities such as fine-tuning HDR settings, improving frame pacing, and supporting custom textures. SpecialK can significantly optimize your gaming experience, but when used alongside ReShade, proper setup is crucial to avoid potential conflicts.

---

## Installing ReShade alongside SpecialK

1. **Download and Install Special K Injection Frontend (SKIF):** Begin by [downloading SKIF](https://www.special-k.info/), which is the front-end for injecting SpecialK into your games.

2. **Launch SKIF:** The installer will place a shortcut on your desktop. Launch SKIF, and it will automatically scan and list all the games installed on your PC.

3. **Install ReShade:** Follow the standard procedure for installing ReShade into your game. Ensure that ReShade is correctly installed before proceeding.

4. **Launch the Game through SKIF:** In the SKIF interface, double-click on the game you want to run. This will start the game with both SpecialK and ReShade active.

5. **Access the SpecialK GUI:** Once the game is running, you can access the SpecialK configuration menu by pressing Ctrl + Shift + Backspace together at the same time.

     ![SpecialK Shortcut](../images/using-reshade-with-other-grapahics-injection-tools/sk-keybind.webp){: style="max-width:50%" }

For more detailed information, refer to [the official SpecialK wiki](https://wiki.special-k.info/en/SpecialK/ReShade) page dedicated to ReShade integration.

{: .warning }
Do not use SpecialK in multiplayer games as it may trigger anti-cheat mechanisms, leading to potential bans.

</details>

