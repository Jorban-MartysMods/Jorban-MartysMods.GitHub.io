---
title: Xenon Bloom
layout: page
nav_order: 2
parent: Quark
grand_parent: Shader Repositories
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# Xenon

<div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
<img src="../images/xenon_bloom_header_off.webp" data-label="Disabled">
<img src="../images/xenon_bloom_header_on.webp" data-label="Enabled">
</div>

Xenon is a highly artistic, physically-based bloom shader designed to provide dramatic lighting effects without overpowering the image.

---

## Arguments

* **Bloom Intensity:** Controls the strength of the bloom effect. Higher values make the bloom brighter and more noticeable.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/xenon_bloom_int_low.webp" data-label="Low Intensity">
    <img src="../images/xenon_bloom_int_high.webp" data-label="Max Intensity">
    </div>

* **Bloom Brightness:** Adjusts the brightness of the bloom, making the effect uniformly brighter as the value increases.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/xenon_bloom_bri_low.webp" data-label="Low Brightness">
    <img src="../images/xenon_bloom_bri_high.webp" data-label="Max Brightness">
    </div>

* **Depth Mask:** Prevents the bloom effect from extending too far, ensuring it doesn’t bleed into distant areas where it shouldn’t appear.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/xenon_bloom_dep_low.webp" data-label="No Depth Mask">
    <img src="../images/xenon_bloom_dep_high.webp" data-label="High Depth Mask">
    </div>

* **Dirt Intensity:** Controls the strength of the lens dirt effect, which simulates dirt and smudges on the camera lens, adding to the realism.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/xenon_bloom_dirt_low.webp" data-label="No Dirt Texture">
    <img src="../images/xenon_bloom_dirt_high.webp" data-label="High Dirt Texture">
    </div>



<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>