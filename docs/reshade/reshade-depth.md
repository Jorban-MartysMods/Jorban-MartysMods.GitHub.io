---
title: ReShade Depth Buffer
layout: default
nav_order: 3
parent: ReShade
permalink: reshade-depth
---

# Depth Buffer

The depth buffer is a crucial part of any 3D game. It is a single channel image buffer which contains information about the distance of the scene to the camera, per pixel. Many ReShade effects depend on it and will not work correctly. ReShade's built in "Generic Depth" Add-on scans the game data for the (likely) correct depth buffer and forwards it to the shaders. In the following sections, you'll learn how to verify the depth settings are correct and how to fix common issues.

---

To see ReShade's depth buffer, enable the shader "DisplayDepth". This shader is included with all ReShade installs through the ReShade Installer. If you do not have it, you can manually install it from [Crosire's ReShade-Shaders repository](https://github.com/crosire/reshade-shaders/tree/slim/Shaders). The image below shows what the output **should** look like. The depth buffer is on the right side, the normal buffer (generated from depth) on the left side. 

![Depth Buffer Correct](../docs/reshade/images/gui-and-depth/correct.webp){: style="max-width:50%" }

---

# Common Depth Buffer Issues

* **Reversed Depth Buffer:** The image shows a reversed depth buffer. You can solve this by inverting the `RESHADE_DEPTH_INPUT_IS_REVERSED` preprocessor setting within the ["Global Preprocessor Definitions"](https://guides.martysmods.com/reshade-gui#edit-pre-processor-definitions) under the "Home" tab of ReShade. If it is set to 1, set it to 0 and vice versa.

  ![Depth Buffer Reversed](../docs/reshade/images/gui-and-depth/reversed.webp){: style="max-width:50%" }

* **Upside Down Depth Buffer:** The image shows an upside down depth buffer. You can solve this issue by simply inverting the `RESHADE_DEPTH_INPUT_IS_UPSIDE_DOWN` preprocessor setting within the ["Global Preprocessor Definitions"](https://guides.martysmods.com/reshade-gui#edit-pre-processor-definitions) under the "Home" tab of ReShade. If it is set to 1, set it to 0 and vice versa.

  ![Depth Buffer Upside Down](../docs/reshade/images/gui-and-depth/upsidedown.webp){: style="max-width:50%" }

* **Empty Depth Buffer:** The images show a depth buffer that is empty. This could be the result of choosing the wrong depth buffer, or a setting in-game that is blocking ReShade from accessing it. The issue is typically resolved by ensuring that MSAA is not enabled or by choosing the proper depth buffer.

  ![Depth Buffer No Data](../docs/reshade/images/gui-and-depth/depth_buffer_no_data_example.webp){: style="max-width:45%" } ![Depth Buffer No Data - Reversed](../docs/reshade/images/gui-and-depth/depth_buffer_no_data_reversed_example.webp){: style="max-width:45%" }

  Basic troubleshooting steps to find a depth buffer with data:
  * Toggle on and off "Copy depth buffer before clear operations" and "Copy depth buffer before fullscreen draw calls".
  * Select the depth buffer with the closest resolution to your game resolution.
  * Select the depth buffer with the highest amount of draw calls and verticies.

---

# Global Preprocessor Settings

* **RESHADE_DEPTH_INPUT_IS_REVERSED:** This preprocessor setting is crucial when the normals appear correctly, but the depth image itself is missing or incorrect. The setting can be either `1` or `0`. If the depth isn't displaying as expected, toggling this value often resolves the issue. Essentially, this setting flips the depth direction, correcting the depth buffer's interpretation in some games.

* **RESHADE_DEPTH_INPUT_IS_UPSIDE_DOWN:** If the depth image, as displayed by the DisplayDepth shader, is upside down, this setting is the fix. Like the previous setting, the value can only be `1` or `0`. Flipping the value corrects the orientation of the depth buffer. This is often required in games that render the depth buffer differently from what ReShade expects.

* **RESHADE_DEPTH_INPUT_IS_LOGARITHMIC:** This setting addresses issues where the depth buffer appears with numerous waves or "stripes." While not common, some games use a logarithmic depth buffer, and this setting compensates for that. The value is binary (`1` or `0`). You may need to experiment with this setting if you encounter these artifacts in the depth view.

* **RESHADE_DEPTH_INPUT_X_SCALE** and **RESHADE_DEPTH_INPUT_Y_SCALE:** These settings allow you to adjust the scaling of the depth buffer along the X and Y axes. The values you input will multiply the current depth buffer dimensions. Use the DisplayDepth shader to test and fine-tune these values before setting them globally. This is particularly useful in games where the depth buffer might be compressed or stretched.

* **RESHADE_DEPTH_LINEARIZATION_FAR_PLANE:** This setting modifies the far plane of the depth buffer's linearization process, affecting how depth is interpreted across the visible range. If the depth gradient (black to white, close to far) isn't spanning correctly, shaders relying on depth may not function as expected. Adjusting this value can help in fine-tuning the depth range, but finding the right balance may require some trial and error.

* **RESHADE_DEPTH_INPUT_X_OFFSET** and **RESHADE_DEPTH_INPUT_Y_OFFSET:** These settings allow you to offset the depth buffer in the X and Y directions, effectively moving it left/right and up/down, respectively. This is useful when the depth buffer is misaligned with the game’s visual output. Adjustments here can correct such alignment issues by nudging the depth buffer into place.

* **RESHADE_DEPTH_INPUT_X_PIXEL_OFFSET** and **RESHADE_DEPTH_INPUT_Y_PIXEL_OFFSET:** Similar to the previous offset settings, these allow for pixel-level adjustments, giving you finer control over the depth buffer’s positioning. This is particularly useful when small misalignments occur that require more precise tuning than what the regular X and Y offset settings provide. Adjusting these values moves the depth buffer incrementally, perfect for aligning it with high precision.