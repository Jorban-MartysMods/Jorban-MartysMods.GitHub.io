---
title: "NVSharpen"
layout: page
nav_order: 5
parent: METEOR
grand_parent: Shader Repositories
---

# NVSharpen

METEOR's NVSharpen is a port of Nvidia's NVSharpen filter from the NIS (Nvidia Image Scaling) Library. This shader is designed to enhance image sharpness, bringing out finer details and improving the overall clarity of the visual content. While based on Nvidia's original filter, this implementation includes some artistic liberties, offering additional flexibility and control.

---

## Parameters

* **Sharpen Intensity:** Controls the overall intensity of the sharpening effect.

* **Edge Detection Threshold:** Adjusts the sensitivity of the edge detection algorithm. A higher threshold will limit sharpening to only the most prominent edges, reducing the likelihood of noise being sharpened. A lower threshold will cause the shader to sharpen more areas of the image, which can propagate more detail but may also introduce unwanted artifacts.
