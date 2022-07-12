#ifndef LIL_INPUT_BASE_INCLUDED
#define LIL_INPUT_BASE_INCLUDED

//------------------------------------------------------------------------------------------------------------------------------
// Vector
float4  _LightDirectionOverride;
float4  _BackfaceColor;
#if LIL_RENDER == 2 && !defined(LIL_FUR) && !defined(LIL_GEM) && !defined(LIL_REFRACTION)
    float4  _PreColor;
#endif
// Main
float4  _Color;
float4  _MainTex_ST;
#if defined(LIL_FEATURE_ANIMATE_MAIN_UV)
    float4  _MainTex_ScrollRotate;
#endif
#if defined(LIL_FEATURE_MAIN_TONE_CORRECTION)
    float4  _MainTexHSVG;
#endif

// Main2nd
#if defined(LIL_FEATURE_MAIN2ND)
    float4  _Color2nd;
    float4  _Main2ndTex_ST;
    float4  _Main2ndDistanceFade;
    #if defined(LIL_FEATURE_DECAL) && defined(LIL_FEATURE_ANIMATE_DECAL)
        float4  _Main2ndTexDecalAnimation;
        float4  _Main2ndTexDecalSubParam;
    #endif
    #if defined(LIL_FEATURE_LAYER_DISSOLVE)
        float4  _Main2ndDissolveMask_ST;
        float4  _Main2ndDissolveColor;
        float4  _Main2ndDissolveParams;
        float4  _Main2ndDissolvePos;
        #if defined(LIL_FEATURE_Main2ndDissolveNoiseMask)
            float4  _Main2ndDissolveNoiseMask_ST;
            float4  _Main2ndDissolveNoiseMask_ScrollRotate;
        #endif
    #endif
#endif

// Main3rd
#if defined(LIL_FEATURE_MAIN3RD)
    float4  _Color3rd;
    float4  _Main3rdTex_ST;
    float4  _Main3rdDistanceFade;
    #if defined(LIL_FEATURE_DECAL) && defined(LIL_FEATURE_ANIMATE_DECAL)
        float4  _Main3rdTexDecalAnimation;
        float4  _Main3rdTexDecalSubParam;
    #endif
    #if defined(LIL_FEATURE_LAYER_DISSOLVE)
        float4  _Main3rdDissolveMask_ST;
        float4  _Main3rdDissolveColor;
        float4  _Main3rdDissolveParams;
        float4  _Main3rdDissolvePos;
        #if defined(LIL_FEATURE_Main3rdDissolveNoiseMask)
            float4  _Main3rdDissolveNoiseMask_ST;
            float4  _Main3rdDissolveNoiseMask_ScrollRotate;
        #endif
    #endif
#endif

// Shadow
#if defined(LIL_FEATURE_SHADOW)
    float4  _ShadowColor;
    float4  _Shadow2ndColor;
    #if defined(LIL_FEATURE_SHADOW_3RD)
        float4  _Shadow3rdColor;
    #endif
    float4  _ShadowBorderColor;
    float4  _ShadowAOShift;
    #if defined(LIL_FEATURE_SHADOW_3RD)
        float4  _ShadowAOShift2;
    #endif
#endif

// Backlight
#if defined(LIL_FEATURE_BACKLIGHT)
    float4  _BacklightColor;
    float4  _BacklightColorTex_ST;
#endif

// Emission
#if defined(LIL_FEATURE_EMISSION_1ST)
    float4  _EmissionColor;
    float4  _EmissionBlink;
    float4  _EmissionMap_ST;
    #if defined(LIL_FEATURE_ANIMATE_EMISSION_UV)
        float4  _EmissionMap_ScrollRotate;
    #endif
    float4  _EmissionBlendMask_ST;
    #if defined(LIL_FEATURE_ANIMATE_EMISSION_MASK_UV)
        float4  _EmissionBlendMask_ScrollRotate;
    #endif
#endif

// Emission 2nd
#if defined(LIL_FEATURE_EMISSION_2ND)
    float4  _Emission2ndColor;
    float4  _Emission2ndBlink;
    float4  _Emission2ndMap_ST;
    #if defined(LIL_FEATURE_ANIMATE_EMISSION_UV)
        float4  _Emission2ndMap_ScrollRotate;
    #endif
    float4  _Emission2ndBlendMask_ST;
    #if defined(LIL_FEATURE_ANIMATE_EMISSION_MASK_UV)
        float4  _Emission2ndBlendMask_ScrollRotate;
    #endif
