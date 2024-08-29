---
title: Sharpen
layout: page
nav_order: 3
parent: iMMERSE
grand_parent: Shader Repositories
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# iMMERSE: Sharpen

<div class="juxtapose" data-mode="horizontal">
 <img src="../images/sharpen_header_off.webp" data-label="Disabled">
 <img src="../images/sharpen_header_on.webp" data-label="Enabled">
</div>

iMMERSE: Sharpen is a straightforward yet effective sharpening shader that uses contrast-based sharpening to enhance image details. Since it lacks controls to prevent over-sharpening or ringing, it's important to apply it cautiously. Despite its simplicity, it performs exceptionally well at lower intensity levels compared to other sharpening shaders.

---

## Sharpen Intensity

*  **Sharpen Intensity:** Adjusts the sharpness applied to the screen. Start with a value of `0.000` and slowly increase it until you achieve a clear enhancement in game details without causing over-sharpening.

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>