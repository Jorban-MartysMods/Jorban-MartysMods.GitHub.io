---
title: ZXpose
layout: page
nav_order: 5
parent: Quark+
grand_parent: Shader Repositories
---

<!-- Calls the CSS for the script that runs the sliders on the page -->
<!-- Why this is required, I will never fucking know because I tried everything to possibly get it to work without needing it LMAO -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# ZXpose

![ZXpose Header](../images/zxpose_header.webp)

ZXpose is a path traced film simulation shader built on multiple physically based systems, intended for use in offline renders.
It features a robust bloom simulation based on aperture diffraction, and a halation system that accounts for the individual layers found in film.

---

## Rendering

* **Render:** Begin frame accumulation, gathering information present across multiple frames to blend the samples from halation and bloom tracing.


* **Pause Render:** Temporarily stop the accumulation on the current frame. Useful for making adjustments mid render. Can also be used for a double-exposure.


* **Bloom:** Toggle the rendering of bloom samples.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_bloom_true.webp" data-label="Bloom Enabled">
    <img src="../images/zxpose_bloom_false.webp" data-label="Bloom Disabled">
    </div>

* **Bloom Sample Pattern:** Change the pattern used to sample bloom. "Edge - Center" is the fastest and highest quality option, beginning samples from the edges and moving towards the center. "Random" uses a random pattern that can introduce more noise over a shorter render time.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_bloom_pattern_edge_to_center.webp" data-label="Edge to Center (10 Seconds)">
    <img src="../images/zxpose_bloom_pattern_random.webp" data-label="Random (10 Seconds)">
    </div>

* **Bloom Samples:** Specifies the number of samples per frame for bloom tracing. Higher values reduce noise and provide a smoother bloom, while lower values are less intensive, but require longer to accumulate.

* **Bloom Convergence:** Controls the speed of bloom accumulation. Higher values will accumulate faster but with more noise, while lower values will take longer to accumulate with a cleaner result.

* **Bloom Progress Bar:** Toggles a progress bar at the top of the screen for the initial bloom pass. Once the bar completes, the bloom switches to the "random" sample pattern.

* **Halation:** Toggles the rendering of halation samples.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_halation_true.webp" data-label="Halation Enabled">
    <img src="../images/zxpose_halation_false.webp" data-label="Halation Disabled">
    </div>

* **Halation Samples:** Specifices the number of samples per frame for halation tracing. Higher values reduce noise and provide a smoother halation, while lower values are less intensive, but require longer to accumulate.

## Bloom

* **Aperture Sides:** Controls the number of sides for the bloom aperture, affecting the shape and number of spikes.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_bloom_sides_two.webp" data-label="2 Sides">
    <img src="../images/zxpose_bloom_sides_eight.webp" data-label="8 Sides">
    </div>

* **Diffraction:** Controls the density and intensity of diffraction within the bloom, creating a rainbow-like effect around bright areas. Higher values increase the prominence of this effect.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_bloom_diffraction_low.webp" data-label="Low Diffraction">
    <img src="../images/zxpose_bloom_diffraction_high.webp" data-label="High Diffraction">
    </div>

* **Deflection:** Adjusts the amount of bloom spread or deflection. Higher values create longer and more pronounced streaks, enhancing the visual impact but potentially affecting performance.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_bloom_deflection_low.webp" data-label="Low Deflection">
    <img src="../images/zxpose_bloom_deflection_high.webp" data-label="High Deflection">
    </div>

* **Threshold:** Sets the brightness level required to trigger the bloom effect. Lower values cause more areas to produce bloom, while higher values restrict the effect to the brightest spots.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_bloom_threshold_low.webp" data-label="Low Threshold">
    <img src="../images/zxpose_bloom_threshold_high.webp" data-label="High Threshold">
    </div>

* **Intensity:** Overall strength and visibility of the bloom effect. Higher values make the bloom more pronounced, while lower values create a subtler effect.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_bloom_intensity_low.webp" data-label="Low Intensity">
    <img src="../images/zxpose_bloom_intensity_high.webp" data-label="High Intensity">
    </div>

* **Brightness:** Peak brightness of the bloom effect. Higher values result in a more intense glow.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_bloom_brightness_low.webp" data-label="Low Brightness">
    <img src="../images/zxpose_bloom_brightness_high.webp" data-label="High Brightness">
    </div>

* **Aperture Rotation:** Direction of bloom streaks, allowing for rotation to match the scene's lighting or artistic preference.

## Film

* **Dust/Border Seed:** Randomises the dust and border to allow variation between shots. Avoids having the same border across multiple shots.

* **Static Film:** Toggles between static and animated film elements. Recommended for stills renders else these elements will be accumulated and lost.

## Film Grain