#endif

// Normal Map
#if defined(LIL_FEATURE_NORMAL_1ST)
    float4  _BumpMap_ST;
#endif

// Normal Map 2nd
#if defined(LIL_FEATURE_NORMAL_2ND)
    float4  _Bump2ndMap_ST;
    float4  _Bump2ndScaleMask_ST;
#endif

// Anisotropy
#if defined(LIL_FEATURE_ANISOTROPY)
    float4  _AnisotropyTangentMap_ST;
    float4  _AnisotropyScaleMask_ST;
    float4  _AnisotropyShiftNoiseMask_ST;
#endif

// Reflection
#if defined(LIL_FEATURE_REFLECTION)
    float4  _ReflectionColor;
    float4  _SmoothnessTex_ST;
    float4  _MetallicGlossMap_ST;
    float4  _ReflectionColorTex_ST;
#endif
#if defined(LIL_FEATURE_REFLECTION) || defined(LIL_GEM)
    float4  _ReflectionCubeColor;
    float4  _ReflectionCubeTex_HDR;
#endif

// MatCap
#if defined(LIL_FEATURE_MATCAP)
    float4  _MatCapColor;
    float4  _MatCapTex_ST;
    float4  _MatCapBlendMask_ST;
    float4  _MatCapBlendUV1;
    #if defined(LIL_FEATURE_MatCapBumpMap)
        float4  _MatCapBumpMap_ST;
    #endif
#endif

// MatCap 2nd
#if defined(LIL_FEATURE_MATCAP_2ND)
    float4  _MatCap2ndColor;
    float4  _MatCap2ndTex_ST;
    float4  _MatCap2ndBlendMask_ST;
    float4  _MatCap2ndBlendUV1;
    #if defined(LIL_FEATURE_MatCap2ndBumpMap)
        float4  _MatCap2ndBumpMap_ST;
    #endif
#endif

// Rim Light
#if defined(LIL_FEATURE_RIMLIGHT)
    float4  _RimColor;
    float4  _RimColorTex_ST;
    #if defined(LIL_FEATURE_RIMLIGHT_DIRECTION)
        float4  _RimIndirColor;
    #endif
#endif

// Glitter
#if defined(LIL_FEATURE_GLITTER)
    float4  _GlitterColor;
    float4  _GlitterColorTex_ST;
    float4  _GlitterParams1;
    float4  _GlitterParams2;
    #if defined(LIL_FEATURE_GlitterShapeTex)
        float4  _GlitterShapeTex_ST;
        float4  _GlitterAtras;
    #endif
#endif

// Distance Fade
#if defined(LIL_FEATURE_DISTANCE_FADE)
    float4  _DistanceFade;
    float4  _DistanceFadeColor;
#endif

// AudioLink
#if defined(LIL_FEATURE_AUDIOLINK)
    float4  _AudioLinkDefaultValue;
    float4  _AudioLinkUVParams;
    float4  _AudioLinkStart;
    #if defined(LIL_FEATURE_AUDIOLINK_VERTEX)
        float4  _AudioLinkVertexUVParams;
        float4  _AudioLinkVertexStart;
        float4  _AudioLinkVertexStrength;
    #endif
    #if defined(LIL_FEATURE_AUDIOLINK_LOCAL)
        float4  _AudioLinkLocalMapParams;
    #endif
#endif

// Dissolve
#if defined(LIL_FEATURE_DISSOLVE)
    float4  _DissolveMask_ST;
    float4  _DissolveColor;
    float4  _DissolveParams;
    float4  _DissolvePos;
    #if defined(LIL_FEATURE_DissolveNoiseMask)
        float4  _DissolveNoiseMask_ST;
        float4  _DissolveNoiseMask_ScrollRotate;
    #endif
#endif

// Encryption
#if defined(LIL_FEATURE_ENCRYPTION)
    float4  _Keys;
#endif

// Outline
float4  _OutlineColor;
float4  _OutlineLitColor;
float4  _OutlineTex_ST;
#if defined(LIL_FEATURE_ANIMATE_OUTLINE_UV)
    float4  _OutlineTex_ScrollRotate;
