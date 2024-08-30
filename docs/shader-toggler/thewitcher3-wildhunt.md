---
title: "The Witcher 3: Wild Hunt"
layout: page
parent: "Shader Toggler"
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# The Witcher 3: Wild Hunt

<div class="juxtapose" data-mode="horizontal">
<img src="../images/tw3_st_off.webp" data-label="Disabled">
<img src="../images/tw3_st_on.webp" data-label="Enabled">
</div>

---

## Requirements

* [Latest version of ReShade with Full Addon Support](https://reshade.me/)
* [64Bit version of ShaderToggler](https://github.com/FransBouma/ShaderToggler/releases/download/1.2.1/ShaderToggler_v121.zip)

---

## Controls

| Shaders | Keybind |
| UI | Numpad 1 |
| Cinematic Black Bars (21:9 Only) | Numpad 2 |
| Bloom | Numpad 3 |

---

## Download

| Date Used and Verified | Aug 30th 2024 |
| Game Version | 4.0.1.37654 |
| Purchase Platform | Steam |
| The Witcher 3 Wild Hunt ShaderToggler Aug-30-2024 | [Download](https://raw.githubusercontent.com/Jorban-MartysMods/jorban-martysmods.github.io/dev/docs/shader-toggler/files/The%20Witcher%203%20Wild%20Hunt%20ShaderToggler%20Aug-30-24.7z) |

---

## Known Issues

* Can't get rid of all the bloom. Causing undesired effects onscreen.

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>