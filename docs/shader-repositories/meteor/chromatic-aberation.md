---
title: "Chromatic Aberration"
layout: page
nav_order: 1
parent: METEOR
grand_parent: Shader Repositories
---

# Chromatic Aberration

The **METEOR: Chromatic Aberration** shader is a highly sophisticated effect that simulates chromatic aberration in a way that closely mimics real-world camera lenses. Unlike most chromatic aberration effects in games, which often introduce unrealistic rainbow gradients and are applied incorrectly after tonemapping, this shader ensures that the effect is applied as it should be, before tonemapping, and uses a more accurate method to simulate how light behaves through different types of lenses. This shader was previously known as YACA22 - *Yet Another Chromatic Aberration '22*, but it has evolved into a far more advanced tool, setting itself apart by addressing common mistakes in how chromatic aberration is typically handled in digital imagery.

## Parameters

* **Lens Type:** This setting allows you to choose between different types of lens configurations:
  * **Chromatic (single lens):** Simulates a single lens element, which tends to produce more noticeable chromatic aberration, especially towards the edges of the frame.
  * **Achromatic (doublet):** Simulates a doublet lens, which is designed to correct chromatic aberration by combining two lenses with different dispersion properties.
  * **Apochromatic (triplet):** Simulates a triplet lens, which further reduces chromatic aberration by using three lens elements, each correcting the dispersion introduced by the others.

* **Curve:** Adjusts the intensity and distribution of the chromatic aberration across the image. Negative values will curve the aberration inward, while positive values will push it outward, affecting how the colors spread from the center to the edges of the frame.

* **Amount:** Controls the overall strength of the chromatic aberration effect. A higher value increases the intensity of the color separation, making the aberration more pronounced.

* **Quality Preset:** Changes the quality level for the chromatic aberration effect.

* **Use HDR:** This toggle enables or disables the reverse tonemapped HDR processing for the chromatic aberration effect.
  * **Enabled:** The shader uses a reverse tonemapping system in order to provide proper colors based off of the original game's HDR colors.
  * **Disabled:** The shader will be applied without HDR, which may lead to a slightly different appearance, particularly in highlights.

* **Use Post Filtering:** When enabled, this setting applies additional post-processing to smooth out the chromatic aberration effect.
  * **Enabled:** Adds a layer of filtering to reduce harsh transitions and artifacts.
  * **Disabled:** The shader will be applied without additional filtering, potentially resulting in a sharper but more jagged appearance.