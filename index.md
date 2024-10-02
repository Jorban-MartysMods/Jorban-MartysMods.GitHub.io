---
title: Home
layout: home
nav_order: 1
---

<!-- Calls the necessary CSS for running the sliders on the page -->
<link rel="stylesheet" href="{{ '/assets/css/juxtapose.css' | relative_url }}">

# Marty's Mods Guide Site
{: .text-center}

<!-- Please do not ask me why I had to do this god awfulness, I have no idea. It's stupid. -->

<div class="juxtapose" data-mode="horizontal">
<img src="../assets/reshadeoff.webp" data-label="Original">
{: .text-center}

<img src="../assets/reshadeon.webp" data-label="ReShade Enabled">
{: .text-center}
</div>

---

## Welcome to our guide site!
{: .text-center}    

In order to navigate our guide site, please use the navigation bar on the left hand side of your screen. There you will find organized guides that will help you to learn and understand ReShade better, alongside other more helpful guides that can help walk you through some of the issues that plague users!
{: .text-center}

---

## What is ReShade?
{: .text-center}

ReShade is a tool that can allow you to transform your game with shaders and presets in real-time. These shaders can just about do anything from change the way colors look, or do more advanced magic such as raytraced global illumination!
{: .text-center}

---

## How can I install ReShade?
{: .text-center}

You can learn all about downloading and installing ReShade by following through our ReShade guides!
{: .text-center}

---

[Downloading and Installing ReShade](https://guides.martysmods.com/download-and-install-reshade){: .btn .btn-blue .mr-4 } 
{: .text-center}

<!-- Ending script that runs the sliders on the page -->
<script src="{{ '/assets/js/juxtapose.js' | relative_url }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Juxtapose.make();
  });
</script>