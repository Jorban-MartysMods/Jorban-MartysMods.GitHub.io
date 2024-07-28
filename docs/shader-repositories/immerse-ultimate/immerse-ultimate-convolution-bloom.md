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
<img src="../images/convbloom_header_off.png" data-label="Disabled">
<img src="../images/convbloom_header_on.png" data-label="Enabled">
</div>

Convolution Bloom (or FFT Bloom) is an advanced high-end bloom effect based on Fast-Fourier Transform. This technique allows for the bloom to produce unique "spikes" or convolutions.

---

## Shader Arguments

* **Bloom Padding:** Due to the nature of Fast-Fourier Transforms, the bloom often extends beyond the screen boundaries, causing artifacts at the edges. This parameter controls the padding that is given to the bloom in order to account for this.

* **Log Exposure Bias and Log HDR Whitepoint:** These parameters control the light absorption and brightness levels. Increasing the exposure bias results in more bloom around colors that are further away from the max whitepoint of the scene, while a higher whitepoint intensifies the glow of objects that are providing colors that are closer to pure white.

* **Bloom Intensity:** Adjusts the overall strength of the bloom effect.

* **Bloom Radius:** Determines how far the bloom will extend outwards.

* **Bloom Hazyness:** Controls the amount of color desaturation in the bloom. A value of `0.000` preserves colors, while a value of `1.000` results in a fully bleached look.

* **Enable Debug View:** 
    * **Bloom Only:** Allows the user to see only the bloom produced by Convolution Bloom.

        ![Bloom Only Debug](../images/convbloom_bo_debug.png)

    * **Fourier Transform of Image:** Allows the user to see the Fourier Transform used by Convolution Bloom.

        ![Bloom Only Debug](../images/convbloom_fft_debug.png)

---

## Diffraction Spikes

* **Diffraction Spike Amount:** Sets the number of spikes in the bloom, akin to the number of camera blades.

* **Diffraction Spike Rotation:** Adjusts the orientation of the spikes, whether they are vertical or tilted.

* **Diffraction Spike Radius:** Determines how far the spikes extend across the image. Higher values result in longer spikes.

* **Diffraction Spike Blurryness:** Controls the sharpness of the spikes. Lower values make the spike shapes more defined.

* **Diffraction Spike Phase Amount:** Adjusts the brightness of the spikes themselves, not the light sources. Higher values make the spikes more visible and bright.

## Inverse Square Glow

* **Glow Intensity:** Controls the reach and intensity of the bloom. Higher values result in a further and brighter bloom.

* **Glare Amount:** Sets the extent of the darker edges of the bloom. Higher values create a darker outline around bloom sources.

---

## Pre-Processor Options

These settings affect the available shader options and performance:

* `CONVOLUTION_BLOOM_QUALITY`: Adjusts the resolution of the Fourier kernel. Higher values (0 to 2) yield better results but require more resources.

* `CONVOLUTION_BLOOM_MASK_PRESET`: The default option, "Diffraction Spikes," creates light blades from bright sources, similar to camera blades. "Inverse Square Glow" produces a traditional bloom effect, with light spreading to the surroundings.




<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>