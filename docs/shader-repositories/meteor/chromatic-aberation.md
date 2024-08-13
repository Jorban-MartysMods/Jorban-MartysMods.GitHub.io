---
title: "Chromatic Aberration"
layout: page
nav_order: 1
parent: METEOR
grand_parent: Shader Repositories
---

# Chromatic Aberration

METEOR's Chromatic Aberration simulates chromatic aberration in a way that closely mimics real-world camera lenses. Unlike most chromatic aberration effects in games, which often introduce unrealistic rainbow gradients and are applied incorrectly after tonemapping, this shader ensures that the effect is applied as it should be, before tonemapping, and uses a more accurate method to simulate how light behaves through different types of lenses.

---

## Parameters

* **Lens Type:** Provides a choice between different types of lens configurations:
  * **Chromatic (single lens):** Simulates a single lens element, which tends to produce more noticeable chromatic aberration, especially towards the edges of the frame.
  * **Achromatic (doublet):** Simulates a doublet lens, which is designed to correct chromatic aberration by combining two lenses with different dispersion properties.
  * **Apochromatic (triplet):** Simulates a triplet lens, which further reduces chromatic aberration by using three lens elements, each correcting the dispersion introduced by the others.

* **Curve:** Adjusts the intensity and distribution of the chromatic aberration across the image. Negative values will curve the aberration inward, while positive values will push it outward, affecting how the colors spread from the center to the edges of the frame.

* **Amount:** Controls the overall strength of the chromatic aberration effect.

* **Quality Preset:** Changes the quality level for the chromatic aberration effect.

* **Use HDR:** Toggles reverse tonemapped HDR processing for the chromatic aberration effect.

* **Use Post Filtering:** When enabled, this setting applies additional post-processing to smooth out the chromatic aberration effect. While enabled, a layer of filtering will be applied in order to reduce harsh transitions and artifacts. When disabled, the shader will be applied without any additional filtering, which can cause a sharper and more jagged appearance.