﻿Shader "Hidden/lilToonFurCutout"
{
    Properties
    {
        //----------------------------------------------------------------------------------------------------------------------
        // Base
        [lilToggle]     _Invisible                  ("Invisible", Int) = 0
        [lilToggle]     _AsUnlit                    ("As Unlit", Int) = 0
                        _Cutoff                     ("Alpha Cutoff", Range(0,1)) = 0.5
        [lilToggle]     _FlipNormal                 ("Flip Backface Normal", Int) = 0
                        _BackfaceForceShadow        ("Backface Force Shadow", Range(0,1)) = 0

        //----------------------------------------------------------------------------------------------------------------------
        // Main
                        _Color                      ("Color", Color) = (1,1,1,1)
                        _MainTex                    ("Texture", 2D) = "white" {}
        [lilUVAnim]     _MainTex_ScrollRotate       ("Angle|UV Animation|Scroll|Rotate", Vector) = (0,0,0,0)
        [lilHSVG]       _MainTexHSVG                ("Hue|Saturation|Value|Gamma", Vector) = (0,1,1,1)

        //----------------------------------------------------------------------------------------------------------------------
        // Shadow
        [lilToggleLeft] _UseShadow                  ("Use Shadow", Int) = 0
        [lilToggle]     _ShadowReceive              ("Receive Shadow", Int) = 0
                        _ShadowBorder               ("Border", Range(0, 1)) = 0.5
        [NoScaleOffset] _ShadowBorderMask           ("Border", 2D) = "white" {}
                        _ShadowBlur                 ("Blur", Range(0, 1)) = 0.1
        [NoScaleOffset] _ShadowBlurMask             ("Blur", 2D) = "white" {}
                        _ShadowStrength             ("Strength", Range(0, 1)) = 1
        [NoScaleOffset] _ShadowStrengthMask         ("Strength", 2D) = "white" {}
                        _ShadowColor                ("Shadow Color", Color) = (0.7,0.75,0.85,1.0)
        [NoScaleOffset] _ShadowColorTex             ("Shadow Color", 2D) = "black" {}
                        _Shadow2ndBorder            ("2nd Border", Range(0, 1)) = 0.5
                        _Shadow2ndBlur              ("2nd Blur", Range(0, 1)) = 0.3
                        _Shadow2ndColor             ("Shadow 2nd Color", Color) = (0,0,0,0)
        [NoScaleOffset] _Shadow2ndColorTex          ("Shadow 2nd Color", 2D) = "black" {}
                        _ShadowMainStrength         ("Main Color Strength", Range(0, 1)) = 1
                        _ShadowEnvStrength          ("Environment Strength", Range(0, 1)) = 1
                        _ShadowBorderColor          ("Border Color", Color) = (1,0,0,1)
                        _ShadowBorderRange          ("Border Range", Range(0, 1)) = 0

        //----------------------------------------------------------------------------------------------------------------------
        // Advanced
        [lilCullMode]                                   _Cull               ("Cull Mode|Off|Front|Back", Int) = 2
        [Enum(UnityEngine.Rendering.BlendMode)]         _SrcBlend           ("SrcBlend", Int) = 1
        [Enum(UnityEngine.Rendering.BlendMode)]         _DstBlend           ("DstBlend", Int) = 0
        [Enum(UnityEngine.Rendering.BlendMode)]         _SrcBlendAlpha      ("SrcBlendAlpha", Int) = 1
        [Enum(UnityEngine.Rendering.BlendMode)]         _DstBlendAlpha      ("DstBlendAlpha", Int) = 10
        [Enum(UnityEngine.Rendering.BlendOp)]           _BlendOp            ("BlendOp", Int) = 0
        [Enum(UnityEngine.Rendering.BlendOp)]           _BlendOpAlpha       ("BlendOpAlpha", Int) = 0
        [Enum(UnityEngine.Rendering.BlendMode)]         _SrcBlendFA         ("ForwardAdd SrcBlend", Int) = 1
        [Enum(UnityEngine.Rendering.BlendMode)]         _DstBlendFA         ("ForwardAdd DstBlend", Int) = 1
        [Enum(UnityEngine.Rendering.BlendMode)]         _SrcBlendAlphaFA    ("ForwardAdd SrcBlendAlpha", Int) = 0
        [Enum(UnityEngine.Rendering.BlendMode)]         _DstBlendAlphaFA    ("ForwardAdd DstBlendAlpha", Int) = 1
        [Enum(UnityEngine.Rendering.BlendOp)]           _BlendOpFA          ("ForwardAdd BlendOp", Int) = 4
        [Enum(UnityEngine.Rendering.BlendOp)]           _BlendOpAlphaFA     ("ForwardAdd BlendOpAlpha", Int) = 4
        [lilToggle]                                     _ZWrite             ("ZWrite", Int) = 1
        [Enum(UnityEngine.Rendering.CompareFunction)]   _ZTest              ("ZTest", Int) = 4
        [IntRange]                                      _StencilRef         ("Stencil Reference Value", Range(0, 255)) = 0
        [IntRange]                                      _StencilReadMask    ("Stencil ReadMask Value", Range(0, 255)) = 255
        [IntRange]                                      _StencilWriteMask   ("Stencil WriteMask Value", Range(0, 255)) = 255
        [Enum(UnityEngine.Rendering.CompareFunction)]   _StencilComp        ("Stencil Compare Function", Float) = 8
        [Enum(UnityEngine.Rendering.StencilOp)]         _StencilPass        ("Stencil Pass", Float) = 0
        [Enum(UnityEngine.Rendering.StencilOp)]         _StencilFail        ("Stencil Fail", Float) = 0
        [Enum(UnityEngine.Rendering.StencilOp)]         _StencilZFail       ("Stencil ZFail", Float) = 0
                                                        _OffsetFactor       ("Offset Factor", Float) = 0
                                                        _OffsetUnits        ("Offset Units", Float) = 0
        [lilColorMask]                                  _ColorMask          ("Color Mask", Int) = 15

        //----------------------------------------------------------------------------------------------------------------------
        // Fur
                        _FurNoiseMask               ("Fur Noise", 2D) = "white" {}
        [NoScaleOffset] _FurMask                    ("Fur Mask", 2D) = "white" {}
        [NoScaleOffset][Normal] _FurVectorTex       ("Fur Vector", 2D) = "bump" {}
                        _FurVectorScale             ("Fur Vector scale", Range(-10,10)) = 1
        [lilVec3Float]  _FurVector                  ("Fur Vector|Fur Length", Vector) = (0.0,0.0,1.0,0.2)
        [lilToggle]     _VertexColor2FurVector      ("VertexColor->Vector", Int) = 0
                        _FurGravity                 ("Fur Gravity", Range(0,1)) = 0.25
                        _FurAO                      ("Fur AO", Range(0,1)) = 0
        [IntRange]      _FurLayerNum                ("Fur Layer Num", Range(1, 6)) = 4

        //----------------------------------------------------------------------------------------------------------------------
        // Fur Advanced
        [lilCullMode]                                   _FurCull                ("Cull Mode|Off|Front|Back", Int) = 0
        [Enum(UnityEngine.Rendering.BlendMode)]         _FurSrcBlend            ("SrcBlend", Int) = 1
        [Enum(UnityEngine.Rendering.BlendMode)]         _FurDstBlend            ("DstBlend", Int) = 0
        [Enum(UnityEngine.Rendering.BlendMode)]         _FurSrcBlendAlpha       ("SrcBlendAlpha", Int) = 1
        [Enum(UnityEngine.Rendering.BlendMode)]         _FurDstBlendAlpha       ("DstBlendAlpha", Int) = 10
        [Enum(UnityEngine.Rendering.BlendOp)]           _FurBlendOp             ("BlendOp", Int) = 0
        [Enum(UnityEngine.Rendering.BlendOp)]           _FurBlendOpAlpha        ("BlendOpAlpha", Int) = 0
        [Enum(UnityEngine.Rendering.BlendMode)]         _FurSrcBlendFA          ("ForwardAdd SrcBlend", Int) = 1
        [Enum(UnityEngine.Rendering.BlendMode)]         _FurDstBlendFA          ("ForwardAdd DstBlend", Int) = 1
        [Enum(UnityEngine.Rendering.BlendMode)]         _FurSrcBlendAlphaFA     ("ForwardAdd SrcBlendAlpha", Int) = 0
        [Enum(UnityEngine.Rendering.BlendMode)]         _FurDstBlendAlphaFA     ("ForwardAdd DstBlendAlpha", Int) = 1
        [Enum(UnityEngine.Rendering.BlendOp)]           _FurBlendOpFA           ("ForwardAdd BlendOp", Int) = 4
        [Enum(UnityEngine.Rendering.BlendOp)]           _FurBlendOpAlphaFA      ("ForwardAdd BlendOpAlpha", Int) = 4
        [lilToggle]                                     _FurZWrite              ("ZWrite", Int) = 1
        [Enum(UnityEngine.Rendering.CompareFunction)]   _FurZTest               ("ZTest", Int) = 4
        [IntRange]                                      _FurStencilRef          ("Stencil Reference Value", Range(0, 255)) = 0
        [IntRange]                                      _FurStencilReadMask     ("Stencil ReadMask Value", Range(0, 255)) = 255
        [IntRange]                                      _FurStencilWriteMask    ("Stencil WriteMask Value", Range(0, 255)) = 255
        [Enum(UnityEngine.Rendering.CompareFunction)]   _FurStencilComp         ("Stencil Compare Function", Float) = 8
        [Enum(UnityEngine.Rendering.StencilOp)]         _FurStencilPass         ("Stencil Pass", Float) = 0
        [Enum(UnityEngine.Rendering.StencilOp)]         _FurStencilFail         ("Stencil Fail", Float) = 0
        [Enum(UnityEngine.Rendering.StencilOp)]         _FurStencilZFail        ("Stencil ZFail", Float) = 0
                                                        _FurOffsetFactor        ("Offset Factor", Float) = 0
                                                        _FurOffsetUnits         ("Offset Units", Float) = 0
        [lilColorMask]                                  _FurColorMask           ("Color Mask", Int) = 15
    }
    SubShader
    {
        Tags {"RenderType" = "TransparentCutout" "Queue" = "AlphaTest"}

        // Forward
        Pass
        {
            Name "FORWARD"
            Tags {"LightMode" = "ForwardBase"
                "RenderType" = "TransparentCutout"}

            Stencil
            {
                Ref [_StencilRef]
                ReadMask [_StencilReadMask]
                WriteMask [_StencilWriteMask]
                Comp [_StencilComp]
                Pass [_StencilPass]
                Fail [_StencilFail]
                ZFail [_StencilZFail]
            }
            Cull [_Cull]
            ZWrite [_ZWrite]
            ZTest [_ZTest]
            ColorMask [_ColorMask]
            Offset [_OffsetFactor], [_OffsetUnits]
            BlendOp [_BlendOp], [_BlendOpAlpha]
            Blend [_SrcBlend] [_DstBlend], [_SrcBlendAlpha] [_DstBlendAlpha]
            AlphaToMask On

            HLSLPROGRAM

            //------------------------------------------------------------------------------------------------------------------
            // Build Option
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 4.0
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma multi_compile_instancing
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma skip_variants SHADOWS_SCREEN

            //------------------------------------------------------------------------------------------------------------------
            // Pass
            #define LIL_RENDER 1
            #define LIL_FUR
            #include "Includes/lil_pass_normal.hlsl"

            ENDHLSL
        }

        // Forward Fur
        Pass
        {
            Name "FORWARD_FUR"
            Tags {"LightMode" = "ForwardBase"
                "RenderType" = "TransparentCutout"}

            Stencil
            {
                Ref [_FurStencilRef]
                ReadMask [_FurStencilReadMask]
                WriteMask [_FurStencilWriteMask]
                Comp [_FurStencilComp]
                Pass [_FurStencilPass]
                Fail [_FurStencilFail]
                ZFail [_FurStencilZFail]
            }
            Cull [_FurCull]
            ZWrite [_FurZWrite]
            ZTest [_FurZTest]
            ColorMask [_FurColorMask]
            Offset [_FurOffsetFactor], [_FurOffsetUnits]
            BlendOp [_FurBlendOp], [_FurBlendOpAlpha]
            Blend [_FurSrcBlend] [_FurDstBlend], [_FurSrcBlendAlpha] [_FurDstBlendAlpha]
            AlphaToMask On

            HLSLPROGRAM

            //------------------------------------------------------------------------------------------------------------------
            // Build Option
            #pragma vertex vert
            #pragma geometry geom
            #pragma fragment frag
            #pragma require geometry
            #pragma target 4.0
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma multi_compile_instancing
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma skip_variants SHADOWS_SCREEN

            //------------------------------------------------------------------------------------------------------------------
            // Pass
            #define LIL_RENDER 1
            #include "Includes/lil_pass_fur.hlsl"

            ENDHLSL
        }

        // ForwardAdd
        Pass
        {
            Name "FORWARD_ADD"
            Tags {"LightMode" = "ForwardAdd"
                "RenderType" = "TransparentCutout"}

            Stencil
            {
                Ref [_StencilRef]
                ReadMask [_StencilReadMask]
                WriteMask [_StencilWriteMask]
                Comp [_StencilComp]
                Pass [_StencilPass]
                Fail [_StencilFail]
                ZFail [_StencilZFail]
            }
		    Cull [_Cull]
			ZWrite Off
            ZTest LEqual
            ColorMask [_ColorMask]
            Offset [_OffsetFactor], [_OffsetUnits]
            Blend [_SrcBlendFA] [_DstBlendFA], Zero One
            BlendOp [_BlendOpFA], [_BlendOpAlphaFA]
            Fog { Color(0,0,0,0) }
            AlphaToMask On

            HLSLPROGRAM

            //------------------------------------------------------------------------------------------------------------------
            // Build Option
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 4.0
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma multi_compile_instancing
            #pragma fragmentoption ARB_precision_hint_fastest

            //------------------------------------------------------------------------------------------------------------------
            // Pass
            #define LIL_RENDER 1
            #define LIL_FUR
            #define LIL_PASS_FORWARDADD
            #include "Includes/lil_pass_normal.hlsl"

            ENDHLSL
        }

        // ForwardAdd Fur
        Pass
        {
            Name "FORWARD_ADD_FUR"
            Tags {"LightMode" = "ForwardAdd"
                "RenderType" = "TransparentCutout"}

            Stencil
            {
                Ref [_FurStencilRef]
                ReadMask [_FurStencilReadMask]
                WriteMask [_FurStencilWriteMask]
                Comp [_FurStencilComp]
                Pass [_FurStencilPass]
                Fail [_FurStencilFail]
                ZFail [_FurStencilZFail]
            }
		    Cull [_FurCull]
			ZWrite Off
            ZTest LEqual
            ColorMask [_FurColorMask]
            Offset [_FurOffsetFactor], [_FurOffsetUnits]
            Blend [_FurSrcBlendFA] [_FurDstBlendFA], Zero One
            BlendOp [_FurBlendOpFA], [_FurBlendOpAlphaFA]
            Fog { Color(0,0,0,0) }
            AlphaToMask On

            HLSLPROGRAM

            //------------------------------------------------------------------------------------------------------------------
            // Build Option
            #pragma vertex vert
            #pragma geometry geom
            #pragma fragment frag
            #pragma target 4.0
            #pragma require geometry
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma multi_compile_instancing
            #pragma fragmentoption ARB_precision_hint_fastest

            //------------------------------------------------------------------------------------------------------------------
            // Pass
            #define LIL_RENDER 1
            #define LIL_PASS_FORWARDADD
            #include "Includes/lil_pass_fur.hlsl"

            ENDHLSL
        }

        UsePass "Hidden/ltspass_cutout/SHADOW_CASTER"

        // Meta
        Pass
        {
            Name "META"
            Tags {"LightMode" = "Meta"
                "RenderType" = "TransparentCutout"}
            Cull Off

            HLSLPROGRAM

            //------------------------------------------------------------------------------------------------------------------
            // Build Option
            #pragma vertex vert
            #pragma fragment frag
            #pragma shader_feature EDITOR_VISUALIZATION

            //------------------------------------------------------------------------------------------------------------------
            // Pass
            #define LIL_RENDER 1
            #define LIL_FUR
            #include "Includes/lil_pass_meta.hlsl"
            ENDHLSL
        }
    }
    Fallback "Unlit/Texture"
    CustomEditor "lilToon.lilToonInspector"
}