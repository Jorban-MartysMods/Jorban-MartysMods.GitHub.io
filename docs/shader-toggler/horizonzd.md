---
title: "Horizon: Zero Dawn"
layout: page
parent: "Shader Toggler"
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# Horizon: Zero Dawn

<div class="juxtapose" data-mode="horizontal">
<img src="../images/hzd_st_off.webp" data-label="Disabled">
<img src="../images/hzd_st_on.webp" data-label="Enabled">
</div>

---

## Requirements

* [Latest version of ReShade with Full Addon Support](https://reshade.me/)
* [64Bit version of ShaderToggler](https://github.com/FransBouma/ShaderToggler/releases/download/1.2.1/ShaderToggler_v121.zip)

---

## Controls

| Shaders | Keybind |
| UI | Numpad 1 |
| Particles | Numpad 2 |
| Smoke/Fog | Numpad 3 |
| Projected Water Caustics | Numpad 4 |
| Bloom | Numpad 5 |
| 2D Hologram | Numpad 6 |
| 2D Hologram Lighting | Numpad 7 |
| Lens Flares | Numpad 8 |

---

## Download

| Date Used and Verified | Aug 31st 2024 |
| Game Version | 1.0.11.14 |
| Purchase Platform | Steam, Epic, GOG |
| Horizon Zero Dawn ShaderToggler Aug-30-2024 | [Download](https://raw.githubusercontent.com/Jorban-MartysMods/jorban-martysmods.github.io/dev/docs/shader-toggler/files/Horizon%20Zero%20Dawn%20ShaderToggler%20Aug-31-24.7z) |

---

## Known Issues

* Not all bloom is removed. Nothing I can do about it without causing issues. 
* When disabling bloom, it will take ~15 seconds before it completely disappears
* Not all smoke/fog could be removed without destroying the game.

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>