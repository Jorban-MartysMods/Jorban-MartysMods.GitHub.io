---
title: Crystallis Filmgrain
layout: page
nav_order: 3
parent: Quark
grand_parent: Shader Repositories
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# Crystallis

Crystallis is a low cost physically based filmgrain, that uses quantization to simulate subpixel binaries.

---

## Arguments

* **Intensity:** Increases the intensity of the effect. Higher values make grains more pronounced.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/crystallis_filmgrain_int_low.webp" data-label="Low Intensity">
    <img src="../images/crystallis_filmgrain_int_high.webp" data-label="Max Intensity">
    </div>

* **Grain Size:** Increases the size of the film grains, resulting in a slightly blurred image.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/crystallis_filmgrain_grnsize_low.webp" data-label="Low Grain Size">
    <img src="../images/crystallis_filmgrain_grnsize_high.webp" data-label="High Grain Size">
    </div>

* **Saturation:** Controls the saturation of the image.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/crystallis_filmgrain_sat_low.webp" data-label="Low Saturation">
    <img src="../images/crystallis_filmgrain_sat_high.webp" data-label="High Saturation">
    </div>

* **Grain Saturation:** Controls the saturation of the film grains.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/crystallis_filmgrain_grnsat_low.webp" data-label="Low Grain Saturation">
    <img src="../images/crystallis_filmgrain_grnsat_high.webp" data-label="High Grain Saturation">
    </div>

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>