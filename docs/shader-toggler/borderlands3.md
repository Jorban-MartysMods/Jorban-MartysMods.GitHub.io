---
title: "Borderlands 3"
layout: page
parent: "Shader Toggler"
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# Borderlands 3

<div class="juxtapose" data-mode="horizontal">
<img src="../images/borderlands3_st_off.webp" data-label="Disabled">
<img src="../images/borderlands3_st_on.webp" data-label="Enabled">
</div>

---

## Requirements

* [Latest version of ReShade with Full Addon Support](https://reshade.me/)
* [64Bit version of ShaderToggler](https://github.com/FransBouma/ShaderToggler/releases/download/1.2.1/ShaderToggler_v121.zip)

---

## Controls

| Shaders | Keybind |
| UI | Numpad 1 |
| Bloom | Numpad 2 |
| Fog/Smoke | Numpad 3 |
| Cell Shading Outline | Numpad 4 |

---

## Download

| Date Used and Verified | Aug 29th 2024 |
| Game Version | 1.0.26_CL_3758051 |
| Purchase Platform | Epic & Steam |
| Borderlands 3 ShaderToggler Aug-29-2024 | [Download](https://raw.githubusercontent.com/Jorban-MartysMods/jorban-martysmods.github.io/dev/docs/shader-toggler/files/Borderlands%203%20ShaderToggler%20Aug-29-24.7z) |

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>