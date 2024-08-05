---
title: Marty's Mods FAQ
layout: default
nav_order: 5
---

# What Marty's Mods Provides

Everything provided under Marty's public (qUINT, iMMERSE, METEOR) and Patreon repositories (iMMERSE Pro & iMMERSE Ultimate) are shaders for the ReShadeFX shader language. Designed for and applied through the injectable application ReShade. These shaders exist to enhance, define, or drastically change the way that you play your games. Providing the tools that you need in order to cultivate the gameplay experience that you want.

Down the line, there plans to be presets that Patreon's can use, as well as vote on for upcoming relases. However, development is the main priority of the Patreon project, and development for those presets has slowed down.

## iMMERSE:

iMMERSE is the core repository of shaders from Marty's Mods and are available [on GitHub](https://github.com/martymcmodding/iMMERSE). The iMMERSE repository includes:

| **iMMERSE: Shaders** | **Description:** |
| [Launchpad](https://www.martysmods.com/launchpad/) | A shader designed to process information for both RTGI and ReLight |
| [MXAO](https://www.martysmods.com/mxao/) | A robust and powerful ambient occlusion shader that can take advantage of irradiance bitfields |
| [Sharpen](https://guides.martysmods.com/docs/shader-repositories/immerse/immerse-sharpen/) | A contrast based sharpening shader that can take depth into account |
| [Anti-Aliasing](https://guides.martysmods.com/docs/shader-repositories/immerse/immerse-smaa/) | ReShade's fastest SMAA shader avlaible |

---

## iMMERSE Pro:

iMMERSE Pro is a premium repository of shaders provided by Marty's Mods, available to [the "Raytracers" tier members from Pascal's Patreon](http://www.patreon.com/mcflypg). For $5 USD, you can access this repository, which currently features:

| **iMMERSE Pro: Shaders** | **Description:** |
| [RTGI](https://www.martysmods.com/rtgi/) | State of the art ray traced global illumination for ReShade |
| [Clarity](https://www.martysmods.com/clarity/) | A contrast based sharpening technique that closely relates to Photoshop's Clarity function but in real-time. |
| [Depth of Field](https://www.martysmods.com/physical-depth-of-field/) | A depth of field shader that aims to emulate how physical cameras work in the real world |
| [ReGrade](https://www.martysmods.com/regrade/) | An extremely powerful real-time color grading suite for ReShade |
| [Insight](https://guides.martysmods.com/docs/shader-repositories/immerse-pro/immerse-pro-insight/) | A shader to help users by creating a histogram and magnification tool in ReShade |
| [Solaris](https://www.martysmods.com/solaris/) | An absurdly robust and performant bloom shader built for ReShade |

---

## iMMERSE Ultimate:

iMMERSE Ultimate is an aditional premium repository of shaders and addons provided by Marty's Mods, available to [the "Pathtracers" tier members from Pascal's Patreon](http://www.patreon.com/mcflypg). For $10 USD, you can access this suite, which features:

| **iMMERSE Ultimate: Shaders & Addons** | **Description:** |
| [Convolution Bloom](https://www.martysmods.com/convolutionbloom/) | A robust, FFT based, bloom that can provide convolutions in real-time |
| [ReLight](https://www.martysmods.com/relight/) | A path-traced point light shader that allows you to place a point of light arbitrarily within the screenspace to illuminate whatever you want |
| [ReGrade+ (Add-On](https://guides.martysmods.com/docs/shader-repositories/immerse-ultimate/immerse-ultimate-regrade+/) | An addon and shader combo that provides a GUI to ReGrade |
| [LUT Manager (Add-On)](https://guides.martysmods.com/docs/shader-repositories/immerse-ultimate/immerse-ultimate-lut-manager/) | An addon and shader combo that allows you to organize your luts into an individual folder without needing a massive list of shaders for them |

---

# Downloading & Installing Process

{: .note }
All purchased shader repositories & archives are free to keep as long as you do not delete them. If you are in need of another copy of packages that you've paid for, please reach out to @jorban on Discord with information to your purchase and an included invoice from Patreon! ♥

---

## Downloading:

iMMERSE comes in three different tiers:

| **Repository / Tier** | **Price & Download** |
| iMMERSE | No Purchase Required - [Downloadable on GitHub or through iMMERSE Pro/Ultimate archives on Discord](https://github.com/martymcmodding/iMMERSE) |
| [iMMERSE Pro - Raytracers Tier](https://www.patreon.com/mcflypg/membership) | Purchased on Patreon for 5USD - [Downloadable on Discord only](https://discord.com/channels/494578207505514496/494599998059839498) |
| [iMMERSE Ultimate - Pathtracers Tier](https://www.patreon.com/mcflypg/membership) | Avalible on Patreon for 9USD - [Downloadable on Discord only](https://discord.com/channels/494578207505514496/494599917273350164) | 

---

## Installing Shaders:

All shader archives & repositories follow the same basic install instructions that you can find in [our guide for installing ReShade shaders manually](https://guides.martysmods.com/docs/reshade/downloading-and-installing/#downloading-the-shader-repositorys)!

If you are installing iMMERSE Pro or iMMERSE Ultimate shaders, **DO NOT** install the iMMERSE Repository manually or through the ReShade installer. Doing so will cause duplicates of the iMMERSE base shaders - as they are included with the iMMERSE Pro and Ultimate archives.

---

## Installing Add-ons:

Since Addons stray a bit from the Shader install procedure they have to be installed differently. 

1. Open the iMMERSE Ultimate archive.

    ![Image](./images/immerse_ultimate_archive.webp)

2. Afterwards, you need to open the "**Addons**" folder within the iMMERSE Ultimate archive.

    ![Image](./images/immerse_ultimate_addons.webp)

3. Once you're in the "**Addons**" folder of the iMMERSE Ultimate archive, navigate to your game folder where ReShade and the game exectuable exist. If you're unsure where your game directory is located, please see our guide on [how to locate your game's executable](https://guides.martysmods.com/docs/additional-guides/finding-your-game-executable-and-directory/) for assistance!

4. Now, simply drag and drop the addon files from the iMMERSE Ultimate archive into your game folder.

---

# Connecting Discord & Patreon

Downloading any premium Marty's Mods repository requires access to Discord and Patreon. These two have to be linked in order to work in tandom as well. Without a link, you will not be able to access to the locations provided previously! This guide will go over how to set up a Discord and Patreon link.

1. First, click the hyperlink here in order to navigate to [Patreon's 'Connected Apps' Settings.](https://www.patreon.com/settings/apps/) Once there, you will be greeted with a host of applications that you can connect to your Patreon account.

    ![Patreon Connected Apps](./images/patreon-connected-apps.webp){: style="max-width:59%" }


2. Once there, click the "**Discord**" button

    ![Patreon Discord Connected Apps Button](./images/patreon-discord-button.webp)

3. Afterwards, you'll be taken to a new portion of the settings menu where you can "**Connect**" a Discord account. Click the "**Connect**" button.

    ![Patreon Discord Connected Apps Connect Button](./images/discord-connect-button.webp){: style="max-width:39%" }

4. A new window should appear asking you to log into Discord.

    ![Patreon Discord Login](./images/patreon-discord-login.webp){: style="max-width:39%" }

5. Now that you are logged in, Discord will tell you about Patreon's connection to your Discord account, as well as ask you to authorize the connection. Click "**Authorize**" in the bottom right hand corner.

    ![Patreon Discord Authorization](./images/discord-authorize.webp){: style="max-width:80%" }

# Forcing Patreon to Provide Discord Benifits

Unfortunately, the Patreon and Discord intergration for larger servers and Patreon communities is slow. In order to force Patreon to provide you the benifits that you've paid for on our Discord (for downloading our shaders and being a part of our community) you can follow the steps provided below:

0. If you are already a member of our Discord server, it's best to leave the server manually. You can do this by going to the top of Discord on the left hand side, clicking "PGHub" and then clicking "Leave Server"

    ![PGHub Leave](./images/pghub_leave.webp)

1. First, click the hyperlink here in order to navigate to [Patreon's 'Connected Apps' Settings.](https://www.patreon.com/settings/apps/) Once there, you will be greeted with a host of applications that you can connect to your Patreon account.

    ![Patreon Connected Apps](./images/patreon-connected-apps.webp){: style="max-width:59%" }

2. Once there, click the "**Discord**" button

    ![Patreon Discord Connected Apps Button](./images/patreon-discord-button.webp)

3. Now that you're at the connected application page for Discord, click "Join Server" for the Patreon server for "Pascal Gilcher"

    ![Patreon Pascal Gilcher Join Button](./images/patreon_join_server.webp){: style="max-width:60%" }