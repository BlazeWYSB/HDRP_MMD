//
// This file was automatically generated. Please don't edit by hand. Execute Editor command [ Edit > Rendering > Generate Shader Includes ] instead
//

#ifndef LIT_CS_HLSL
#define LIT_CS_HLSL
//
// UnityEngine.Rendering.HighDefinition.Lit+MaterialFeatureFlags:  static fields
//
#define MATERIALFEATUREFLAGS_LIT_STANDARD (1)
#define MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR (2)
#define MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING (4)
#define MATERIALFEATUREFLAGS_LIT_TRANSMISSION (8)
#define MATERIALFEATUREFLAGS_LIT_ANISOTROPY (16)
#define MATERIALFEATUREFLAGS_LIT_IRIDESCENCE (32)
#define MATERIALFEATUREFLAGS_LIT_CLEAR_COAT (64)
#define MATERIALFEATUREFLAGS_LIT_NPR (128)
#define MATERIALFEATUREFLAGS_LIT_NPRFACE (256)
#define MATERIALFEATUREFLAGS_LIT_NPRHAIR (512)

//
// UnityEngine.Rendering.HighDefinition.Lit+SurfaceData:  static fields
//
#define DEBUGVIEW_LIT_SURFACEDATA_MATERIAL_FEATURES (1000)
#define DEBUGVIEW_LIT_SURFACEDATA_NPR_FEATURES (1001)
#define DEBUGVIEW_LIT_SURFACEDATA_BASE_COLOR (1002)
#define DEBUGVIEW_LIT_SURFACEDATA_SPECULAR_OCCLUSION (1003)
#define DEBUGVIEW_LIT_SURFACEDATA_NORMAL (1004)
#define DEBUGVIEW_LIT_SURFACEDATA_NORMAL_VIEW_SPACE (1005)
#define DEBUGVIEW_LIT_SURFACEDATA_SMOOTHNESS (1006)
#define DEBUGVIEW_LIT_SURFACEDATA_AMBIENT_OCCLUSION (1007)
#define DEBUGVIEW_LIT_SURFACEDATA_METALLIC (1008)
#define DEBUGVIEW_LIT_SURFACEDATA_COAT_MASK (1009)
#define DEBUGVIEW_LIT_SURFACEDATA_SPECULAR_COLOR (1010)
#define DEBUGVIEW_LIT_SURFACEDATA_MAT_CAP_COLOR (1011)
#define DEBUGVIEW_LIT_SURFACEDATA_CURVE_COLOR (1012)
#define DEBUGVIEW_LIT_SURFACEDATA_NPR_AO_COLOR (1013)
#define DEBUGVIEW_LIT_SURFACEDATA_DIFFUSION_PROFILE_HASH (1014)
#define DEBUGVIEW_LIT_SURFACEDATA_SUBSURFACE_MASK (1015)
#define DEBUGVIEW_LIT_SURFACEDATA_TRANSMISSION_MASK (1016)
#define DEBUGVIEW_LIT_SURFACEDATA_THICKNESS (1017)
#define DEBUGVIEW_LIT_SURFACEDATA_TANGENT (1018)
#define DEBUGVIEW_LIT_SURFACEDATA_ANISOTROPY (1019)
#define DEBUGVIEW_LIT_SURFACEDATA_IRIDESCENCE_LAYER_THICKNESS (1020)
#define DEBUGVIEW_LIT_SURFACEDATA_IRIDESCENCE_MASK (1021)
#define DEBUGVIEW_LIT_SURFACEDATA_GEOMETRIC_NORMAL (1022)
#define DEBUGVIEW_LIT_SURFACEDATA_GEOMETRIC_NORMAL_VIEW_SPACE (1023)
#define DEBUGVIEW_LIT_SURFACEDATA_INDEX_OF_REFRACTION (1024)
#define DEBUGVIEW_LIT_SURFACEDATA_TRANSMITTANCE_COLOR (1025)
#define DEBUGVIEW_LIT_SURFACEDATA_TRANSMITTANCE_ABSORPTION_DISTANCE (1026)
#define DEBUGVIEW_LIT_SURFACEDATA_TRANSMITTANCE_MASK (1027)

