﻿Shader "Custom/070-079/072_07_ColorMask_RB"
{
    SubShader
    {
        Pass 
        {
            ColorMask RB
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            
            #include "UnityCG.cginc"
            
            struct v2f
            {
                float4 pos : SV_POSITION;
            };
            
            v2f vert(appdata_base v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            
            fixed4 frag(v2f i) : SV_TARGET
            {
                return abs(_SinTime);
            }
            ENDCG
        }
    }
}   