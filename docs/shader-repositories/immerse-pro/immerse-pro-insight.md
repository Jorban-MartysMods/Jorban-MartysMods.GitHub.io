---
title: "Insight"
layout: page
nav_order: 10
parent: "iMMERSE Pro"
grand_parent: Shader Repositories
---

# iMMERSE Pro: Insight

iMMERSE Pro: Insight is an image analysis shader designed to help users better understand what is happening on screen. It includes features such as a magnifying glass, image histograms, and tools for checking the RGB values of individual pixels.

---

## Masks Parameters

* **Show Clipping:** Displays areas of the image where color values exceed the sRGB color space, highlighting potential chroma and luma clipping. This feature is especially useful for identifying overly intense or overexposed colors.

  * **Black/White Clipping:** Configures the clipping function to detect black and white values. When enabled, black pixels that are clipping will be displayed as white, and white pixels that are clipping will be displayed as black.

    ![B/W Clipping](../images/insight_clippingbw.png)

  * **RGB Clipping:** Configures the clipping function to check for red, green, and blue values individually. This allows for precise identification of clipping within each color channel.

    ![RGB Clipping](../images/insight_clippingrgb.png)

---

## Scope Parameters

* **Show Scope:** Displays a histogram or waveform in the bottom left corner of the screen. This is useful for balancing colors and identifying any standout color values.
* **Compact Mode:** Reduces the size of the scope display, making it less intrusive while still providing essential information.

### Scope Types

* **Luminance Histogram:** The Luminance Histogram displays the brightness levels of the image, allowing you to see the distribution of light and dark areas. This can assist in adjusting exposure and contrast.

  ![LUMA HISTOGRAM](../images/insight_scope_lumahistogram.png){: style="max-width:50%" }

* **RGB Histogram:** The RGB Histogram shows the distribution of red, green, and blue color channels across the image. It is essential for identifying color imbalances and ensuring accurate color representation.

  ![RGB HISTOGRAM](../images/insight_scope_rgbhistogram.png){: style="max-width:50%" }

* **Luminance Waveform (DX11+ and OpenGL only):** The Luminance Waveform represents the brightness levels of the image over time or across the horizontal axis. This is particularly useful for video work, ensuring consistent exposure throughout the image.

  ![LUMA WAVEFORM](../images/insight_scope_lumawaveform.png){: style="max-width:50%" }

* **RGB Waveform (DX11+ and OpenGL only):** The RGB Waveform breaks down the image into its red, green, and blue components, showing their respective brightness levels. This is crucial for balancing color across the image and ensuring no channel is dominant.

  ![RGB WAVEFORM](../images/insight_scope_rgbawaveform.png){: style="max-width:50%" }

* **RGB Waveform Parade (DX11+ and OpenGL only):** The RGB Waveform Parade displays the red, green, and blue channels separately, side by side. This allows for easy comparison of the individual channels, making it easier to correct color balance issues.

  ![RGB PARADE WAVEFORM](../images/insight_scope_waveformparade.png){: style="max-width:50%" }

---

## Inspector Parameters

* **Show Inspector:** Activates the inspector function, enabling various tools to examine pixel values in detail.
* **Use Point and Click (Middle Mouse Button):** Allows you to select a specific pixel for inspection by clicking with the middle mouse button. This locks the inspector to that pixel.
* **Use Bicubic Interpolation:** Enhances the magnifying glass function by using Bicubic sampling, which provides smoother and more accurate magnification.
* **Inspector Size:** Adjusts the size of the inspector window, allowing you to control how much of the image is displayed in detail.

### Inspector Types

* **RGB:** Displays the red, green, and blue values for the selected pixel. This is useful for analyzing the exact color composition at a specific point.

  ![RGB INSPECTOR](../images/insight_inspector_rgb.png){: style="max-width:50%" }

* **Hue Map:** Shows a map of the hue, color, and luminance values for the selected pixel. This helps in understanding the color relationships within that area.

  ![HUEMAP INSPECTOR](../images/insight_inspector_huemaps.png){: style="max-width:50%" }

* **Magnifying Glass:** Provides a zoomed-in view of the selected pixel and its surrounding area, allowing for detailed inspection of image elements.

  ![MAGNIFYING INSPECTOR](../images/insight_inspector_magnifying.png){: style="max-width:50%" }

* **FFT (DX11+ and OpenGL Only):** Performs a Fast Fourier Transform on the selected pixel and its surroundings, offering insights into the frequency components of that area.

  ![FFT INSPECTOR](../images/insight_inspector_fft.png){: style="max-width:50%" }