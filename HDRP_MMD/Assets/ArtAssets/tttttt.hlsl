struct PS_INPUT
{
    float4 dx_Position : SV_Position;
    float4 gl_Position : TEXCOORD6;
    float4 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float v5 : TEXCOORD5;
};

#pragma warning( disable: 3556 3571 )
bool bool_ctor(bool x0)
{
    return bool(x0);
}
float2 vec2_ctor(float x0)
{
    return float2(x0, x0);
}
float2 vec2_ctor(float x0, float x1)
{
    return float2(x0, x1);
}
float3 vec3_ctor(float x0)
{
    return float3(x0, x0, x0);
}
float3 vec3_ctor(float x0, float x1, float x2)
{
    return float3(x0, x1, x2);
}
float3 vec3_ctor(float3 x0)
{
    return float3(x0);
}
float4 vec4_ctor(float x0)
{
    return float4(x0, x0, x0, x0);
}
float4 vec4_ctor(float x0, float x1, float x2, float x3)
{
    return float4(x0, x1, x2, x3);
}
// Uniforms

uniform float3 __WorldSpaceCameraPos : register(c0);
uniform float3 __XGlobalCharSpecularColor : register(c1);
uniform float __XGlobalCharacterNoShadowBloomAdd : register(c2);
uniform float3 __XGlobalCharacterNoShadowColor : register(c3);
uniform float3 __XGlobalCharacterOneShadowColor : register(c4);
uniform float3 __XGlobalCharacterTwoShadowColor : register(c5);
uniform float3 __XGlobalCharacterRimColor : register(c6);
uniform float __XGlobalCharacterShadowIntensity : register(c7);
uniform float3 __XGlobalCharacterSkinNoShadowColor : register(c8);
uniform float3 __XGlobalCharacterSkinOneShadowColor : register(c9);
uniform float3 __XGlobalCharacterSkinTwoShadowColor : register(c10);
uniform float3 __XGlobalCharacterSkinRimColor : register(c11);
uniform float __XGlobalCharacterSkinShadowIntensity : register(c12);
uniform float3 __XGlobalCharacterLightColor : register(c13);
uniform float3 __XGlobalCharacterLightDir : register(c14);
uniform float3 __XGlobalCharacterAmbientColor : register(c15);
uniform float __BloomFactor : register(c16);
uniform float __EmissionIntensity : register(c17);
uniform float3 __EmissionColor : register(c18);
uniform float __EmissionBloomFactor : register(c19);
uniform float __XPostBloom : register(c20);
uniform float4 __BloomModColor : register(c21);
uniform float __BloomModIntensity : register(c22);
uniform float __BumpScale : register(c23);
uniform float4 __BumpMap_ST : register(c24);
uniform float4 __LinearFogColor : register(c25);
uniform float __CharDistanceFogIntensity : register(c26);
uniform float _IF_CUBEMAP_ROTATION : register(c27);
uniform float _IF_INVERT_SPECULAR : register(c28);
uniform float _IF_RIM : register(c29);
uniform float _IF_DISABLE_DISTANCE_RIM : register(c30);
uniform float _IF_SKIN : register(c31);
uniform float _IF_GI_SKIN : register(c32);
uniform float _IF_SMOOTH_SHADOW : register(c33);
uniform float _IF_XSPECULAR_BLOOM : register(c34);
uniform float _IF_SPECULAR_SHADOW_INTENSITY : register(c35);
uniform float _IF_MAIN_ALPHA_FOR_SHADOWMASK : register(c36);
uniform float4 __AlbedoColor : register(c37);
uniform float __AlbedoColorIntensity : register(c38);
uniform float4 _hlslcc_mtx4x4_XCubemapRot[4] : register(c39);
uniform float __SpecularShadowIntensity : register(c43);
uniform float __GlobalEnableDistanceRim : register(c44);
uniform float3 __GlobalRimLightDir : register(c45);
uniform float4 __MainTex_ST : register(c46);
uniform float4 __MaskTex_ST : register(c47);
uniform float4 __GlobalTint : register(c48);
uniform float __FirstShadow : register(c49);
uniform float __SecondShadow : register(c50);
uniform float3 __FirstShadowColor : register(c51);
uniform float3 __SecondShadowColor : register(c52);
uniform float __SpecularShiness : register(c53);
uniform float __SpecularIntensity : register(c54);
uniform float3 __SpecularColor : register(c55);
uniform float __SpecularBloomIntensity : register(c56);
uniform float __SpecularBloomThreshold : register(c57);
uniform float __SpecularSmoothFactor : register(c58);
uniform float3 __NoShadowColor : register(c59);
uniform float __SmoothFactor : register(c60);
uniform float __SkinIntensity : register(c61);
uniform float __SkinRate : register(c62);
uniform float3 __SkinColor : register(c63);
uniform float __RimMax : register(c64);
uniform float __RimMin : register(c65);
uniform float __RimIntensity : register(c66);
uniform float3 __RimColor : register(c67);
uniform float __RimThreshold : register(c68);
uniform float __RimDistanceMin : register(c69);
uniform float __RimDistanceMax : register(c70);
uniform float4 __EffectRimColor : register(c71);
uniform float __EffectRimFading : register(c72);
uniform float __EffectRimTransparency : register(c73);
uniform float __GrayIntensity : register(c74);
uniform float4 __PBRMask_ST : register(c75);
uniform float __MetallicMapScale : register(c76);
uniform float __RoughnessMapScale : register(c77);
uniform float __AOScale : register(c78);
uniform float __PBRRate : register(c79);
uniform float4 __DirectLightColor : register(c80);
uniform float4 __IndirectLightColor : register(c81);
uniform float __IndirectLightIntensity : register(c82);
uniform float4 __PBRSpecularColor : register(c83);
uniform float __PBRSpecularIntensity : register(c84);
uniform float4 __CubemapColor : register(c85);
uniform float __CubemapIntensity : register(c86);
static const uint __BumpMap = 0;
static const uint __MainTex = 1;
static const uint __PBRMask = 2;
static const uint __MaskTex = 3;
static const uint __SkinRamp = 4;
uniform Texture2D<float4> textures2D[5] : register(t0);
uniform SamplerState samplers2D[5] : register(s0);
static const uint __CubeMap = 5;
static const uint textureIndexOffsetCube = 5;
static const uint samplerIndexOffsetCube = 5;
uniform TextureCube<float4> texturesCube[1] : register(t5);
uniform SamplerState samplersCube[1] : register(s5);
#ifdef ANGLE_ENABLE_LOOP_FLATTEN
#define LOOP [loop]
#define FLATTEN [flatten]
#else
#define LOOP
#define FLATTEN
#endif

