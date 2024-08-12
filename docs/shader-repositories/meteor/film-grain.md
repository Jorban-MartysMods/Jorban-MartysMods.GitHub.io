---
title: "Film Grain"
layout: page
nav_order: 2
parent: METEOR
grand_parent: Shader Repositories
---

# Film Grain

METEOR's Film Grain Shader is designed to add a layer of grain to your images, mimicking the look of analog film or the noise inherent in digital sensors. This effect can bring a cinematic or nostalgic feel to your visuals, depending on the settings you choose.

---

## Global Parameters

* **Film Mode:** Determines whether the grain is applied as monochrome (black and white) or in full color.
  * **Monochrome:** The grain is applied in shades of gray, similar to black-and-white film.
  * **Color:** The grain is applied in full color, simulating the look of color film or digital sensor noise.

* **Grain Type:** Allows you to pick between two different types of grain you want to simulate.
  * **Analog Film Grain:** Simulates the random, organic grain pattern typical of photographic film.
  * **Digital Sensor Noise:** Simulates the more uniform noise pattern that occurs in digital camera sensors.

* **Animate Grain:** Toggles whether the grain pattern is animated over time.

* **Intensity:** Controls the overall strength of the grain effect.

* **Noise Saturation:** UNDER CONSTRUCTION...

* **Bayer Matrix RGB Weighting:** Toggles the simulation of a Bayer matrix on digital camera sensors, where the green channel has more weight due to the sensor's design.

---

## Analog Film Grain Parameters

These parameters will only work under the Analog Film grain type:

* **Grain Size:** Adjust the size of the grain particles. Smaller values create finer grain, while larger values produce coarser, more noticeable grain.

* **Analog Film Gamma:** Adjusts the gamma curve of the grain, altering how light and dark areas of the image are affected.

* **Analog Film Shadow Emphasis:** Controls the emphasis on shadows.