//
// UnityEngine.Rendering.HighDefinition.Lit+BSDFData:  static fields
//
#define DEBUGVIEW_LIT_BSDFDATA_MATERIAL_FEATURES (1050)
#define DEBUGVIEW_LIT_BSDFDATA_IS_DEFERRED (1051)
#define DEBUGVIEW_LIT_BSDFDATA_DIFFUSE_COLOR (1052)
#define DEBUGVIEW_LIT_BSDFDATA_FRESNEL0 (1053)
#define DEBUGVIEW_LIT_BSDFDATA_AMBIENT_OCCLUSION (1054)
#define DEBUGVIEW_LIT_BSDFDATA_SPECULAR_OCCLUSION (1055)
#define DEBUGVIEW_LIT_BSDFDATA_NORMAL_WS (1056)
#define DEBUGVIEW_LIT_BSDFDATA_NORMAL_VIEW_SPACE (1057)
#define DEBUGVIEW_LIT_BSDFDATA_PERCEPTUAL_ROUGHNESS (1058)
#define DEBUGVIEW_LIT_BSDFDATA_COAT_MASK (1059)
#define DEBUGVIEW_LIT_BSDFDATA_NPR_AO_COLOR (1060)
#define DEBUGVIEW_LIT_BSDFDATA_DIFFUSION_PROFILE_INDEX (1061)
#define DEBUGVIEW_LIT_BSDFDATA_SUBSURFACE_MASK (1062)
#define DEBUGVIEW_LIT_BSDFDATA_THICKNESS (1063)
#define DEBUGVIEW_LIT_BSDFDATA_USE_THICK_OBJECT_MODE (1064)
#define DEBUGVIEW_LIT_BSDFDATA_TRANSMITTANCE (1065)
#define DEBUGVIEW_LIT_BSDFDATA_TANGENT_WS (1066)
#define DEBUGVIEW_LIT_BSDFDATA_BITANGENT_WS (1067)
#define DEBUGVIEW_LIT_BSDFDATA_ROUGHNESS_T (1068)
#define DEBUGVIEW_LIT_BSDFDATA_ROUGHNESS_B (1069)
#define DEBUGVIEW_LIT_BSDFDATA_ANISOTROPY (1070)
#define DEBUGVIEW_LIT_BSDFDATA_IRIDESCENCE_THICKNESS (1071)
#define DEBUGVIEW_LIT_BSDFDATA_IRIDESCENCE_MASK (1072)
#define DEBUGVIEW_LIT_BSDFDATA_COAT_ROUGHNESS (1073)
#define DEBUGVIEW_LIT_BSDFDATA_GEOMETRIC_NORMAL (1074)
#define DEBUGVIEW_LIT_BSDFDATA_GEOMETRIC_NORMAL_VIEW_SPACE (1075)
#define DEBUGVIEW_LIT_BSDFDATA_IOR (1076)
#define DEBUGVIEW_LIT_BSDFDATA_ABSORPTION_COEFFICIENT (1077)
#define DEBUGVIEW_LIT_BSDFDATA_TRANSMITTANCE_MASK (1078)

// Generated from UnityEngine.Rendering.HighDefinition.Lit+SurfaceData
// PackingRules = Exact
struct SurfaceData
{
    uint materialFeatures;
    uint nprFeatures;
    real3 baseColor;
    real specularOcclusion;
    float3 normalWS;
    real perceptualSmoothness;
    real ambientOcclusion;
    real metallic;
    real coatMask;
    real3 specularColor;
    real3 matCapColor;
    real curveColor;
    real3 ilmColor;
    uint diffusionProfileHash;
    real subsurfaceMask;
    real transmissionMask;
    real thickness;
    float3 tangentWS;
    real anisotropy;
    real iridescenceThickness;
    real iridescenceMask;
    real3 geomNormalWS;
    real ior;
    real3 transmittanceColor;
    real atDistance;
    real transmittanceMask;
};

