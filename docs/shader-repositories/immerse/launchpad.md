---
title: Launchpad
layout: page
nav_order: 1
parent: iMMERSE
grand_parent: Shader Repositories
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# iMMERSE: Launchpad

iMMERSE: Launchpad is a helper shader designed to provide high quality normals and motion vectors to shaders like RTGI and ReLight.

---

## Arguments

* **Smoothed Normals:** Toggles the option for normals captured by Launchpad to be smoothed. This typically allows for shaders like RTGI and ReLight to provide much smoother lighting than they could with the original normals.

  <div class="juxtapose" data-mode="horizontal">
   <img src="../images/launchpad_normals_normal.webp" data-label="Normal">
   <img src="../images/launchpad_normals_smoothed.webp" data-label="Smoothed">
  </div>

* **Textured Normals:** Toggles the option for normals captured by Launchpad to provide extra texturing that wasn't originally captured by ReShade. This typically allows for shaders like RTGI and ReLight to provide higher quality and more detailed diffuse/specular lighting. This function requires Smoothed Normals to be enabled in Launchpad.

  <div class="juxtapose" data-mode="horizontal">
   <img src="../images/launchpad_normals_normal.webp" data-label="Normal">
   <img src="../images/launchpad_normals_textured.webp" data-label="Textured">
  </div>

* **Textured Normals Sample Radius:** Adjusts the radius (how far from the center) Launchpad will sample for Textured Normals. Setting the radius too high will often provide artifacts and potentially reduce the quality of the normals that Launchpad can provide.

  <div class="juxtapose" data-mode="horizontal">
   <img src="../images/launchpad_normals_textured.webp" data-label="0.000">
   <img src="../images/launchpad_normals_textured_sampleradius_1.000.webp" data-label="1.000">
  </div>

* **Textured Normals Intensity:** Adjusts the strength of the textured normals. Setting this too high can create exaggerated normals where they shouldn't be.

  <div class="juxtapose" data-mode="horizontal">
   <img src="../images/launchpad_normals_textured_intensity_0.100.webp" data-label="0.100">
   <img src="../images/launchpad_normals_textured_intensity_0.500.webp" data-label="0.500">
  </div>

* **Textured Normals Quality:** Ranges from 1 to 3, allowing you to control the quality of the textured normals. It's best to set this to 3 unless you need better performance.

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>