#endif
#if defined(LIL_FEATURE_OutlineTex)
    #if defined(LIL_FEATURE_OUTLINE_TONE_CORRECTION)
        float4  _OutlineTexHSVG;
    #endif
#endif

// Fur
#if defined(LIL_FUR)
    float4  _FurNoiseMask_ST;
    float4  _FurVector;
#endif

// Refraction
#if defined(LIL_REFRACTION)
    float4  _RefractionColor;
#endif

// Gem
#if defined(LIL_GEM)
    float4  _GemParticleColor;
    float4  _GemEnvColor;
#endif

//------------------------------------------------------------------------------------------------------------------------------
// Float
float   _AsUnlit;
float   _Cutoff;
#if LIL_RENDER == 2 && !defined(LIL_FUR) && !defined(LIL_GEM) && !defined(LIL_REFRACTION)
    float   _PreCutoff;
#endif
float   _SubpassCutoff;
float   _FlipNormal;
float   _ShiftBackfaceUV;
float   _VertexLightStrength;
float   _LightMinLimit;
float   _LightMaxLimit;
float   _MonochromeLighting;
#if defined(LIL_BRP)
    float   _AlphaBoostFA;
#endif
#if defined(LIL_HDRP)
    float   _BeforeExposureLimit;
    float   _lilDirectionalLightStrength;
#endif
#if defined(LIL_FEATURE_MAIN_GRADATION_MAP)
    float   _MainGradationStrength;
#endif
#if defined(LIL_FEATURE_MAIN2ND)
    float   _Main2ndTexAngle;
    float   _Main2ndEnableLighting;
    #if defined(LIL_FEATURE_Main2ndDissolveNoiseMask)
        float   _Main2ndDissolveNoiseStrength;
    #endif
#endif
#if defined(LIL_FEATURE_MAIN3RD)
    float   _Main3rdTexAngle;
    float   _Main3rdEnableLighting;
    #if defined(LIL_FEATURE_Main3rdDissolveNoiseMask)
        float   _Main3rdDissolveNoiseStrength;
    #endif
#endif
#if defined(LIL_FEATURE_ALPHAMASK)
    float   _AlphaMaskScale;
    float   _AlphaMaskValue;
#endif
#if defined(LIL_FEATURE_SHADOW)
    float   _BackfaceForceShadow;
    float   _ShadowStrength;
    float   _ShadowNormalStrength;
    float   _ShadowBorder;
    float   _ShadowBlur;
    float   _ShadowStrengthMaskLOD;
    float   _ShadowBorderMaskLOD;
    float   _ShadowBlurMaskLOD;
    float   _Shadow2ndNormalStrength;
    float   _Shadow2ndBorder;
    float   _Shadow2ndBlur;
    #if defined(LIL_FEATURE_SHADOW_3RD)
        float   _Shadow3rdNormalStrength;
        float   _Shadow3rdBorder;
        float   _Shadow3rdBlur;
    #endif
    float   _ShadowMainStrength;
    float   _ShadowEnvStrength;
    float   _ShadowBorderRange;
    #if defined(LIL_FEATURE_RECEIVE_SHADOW)
        float   _ShadowReceive;
        float   _Shadow2ndReceive;
        float   _Shadow3rdReceive;
    #endif
    float   _ShadowFlatBlur;
    float   _ShadowFlatBorder;
#endif
#if defined(LIL_FEATURE_BACKLIGHT)
    float   _BacklightNormalStrength;
    float   _BacklightBorder;
    float   _BacklightBlur;
    float   _BacklightDirectivity;
    float   _BacklightViewStrength;
    float   _BacklightBackfaceMask;
    float   _BacklightMainStrength;
#endif
#if defined(LIL_FEATURE_NORMAL_1ST)
    float   _BumpScale;
#endif
#if defined(LIL_FEATURE_NORMAL_2ND)
    float   _Bump2ndScale;
#endif
#if defined(LIL_FEATURE_ANISOTROPY)
    float   _AnisotropyScale;
    float   _AnisotropyTangentWidth;
    float   _AnisotropyBitangentWidth;
    float   _AnisotropyShift;
    float   _AnisotropyShiftNoiseScale;
    float   _AnisotropySpecularStrength;
    float   _Anisotropy2ndTangentWidth;
    float   _Anisotropy2ndBitangentWidth;
    float   _Anisotropy2ndShift;
    float   _Anisotropy2ndShiftNoiseScale;
    float   _Anisotropy2ndSpecularStrength;
