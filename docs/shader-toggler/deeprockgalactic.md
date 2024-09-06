---
title: "Deep Rock Galactic"
layout: page
parent: "Shader Toggler"
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# Deep Rock Galactic

<div class="juxtapose" data-mode="horizontal">
<img src="../images/drg_st_off.webp" data-label="Disabled">
<img src="../images/drg_st_on.webp" data-label="Enabled">
</div>

---

## Requirements

* [Latest version of ReShade with Full Addon Support](https://reshade.me/)
* [64Bit version of ShaderToggler](https://github.com/FransBouma/ShaderToggler/releases/download/1.2.1/ShaderToggler_v121.zip)

---

## Controls

| Shaders | Keybind |
| Screen Space Reflections | Numpad 1 |
| Smoke/Fog | Numpad 2 |
| Ambient Occlusion | Numpad 3 |
| Ground Clutter/Decals | Numpad 4 |
| UI | Numpad 5 |
| Point Lights | Numpad 6 |

---

## Download

| Date Used and Verified | Sep 6th 2024 |
| Game Version | 4.27.2.0 |
| Purchase Platform | Steam |
| Deep Rock Galactic ShaderToggler SEP-06-24 | [Download](https://raw.githubusercontent.com/Jorban-MartysMods/jorban-martysmods.github.io/dev/docs/shader-toggler/files/The%20Witcher%203%20Wild%20Hunt%20ShaderToggler%20Aug-30-24.7z) |

---

## Known Issues

* Not all Ambient Occlusion could be removed.
* Removing Screen Space Reflections will remove some GI in-game.


<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>