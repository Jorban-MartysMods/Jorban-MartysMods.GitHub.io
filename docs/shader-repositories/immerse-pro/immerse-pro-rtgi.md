---
title: "RTGI"
layout: page
nav_order: 5
parent: "iMMERSE Pro"
grand_parent: Shader Repositories
---

# iMMERSE Pro: RTGI

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

{% slider %}
![RTGI Header](../images/rtgi_header.webp)
![RTGI Header2](../images/rtgi_header2.webp)
![RTGI Header3](../images/rtgi_header3.webp)
{% endslider %}

{: .highlight-title }
>IMPORTANT
>
>RTGI **REQUIRES** iMMERSE: Launchpad in order to function.

Raytraced Global Illumination (RTGI) is a shader within iMMERSE Pro that brings realistic lighting to your games. By using ray tracing, RTGI is able to physically simulate how light interacts with objects in order to enhance details and provide more accurate screen spaced bounce lighting through the means of global illumination and ambient occlusion.

---

## Diffuse RTGI

* **Quality:** Configures the quality of RTGI's diffuse global illumination. Higher settings cast more rays per pixel and provide more samples per ray, resulting in more stable and detailed lighting. 

     <div class="juxtapose" data-mode="horizontal">
     <img src="../images/rtgi_dq_low.webp" data-label="Low Quality">
     <img src="../images/rtgi_dq_ultra.webp" data-label="Ultra Quality">
     </div>

* **Ambient Occlusion Intensity:** Adjusts the strength of the ambient occlusion, which enhances the perception of depth and shadows in crevices and corners.

* **Bounce Lighting Intensity:** Controls the intensity of the diffuse global illumination, affecting how much indirect light bounces off surfaces and illuminates the scene.

* **Z-Thickness:** Defines the perceived thickness of objects in the scene. Setting this too high can cause visual artifacts, while too low a setting can impair shading, shadowing, and global illumination propagation. The image below shows the difference between a z-thickness that is too low, just right, and too high.

    ![RTGI ZThickness Low/Right/High](../images/rtgi_zt_comparison.webp)

---

## Specular RTGI

* **Quality:** Adjusts the quality of RTGI's specular global illumination. Higher settings increase the number of rays cast per pixel and the samples per ray, enhancing light reflections and stability. Having higher surface roughness values will often require higher quality modes in order to remove noise from the image.

     <div class="juxtapose" data-mode="horizontal">
     <img src="../images/rtgi_sq_low.webp" data-label="Low Quality">
     <img src="../images/rtgi_sq_ultra.webp" data-label="Ultra Quality">
     </div>

* **Surface Roughness:** Adjusts the roughness value for materials in the scene, with rougher surfaces diffusing more light based reflections while smoother surfaces will reflect more sharper lighting based reflections.

     <div class="juxtapose" data-mode="horizontal">
     <img src="../images/rtgi_sr_0.000.webp" data-label="0.000">
     <img src="../images/rtgi_sr_0.500.webp" data-label="0.500">
     </div>

* **Specular Lighting Intensity:** Sets the strength of the specular global illumination, impacting clarity of reflected light on shiny surfaces.

---

## Denoiser

* **Quality:** Controls the quality of the denoiser.

     <div class="juxtapose" data-mode="horizontal">
     <img src="../images/rtgi_dnq_low.webp" data-label="Low Quality">
     <img src="../images/rtgi_dnq_high.webp" data-label="High Quality">
     </div>

* **Smoothness:** Controls the smoothness of the denoiser. Lower typically means a more grainy image with higher quality shadows and GI, while higher values typically reduce the sharpness of the shading and GI in order to provide a much more coherent image. 

     <div class="juxtapose" data-mode="horizontal">
     <img src="../images/rtgi_sm_0.000.webp" data-label="0.000">
     <img src="../images/rtgi_sm_0.500.webp" data-label="0.500">
     </div>

---

## Blending Arguments

* **Ambient Level:** Modifies the overall amount of ambient light in the scene, influencing the general brightness and visibility of details. However, this will allow RTGI to increasingly add more raytraced global illumination back into the scene.

     <div class="juxtapose" data-mode="horizontal">
     <img src="../images/rtgi_al_0.000.webp" data-label="0.000">
     <img src="../images/rtgi_al_1.000.webp" data-label="1.000">
     </div>


* **Ambient Sky Intensity:** Regulates the intensity of ambient light coming from the sky, contributing to the natural illumination of the scene.

* **Fade Out Range:** Determines the distance over which RTGI propagates light, affecting how far lighting effects extend within the scene.

---

## Experimental Arguments

* **Assume sRGB Input:** Specifies whether the input to RTGI is in sRGB color space. This setting is particularly useful when playing a game in HDR or providing RTGI with HDR buffers, ensuring accurate color representation and lighting effects.

---

## Debug Arguments

* **Enable Debug View:** Provides the user with two debug views.
    * **Disabled:** Standard RTGI output.
        ![Disabled Debug](../images/rtgi_disabled_ld.webp)
    * **Validation Layer:** Debug providing visual output of Depth, Lighting, Normal Vectors, and Optical Flow
        ![Validation Layer Debug](../images/rtgi_validation_layer_ld.webp)
    * **Lighting only:** Standard Lighting Channel Debug
        ![Lighting only Debug](../images/rtgi_lighting_only_ld.webp)



<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>