#endif
#if defined(LIL_FEATURE_REFLECTION) || defined(LIL_GEM)
    float   _Smoothness;
    float   _Reflectance;
    float   _SpecularNormalStrength;
    float   _SpecularBorder;
    float   _SpecularBlur;
    float   _ReflectionNormalStrength;
    float   _ReflectionCubeEnableLighting;
#endif
#if defined(LIL_FEATURE_REFLECTION)
    float   _Metallic;
    float   _GSAAStrength;
#endif
#if defined(LIL_FEATURE_MATCAP)
    float   _MatCapBlend;
    float   _MatCapEnableLighting;
    float   _MatCapShadowMask;
    float   _MatCapVRParallaxStrength;
    float   _MatCapBackfaceMask;
    float   _MatCapLod;
    float   _MatCapNormalStrength;
    float   _MatCapMainStrength;
    #if defined(LIL_FEATURE_MatCapBumpMap)
        float   _MatCapBumpScale;
    #endif
#endif
#if defined(LIL_FEATURE_MATCAP_2ND)
    float   _MatCap2ndBlend;
    float   _MatCap2ndEnableLighting;
    float   _MatCap2ndShadowMask;
    float   _MatCap2ndVRParallaxStrength;
    float   _MatCap2ndBackfaceMask;
    float   _MatCap2ndLod;
    float   _MatCap2ndNormalStrength;
    float   _MatCap2ndMainStrength;
    #if defined(LIL_FEATURE_MatCap2ndBumpMap)
        float   _MatCap2ndBumpScale;
    #endif
#endif
#if defined(LIL_FEATURE_RIMLIGHT)
    float   _RimNormalStrength;
    float   _RimBorder;
    float   _RimBlur;
    float   _RimFresnelPower;
    float   _RimEnableLighting;
    float   _RimShadowMask;
    float   _RimVRParallaxStrength;
    float   _RimBackfaceMask;
    float   _RimMainStrength;
    #if defined(LIL_FEATURE_RIMLIGHT_DIRECTION)
        float   _RimDirStrength;
        float   _RimDirRange;
        float   _RimIndirRange;
        float   _RimIndirBorder;
        float   _RimIndirBlur;
    #endif
#endif
#if defined(LIL_FEATURE_GLITTER)
    float   _GlitterMainStrength;
    float   _GlitterPostContrast;
    float   _GlitterSensitivity;
    float   _GlitterNormalStrength;
    float   _GlitterEnableLighting;
    float   _GlitterShadowMask;
    float   _GlitterVRParallaxStrength;
    float   _GlitterBackfaceMask;
    float   _GlitterScaleRandomize;
#endif
#if defined(LIL_FEATURE_EMISSION_1ST)
    float   _EmissionBlend;
    float   _EmissionParallaxDepth;
    float   _EmissionFluorescence;
    float   _EmissionMainStrength;
    #if defined(LIL_FEATURE_EMISSION_GRADATION)
        float   _EmissionGradSpeed;
    #endif
#endif
#if defined(LIL_FEATURE_EMISSION_2ND)
    float   _Emission2ndBlend;
    float   _Emission2ndParallaxDepth;
    float   _Emission2ndFluorescence;
    float   _Emission2ndMainStrength;
    #if defined(LIL_FEATURE_EMISSION_GRADATION)
        float   _Emission2ndGradSpeed;
    #endif
#endif
#if defined(LIL_FEATURE_PARALLAX)
    float   _Parallax;
    float   _ParallaxOffset;
#endif
#if defined(LIL_FEATURE_AUDIOLINK)
    float   _AudioLink2EmissionGrad;
    float   _AudioLink2Emission2ndGrad;
#endif
#if defined(LIL_FEATURE_DISSOLVE) &&  defined(LIL_FEATURE_DissolveNoiseMask)
    float   _DissolveNoiseStrength;
#endif
float   _lilShadowCasterBias;

float   _OutlineLitScale;
float   _OutlineLitOffset;
float   _OutlineWidth;
float   _OutlineEnableLighting;
float   _OutlineVectorScale;
float   _OutlineFixWidth;
float   _OutlineZBias;

#if defined(LIL_FUR)
    float   _FurVectorScale;
    float   _FurGravity;
    float   _FurAO;
    float   _FurRootOffset;
    float   _FurRandomize;
    float   _FurCutoutLength;
    #if defined(LIL_FEATURE_FUR_COLLISION)
        float   _FurTouchStrength;
    #endif
