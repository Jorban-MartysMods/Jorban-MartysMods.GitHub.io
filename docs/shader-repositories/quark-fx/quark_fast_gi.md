---
title: FastGI
layout: page
nav_order: 1
parent: Quark
grand_parent: Shader Repositories
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# FastGI

<div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
<img src="../images/turbo_gi_header_off.webp" data-label="OFF">
<img src="../images/turbo_gi_header_on.webp" data-label="ON">
</div>

FastGI is a **very** lightweight [global illumination](https://en.wikipedia.org/wiki/Global_illumination) shader designed for low-end devices and some integrated GPUs (iGPUs). It provides realistic lighting effects without requiring high-end hardware.

---

## Arguments

* **GI Intensity:** Controls the intensity of the global illumination. Higher values make the overall lighting effect brighter and more pronounced.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/turbo_gi_gi_low.webp" data-label="Low Intensity">
    <img src="../images/turbo_gi_gi_high.webp" data-label="Max Intensity">
    </div>

* **AO Intensity:** Adjusts the intensity of [ambient occlusion](https://en.wikipedia.org/wiki/Ambient_occlusion), which enhances shadows in small crevices, making them look deeper and more realistic.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/turbo_gi_ao_low.webp" data-label="Low Intensity">
    <img src="../images/turbo_gi_ao_high.webp" data-label="Max Intensity">
    </div>

* **Ray Length:** Sets the maximum distance that light rays travel. Longer rays capture more light from the scene, but can be slightly more demanding on performance.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/turbo_gi_raylength_low.webp" data-label="Low Length">
    <img src="../images/turbo_gi_raylength_high.webp" data-label="High Length">
    </div>

* **Depth Dropoff:** Limits how far the light spreads to prevent it from leaking into areas it shouldn't, like foggy regions. This helps avoid unwanted light effects in those areas.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/turbo_gi_dropoff_low.webp" data-label="Low Dropoff">
    <img src="../images/turbo_gi_dropoff_high.webp" data-label="High Dropoff">
    </div>

* **Debug:** Displays only the lighting effect, separating it from the rest of the scene. This is useful for tweaking and adjusting the shader settings to get the desired look.
 * **GI:** Displays the lighting debug view.
 ![Debug GI](../images/turbo_gi_debug_gi.webp)
 * **None:** Displays the shader output applied to the image.
 ![Debug None](../images/turbo_gi_debug_none.webp)
<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>