#define ATOMIC_COUNTER_ARRAY_STRIDE 4

// Varyings
static float4 _vs_TEXCOORD0 = { 0, 0, 0, 0 };
static float4 _vs_TEXCOORD1 = { 0, 0, 0, 0 };
static float4 _vs_TEXCOORD2 = { 0, 0, 0, 0 };
static float4 _vs_TEXCOORD3 = { 0, 0, 0, 0 };
static float3 _vs_TEXCOORD5 = { 0, 0, 0 };
static float _vs_TEXCOORD6 = { 0 };

static float4 out_SV_Target0 = { 0, 0, 0, 0 };

cbuffer DriverConstants : register(b1)
{
    struct SamplerMetadata
    {
        int baseLevel;
        int wrapModes;
        int2 padding;
        int4 intBorderColor;
    };
    SamplerMetadatasamplerMetadata[6] : packoffset(c5);
};

float4 gl_texture2D(uint samplerIndex, float2 t)
{
    return textures2D[samplerIndex].Sample(samplers2D[samplerIndex], float2(t.x, t.y));
}

float4 gl_textureCubeLod(uint samplerIndex, float3 t, float lod)
{
    const uint textureIndex = samplerIndex - textureIndexOffsetCube;
    const uint samplerArrayIndex = samplerIndex - samplerIndexOffsetCube;
    return texturesCube[textureIndex].SampleLevel(samplersCube[samplerArrayIndex], float3(t.x, t.y, t.z), lod);
}

static float3 _u_xlat0 = { 0, 0, 0 };
static float4 _u_xlat16_0 = { 0, 0, 0, 0 };
static float3 _u_xlat1 = { 0, 0, 0 };
static float4 _u_xlat16_1 = { 0, 0, 0, 0 };
static float3 _u_xlat2 = { 0, 0, 0 };
static float3 _u_xlat3 = { 0, 0, 0 };
static bool3 _u_xlatb3 = { 0, 0, 0 };
static float2 _u_xlat4 = { 0, 0 };
static float4 _main_albedo= { 0, 0, 0, 0 };
static bool3 _u_xlatb4 = { 0, 0, 0 };
static float3 _u_xlat16_5 = { 0, 0, 0 };
static float3 _u_xlat6 = { 0, 0, 0 };
static float4 _color_albedo= { 0, 0, 0, 0 };
static float4 _u_xlat16_7 = { 0, 0, 0, 0 };
static float3 _pbr_Metal_Rough = { 0, 0, 0 };
static float3 _u_xlat16_9 = { 0, 0, 0 };
static float3 _u_xlat16_10 = { 0, 0, 0 };
static float3 _u_xlat16_11 = { 0, 0, 0 };
static float _u_xlat12 = { 0 };
static bool _u_xlatb12 = { 0 };
static float3 _u_xlat16_13 = { 0, 0, 0 };
static float3 _u_xlat16_14 = { 0, 0, 0 };
static float2 _u_xlat16_15 = { 0, 0 };
static float3 _u_xlat16 = { 0, 0, 0 };
static bool _u_xlatb16 = { 0 };
static float _u_xlat18 = { 0 };
static float3 _u_xlat16_18 = { 0, 0, 0 };
static float3 _u_xlat16_21 = { 0, 0, 0 };
static float3 _u_xlat16_24 = { 0, 0, 0 };
static float _u_xlat16_25 = { 0 };
static float3 _u_xlat28 = { 0, 0, 0 };
static float _u_xlat32 = { 0 };
static float2 _u_xlat34 = { 0, 0 };
static float _u_xlat16_40 = { 0 };
static float _u_xlat48 = { 0 };
static bool _u_xlatb48 = { 0 };
static float _u_xlat49 = { 0 };
static float _u_xlat50 = { 0 };
static float _u_xlat16_51 = { 0 };
static float _u_xlat16_53 = { 0 };
static float _u_xlat16_54 = { 0 };
static float _u_xlat16_56 = { 0 };
static float _u_xlat16_57 = { 0 };
static float _u_xlat16_58 = { 0 };
static float _u_xlat16_59 = { 0 };
static float _u_xlat16_61 = { 0 };
struct PS_OUTPUT
{
    float4 out_SV_Target0 : SV_TARGET0;
};