#endif
#if defined(LIL_REFRACTION)
    float   _RefractionStrength;
    float   _RefractionFresnelPower;
#endif
#if defined(LIL_TESSELLATION)
    float   _TessEdge;
    float   _TessStrength;
    float   _TessShrink;
    float   _TessFactorMax;
#endif
#if defined(LIL_GEM)
    float   _GemChromaticAberration;
    float   _GemParticleLoop;
    float   _RefractionStrength;
    float   _RefractionFresnelPower;
    float   _GemEnvContrast;
    float   _GemVRParallaxStrength;
#endif

//------------------------------------------------------------------------------------------------------------------------------
// Int
uint    _Cull;
uint    _OutlineCull;
#if LIL_RENDER == 2 && !defined(LIL_FUR) && !defined(LIL_GEM) && !defined(LIL_REFRACTION)
    uint    _PreOutType;
#endif
#if defined(LIL_FEATURE_MAIN2ND)
    uint    _Main2ndTexBlendMode;
    uint    _Main2ndTex_UVMode;
    uint    _Main2ndTex_Cull;
#endif
#if defined(LIL_FEATURE_MAIN3RD)
    uint    _Main3rdTexBlendMode;
    uint    _Main3rdTex_UVMode;
    uint    _Main3rdTex_Cull;
#endif
#if defined(LIL_FEATURE_ALPHAMASK)
    uint    _AlphaMaskMode;
#endif
#if defined(LIL_FEATURE_SHADOW)
    uint    _ShadowMaskType;
#endif
#if defined(LIL_FEATURE_NORMAL_2ND)
    uint    _Bump2ndMap_UVMode;
#endif
#if defined(LIL_FEATURE_REFLECTION)
    uint    _ReflectionBlendMode;
#endif
#if defined(LIL_FEATURE_MATCAP)
    uint    _MatCapBlendMode;
#endif
#if defined(LIL_FEATURE_MATCAP_2ND)
    uint    _MatCap2ndBlendMode;
#endif
#if defined(LIL_FEATURE_GLITTER)
    uint    _GlitterUVMode;
#endif
#if defined(LIL_FEATURE_EMISSION_1ST)
    uint    _EmissionMap_UVMode;
#endif
#if defined(LIL_FEATURE_EMISSION_2ND)
    uint    _Emission2ndMap_UVMode;
#endif
#if defined(LIL_FEATURE_AUDIOLINK)
    uint    _AudioLinkUVMode;
    #if defined(LIL_FEATURE_AUDIOLINK_VERTEX)
        uint    _AudioLinkVertexUVMode;
    #endif
#endif
uint    _OutlineVertexR2Width;
uint    _OutlineVectorUVMode;
#if defined(LIL_FUR)
    uint    _FurLayerNum;
    uint    _FurMeshType;
#endif

//------------------------------------------------------------------------------------------------------------------------------
// Bool
lilBool _Invisible;
#if defined(LIL_FEATURE_MAIN2ND)
    lilBool _UseMain2ndTex;
    lilBool _Main2ndTexIsMSDF;
    #if defined(LIL_FEATURE_DECAL)
        lilBool _Main2ndTexIsDecal;
        lilBool _Main2ndTexIsLeftOnly;
        lilBool _Main2ndTexIsRightOnly;
        lilBool _Main2ndTexShouldCopy;
        lilBool _Main2ndTexShouldFlipMirror;
        lilBool _Main2ndTexShouldFlipCopy;
    #endif
#endif
#if defined(LIL_FEATURE_MAIN3RD)
    lilBool _UseMain3rdTex;
    lilBool _Main3rdTexIsMSDF;
    #if defined(LIL_FEATURE_DECAL)
        lilBool _Main3rdTexIsDecal;
        lilBool _Main3rdTexIsLeftOnly;
        lilBool _Main3rdTexIsRightOnly;
        lilBool _Main3rdTexShouldCopy;
        lilBool _Main3rdTexShouldFlipMirror;
        lilBool _Main3rdTexShouldFlipCopy;
    #endif
#endif
#if defined(LIL_FEATURE_SHADOW)
    lilBool _UseShadow;
    lilBool _ShadowPostAO;
