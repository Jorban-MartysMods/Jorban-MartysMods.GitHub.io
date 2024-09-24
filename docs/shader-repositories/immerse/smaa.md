---
title: SMAA
layout: page
nav_order: 4
parent: iMMERSE
grand_parent: Shader Repositories
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# iMMERSE: SMAA

<div class="juxtapose" data-mode="horizontal">
 <img src="../images/smaa_header_off.webp" data-label="Disabled">
 <img src="../images/smaa_header_on.webp" data-label="Enabled">
</div>

iMMERSE: SMAA is Marty's iteration of the Subpixel Morphological Anti-Aliasing (SMAA) technique. SMAA is a fast and effective method of anti-aliasing that has become an industry standard since its initial release. It offers better performance compared to other anti-aliasing methods with similar goals, making it an excellent choice for games that only provide solutions like FXAA or lack anti-aliasing options altogether.

---

## SMAA's Debug

To better understand how SMAA is working, you can use its debug function. These debug options are available at the bottom of the shader arguments.

![SMAA Debug View](../images/smaa_debug_ui.webp)

---

## Arguments

* **Edge Detection Type:** Specifies the method used for detecting edges in SMAA. The available options include:
   * **Luminance Edge Detection:** Detects edges based on brightness differences.
   * **Color Edge Detection (Max):** Detects edges by identifying the maximum color difference.
   * **Color Edge Detection (Weighted):** Detects edges using a weighted color difference approach.
   * **Depth Edge Detection:** Detects edges based on depth information, useful for distinguishing objects in 3D space.

* **Edge Detection Threshold:** Determines the sensitivity of edge detection based on the chosen edge detection type. Lower values detect more edges, while higher values detect fewer, focusing on more prominent edges.

* **Depth Edge Detection Threshold:** Adjusts the sensitivity of depth-based edge detection. This parameter is only effective if "Predicated Thresholding" is enabled, allowing SMAA to better handle complex 3D scenes.

* **Max Search Steps:** Controls the number of steps SMAA takes to effectively smooth edges in the scene. Higher values increase the range of edge smoothing but may slightly impact performance.

* **Max Search Steps Diagonal:** Sets the number of steps SMAA uses specifically for detecting and smoothing diagonal edges, which are often more challenging to anti-alias.

* **Corner Rounding:** Adjusts the amount of anti-aliasing applied to corners in the scene. This parameter helps in smoothing sharp corners, which can otherwise appear jagged.

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>