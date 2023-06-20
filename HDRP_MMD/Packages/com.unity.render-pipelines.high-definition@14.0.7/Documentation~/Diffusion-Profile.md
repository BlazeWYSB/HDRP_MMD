# Diffusion Profile

The High Definition Render Pipeline (HDRP) stores most [Subsurface Scattering](Subsurface-Scattering.md) settings in a __Diffusion Profile__ Asset. You can assign a __Diffusion Profile__ Asset directly to Materials that use Subsurface Scattering.

To create a Diffusion Profile, navigate to __Assets > Create > Rendering > HDRP Diffusion Profile__.
For HDRP to detect it, you must add it to the **Diffusion Profile List** of the [Diffusion Profile List Component](Override-Diffusion-Profile.md) in an active [Volume](Volumes.md).

## Properties

| Property| Description |
|:---|:---|
| **Name** | The name of the Diffusion Profile. |
| **Scattering Color** | Use the color picker to define the shape of the Diffusion Profile. It should be similar to the diffuse color of the material.<br/>This affects the Transmission color. |
| **Multiplier** | Acts as a multiplier on the scattering color to control how far light travels below the surface. Controls the effective radius of the filter.<br/>This affects the Transmission color. |
| **Max Radius** | The maximum radius of the effect you define in **Scattering Color** and **Multiplier**. The size of this value depends on the world scale. For example, when the world scale is 1, this value is in millimeters. When the world scale is 0.001, this value is in meters.<br/><br/>When the size of this radius is smaller than a pixel on the screen, HDRP doesn't apply Subsurface Scattering. |
| **Index of Refraction** | This value is controlled by the highest of the **Scattering Distance** RGB values. Use the slider to set the refractive behavior of the Material. Larger values increase the intensity of specular reflection. For example, the index of refraction of skin is about 1.4. For more example values for the index of refraction of different materials, see Pixel and Poly’s [list of indexes of refraction values](https://pixelandpoly.com/ior.html). |
| **World Scale** | Controls the scale of Unity’s world units for this Diffusion Profile. By default, HDRP assumes that 1 Unity unit is 1 meter. This property only affects the subsurface scattering pass. |



### Subsurface Scattering only

| Property| Description |
|:---|:---|
| **Texturing Mode** | Use the drop-down to select when HDRP applies the albedo of the Material.<br />&#8226; **Post-Scatter**: HDRP applies the albedo to the Material after the subsurface scattering pass. This means that the contents of the albedo texture aren't blurred. Use this mode for scanned data and photographs that already contain some blur due to subsurface scattering. <br />&#8226; **Pre- and Post-Scatter**: Albedo is partially applied twice, before and after the subsurface scattering pass. Effectively, this blurs the albedo, resulting in a softer, more natural look. |

The following image displays the effect of each Texturing Mode option on a human face model:

![](Images/profile_texturing_mode.png)



### Transmission only

| Property| Description |
|:---|:---|
| **Transmission Mode** | Use the drop-down to determine how HDRP calculates light transmission:<br />• **Thick Object**: Select this mode for geometrically thick objects. This mode uses shadow maps. Shadow maps of directional lights aren't precise enough to use to estimate thickness. Directional lights instead use the **Transmission Multiplier** setting from the [Shadows volume component](Override-Shadows.md#properties) to scale transmission.<br />• **Thin Object**: Select this mode for thin, double-sided geometry. |
| **Transmission Tint** | Specifies the tint of the translucent lighting (that's transmitted through objects). The color of transmitted light depends on the **Scattering Color**. |
| **Min-Max Thickness (mm)** | Sets the range of thickness values (in millimeters) corresponding to the [0, 1] range of texel values stored in the Thickness Map. This range corresponds to the minimum and maximum values of the Thickness Remap (mm) slider below. |
| **Thickness Remap (mm)** | Sets the range of thickness values (in millimeters) corresponding to the [0, 1] range of texel values stored in the Thickness Map. This range is displayed by the Min-Max Thickness (mm) fields above. |


The image below displays a human ear model without transmission (left) and with a configured **Thickness Remap** value (right):

![](Images/transmission_thick.png)


### Profile Previews

| Property| Description |
|:---|:---|
| **Profile Preview** | Displays the fraction of lights scattered from the source located in the center. The distance to the boundary of the image corresponds to the Max Radius. |
| **Transmission Preview** | Displays the fraction of light passing through the GameObject depending on the values from the Thickness Remap (mm).  |



## Working with different Transmission Modes

The main difference between the two __Transmission Modes__ is how they use shadows.
If you disable shadows on your Light, both __Transmission Modes__ give the same results, and derive their appearance from the __Thickness Map__ and the __Diffusion Profile__.
The results change if you enable shadows. The __Thin Object__ mode (that only evaluates shadowing once, at the front face) is likely to cause self-shadowing issues (for thick objects) that can cause the object to appear completely black. The __Thick Object__ mode derives the thickness from the shadow map, taking the largest value between the baked thickness and the shadow thickness, and uses this to evaluate the light transmittance.

Because you can't control the distances HDRP derives from the shadow map, the best way to approach __Thick Object__ is to enable shadows, then adjust the __Scattering Distance__ until the overall transmission intensity is in the desired range, and then use the __Thickness Map__ to mask any shadow mapping artifacts.
