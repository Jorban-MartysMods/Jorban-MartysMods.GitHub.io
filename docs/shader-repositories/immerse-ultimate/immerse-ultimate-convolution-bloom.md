---
title: "Convolution Bloom"
layout: page
nav_order: 12
parent: "iMMERSE Ultimate"
grand_parent: Shader Repositories
---
<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# iMMERSE Ultimate: Convolution Bloom

<div class="juxtapose" data-mode="horizontal">
<img src="../images/convbloom_header_off.webp" data-label="Disabled">
<img src="../images/convbloom_header_on.webp" data-label="Enabled">
</div>

Convolution Bloom is an advanced high-end bloom effect based on Fast-Fourier Transform. This technique allows for the bloom to produce unique "spikes" or convolutions.

---

## General Shader Arguments

* **Bloom Padding:** Due to the nature of Fast-Fourier Transforms, the bloom often extends beyond the screen boundaries, causing artifacts at the edges. This parameter controls the padding that is given to the bloom in order to account for this.

* **Log Exposure Bias:** Description Currently Under Construction <!-- Figure out more to put here !-->

* **Log HDR Whitepoint:** Description Currently Under Construction  <!-- Figure out more to put here !-->

* **Bloom Intensity:** Adjusts the overall strength of the bloom effect. A higher intensity will make the bloom effect more pronounced. Lower intensity settings will result in a more subtle effect.

* **Bloom Radius:** Determines how far the bloom will extend outwards. Increasing the radius will make the bloom spread over a larger area, creating a more diffuse glow and a blurrier convolution spike. A smaller radius will keep the bloom effect closer to the source of brightness, resulting in a more focused glow and sharper convolution spike.

* **Bloom Hazyness:** Controls the amount of color desaturation in the bloom. A value of `1.000` preserves colors, keeping the bloom effect true to the original colors of the bright areas. A value of `0.000` results in a fully bleached look, where the bloom effect is devoid of color and appears white. Adjust this setting to achieve the desired color balance in the bloom effect.

* **Enable Debug View:**
    * **Bloom Only:** Allows the user to see only the bloom produced.
        
        ![Bloom Only Debug](../images/convbloom_bo_debug.webp)

    * **Fourier Transform of Image:** Allows the user to see the Fourier Transform used by Convolution Bloom.
        
        ![Fourier Transform Debug](../images/convbloom_fft_debug.webp)

---


## Diffraction Spikes

* **Diffraction Spike Amount:** This parameter determines how many diffraction spikes will appear around bright areas. Increasing this value will add more spikes, creating a starburst effect.

* **Diffraction Spike Rotation:** This setting allows you to rotate the diffraction spikes around the bright areas, changing their angle and direction.

* **Diffraction Spike Radius:** Determines how far the spikes extend across the image. Higher values result in longer spikes, which will stretch further from the bright areas, creating a more dramatic effect.

* **Diffraction Spike Blurryness:** Controls the sharpness of the spikes. Lower values make the spike shapes more defined and crisp, while higher values will blur the spikes, making them softer and more diffuse.

* **Diffraction Spike Phase Amount:** Adjusts the brightness of the spikes themselves. Higher values make the spikes more visible and bright, enhancing their prominence in the bloom effect. This can make the diffraction spikes stand out more against the rest of the scene.

---

## Pre-Processor Options

* **CONVOLUTION_BLOOM_MASK_PRESET:** The default option, "Diffraction Spikes" (option "0"), creates light blades from bright sources, similar to the effect of camera blades. This setting generates star-like patterns around bright areas. "Inverse Square Glow" (option "1") produces a traditional bloom effect similar to iMMERSE Pro: Solaris, resulting in a softer and more uniform glow around bright areas.

* **CONVOLUTION_BLOOM_QUALITY:** Adjusts the resolution of the Fourier kernel. Higher values (ranging from 0 to 2) yield better results with more detailed and defined bloom effects but will cost more performance to run. Lower values will reduce the quality of the bloom but can improve performance.


<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>