PS_OUTPUT generateOutput()
{
    PS_OUTPUT output;
    output.out_SV_Target0 = out_SV_Target0;
    return output;
}


PS_OUTPUT main(PS_INPUT input)
{
    _vs_TEXCOORD0 = input.v0;
    _vs_TEXCOORD1 = input.v1;
    _vs_TEXCOORD2 = input.v2;
    _vs_TEXCOORD3 = input.v3;
    _vs_TEXCOORD5 = input.v4.xyz;
    _vs_TEXCOORD6 = input.v5.x;

    (_u_xlat0.xy = ((_vs_TEXCOORD0.xy * __BumpMap_ST.xy) + __BumpMap_ST.zw));
    (_u_xlat16_0.xyz = gl_texture2D(__BumpMap, _u_xlat0.xy).xyz);
    (_u_xlat0.xyz = ((_u_xlat16_0.xyz * float3(2.0, 2.0, 2.0)) + float3(-1.0, -1.0, -1.0)));
    (_u_xlat0.xy = (_u_xlat0.xy * vec2_ctor(__BumpScale)));
    (_u_xlat1.x = dot(_vs_TEXCOORD1.xyz, _u_xlat0.xyz));
    (_u_xlat1.y = dot(_vs_TEXCOORD2.xyz, _u_xlat0.xyz));
    (_u_xlat1.z = dot(_vs_TEXCOORD3.xyz, _u_xlat0.xyz));
    (_u_xlat0.x = dot(_u_xlat1.xyz, _u_xlat1.xyz));
    (_u_xlat0.x = rsqrt(_u_xlat0.x));
    (_u_xlat0.xyz = (_u_xlat0.xxx * _u_xlat1.xyz));
    (_u_xlat1.x = _vs_TEXCOORD1.w);
    (_u_xlat1.y = _vs_TEXCOORD2.w);
    (_u_xlat1.z = _vs_TEXCOORD3.w);
    (_u_xlat2.xyz = ((-_u_xlat1.xyz) + __WorldSpaceCameraPos.xyz));
    (_u_xlat48 = dot(_u_xlat2.xyz, _u_xlat2.xyz));
    (_u_xlat48 = rsqrt(_u_xlat48));
    (_u_xlat3.xyz = (vec3_ctor(_u_xlat48) * _u_xlat2.xyz));
    (_u_xlat4.xy = ((_vs_TEXCOORD0.xy * __MainTex_ST.xy) + __MainTex_ST.zw));
    (_main_albedo= gl_texture2D(__MainTex, _u_xlat4.xy));
    (_u_xlat16_5.x = ((-_main_albedo.w) + 1.0));
    (_u_xlat16_5.x = ((_IF_MAIN_ALPHA_FOR_SHADOWMASK * _u_xlat16_5.x) + _main_albedo.w));
    (_color_albedo= (__AlbedoColor * vec4_ctor(__AlbedoColorIntensity)));
    (_u_xlat16_21.xyz = (_main_albedo.xyz * _color_albedo.xyz));
    (_u_xlat16_5.x = (_u_xlat16_5.x * _color_albedo.w));
    (_u_xlat49 = dot(_u_xlat0.xyz, __XGlobalCharacterLightDir.xyz));
    (_u_xlat50 = _u_xlat49);
    (_u_xlat50 = clamp(_u_xlat50, 0.0, 1.0));
    (_u_xlat16_51 = dot(_u_xlat0.xyz, _u_xlat3.xyz));
    (_u_xlat16_54 = _u_xlat16_51);
    (_u_xlat16_54 = clamp(_u_xlat16_54, 0.0, 1.0));
    (_u_xlat2.xyz = ((_u_xlat2.xyz * vec3_ctor(_u_xlat48)) + __XGlobalCharacterLightDir.xyz));
    (_u_xlat48 = dot(_u_xlat2.xyz, _u_xlat2.xyz));
    (_u_xlat48 = rsqrt(_u_xlat48));
    (_u_xlat2.xyz = (vec3_ctor(_u_xlat48) * _u_xlat2.xyz));
    (_u_xlat48 = dot(_u_xlat0.xyz, _u_xlat2.xyz));
    (_u_xlat48 = clamp(_u_xlat48, 0.0, 1.0));
    (_u_xlat2.xy = ((_vs_TEXCOORD0.xy * __PBRMask_ST.xy) + __PBRMask_ST.zw));
    (_u_xlat16_7 = gl_texture2D(__PBRMask, _u_xlat2.xy));
    (_pbr_Metal_Rough.xy = (_u_xlat16_7.yx * vec2_ctor(__MetallicMapScale, __RoughnessMapScale)));
    (_u_xlat16_40 = (_u_xlat16_7.z + -1.0));
    (_u_xlat16_40 = ((__AOScale * _u_xlat16_40) + 1.0));
    (_u_xlat16_56 = (_u_xlat16_7.w * __PBRRate));
    (_u_xlat16_9.x = ((_pbr_Metal_Rough.x * -0.95999998) + 0.95999998));
    (_u_xlat16_9.xyz = (_u_xlat16_21.xyz * _u_xlat16_9.xxx));
    (_u_xlat16_10.xyz = ((_main_albedo.xyz * _color_albedo.xyz) + float3(-0.039999999, -0.039999999, -0.039999999)));
    (_u_xlat16_10.xyz = ((_pbr_Metal_Rough.xxx * _u_xlat16_10.xyz) + float3(0.039999999, 0.039999999, 0.039999999)));
    (_u_xlat16_10.xyz = (_u_xlat16_10.xyz * __PBRSpecularColor.xyz));
    (_u_xlat16_9.xyz = (_u_xlat16_9.xyz * __IndirectLightColor.xyz));
    (_u_xlat16_7 = ((_pbr_Metal_Rough.yyyy * float4(-1.0, -0.0275, -0.57200003, 0.022)) + float4(1.0, 0.0425, 1.04, -0.039999999)));
    (_pbr_Metal_Rough.x = (_u_xlat16_7.x * _u_xlat16_7.x));
    (_u_xlat16_57 = (_u_xlat16_54 * -9.2799997));
    (_u_xlat16_57 = exp2(_u_xlat16_57));
    (_pbr_Metal_Rough.x = min(_pbr_Metal_Rough.x, _u_xlat16_57));
    (_pbr_Metal_Rough.x = ((_pbr_Metal_Rough.x * _u_xlat16_7.x) + _u_xlat16_7.y));
    (_u_xlat16_11.xy = ((_pbr_Metal_Rough.xx * float2(-1.04, 1.04)) + _u_xlat16_7.zw));
    (_pbr_Metal_Rough.x = (_u_xlat16_10.y * 50.0));
    (_pbr_Metal_Rough.x = clamp(_pbr_Metal_Rough.x, 0.0, 1.0));
    (_pbr_Metal_Rough.x = (_pbr_Metal_Rough.x * _u_xlat16_11.y));
    (_u_xlat16_10.xyz = ((_u_xlat16_10.xyz * _u_xlat16_11.xxx) + _pbr_Metal_Rough.xxx));
    (_pbr_Metal_Rough.x = (_pbr_Metal_Rough.y * _pbr_Metal_Rough.y));
    (_pbr_Metal_Rough.x = max(_pbr_Metal_Rough.x, 0.0020000001));
    (_u_xlat2.x = (_pbr_Metal_Rough.x * _pbr_Metal_Rough.x));
    (_u_xlat18 = ((_u_xlat48 * _u_xlat2.x) + (-_u_xlat48)));
    (_u_xlat18 = ((_u_xlat18 * _u_xlat48) + 1.00001));
    (_u_xlat2.x = (_u_xlat2.x * 0.31830987));
    (_u_xlat18 = ((_u_xlat18 * _u_xlat18) + 1e-07));
    (_u_xlat2.x = (_u_xlat2.x / _u_xlat18));
    (_u_xlat16_11.xyz = (_u_xlat2.xxx * _u_xlat16_10.xyz));
    (_u_xlat2.xyz = (_u_xlat16_11.xyz * vec3_ctor(__PBRSpecularIntensity)));
    (_pbr_Metal_Rough.x = (((-_pbr_Metal_Rough.y) * 0.69999999) + 1.7));
    (_pbr_Metal_Rough.x = (_pbr_Metal_Rough.x * _pbr_Metal_Rough.y));
    (_pbr_Metal_Rough.x = (_pbr_Metal_Rough.x * 8.0));
    (_u_xlat12 = dot((-_u_xlat3.xyz), _u_xlat0.xyz));
    (_u_xlat12 = (_u_xlat12 + _u_xlat12));
    (_u_xlat3.xyz = ((_u_xlat0.xyz * (-vec3_ctor(_u_xlat12))) + (-_u_xlat3.xyz)));
    (_u_xlatb12 = (0.1 < _IF_CUBEMAP_ROTATION));
    (_u_xlat28.xyz = (_u_xlat3.yyy * _hlslcc_mtx4x4_XCubemapRot[1].xyz));
    (_u_xlat28.xyz = ((_hlslcc_mtx4x4_XCubemapRot[0].xyz * _u_xlat3.xxx) + _u_xlat28.xyz));
    (_u_xlat28.xyz = ((_hlslcc_mtx4x4_XCubemapRot[2].xyz * _u_xlat3.zzz) + _u_xlat28.xyz));
    float3 s1675 = { 0, 0, 0 };
    if (bool_ctor(_u_xlatb12))
    {
        (s1675 = _u_xlat28.xyz);
    }
    else
    {
        (s1675 = _u_xlat3.xyz);
    }
    (_u_xlat3.xyz = s1675);
    (_u_xlat16_7 = gl_textureCubeLod(__CubeMap, _u_xlat3.xyz, _pbr_Metal_Rough.x));
    (_u_xlat3.xyz = (_u_xlat16_7.www * _u_xlat16_7.xyz));
    (_u_xlat3.xyz = (_u_xlat3.xyz * float3(6.0, 6.0, 6.0)));
    (_u_xlat16_10.xyz = (_u_xlat16_10.xyz * _u_xlat3.xyz));
    (_u_xlat16_10.xyz = (_u_xlat16_10.xyz * __CubemapColor.xyz));
    (_u_xlat16_11.xyz = (_u_xlat16_10.xyz * vec3_ctor(__CubemapIntensity)));
    (_u_xlatb3.xyz = (float4(0.1, 0.1, 0.1, 0.0) < vec4_ctor(_IF_XSPECULAR_BLOOM, _IF_SMOOTH_SHADOW, _IF_SPECULAR_SHADOW_INTENSITY, _IF_XSPECULAR_BLOOM)).xyz);
    (_pbr_Metal_Rough.x = dot(_u_xlat2.xyz, float3(0.039681915, 0.45802179, 0.0060965396)));
    (_pbr_Metal_Rough.x = (_pbr_Metal_Rough.x + (-__SpecularBloomThreshold)));
    (_pbr_Metal_Rough.x = max(_pbr_Metal_Rough.x, 0.0));
    (_pbr_Metal_Rough.x = ((_pbr_Metal_Rough.x * __SpecularBloomIntensity) + _u_xlat16_5.x));
    float s1676 = { 0 };
    if (_u_xlatb3.x)
    {
        (s1676 = _pbr_Metal_Rough.x);
    }
    else
    {
        (s1676 = _u_xlat16_5.x);
    }
    (_u_xlat16_5.x = s1676);
    (_u_xlat16_10.xyz = ((_u_xlat16_10.xyz * vec3_ctor(__CubemapIntensity)) + _u_xlat2.xyz));
    (_u_xlat16_10.xyz = (_u_xlat16_10.xyz * __DirectLightColor.xyz));
    (_u_xlat16_9.xyz = ((_u_xlat16_9.xyz * vec3_ctor(__IndirectLightIntensity)) + _u_xlat16_11.xyz));
    (_pbr_Metal_Rough.xyz = (vec3_ctor(_u_xlat16_40) * _u_xlat16_9.xyz));
    (_pbr_Metal_Rough.xyz = ((_u_xlat16_10.xyz * vec3_ctor(_u_xlat50)) + _pbr_Metal_Rough.xyz));
    (_color_albedo.xyz = (((-_main_albedo.xyz) * _color_albedo.xyz) + _pbr_Metal_Rough.xyz));
    (_color_albedo.xyz = ((vec3_ctor(_u_xlat16_56) * _color_albedo.xyz) + _u_xlat16_21.xyz));
    (_u_xlat2.x = ((_u_xlat49 * 0.5) + 0.5));
    (_u_xlat34.xy = ((_vs_TEXCOORD0.xy * __MaskTex_ST.xy) + __MaskTex_ST.zw));
    (_u_xlat16_7 = gl_texture2D(__MaskTex, _u_xlat34.xy));
    (_pbr_Metal_Rough.x = (_main_albedo.w + (-_u_xlat16_7.y)));
    (_pbr_Metal_Rough.x = ((_IF_MAIN_ALPHA_FOR_SHADOWMASK * _pbr_Metal_Rough.x) + _u_xlat16_7.y));
    (_u_xlatb4.xyz = (float4(0.1, 0.1, 0.1, 0.0) < vec4_ctor(_IF_SKIN, _IF_GI_SKIN, _IF_RIM, _IF_SKIN)).xyz);
    if (_u_xlatb4.x)
    {
        (_u_xlat2.y = 0.5);
        (_u_xlat16_18.xyz = gl_texture2D(__SkinRamp, _u_xlat2.xy).xyz);
        (_u_xlat16_24.xyz = (_u_xlat16_18.xyz * _color_albedo.xyz));
        (_u_xlat16_9.xyz = (vec3_ctor(vec3_ctor(__SkinIntensity, __SkinIntensity, __SkinIntensity)) * __SkinColor.xyz));
        (_u_xlat16_24.xyz = ((_u_xlat16_24.xyz * _u_xlat16_9.xyz) + (-_color_albedo.xyz)));
        (_color_albedo.xyz = ((vec3_ctor(vec3_ctor(__SkinRate, __SkinRate, __SkinRate)) * _u_xlat16_24.xyz) + _color_albedo.xyz));
    }
    (_u_xlat16_24.xyz = (_color_albedo.xyz * __FirstShadowColor.xyz));
    (_u_xlat16_9.xyz = (_color_albedo.xyz * __SecondShadowColor.xyz));
    (_u_xlat16_10.xyz = (_color_albedo.xyz * __NoShadowColor.xyz));
    float s1677 = { 0 };
    if (_u_xlatb4.y)
    {
        (s1677 = __XGlobalCharacterSkinShadowIntensity);
    }
    else
    {
        (s1677 = __XGlobalCharacterShadowIntensity);
    }
    (_u_xlat16_57 = s1677);
    float3 s1678 = { 0, 0, 0 };
    if (_u_xlatb4.y)
    {
        (s1678 = __XGlobalCharacterSkinNoShadowColor.xyz);
    }
    else
    {
        (s1678 = __XGlobalCharacterNoShadowColor.xyz);
    }
    (_u_xlat16_11.xyz = s1678);
    (_u_xlat16_10.xyz = (_u_xlat16_10.xyz * _u_xlat16_11.xyz));
    float3 s1679 = { 0, 0, 0 };
    if (_u_xlatb4.y)
    {
        (s1679 = __XGlobalCharacterSkinOneShadowColor.xyz);
    }
    else
    {
        (s1679 = __XGlobalCharacterOneShadowColor.xyz);
    }
    (_u_xlat16_11.xyz = s1679);
    (_u_xlat16_13.xyz = (_u_xlat16_24.xyz * _u_xlat16_11.xyz));
    float3 s167a = { 0, 0, 0 };
    if (_u_xlatb4.y)
    {
        (s167a = __XGlobalCharacterSkinTwoShadowColor.xyz);
    }
    else
    {
        (s167a = __XGlobalCharacterTwoShadowColor.xyz);
    }
    (_u_xlat16_14.xyz = s167a);
    (_u_xlat16_58 = ((-_pbr_Metal_Rough.x) + 1.5));
    (_u_xlat16_58 = floor(_u_xlat16_58));
    (_u_xlat16_58 = ((-_u_xlat16_58) + 1.0));
    (_u_xlat16_15.xy = ((_pbr_Metal_Rough.xx * float2(1.2, 1.25)) + float2(-0.1, -0.12)));
    (_u_xlat16_59 = ((-_u_xlat16_15.y) + _u_xlat16_15.x));
    (_u_xlat16_58 = ((_u_xlat16_58 * _u_xlat16_59) + _u_xlat16_15.y));
    (_u_xlat16_58 = (_u_xlat2.x + _u_xlat16_58));
    (_u_xlat16_58 = ((_u_xlat16_58 * 0.5) + 1.0));
    (_u_xlat16_58 = (_u_xlat16_58 + (-__FirstShadow)));
    (_u_xlat16_59 = (_u_xlat16_58 + -1.0));
    (_u_xlat16_59 = max(_u_xlat16_59, (-__SmoothFactor)));
    (_u_xlat16_59 = min(_u_xlat16_59, __SmoothFactor));
    (_u_xlat16_59 = (_u_xlat16_59 + __SmoothFactor));
    (_u_xlat16_61 = (__SmoothFactor + __SmoothFactor));
    (_u_xlat16_59 = (_u_xlat16_59 / _u_xlat16_61));
    (_u_xlat16_59 = ((-_u_xlat16_59) + 1.0));
    (_u_xlat16_58 = floor(_u_xlat16_58));
    (_u_xlat16_58 = ((-_u_xlat16_58) + 1.0));
    float s167b = { 0 };
    if (_u_xlatb3.y)
    {
        (s167b = _u_xlat16_59);
    }
    else
    {
        (s167b = _u_xlat16_58);
    }
    (_u_xlat16_58 = s167b);
    (_u_xlat16_59 = (_u_xlat16_57 * _u_xlat16_58));
    (_u_xlat16_61 = _u_xlat16_59);
    (_u_xlat16_61 = clamp(_u_xlat16_61, 0.0, 1.0));
    (_u_xlat16_61 = ((_u_xlat16_61 * (-__XGlobalCharacterNoShadowBloomAdd)) + __XGlobalCharacterNoShadowBloomAdd));
    (_u_xlat16_24.xyz = ((_u_xlat16_24.xyz * _u_xlat16_11.xyz) + (-_u_xlat16_10.xyz)));
    (_u_xlat16_24.xyz = ((vec3_ctor(_u_xlat16_59) * _u_xlat16_24.xyz) + _u_xlat16_10.xyz));
    (_u_xlat16_10.x = (_u_xlat2.x + _pbr_Metal_Rough.x));
    (_u_xlat16_10.x = ((_u_xlat16_10.x * 0.5) + 1.0));
    (_u_xlat16_10.x = (_u_xlat16_10.x + (-__SecondShadow)));
    (_u_xlat16_10.x = floor(_u_xlat16_10.x));
    (_u_xlat16_10.x = ((-_u_xlat16_10.x) + 1.0));
    (_u_xlat16_10.x = (_u_xlat16_57 * _u_xlat16_10.x));
    (_u_xlat16_9.xyz = ((_u_xlat16_9.xyz * _u_xlat16_14.xyz) + (-_u_xlat16_13.xyz)));
    (_u_xlat16_9.xyz = ((_u_xlat16_10.xxx * _u_xlat16_9.xyz) + _u_xlat16_13.xyz));
    (_pbr_Metal_Rough.x = (_pbr_Metal_Rough.x + 0.89999998));
    (_pbr_Metal_Rough.x = floor(_pbr_Metal_Rough.x));
    (_pbr_Metal_Rough.x = ((-_pbr_Metal_Rough.x) + 1.0));
    (_pbr_Metal_Rough.x = (_u_xlat16_57 * _pbr_Metal_Rough.x));
    (_u_xlat16_9.xyz = ((-_u_xlat16_24.xyz) + _u_xlat16_9.xyz));
    (_u_xlat16_24.xyz = ((_pbr_Metal_Rough.xxx * _u_xlat16_9.xyz) + _u_xlat16_24.xyz));
    (_u_xlat48 = max(_u_xlat48, 9.9999997e-05));
    (_u_xlat16_9.x = ((_u_xlat48 * -2.0) + 1.0));
    (_u_xlat16_9.x = ((_IF_INVERT_SPECULAR * _u_xlat16_9.x) + _u_xlat48));
    (_u_xlat16_9.x = log2(_u_xlat16_9.x));
    (_u_xlat16_9.x = (_u_xlat16_9.x * __SpecularShiness));
    (_u_xlat16_9.x = exp2(_u_xlat16_9.x));
    (_u_xlat16_9.x = (_u_xlat16_7.x + _u_xlat16_9.x));
    (_u_xlat16_25 = (__SpecularSmoothFactor + 1.0));
    (_u_xlat16_9.x = ((-_u_xlat16_25) + _u_xlat16_9.x));
    (_u_xlat16_9.x = (_u_xlat16_9.x / __SpecularSmoothFactor));
    (_u_xlat16_9.x = clamp(_u_xlat16_9.x, 0.0, 1.0));
    (_u_xlat16_25 = (_u_xlat16_7.z * __SpecularIntensity));
    (_color_albedo.xyz = (_color_albedo.xyz * vec3_ctor(_u_xlat16_25)));
    (_color_albedo.xyz = (_color_albedo.xyz * vec3_ctor(__SpecularColor.x, __SpecularColor.y, __SpecularColor.z)));
    (_pbr_Metal_Rough.x = ((_u_xlat16_58 * _u_xlat16_57) + _pbr_Metal_Rough.x));
    (_u_xlatb48 = (_pbr_Metal_Rough.x >= 9.9999997e-05));
    (_pbr_Metal_Rough.x = ((_u_xlat16_9.x * __SpecularShadowIntensity) + (-_u_xlat16_9.x)));
    float s167c = { 0 };
    if (_u_xlatb48)
    {
        (s167c = _pbr_Metal_Rough.x);
    }
    else
    {
        (s167c = 0.0);
    }
    (_pbr_Metal_Rough.x = s167c);
    (_pbr_Metal_Rough.x = (_pbr_Metal_Rough.x + _u_xlat16_9.x));
    float s167d = { 0 };
    if (_u_xlatb3.z)
    {
        (s167d = _pbr_Metal_Rough.x);
    }
    else
    {
        (s167d = _u_xlat16_9.x);
    }
    (_pbr_Metal_Rough.x = s167d);
    (_color_albedo.xyz = (_color_albedo.xyz * _pbr_Metal_Rough.xxx));
    (_color_albedo.xyz = ((_color_albedo.xyz * __XGlobalCharSpecularColor.xyz) + _u_xlat16_24.xyz));
    if (_u_xlatb4.z)
    {
        (_u_xlat0.x = dot(_u_xlat0.xyz, __GlobalRimLightDir.xyz));
        (_u_xlat0.x = clamp(_u_xlat0.x, 0.0, 1.0));
        (_u_xlat16_54 = ((-_u_xlat16_54) + 1.0));
        (_u_xlat16_54 = (_u_xlat16_54 + (-__RimMin)));
        (_pbr_Metal_Rough.x = (__RimMax + (-__RimMin)));
        (_pbr_Metal_Rough.x = (1.0 / _pbr_Metal_Rough.x));
        (_u_xlat16_54 = (_u_xlat16_54 * _pbr_Metal_Rough.x));
        (_u_xlat16_54 = clamp(_u_xlat16_54, 0.0, 1.0));
        (_pbr_Metal_Rough.x = (_u_xlat16_54 * _u_xlat16_54));
        (_u_xlat16_54 = ((_u_xlat16_54 * -2.0) + 3.0));
        (_u_xlat16_54 = (_u_xlat16_54 * _pbr_Metal_Rough.x));
        (_pbr_Metal_Rough.x = (_u_xlat16_51 + __RimThreshold));
        (_u_xlatb16 = (_pbr_Metal_Rough.x >= 0.0));
        (_u_xlat32 = (_u_xlat16_54 * __RimIntensity));
        (_u_xlat2.xyz = (vec3_ctor(_u_xlat32) * __RimColor.xyz));
        float3 s167e = { 0, 0, 0 };
        if (bool_ctor(_u_xlatb16))
        {
            (s167e = _u_xlat2.xyz);
        }
        else
        {
            (s167e = float3(0.0, 0.0, 0.0));
        }
        (_pbr_Metal_Rough.xyz = s167e);
        float3 s167f = { 0, 0, 0 };
        if (_u_xlatb4.y)
        {
            (s167f = __XGlobalCharacterSkinRimColor.xyz);
        }
        else
        {
            (s167f = __XGlobalCharacterRimColor.xyz);
        }
        (_u_xlat16_9.xyz = s167f);
        (_pbr_Metal_Rough.xyz = (_pbr_Metal_Rough.xyz * _u_xlat16_9.xyz));
        (_u_xlat16.xyz = (_u_xlat1.xyz + (-__WorldSpaceCameraPos.xyz)));
        (_u_xlat16.x = dot(_u_xlat16.xyz, _u_xlat16.xyz));
        (_u_xlat32 = ((-__RimDistanceMin) + __RimDistanceMax));
        (_u_xlat16.x = (_u_xlat16.x + (-__RimDistanceMin)));
        (_u_xlat32 = (1.0 / _u_xlat32));
        (_u_xlat16.x = (_u_xlat32 * _u_xlat16.x));
        (_u_xlat16.x = clamp(_u_xlat16.x, 0.0, 1.0));
        (_u_xlat32 = ((_u_xlat16.x * -2.0) + 3.0));
        (_u_xlat16.x = (_u_xlat16.x * _u_xlat16.x));
        (_u_xlat16.x = (_u_xlat16.x * _u_xlat32));
        (_u_xlat16.x = ((__GlobalEnableDistanceRim * (-_u_xlat16.x)) + 1.0));
        (_u_xlat32 = ((-_u_xlat16.x) + 1.0));
        (_u_xlat16.x = ((_IF_DISABLE_DISTANCE_RIM * _u_xlat32) + _u_xlat16.x));
        (_u_xlat0.x = (_u_xlat0.x * _u_xlat16.x));
        (_u_xlat6.xyz = ((_u_xlat0.xxx * _pbr_Metal_Rough.xyz) + _color_albedo.xyz));
        (_color_albedo.xyz = _u_xlat6.xyz);
    }
    (_color_albedo.xyz = (_color_albedo.xyz * __XGlobalCharacterLightColor.xyz));
    (_u_xlat16_0.xyz = ((_color_albedo.xyz * _vs_TEXCOORD5.xyz) + _color_albedo.xyz));
    (_color_albedo.x = (_u_xlat16_61 + 1.0));
    (_u_xlat16_5.x = (_u_xlat16_5.x * _color_albedo.x));
    (_u_xlat16_0.w = (_u_xlat16_5.x * __BloomFactor));
    (_u_xlat16_5.xyz = (_u_xlat16_21.xyz * vec3_ctor(vec3_ctor(__EmissionIntensity, __EmissionIntensity, __EmissionIntensity))));
    (_u_xlat16_5.xyz = (_u_xlat16_5.xyz * __EmissionColor.xyz));
    (_u_xlat16_1.xyz = (_u_xlat16_7.www * _u_xlat16_5.xyz));
    (_u_xlat16_5.x = ((-__BloomFactor) + __EmissionBloomFactor));
    (_u_xlat16_1.w = ((_u_xlat16_5.x * _u_xlat16_7.w) + __BloomFactor));
    (_u_xlat16_0 = (_u_xlat16_0 + _u_xlat16_1));
    (_u_xlat16_5.x = ((-abs(_u_xlat16_51)) + 1.0));
    (_u_xlat16_5.x = max(_u_xlat16_5.x, 0.001));
    (_u_xlat16_5.x = log2(_u_xlat16_5.x));
    (_u_xlat16_5.x = (_u_xlat16_5.x * __EffectRimFading));
    (_u_xlat16_5.x = exp2(_u_xlat16_5.x));
    (_u_xlat16_5.xyz = (_u_xlat16_5.xxx * __EffectRimColor.xyz));
    (_u_xlat16_5.xyz = ((vec3_ctor(vec3_ctor(__EffectRimTransparency, __EffectRimTransparency, __EffectRimTransparency)) * _u_xlat16_5.xyz) + _u_xlat16_0.xyz));
    (_color_albedo.xyz = (__XGlobalCharacterAmbientColor.xyz * __GlobalTint.xyz));
    (_u_xlat16_5.xyz = (_u_xlat16_5.xyz * _color_albedo.xyz));
    (_u_xlat16_0.w = max(_u_xlat16_0.w, 0.0));
    (_color_albedo.xyz = (_u_xlat16_5.xyz * __BloomModColor.xyz));
    (_color_albedo.xyz = ((_color_albedo.xyz * vec3_ctor(__BloomModIntensity)) + (-_u_xlat16_5.xyz)));
    (_u_xlat16_5.xyz = ((vec3_ctor(__XPostBloom) * _color_albedo.xyz) + _u_xlat16_5.xyz));
    (_u_xlat16_53 = __GrayIntensity);
    (_u_xlat16_53 = clamp(_u_xlat16_53, 0.0, 1.0));
    (_color_albedo.x = dot(_u_xlat16_5.xyz, float3(0.30000001, 0.58999997, 0.11)));
    (_color_albedo.xyz = ((-_u_xlat16_5.xyz) + _color_albedo.xxx));
    (_u_xlat16_0.xyz = ((vec3_ctor(_u_xlat16_53) * _color_albedo.xyz) + _u_xlat16_5.xyz));
    (_u_xlat16_5.x = ((-_vs_TEXCOORD6) + 1.0));
    (_u_xlat16_5.x = (_u_xlat16_5.x * __CharDistanceFogIntensity));
    (_u_xlat16_1 = ((-_u_xlat16_0) + __LinearFogColor));
    (out_SV_Target0 = ((_u_xlat16_5.xxxx * _u_xlat16_1) + _u_xlat16_0));
    return generateOutput();
}