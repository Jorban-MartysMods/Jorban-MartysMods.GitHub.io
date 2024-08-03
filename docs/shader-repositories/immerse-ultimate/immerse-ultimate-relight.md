---
title: "ReLight"
layout: page
nav_order: 13
parent: "iMMERSE Ultimate"
grand_parent: Shader Repositories
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# iMMERSE Ultimate: ReLight

![ReLight Main Image](../images/relight-main.webp)

{: .highlight-title }
>IMPORTANT
>
>ReLight **REQUIRES** iMMERSE: Launchpad in order to function.

ReLight is a point-lighting solution for ReShade. Similar to studio lights in photography, ReLight allows you to change the lighting, and adjust for more granular changes in the mood and details of the scenes.

While you can use it for any sort of scene, use-cases prove that close-ups or photos of humanoid models are the best cases for using ReLight. However, you're allowed to see as you fit.

---

## Global Arguments

* **Ambient Intensity:** How much of the original scene lighting is kept. `1.000` being all of the ambient light from the scene, `0.000` being no ambient light from the scene.

 <div class="juxtapose" data-mode="horizontal">
 <img src="../images/relight_al_1.000.png" data-label="1.000">
 <img src="../images/relight_al_0.000.png" data-label="0.000">
 </div>

* **Shadow Tracing:** Controls if and how the lights placed in ReLight will end up casting shadows. The options to choose from are "Off," "Visability Test," and "Recursive Path Tracing."



* **Shadow Trace Quality:** Defines the quality of the shadows that are being traced. The higher the quality, the more samples per ray are being accounted for, and therefore the sharper the shadows end up being.

 <div class="juxtapose" data-mode="horizontal">
 <img src="../images/relight_stqual_high.png" data-label="High">
 <img src="../images/relight_stqual_maximum.png" data-label="Maximum">
 </div>

* **Object Thickness:** Will define how thick or thin the objects are within the scene. Thicker objects will cast darker and more prominent shadows, while thinner ones will often cast lighter and less prominent shadows. Too high and you'll create shadows that do not exist, and too low you'll be left with next to no shading.



---

## Subsurface Scattering (SSS) Arguments

* **Enable Subsurface Scattering:**

* **Quality:**

* **Saturation:**

* **Scattering Radius:**

* **Skin Hue:**

* **SSS Skin Hue:**

--- 

## Light Arguments

* **Active:** Controls if the light source is active or not.

* **Type:** Controls what type of light ("Sphere" and "Infinite") that you are using for the specific light source you're configuring.

* **Temp/Tint:** Allows the user to define the temp and tint variables of the light source.

* **Intensity:** Controls the intensity of the current light that is active.

* **Penumbra:** Penumbra is the effect of the shadow when its leaking outside from being partially hit by light. Configuring the argument allows you to adjust how soft the shading cast from the ReLight probes will be in the final image. The larger the penumbra, the softer the shadows will be come, and the larger your ReLight "Sphere" will be. The smaller the penumbra, the sharper the shadows will become, and the smaller your ReLight "Sphere" will be.

* **Infinite: Azimoth/Elevation:** Controls the direction of the Infinite Light mode based around Azimuth and Elevation.

* **Sphere: Position X Y Z:** Controls where the "Sphere" light source is positioned within the screen space. X being the horizontal axis, Y being the vertical axis, and Z being the depth axis.

---

## Debug Arguments

* **Debug Outputs:** Shows the different debug modes that ReLight provides.
  * **None:**
  * **Validation Layer (all):**
  * **Lighting:**
  * **SSS Skin Mask:**
  * **SSS Translucency:**

* **Light Overlay:** Controls when the ReLight spheres appear on screen.
  * **Disabled:**
  * **Show while GUI is open:**
  * **Show while GUI is open and on screenshots:**
  * **Show always:**

* **Light Overlay Opacity:** Controls the opacity of the ReLight spheres on screen. The value can be controlled from `0.100` to `1.000`. `1.00` being as opaque as possible, while `0.100` being as transparent/translucent as possible.

---

## Preprocessor Definitions Arguments

* **AMOUNT_OF_LIGHTS:** Controls the amount of lights that ReLight can be set up to use. By default this vaue is set to `2` however the maximum is `4`

---

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>