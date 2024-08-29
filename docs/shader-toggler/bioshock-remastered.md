---
title: "BioShock Remastered"
layout: page
parent: "Shader Toggler"
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# BioShock Remastered

<div class="juxtapose" data-mode="horizontal">
<img src="../images/bioshockremastered_st_off.webp" data-label="Disabled">
<img src="../images/bioshockremastered_st_on.webp" data-label="Enabled">
</div>

---

## Requirements

* [Latest version of ReShade with Full Addon Support](https://reshade.me/)
* [32Bit version of ShaderToggler](https://github.com/FransBouma/ShaderToggler/releases/download/1.2.1/ShaderToggler_x86_101.zip)

---

## Controls

| Shaders | Keybind |
| UI | Numpad 1 |
| Bloom | Numpad 2 |
| 2D Fog/Smoke/Light Bleed | Numpad 3 |
| Particle Effects | Numpad 4 |
| Water Distortion | Numpad 5 |

---

## Download

| Date Used and Verified | Aug 28th 2024 |
| Game Version | 1.0 |
| Purchase Platform | Steam |
| BioShock Remastered ShaderToggler Aug-28-2024 | [Download](https://raw.githubusercontent.com/Jorban-MartysMods/jorban-martysmods.github.io/dev/docs/shader-toggler/files/BioShock%20Remastered%20ShaderToggler%20Aug-28-2024.7z) |

---

## Known Issues

* Can't get rid of the hands. Causing so ends up deleting other elements that are undesired.
 * Workaround: Use the camera (later in the game) and toggle the UI off.

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>