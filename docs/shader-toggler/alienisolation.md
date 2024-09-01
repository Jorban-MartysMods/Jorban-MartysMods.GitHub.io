---
title: "Alien Isolation"
layout: page
parent: "Shader Toggler"
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# Horizon: Zero Dawn

<div class="juxtapose" data-mode="horizontal">
<img src="../images/ai_st_off.webp" data-label="Disabled">
<img src="../images/ai_st_on.webp" data-label="Enabled">
</div>

---

## Requirements

* [Latest version of ReShade with Full Addon Support](https://reshade.me/)
* [32Bit version of ShaderToggler](https://github.com/FransBouma/ShaderToggler/releases/download/1.2.1/ShaderToggler_x86_101.zip)

---

## Controls

| Shaders | Keybind |
| UI | Numpad 1 |
| Ambient Lighting | Numpad 2 |
| Lens Flare | Numpad 3 |
| Smoke & Fog | Numpad 4 |

---

## Download

| Date Used and Verified | Oct 1st 2024 |
| Game Version | Unknown |
| Purchase Platform | Steam |
| Alien Isolation ShaderToggler Oct-01-24 | [Download](https://raw.githubusercontent.com/Jorban-MartysMods/jorban-martysmods.github.io/dev/docs/shader-toggler/files/Alien%20Isolation%20ShaderToggler%20Oct-01-24.7z) |

---

## Known Issues

* Not all bloom is removed. Nothing I can do about it without causing issues. 
* When disabling bloom, it will take ~15 seconds before it completely disappears
* Not all smoke/fog could be removed without destroying the game.
* All lens flares could not be removed.
* Lens Distortion could not be removed.
 * Use [Alias Isolation](https://github.com/RyanJGray/aliasIsolation) if you want to remove Lens Distortion.

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>