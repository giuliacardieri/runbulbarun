﻿Shader "dc/single" {
    Properties{
        _Color ("Main Color", Color) = (1,1,1,1)
        _MainTex ("Base (RGB) Trans. (Alpha)", 2D) = "white" { }
    }
 
    Category
    {
        
        SubShader
        {	LOD 200
            Pass
            {
                Lighting Off
                SetTexture [_MainTex]
                {
                    constantColor [_Color]
                    Combine texture * constant, texture * constant
                }
            }
        }
    }
 }