#endif
#if defined(LIL_FEATURE_BACKLIGHT)
    lilBool _UseBacklight;
    lilBool _BacklightReceiveShadow;
#endif
#if defined(LIL_FEATURE_NORMAL_1ST)
    lilBool _UseBumpMap;
#endif
#if defined(LIL_FEATURE_NORMAL_2ND)
    lilBool _UseBump2ndMap;
#endif
#if defined(LIL_FEATURE_ANISOTROPY)
    lilBool _UseAnisotropy;
    lilBool _Anisotropy2Reflection;
    lilBool _Anisotropy2MatCap;
    lilBool _Anisotropy2MatCap2nd;
#endif
#if defined(LIL_FEATURE_REFLECTION)
    lilBool _UseReflection;
    lilBool _ApplySpecular;
    lilBool _ApplySpecularFA;
    lilBool _ApplyReflection;
    lilBool _SpecularToon;
    lilBool _ReflectionApplyTransparency;
#endif
#if defined(LIL_FEATURE_REFLECTION) || defined(LIL_GEM)
    lilBool _ReflectionCubeOverride;
#endif
#if defined(LIL_FEATURE_MATCAP)
    lilBool _UseMatCap;
    lilBool _MatCapApplyTransparency;
    lilBool _MatCapPerspective;
    lilBool _MatCapZRotCancel;
    #if defined(LIL_FEATURE_MatCapBumpMap)
        lilBool _MatCapCustomNormal;
    #endif
#endif
#if defined(LIL_FEATURE_MATCAP_2ND)
    lilBool _UseMatCap2nd;
    lilBool _MatCap2ndApplyTransparency;
    lilBool _MatCap2ndPerspective;
    lilBool _MatCap2ndZRotCancel;
    #if defined(LIL_FEATURE_MatCap2ndBumpMap)
        lilBool _MatCap2ndCustomNormal;
    #endif
#endif
#if defined(LIL_FEATURE_RIMLIGHT)
    lilBool _UseRim;
    lilBool _RimApplyTransparency;
#endif
#if defined(LIL_FEATURE_GLITTER)
    lilBool _UseGlitter;
    lilBool _GlitterApplyTransparency;
    #if defined(LIL_FEATURE_GlitterShapeTex)
        lilBool _GlitterApplyShape;
        lilBool _GlitterAngleRandomize;
    #endif
#endif
#if defined(LIL_FEATURE_EMISSION_1ST)
    lilBool _UseEmission;
    #if defined(LIL_FEATURE_EMISSION_GRADATION)
        lilBool _EmissionUseGrad;
    #endif
#endif
#if defined(LIL_FEATURE_EMISSION_2ND)
    lilBool _UseEmission2nd;
    #if defined(LIL_FEATURE_EMISSION_GRADATION)
        lilBool _Emission2ndUseGrad;
    #endif
#endif
#if defined(LIL_FEATURE_PARALLAX)
    lilBool _UseParallax;
    #if defined(LIL_FEATURE_POM)
        lilBool _UsePOM;
    #endif
#endif
#if defined(LIL_FEATURE_AUDIOLINK)
    lilBool _UseAudioLink;
    #if defined(LIL_FEATURE_MAIN2ND)
        lilBool _AudioLink2Main2nd;
    #endif
    #if defined(LIL_FEATURE_MAIN3RD)
        lilBool _AudioLink2Main3rd;
    #endif
    #if defined(LIL_FEATURE_EMISSION_1ST)
        lilBool _AudioLink2Emission;
    #endif
    #if defined(LIL_FEATURE_EMISSION_2ND)
        lilBool _AudioLink2Emission2nd;
    #endif
    #if defined(LIL_FEATURE_AUDIOLINK_VERTEX)
        lilBool _AudioLink2Vertex;
    #endif
    #if defined(LIL_FEATURE_AUDIOLINK_LOCAL)
        lilBool _AudioLinkAsLocal;
    #endif
#endif
#if defined(LIL_FEATURE_ENCRYPTION)
    lilBool _IgnoreEncryption;
#endif

lilBool _OutlineLitApplyTex;
lilBool _OutlineLitShadowReceive;
lilBool _OutlineDeleteMesh;
lilBool _OutlineDisableInVR;

#if defined(LIL_FUR)
    lilBool _VertexColor2FurVector;
#endif
#if defined(LIL_REFRACTION)
    lilBool _RefractionColorFromMain;
#endif

#endif