---
title: "Film Grain"
layout: page
nav_order: 2
parent: METEOR
grand_parent: Shader Repositories
---

# Film Grain

The Film Grain Shader is designed to add a layer of grain to your images, mimicking the look of analog film or the noise inherent in digital sensors. This effect can bring a cinematic or nostalgic feel to your visuals, depending on the settings you choose. The shader offers a variety of options that let you customize the type, intensity, and behavior of the grain to match your creative vision.

# Global Parameters

* **Film Mode:** This setting determines whether the grain is applied as monochrome (black and white) or in full color.
  * **Monochrome:** The grain is applied in shades of gray, similar to black-and-white film.
  * **Color:** The grain is applied in full color, simulating the look of color film or digital sensor noise.

* **Grain Type:** Allows you to pick between two different types of grain you want to simulate.
  * **Analog Film Grain:** Simulates the random, organic grain pattern typical of photographic film.
  * **Digital Sensor Noise:** Simulates the more uniform noise pattern that occurs in digital camera sensors.

* **Animate Grain:** This toggle controls whether the grain pattern is animated over time, simulating the natural variation you would see in real film or digital noise.

* **Intensity:** This setting controls the overall strength of the grain effect. A higher value increases the visibility of the grain, making it more pronounced.

* **Noise Saturation:** Adjust the saturation of the noise, affecting how much color is present in the grain. At 0.000 the noise will be completely desaturated (gray), while at 1.000 the noise will retain its full color.

* **Bayer Matrix RGB Weighting:** This setting simulates the effect of a Bayer matrix on digital camera sensors, where the green channel has more weight due to the sensor's design.

# Analog Film Grain Parameters

These parameters will only work under the Analog Film grain type:

* **Grain Size:** Adjust the size of the grain particles. Smaller values create finer grain, while larger values produce coarser, more noticeable grain.

* **Analog Film Gamma:** This setting affects the gamma curve of the grain, altering how light and dark areas of the image are affected. Negative values will darken the grain, while positive values will lighten it, changing the overall contrast.

* **Analog Film Shadow Emphasis:** This controls the emphasis on shadows in the grain effect. Higher values will increase the visibility of grain in the shadows, adding depth and texture to darker areas of the image.