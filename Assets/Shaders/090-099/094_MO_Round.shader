﻿Shader "Custom/090-099/094_MO_Round" 
{
	SubShader
	{
		CGPROGRAM
		#pragma surface surf Unlit
		
		inline half4 LightingUnlit(SurfaceOutput s, half3 lightDir, half atten)
		{
			return half4 (0, 0, 0, s.Alpha);
		}

		struct Input
		{
			float3 worldPos;
		};

		void surf(Input IN, inout SurfaceOutput o)
		{
            o.Emission = round(IN.worldPos.x * IN.worldPos.z);
		}
		ENDCG
	}
}
