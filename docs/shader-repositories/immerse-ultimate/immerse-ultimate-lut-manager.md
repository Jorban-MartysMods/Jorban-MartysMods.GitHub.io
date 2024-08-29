---
title: "LUT Manager (Addon)"
layout: page
nav_order: 11
parent: "iMMERSE Ultimate"
grand_parent: Shader Repositories
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# iMMERSE Ultimate: LUT Manager

<div class="juxtapose" data-mode="horizontal">
<img src="../images/lutmanager_header_off.webp" data-label="Disabled">
<img src="../images/lutmanager_header_on.webp" data-label="Enabled">
</div>

LUT Manager combines a Look-Up-Table addon and shader in ReShade manage LUT textures on the fly. It allows for users to easily switch between different LUTs and mark commonly used LUTs all without having to create or utilize a shader for each individual LUT image.

---

## Downloading and Installing LUTs

LUTs, are a format of predefined color grades. In ReShade, they're often in the format of your standard PNG file. You can browse common LUT repositories [such as MLUT](https://github.com/TheGordinho/MLUT) in order to view, find, and download LUTs at your pleasure to be used in LUT Manager.

Once you have the LUTs that you desire, create a folder in the root of your game folder named "LUTs" in the game directory and place the LUT textures that you've aquired inside. If you are struggling to find the location of your root game folder, please see our guide on [how to locate your game’s executable](https://guides.martysmods.com/docs/additional-guides/finding-your-game-executable-and-directory/) for assistance!

---

## Using LUT Manager

Go to the "Add-Ons" tab within ReShade and you will see MartysMods LUT Manager. Once there, you'll see the names of all the LUTs you have installed and you can click the files to open the LUT list. After that, a LUT from the list and the colors will change in real-time.

![Pic of the LUT manager Window](../images/lutmanager_window.webp)

You can also right-click any of the LUTs you like the most and add them to a favorites list for easy-finding later.

![LUT Manager Favorites Window](../images/lutmanager_fav.webp)

---

## Shader Arguments

* **Enhanced LUT Quality:** Upsamples the LUTs in order to provide a higher quality color grading application to the current screen.
* **Show all LUTs in its current atlas side-by-side:** Provides a grid view of all the LUTs that are provided in the currently enabled atlas
 ![LUTATLAS](../images/lutmanager_atlas.webp)


<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>