* **Film Grain Intensity:** Controls the strength and visibility of the film grain effect, simulating the texture of real film.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_grain_intensity_low.webp" data-label="Low Intensity">
    <img src="../images/zxpose_grain_intensity_high.webp" data-label="High Intensity">
    </div>

* **Noise Floor:** Adds noise to the image to lift the black levels, reducing contrast in dark areas and creating a more aged look.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_grain_floor_low.webp" data-label="Low Noise Floor">
    <img src="../images/zxpose_grain_floor_high.webp" data-label="High Noise Floor">
    </div>

* **Film Grain Size:** Determines the size of the grain particles, affecting the overall texture, and providing an authentic softness.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_grain_size_low.webp" data-label="Low Grain Size">
    <img src="../images/zxpose_grain_size_high.webp" data-label="High Grain Size">
    </div>

* **Film Grain Saturation:** Sets the color intensity of the grain particles.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_grain_saturation_low.webp" data-label="Low Saturation">
    <img src="../images/zxpose_grain_saturation_high.webp" data-label="High Saturation">
    </div>

## Film Dust

* **Enable Dust:** Activates the dust particle effect, adding small defocused specs to simulate an older piece of film.

* **Dust Strength:** Determines how much the dust particles darken the image, simulating the effect of dirt and grime on the film surface.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_dust_strength_low.webp" data-label="Low Strength">
    <img src="../images/zxpose_dust_strength_high.webp" data-label="High Strength">
    </div>

* **Dust Threshold:** Controls the density of dust particles in the simulation, affecting how many dust specks are visible.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_dust_threshold_low.webp" data-label="Low Threshold">
    <img src="../images/zxpose_dust_threshold_high.webp" data-label="High Threshold">
    </div>

* **Dust Size:** Sets the size of the dust particles, influencing their visibility and impact on the image.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_dust_size_low.webp" data-label="Low Size">
    <img src="../images/zxpose_dust_size_high.webp" data-label="High Size">
    </div>

* **Dust Definition:** Adjusts the sharpness and clarity of the dust particles, determining how well-defined they appear.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_dust_definition_low.webp" data-label="Low Definition">
    <img src="../images/zxpose_dust_definition_high.webp" data-label="High Definition">
    </div>

## Film Border

* **Enable Border:** Activates the film border effect, simulating the frame edges of traditional film.

* **X/Y Width:** Sets the width of the film border on the horizontal/vertical axis respectively, determining how much of the image is covered by the border.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_border_width_low.webp" data-label="Low Width">
    <img src="../images/zxpose_border_width_high.webp" data-label="High Width">
    </div>

* **Texture Amount:** Controls the influence of texture on the film border, adding fine detail to the border effect.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_border_texamount_low.webp" data-label="Low Texture Amount">
    <img src="../images/zxpose_border_texamount_high.webp" data-label="High Texture Amount">
    </div>

* **Texture Density:** Sets the density and scale of the texture on the film border, affecting its appearance and level of detail.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_border_texdensity_low.webp" data-label="Low Texture Density">
    <img src="../images/zxpose_border_texdensity_high.webp" data-label="High Texture Density">
    </div>

## Halation

* **Halation Intensity:** Strength of the halation effect, simulating light scattering within the film layers and creating a soft glow around bright areas.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_halation_intensity_low.webp" data-label="Low Intensity">
    <img src="../images/zxpose_halation_intensity_high.webp" data-label="High Intensity">
    </div>

* **Layer Position:** Distance of the red, green, and blue sensitive layers from the anti-halation layer in microns. Influences how red, green, and blue are affected by halation. Adjustments to these colours alter the average colour of the final halation.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_halation_position_default.webp" data-label="Default Layer Positions">
    <img src="../images/zxpose_halation_position_stylised.webp" data-label="Stylised Layer Positions">
    </div>

* **Layer Occlusion:** Amount of light blocked by subsequent layers, affecting scattering and the strength of the halation effect on the green and blue layers respectively.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_halation_occlusion_minimum.webp" data-label="Low Layer Occlusion">
    <img src="../images/zxpose_halation_occlusion_maximum.webp" data-label="High Layer Occlusion">
    </div>

* **Diffuse:** Ratio of diffuse light scatter. Higher values create a more diffuse, softer scatter effect, while lower values are glossier and more focused.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_halation_diffuse_low.webp" data-label="Low Diffuse">
    <img src="../images/zxpose_halation_diffuse_high.webp" data-label="High Diffuse">
    </div>

* **Gloss:** Smoothness of the gloss component of the film backing, affecting the sharpness and intensity of the halation.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_halation_glossy_low.webp" data-label="Low Glossy">
    <img src="../images/zxpose_halation_glossy_high.webp" data-label="High Glossy">
    </div>

* **Scatter Multiplier:** Multiplier for the halation spread range, allowing control over the extent and intensity of the scatter effect.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_halation_scatter_low.webp" data-label="Low Scatter Radius">
    <img src="../images/zxpose_halation_scatter_high.webp" data-label="High Scatter Radius">
    </div>

