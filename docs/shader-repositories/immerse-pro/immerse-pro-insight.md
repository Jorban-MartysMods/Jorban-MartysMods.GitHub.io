---
title: "Insight"
layout: page
nav_order: 10
parent: "iMMERSE Pro"
grand_parent: Shader Repositories
---

# iMMERSE Pro: Insight

iMMERSE Pro: Insight is an image analysis shader designed to help users better understand what is happening on screen. Built into the shader are functions for a magnifying glass, an image histogram, as well as a tool for checking the RGB values of each individual pixel.

---

## Masks Parameters

* **Show Clipping:** Displays areas of the image where color values exceed the sRGB color space, highlighting potential chroma and luma clipping. This is particularly useful for identifying colors that may be too intense or overexposed.
  * **Black/White Clipping:** Configures the clipping function to detect black and white values. When enabled, black pixels that are clipping will be displayed as white, and white pixels that are clipping will be displayed as black.

    ![B/W Clipping](../images/insight_clippingbw.png)

  * **RGB Clipping:** Configures the clipping function to check for red, green, and blue values individually. This allows for precise identification of clipping within each color channel.

    ![RGB Clipping](../images/insight_clippingrgb.png)

---

## Scope Parameters

* **Show Scope:** Displays a histogram/waveform in the bottom left corner of the screen. Useful for balancing colors and identifying any color values that stand out.
* **Compact Mode:** Reduces the size of the color scope to make it less intrusive while still providing necessary information.

### Scope Types

* **Luminance Histogram:** The Luminance Histogram displays the brightness levels of the image, allowing you to see the distribution of light and dark areas. This can help in adjusting exposure and contrast.

  ![LUMA HISTOGRAM](../images/insight_scope_lumahistogram.png){: style="max-width:50%" }

* **RGB Histogram:** The RGB Histogram shows the distribution of red, green, and blue color channels across the image. The histogram is essential for identifying color imbalances and ensuring accurate color representation.

  ![RGB HISTOGRAM](../images/insight_scope_rgbhistogram.png){: style="max-width:50%" }

* **Luminance Waveform (DX11+ and OpenGL only):** The Luminance Waveform represents the brightness levels of the image over time or across the horizontal axis. It's particularly useful for video work, helping to ensure consistent exposure throughout the image.

  ![LUMA WAVEFORM](../images/insight_scope_lumawaveform.png){: style="max-width:50%" }

* **RGB Waveform (DX11+ and OpenGL only):** The RGB Waveform breaks down the image into its red, green, and blue components, showing their respective brightness levels. This is crucial for balancing color across the image and ensuring no channel is dominant.

  ![RGB WAVEFORM](../images/insight_scope_rgbawaveform.png){: style="max-width:50%" }

* **RGB Waveform Parade (DX11+ and OpenGL only):** The RGB Waveform Parade displays the red, green, and blue channels separately, side by side. This allows for an easy comparison of the individual channels, making it easier to correct color balance issues.

  ![RGB PARADE WAVEFORM](../images/insight_scope_waveformparade.png){: style="max-width:50%" }

---

## Inspector Parameters

* **Show Inspector:** Activates the inspector function, allowing you to use various tools to examine pixel values in detail.
* **Use Point and Click (Middle Mouse Button):** Enables the ability to select a specific pixel for inspection by clicking with the middle mouse button. This locks the inspector to that pixel.
* **Use Bicubic Interpolation:** Changes the magnifying glass function by using Bicubic sampling, which provides smoother magnification.
* **Inspector Size:** Adjusts the size of the inspector window, allowing you to choose how much of the image is displayed in detail.

### Inspector Types

* **RGB:** Displays the red, green, and blue values for the selected pixel. Useful for analyzing the exact color composition at a specific point.

  ![RGB INSPECTOR](../images/insight_inspector_rgb.png){: style="max-width:50%" }

* **Hue Map:** Shows a map of the hue, color, and luminance values for the selected pixel. Helps in understanding the color relationships within that area.

  ![HUEMAP INSPECTOR](../images/insight_inspector_huemaps.png){: style="max-width:50%" }

* **Magnifying Glass:** Provides a zoomed-in view of the selected pixel and its surrounding area, allowing for detailed inspection of image elements.

  ![MAGNIFYING INSPECTOR](../images/insight_inspector_magnifying.png){: style="max-width:50%" }

* **FFT (DX11+ and OpenGL Only):** Performs a Fast Fourier Transform on the selected pixel and its surroundings, offering insights into the frequency components of that area.

  ![FFT INSPECTOR](../images/insight_inspector_fft.png){: style="max-width:50%" }