// Generated from UnityEngine.Rendering.HighDefinition.Lit+BSDFData
// PackingRules = Exact
struct BSDFData
{
    uint materialFeatures;
    uint isDeferred;
    real3 diffuseColor;
    real3 fresnel0;
    real ambientOcclusion;
    real specularOcclusion;
    float3 normalWS;
    real perceptualRoughness;
    real coatMask;
    real3 ilmColor;
    uint diffusionProfileIndex;
    real subsurfaceMask;
    real thickness;
    bool useThickObjectMode;
    real3 transmittance;
    float3 tangentWS;
    float3 bitangentWS;
    real roughnessT;
    real roughnessB;
    real anisotropy;
    real iridescenceThickness;
    real iridescenceMask;
    real coatRoughness;
    real3 geomNormalWS;
    real ior;
    real3 absorptionCoefficient;
    real transmittanceMask;
};

//
// Debug functions
//
void GetGeneratedSurfaceDataDebug(uint paramId, SurfaceData surfacedata, inout float3 result, inout bool needLinearToSRGB)
{
    switch (paramId)
    {
        case DEBUGVIEW_LIT_SURFACEDATA_MATERIAL_FEATURES:
            result = GetIndexColor(surfacedata.materialFeatures);
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_NPR_FEATURES:
            result = GetIndexColor(surfacedata.nprFeatures);
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_BASE_COLOR:
            result = surfacedata.baseColor;
            needLinearToSRGB = true;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_SPECULAR_OCCLUSION:
            result = surfacedata.specularOcclusion.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_NORMAL:
            result = IsNormalized(surfacedata.normalWS)? surfacedata.normalWS * 0.5 + 0.5 : float3(1.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_NORMAL_VIEW_SPACE:
            result = IsNormalized(surfacedata.normalWS)? surfacedata.normalWS * 0.5 + 0.5 : float3(1.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_SMOOTHNESS:
            result = surfacedata.perceptualSmoothness.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_AMBIENT_OCCLUSION:
            result = surfacedata.ambientOcclusion.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_METALLIC:
            result = surfacedata.metallic.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_COAT_MASK:
            result = surfacedata.coatMask.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_SPECULAR_COLOR:
            result = surfacedata.specularColor;
            needLinearToSRGB = true;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_MAT_CAP_COLOR:
            result = surfacedata.matCapColor;
            needLinearToSRGB = true;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_CURVE_COLOR:
            result = surfacedata.curveColor.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_NPR_AO_COLOR:
            result = surfacedata.ilmColor;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_DIFFUSION_PROFILE_HASH:
            result = GetIndexColor(surfacedata.diffusionProfileHash);
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_SUBSURFACE_MASK:
            result = surfacedata.subsurfaceMask.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_TRANSMISSION_MASK:
            result = surfacedata.transmissionMask.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_THICKNESS:
            result = surfacedata.thickness.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_TANGENT:
            result = surfacedata.tangentWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_ANISOTROPY:
            result = surfacedata.anisotropy.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_IRIDESCENCE_LAYER_THICKNESS:
            result = surfacedata.iridescenceThickness.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_IRIDESCENCE_MASK:
            result = surfacedata.iridescenceMask.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_GEOMETRIC_NORMAL:
            result = IsNormalized(surfacedata.geomNormalWS)? surfacedata.geomNormalWS * 0.5 + 0.5 : float3(1.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_GEOMETRIC_NORMAL_VIEW_SPACE:
            result = IsNormalized(surfacedata.geomNormalWS)? surfacedata.geomNormalWS * 0.5 + 0.5 : float3(1.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_INDEX_OF_REFRACTION:
            result = surfacedata.ior.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_TRANSMITTANCE_COLOR:
            result = surfacedata.transmittanceColor;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_TRANSMITTANCE_ABSORPTION_DISTANCE:
            result = surfacedata.atDistance.xxx;
            break;
        case DEBUGVIEW_LIT_SURFACEDATA_TRANSMITTANCE_MASK:
            result = surfacedata.transmittanceMask.xxx;
            break;
    }
}

//
// Debug functions
//
void GetGeneratedBSDFDataDebug(uint paramId, BSDFData bsdfdata, inout float3 result, inout bool needLinearToSRGB)
{
    switch (paramId)
    {
        case DEBUGVIEW_LIT_BSDFDATA_MATERIAL_FEATURES:
            result = GetIndexColor(bsdfdata.materialFeatures);
            break;
        case DEBUGVIEW_LIT_BSDFDATA_IS_DEFERRED:
            result = GetIndexColor(bsdfdata.isDeferred);
            break;
        case DEBUGVIEW_LIT_BSDFDATA_DIFFUSE_COLOR:
            result = bsdfdata.diffuseColor;
            needLinearToSRGB = true;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_FRESNEL0:
            result = bsdfdata.fresnel0;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_AMBIENT_OCCLUSION:
            result = bsdfdata.ambientOcclusion.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_SPECULAR_OCCLUSION:
            result = bsdfdata.specularOcclusion.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_NORMAL_WS:
            result = IsNormalized(bsdfdata.normalWS)? bsdfdata.normalWS * 0.5 + 0.5 : float3(1.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_LIT_BSDFDATA_NORMAL_VIEW_SPACE:
            result = IsNormalized(bsdfdata.normalWS)? bsdfdata.normalWS * 0.5 + 0.5 : float3(1.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_LIT_BSDFDATA_PERCEPTUAL_ROUGHNESS:
            result = bsdfdata.perceptualRoughness.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_COAT_MASK:
            result = bsdfdata.coatMask.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_NPR_AO_COLOR:
            result = bsdfdata.ilmColor;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_DIFFUSION_PROFILE_INDEX:
            result = GetIndexColor(bsdfdata.diffusionProfileIndex);
            break;
        case DEBUGVIEW_LIT_BSDFDATA_SUBSURFACE_MASK:
            result = bsdfdata.subsurfaceMask.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_THICKNESS:
            result = bsdfdata.thickness.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_USE_THICK_OBJECT_MODE:
            result = (bsdfdata.useThickObjectMode) ? float3(1.0, 1.0, 1.0) : float3(0.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_LIT_BSDFDATA_TRANSMITTANCE:
            result = bsdfdata.transmittance;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_TANGENT_WS:
            result = bsdfdata.tangentWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_BITANGENT_WS:
            result = bsdfdata.bitangentWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_ROUGHNESS_T:
            result = bsdfdata.roughnessT.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_ROUGHNESS_B:
            result = bsdfdata.roughnessB.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_ANISOTROPY:
            result = bsdfdata.anisotropy.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_IRIDESCENCE_THICKNESS:
            result = bsdfdata.iridescenceThickness.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_IRIDESCENCE_MASK:
            result = bsdfdata.iridescenceMask.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_COAT_ROUGHNESS:
            result = bsdfdata.coatRoughness.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_GEOMETRIC_NORMAL:
            result = IsNormalized(bsdfdata.geomNormalWS)? bsdfdata.geomNormalWS * 0.5 + 0.5 : float3(1.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_LIT_BSDFDATA_GEOMETRIC_NORMAL_VIEW_SPACE:
            result = IsNormalized(bsdfdata.geomNormalWS)? bsdfdata.geomNormalWS * 0.5 + 0.5 : float3(1.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_LIT_BSDFDATA_IOR:
            result = bsdfdata.ior.xxx;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_ABSORPTION_COEFFICIENT:
            result = bsdfdata.absorptionCoefficient;
            break;
        case DEBUGVIEW_LIT_BSDFDATA_TRANSMITTANCE_MASK:
            result = bsdfdata.transmittanceMask.xxx;
            break;
    }
}


#endif