## Color Channel Settings

* **Channel Wavelength:** Peak wavelength of the selected color channel, determining the color of the light being exposed.   
Altering these values will control what color is representing the respective channel you have changed. For example, changing the red channel wavelength to be orange will cause the elements affected by the red wavelength controls to take on an orange hue, presenting a warmer scene.

    ![ZXpose Channel Wavelength Split](../images/zxpose_channels_wavelengths_split.webp)

* **Channel Width:** Bandwidth of the frequency of the selected color channel, influencing the range of colors included.
Adjusting the width values will control how much of the scene is encompassed by the respective wavelength. For example, giving the red channel a width of 0.1 will cause the scene to take on a stronger red shift, whereas setting this value to 1.0 will lead to the scene taking on the hue of the other 2 channels.

    ![ZXpose Channel Width Split](../images/zxpose_channels_widths_split.webp)

* **Channel Intensity:** Emission strength of the selected color channel, affecting the brightness of the affected colors.
As the name implies, changing this slider will control how intense the respective color channel is. For example, setting the red channel to an intensity of 2 will lead to red being the predominant color in the scene, with a high brightness. Doing the opposite will lead to reds being dark compared to other wavelengths.

    ![ZXpose Channel Brightness Split](../images/zxpose_channels_brightnesses_split.webp)

* **Q Color:** Defines the target color for Q channel exposure, allowing for additional color exposures.

* **Q Sensitivity:** Sensitivity of the Q color exposure, determining how closely colors must match the selected color.

* **Q Color Wavelength:** Peak wavelength of the Q color, determining the color of the light being exposed.

* **Q Channel Width:** Bandwidth of the frequency of the Q channel, influencing the range of colors included.

* **Q Channel Intensity:** Emission strength of the Q channel, affecting the brightness of the affected colors.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_channels_wavelengths_default.webp" data-label="No Q-Color">
    <img src="../images/zxpose_channels_q-color.webp" data-label="Neon Yellow Q-Color">
    </div>

* **Channel Debug:** Displays view of the individual channels for fine-tuning their respective parameters.

* **Color Subtraction:** Enables destructive interference of colors, which can potentially create more visually pleasing color interactions.

    <div class="juxtapose" data-mode="horizontal" style="max-height: 820px;">
    <img src="../images/zxpose_channels_wavelengths_default.webp" data-label="Off">
    <img src="../images/zxpose_channels_colorsub.webp" data-label="On">
    </div>

## Film Response

* **Film Response:** Selects the type of film response, determining the overall look and feel of the image.
    * **Color:** Default output. Provides the most ready to use grading.
        ![Color](../images/zxpose_response_color.webp)
    * **None:** Similar to color but appears washed out in comparison. May require extra tweaking of parameters to get a more appealing output.
        ![None](../images/zxpose_response_none.webp)
    * **Infrared:** Simulates infrared spectrum photography, making use of wavelengths beyond the human visible spectrum.
        ![Infrared](../images/zxpose_response_infrared.webp)
    * **B&W - Average:** Black and White response that uses the average of the scene.
        ![BW Average](../images/zxpose_response_BWavg.webp)
    * **B&W - Luminance:** Black and White response that uses the brightness of the wavelengths.
        ![BW Luminance](../images/zxpose_response_BWlum.webp)
    * **B&W - Length:** Black and White response that uses the wavelength lengths.
        ![BW Length](../images/zxpose_response_BWlen.webp)

* **Output Curve:** Selects the exposure curve for output, influencing the final appearance of the image. Different curves can create different visual styles and effects.
    * **Reinhardt:** Default output. Provides a flexible output with room for various tastes.
        ![Reinhardt](../images/zxpose_response_curve_reinhardt.webp)
    * **Tonemapped:** Similar to Reinhardt but marginally brighter by default.
        ![Tonemapped](../images/zxpose_response_curve_tonemapped.webp)
    * **Linear:** Linear curve intended for HDR.
        ![Linear](../images/zxpose_response_curve_linear.webp)
    * **S-Log 3:** Based on Sony's LOG recording profile, provides a wide dynamic range for use in post grading (Requires grading beyond ZXpose itself).
        ![SLog](../images/zxpose_response_curve_log.webp)

## Film Pigments

* **Cyan:** Adjusts the color of the cyan dye used in the film, affecting how the cyan tones are rendered.

* **Magenta:** Adjusts the color of the magenta dye used in the film, affecting how the magenta tones are rendered.

* **Yellow:** Adjusts the color of the yellow dye used in the film, affecting how the yellow tones are rendered.

* **Black:** Adjusts the color of the black dye used in the film, affecting how the black tones are rendered and the overall contrast.


<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>