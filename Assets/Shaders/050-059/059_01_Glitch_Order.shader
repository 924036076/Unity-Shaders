﻿Shader "Custom/050-059/059_01_Glitch_Order"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            struct v2f
            {
                float4 pos : SV_POSITION;
            };
            
            v2f vert(float4 vertex : POSITION)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(vertex);
                vertex.x += sin(_Time.y);
                return o;
            }
            
            fixed4 frag(v2f i) : SV_TARGET
            {
                return _SinTime;
            }
            ENDCG
        }
    }
}   