// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,nrsp:0,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2720,x:32719,y:32712,varname:node_2720,prsc:2|diff-5154-OUT,spec-7315-OUT,gloss-3852-OUT,normal-9302-RGB,amdfl-5577-RGB,amspl-5577-RGB;n:type:ShaderForge.SFN_Vector1,id:7991,x:31303,y:31805,varname:node_7991,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:192,x:31303,y:31884,varname:node_192,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:1792,x:31529,y:31582,ptovrint:False,ptlb:R,ptin:_R,varname:node_1792,prsc:2,on:False|A-7991-OUT,B-192-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7223,x:31529,y:31771,ptovrint:False,ptlb:G,ptin:_G,varname:_R_copy,prsc:2,on:True|A-7991-OUT,B-192-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:580,x:31529,y:31944,ptovrint:False,ptlb:B,ptin:_B,varname:_G_copy,prsc:2,on:False|A-7991-OUT,B-192-OUT;n:type:ShaderForge.SFN_If,id:4844,x:31756,y:31694,varname:node_4844,prsc:2|A-1792-OUT,B-7223-OUT,GT-4532-R,EQ-1792-OUT,LT-4532-G;n:type:ShaderForge.SFN_Tex2d,id:4532,x:31303,y:31614,varname:node_4532,prsc:2,ntxv:0,isnm:False|TEX-6335-TEX;n:type:ShaderForge.SFN_ValueProperty,id:6516,x:29853,y:35147,ptovrint:False,ptlb:Grunge Scale,ptin:_GrungeScale,varname:node_6516,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:3530,x:29948,y:35246,varname:node_3530,prsc:2,v1:0.001;n:type:ShaderForge.SFN_Max,id:1361,x:30142,y:35149,varname:node_1361,prsc:2|A-6516-OUT,B-3530-OUT;n:type:ShaderForge.SFN_Append,id:231,x:30323,y:35149,varname:node_231,prsc:2|A-1361-OUT,B-1361-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:6010,x:29641,y:35718,varname:node_6010,prsc:2;n:type:ShaderForge.SFN_Append,id:1170,x:29939,y:35470,varname:node_1170,prsc:2|A-6010-Y,B-6010-Z;n:type:ShaderForge.SFN_Append,id:1921,x:29926,y:35757,varname:node_1921,prsc:2|A-6010-Z,B-6010-X;n:type:ShaderForge.SFN_Append,id:5437,x:29926,y:36051,varname:node_5437,prsc:2|A-6010-X,B-6010-Y;n:type:ShaderForge.SFN_Divide,id:5485,x:30189,y:35470,varname:node_5485,prsc:2|A-1170-OUT,B-231-OUT;n:type:ShaderForge.SFN_Divide,id:6787,x:30178,y:35732,varname:node_6787,prsc:2|A-1921-OUT,B-231-OUT;n:type:ShaderForge.SFN_Divide,id:6978,x:30162,y:36051,varname:node_6978,prsc:2|A-5437-OUT,B-231-OUT;n:type:ShaderForge.SFN_NormalVector,id:1931,x:31131,y:35158,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:544,x:31336,y:35158,varname:node_544,prsc:2|IN-1931-OUT;n:type:ShaderForge.SFN_Multiply,id:392,x:31528,y:35158,varname:node_392,prsc:2|A-544-OUT,B-544-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7224,x:31112,y:35501,ptovrint:False,ptlb:Grunge Texture,ptin:_GrungeTexture,varname:node_7224,glob:False,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1008,x:31349,y:35331,varname:node_1008,prsc:2,ntxv:0,isnm:False|UVIN-4755-OUT,TEX-7224-TEX;n:type:ShaderForge.SFN_Tex2d,id:7578,x:31345,y:35518,varname:node_7578,prsc:2,ntxv:0,isnm:False|UVIN-7234-OUT,TEX-7224-TEX;n:type:ShaderForge.SFN_Tex2d,id:8873,x:31345,y:35704,varname:node_8873,prsc:2,ntxv:0,isnm:False|UVIN-6383-OUT,TEX-7224-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:5216,x:31776,y:35330,varname:node_5216,prsc:2,chbt:0|M-392-OUT,R-1008-R,G-7578-R,B-8873-R;n:type:ShaderForge.SFN_SwitchProperty,id:9372,x:32771,y:32236,ptovrint:False,ptlb:metal,ptin:_metal,varname:node_9372,prsc:2,on:False|A-8481-OUT,B-9850-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8949,x:32771,y:32399,ptovrint:False,ptlb:non-metal,ptin:_nonmetal,varname:_metal_copy,prsc:2,on:False|A-8481-OUT,B-9850-OUT;n:type:ShaderForge.SFN_Vector1,id:8481,x:32560,y:32357,varname:node_8481,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9850,x:32547,y:32270,varname:node_9850,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:3358,x:33034,y:32305,varname:node_3358,prsc:2|A-9372-OUT,B-8949-OUT,GT-9850-OUT,EQ-8481-OUT,LT-8481-OUT;n:type:ShaderForge.SFN_Color,id:3913,x:28212,y:32125,ptovrint:False,ptlb:Colour 1,ptin:_Colour1,varname:node_3913,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:1938,x:28212,y:32306,ptovrint:False,ptlb:Colour 2,ptin:_Colour2,varname:_Colour2,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:1751,x:28212,y:32496,ptovrint:False,ptlb:Colour 3,ptin:_Colour3,varname:_Colour3,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ChannelBlend,id:5947,x:28473,y:32254,varname:node_5947,prsc:2,chbt:0|M-146-RGB,R-3913-RGB,G-1938-RGB,B-1751-RGB;n:type:ShaderForge.SFN_VertexColor,id:146,x:28394,y:32013,varname:node_146,prsc:2;n:type:ShaderForge.SFN_Desaturate,id:7495,x:31486,y:32734,varname:node_7495,prsc:2|COL-6711-OUT,DES-6676-OUT;n:type:ShaderForge.SFN_Tex2d,id:9302,x:31822,y:32930,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9302,prsc:2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Blend,id:8245,x:29259,y:32755,varname:node_8245,prsc:2,blmd:1,clmp:True|SRC-3181-OUT,DST-6535-OUT;n:type:ShaderForge.SFN_If,id:6535,x:31934,y:31838,varname:node_6535,prsc:2|A-4844-OUT,B-580-OUT,GT-4844-OUT,EQ-4844-OUT,LT-4532-B;n:type:ShaderForge.SFN_Slider,id:7472,x:33013,y:32729,ptovrint:False,ptlb:roughness,ptin:_roughness,varname:node_7472,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_AmbientLight,id:5577,x:32449,y:32891,varname:node_5577,prsc:2;n:type:ShaderForge.SFN_LightColor,id:175,x:31831,y:32578,varname:node_175,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5154,x:32170,y:32734,varname:node_5154,prsc:2|A-1390-OUT,B-7185-OUT;n:type:ShaderForge.SFN_Desaturate,id:1390,x:32031,y:32600,varname:node_1390,prsc:2|COL-175-RGB,DES-7468-OUT;n:type:ShaderForge.SFN_Vector1,id:7468,x:31943,y:32538,varname:node_7468,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Blend,id:9514,x:29446,y:32755,varname:node_9514,prsc:2,blmd:12,clmp:False|SRC-8245-OUT,DST-6535-OUT;n:type:ShaderForge.SFN_Add,id:7333,x:29705,y:32797,varname:node_7333,prsc:2|A-9514-OUT,B-7819-OUT;n:type:ShaderForge.SFN_Vector1,id:7819,x:29540,y:32661,varname:node_7819,prsc:2,v1:0.15;n:type:ShaderForge.SFN_If,id:5613,x:32097,y:35371,varname:node_5613,prsc:2|A-4663-OUT,B-1799-OUT,GT-5216-OUT,EQ-5216-OUT,LT-2790-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:2790,x:31776,y:35495,varname:node_2790,prsc:2,chbt:0|M-392-OUT,R-1008-G,G-7578-G,B-8873-G;n:type:ShaderForge.SFN_ChannelBlend,id:9647,x:31776,y:35671,varname:node_9647,prsc:2,chbt:0|M-392-OUT,R-1008-B,G-7578-B,B-8873-B;n:type:ShaderForge.SFN_SwitchProperty,id:4663,x:31929,y:35205,ptovrint:False,ptlb:Grunge1,ptin:_Grunge1,varname:node_4663,prsc:2,on:False|A-2579-OUT,B-2362-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1799,x:32132,y:35205,ptovrint:False,ptlb:Grunge2,ptin:_Grunge2,varname:node_1799,prsc:2,on:True|A-2579-OUT,B-2362-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:982,x:32338,y:35162,ptovrint:False,ptlb:Grunge3,ptin:_Grunge3,varname:node_982,prsc:2,on:False|A-2579-OUT,B-2362-OUT;n:type:ShaderForge.SFN_Vector1,id:2579,x:31754,y:35166,varname:node_2579,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2362,x:31754,y:35224,varname:node_2362,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:6037,x:32327,y:35499,varname:node_6037,prsc:2|A-5613-OUT,B-982-OUT,GT-5613-OUT,EQ-5613-OUT,LT-9647-OUT;n:type:ShaderForge.SFN_If,id:9203,x:32920,y:35469,varname:node_9203,prsc:2|A-6037-OUT,B-3321-OUT,GT-5818-OUT,EQ-3321-OUT,LT-3444-OUT;n:type:ShaderForge.SFN_Vector1,id:7424,x:32701,y:35331,varname:node_7424,prsc:2,v1:0.61;n:type:ShaderForge.SFN_Vector1,id:3444,x:32663,y:35539,varname:node_3444,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:5818,x:32437,y:35419,ptovrint:False,ptlb:Grunge Strength,ptin:_GrungeStrength,varname:node_5818,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Divide,id:7364,x:30367,y:34671,varname:node_7364,prsc:2|A-1170-OUT,B-9085-OUT;n:type:ShaderForge.SFN_Divide,id:4962,x:30367,y:34825,varname:node_4962,prsc:2|A-1921-OUT,B-9085-OUT;n:type:ShaderForge.SFN_Divide,id:4165,x:30367,y:34974,varname:node_4165,prsc:2|A-5437-OUT,B-9085-OUT;n:type:ShaderForge.SFN_Append,id:9085,x:30109,y:34847,varname:node_9085,prsc:2|A-6767-OUT,B-6767-OUT;n:type:ShaderForge.SFN_Max,id:6767,x:29957,y:34847,varname:node_6767,prsc:2|A-7630-OUT,B-3530-OUT;n:type:ShaderForge.SFN_Multiply,id:7630,x:29831,y:34983,varname:node_7630,prsc:2|A-7111-OUT,B-6516-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:6080,x:31751,y:34652,varname:node_6080,prsc:2,chbt:0|M-392-OUT,R-2945-R,G-8875-R,B-7860-R;n:type:ShaderForge.SFN_ChannelBlend,id:4819,x:31751,y:34817,varname:node_4819,prsc:2,chbt:0|M-392-OUT,R-2945-G,G-8875-G,B-7860-G;n:type:ShaderForge.SFN_ChannelBlend,id:2316,x:31751,y:34993,varname:node_2316,prsc:2,chbt:0|M-392-OUT,R-2945-B,G-8875-B,B-7860-B;n:type:ShaderForge.SFN_If,id:2554,x:32101,y:34990,varname:node_2554,prsc:2|A-4663-OUT,B-1799-OUT,GT-6080-OUT,EQ-6080-OUT,LT-4819-OUT;n:type:ShaderForge.SFN_If,id:4615,x:32323,y:34898,varname:node_4615,prsc:2|A-2554-OUT,B-982-OUT,GT-2554-OUT,EQ-2554-OUT,LT-2316-OUT;n:type:ShaderForge.SFN_If,id:1869,x:32995,y:35057,varname:node_1869,prsc:2|A-4615-OUT,B-3321-OUT,GT-5215-OUT,EQ-3321-OUT,LT-2310-OUT;n:type:ShaderForge.SFN_Vector1,id:8579,x:32776,y:34919,varname:node_8579,prsc:2,v1:0.61;n:type:ShaderForge.SFN_Vector1,id:2310,x:32738,y:35127,varname:node_2310,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:5215,x:32511,y:35007,ptovrint:False,ptlb:Grunge2_Strength,ptin:_Grunge2_Strength,varname:_GrungeStrength_copy,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_ValueProperty,id:7111,x:29614,y:35017,ptovrint:False,ptlb:Grunge2_Scale,ptin:_Grunge2_Scale,varname:node_7111,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:2945,x:31307,y:34659,varname:node_2945,prsc:2,ntxv:0,isnm:False|UVIN-9204-OUT,TEX-7224-TEX;n:type:ShaderForge.SFN_Tex2d,id:8875,x:31323,y:34817,varname:node_8875,prsc:2,ntxv:0,isnm:False|UVIN-5562-OUT,TEX-7224-TEX;n:type:ShaderForge.SFN_Tex2d,id:7860,x:31323,y:34976,varname:node_7860,prsc:2,ntxv:0,isnm:False|UVIN-2829-OUT,TEX-7224-TEX;n:type:ShaderForge.SFN_Vector1,id:6676,x:31486,y:32898,varname:node_6676,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Clamp,id:6376,x:30946,y:32354,varname:node_6376,prsc:2|IN-7551-OUT,MIN-3126-OUT,MAX-6399-OUT;n:type:ShaderForge.SFN_Slider,id:6302,x:30388,y:32400,ptovrint:False,ptlb:ao_strength,ptin:_ao_strength,varname:node_6302,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:3126,x:30746,y:32381,varname:node_3126,prsc:2|IN-6302-OUT;n:type:ShaderForge.SFN_If,id:6049,x:31141,y:32263,varname:node_6049,prsc:2|A-1721-OUT,B-8524-OUT,GT-6376-OUT,EQ-4336-OUT,LT-4336-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1721,x:30856,y:32127,ptovrint:False,ptlb:vertex alpha ao,ptin:_vertexalphaao,varname:node_1721,prsc:2,on:False|A-8524-OUT,B-4336-OUT;n:type:ShaderForge.SFN_Vector1,id:8524,x:30638,y:32201,varname:node_8524,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4336,x:30638,y:32273,varname:node_4336,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:3321,x:32562,y:35225,ptovrint:False,ptlb:Grunge_Levels,ptin:_Grunge_Levels,varname:node_3321,prsc:2,min:0,cur:0.61,max:1;n:type:ShaderForge.SFN_If,id:1268,x:30283,y:31706,varname:node_1268,prsc:2|A-146-A,B-8941-OUT,GT-3575-OUT,EQ-8941-OUT,LT-8192-OUT;n:type:ShaderForge.SFN_Vector1,id:8941,x:29902,y:31552,varname:node_8941,prsc:2,v1:0.65;n:type:ShaderForge.SFN_Vector1,id:3575,x:29902,y:31644,varname:node_3575,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8192,x:29894,y:31710,varname:node_8192,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:3843,x:31339,y:32479,varname:node_3843,prsc:2|A-6049-OUT,B-6399-OUT,T-6049-OUT;n:type:ShaderForge.SFN_Vector1,id:6399,x:31103,y:32513,varname:node_6399,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:7551,x:30421,y:31949,varname:node_7551,prsc:2|A-8318-OUT,B-8192-OUT,GT-1268-OUT,EQ-146-A,LT-146-A;n:type:ShaderForge.SFN_Add,id:49,x:33075,y:32515,varname:node_49,prsc:2|A-3358-OUT,B-9850-OUT;n:type:ShaderForge.SFN_Blend,id:3852,x:33399,y:32774,varname:node_3852,prsc:2,blmd:6,clmp:False|SRC-3411-OUT,DST-7472-OUT;n:type:ShaderForge.SFN_Add,id:3411,x:33399,y:32994,varname:node_3411,prsc:2|A-1869-OUT,B-9203-OUT;n:type:ShaderForge.SFN_Blend,id:7315,x:32471,y:32519,varname:node_7315,prsc:2,blmd:19,clmp:True|SRC-3411-OUT,DST-3358-OUT;n:type:ShaderForge.SFN_Multiply,id:3666,x:30538,y:33050,varname:node_3666,prsc:2|A-5102-OUT,B-1938-RGB;n:type:ShaderForge.SFN_Lerp,id:9698,x:30783,y:32759,varname:node_9698,prsc:2|A-5102-OUT,B-3666-OUT,T-4584-OUT;n:type:ShaderForge.SFN_Multiply,id:7426,x:30869,y:33047,varname:node_7426,prsc:2|A-5102-OUT,B-1751-RGB;n:type:ShaderForge.SFN_Lerp,id:7660,x:31048,y:32769,varname:node_7660,prsc:2|A-9698-OUT,B-7426-OUT,T-9127-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1273,x:28527,y:32691,ptovrint:False,ptlb:Use Vertex Colours,ptin:_UseVertexColours,varname:node_1273,prsc:2,on:True|A-5518-OUT,B-2680-OUT;n:type:ShaderForge.SFN_Vector1,id:5518,x:28245,y:32793,varname:node_5518,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2680,x:28248,y:32719,varname:node_2680,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:3181,x:28564,y:32471,varname:node_3181,prsc:2|A-1273-OUT,B-5518-OUT,GT-5947-OUT,EQ-3913-RGB,LT-3913-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:8318,x:30115,y:31843,ptovrint:False,ptlb:ao facet,ptin:_aofacet,varname:node_8318,prsc:2,on:False|A-8192-OUT,B-3575-OUT;n:type:ShaderForge.SFN_Blend,id:5529,x:29075,y:33581,varname:node_5529,prsc:2,blmd:10,clmp:True|SRC-7059-R,DST-3913-RGB;n:type:ShaderForge.SFN_Lerp,id:2292,x:29434,y:33626,varname:node_2292,prsc:2|A-5529-OUT,B-9926-OUT,T-4532-G;n:type:ShaderForge.SFN_Blend,id:9926,x:29232,y:33833,varname:node_9926,prsc:2,blmd:1,clmp:True|SRC-4532-G,DST-1938-RGB;n:type:ShaderForge.SFN_Blend,id:4941,x:29638,y:33872,varname:node_4941,prsc:2,blmd:1,clmp:True|SRC-4532-B,DST-1751-RGB;n:type:ShaderForge.SFN_Lerp,id:8322,x:29815,y:33642,varname:node_8322,prsc:2|A-2292-OUT,B-4941-OUT,T-4532-B;n:type:ShaderForge.SFN_Tex2dAsset,id:6335,x:31079,y:31661,ptovrint:False,ptlb:Base Texture,ptin:_BaseTexture,varname:node_6335,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7059,x:29155,y:33334,varname:node_7059,prsc:2,ntxv:0,isnm:False|UVIN-1591-OUT,TEX-6335-TEX;n:type:ShaderForge.SFN_TexCoord,id:1474,x:28765,y:33399,varname:node_1474,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:1591,x:28959,y:33334,varname:node_1591,prsc:2|A-1474-UVOUT,B-1905-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1724,x:29763,y:33103,ptovrint:False,ptlb:Use Texture RGB Mask,ptin:_UseTextureRGBMask,varname:node_1724,prsc:2,on:False|A-1834-OUT,B-3225-OUT;n:type:ShaderForge.SFN_Vector1,id:1834,x:29556,y:33071,varname:node_1834,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3225,x:29556,y:33137,varname:node_3225,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:5102,x:30269,y:32852,varname:node_5102,prsc:2|A-1724-OUT,B-1834-OUT,GT-2292-OUT,EQ-7333-OUT,LT-7333-OUT;n:type:ShaderForge.SFN_Multiply,id:7185,x:31764,y:32722,varname:node_7185,prsc:2|A-3843-OUT,B-7495-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:5036,x:30120,y:35888,varname:node_5036,prsc:2;n:type:ShaderForge.SFN_Panner,id:2611,x:30403,y:36041,varname:node_2611,prsc:2,spu:-1,spv:0|UVIN-6978-OUT,DIST-2979-OUT;n:type:ShaderForge.SFN_Panner,id:6109,x:30596,y:36041,varname:node_6109,prsc:2,spu:0,spv:-1|UVIN-2611-UVOUT,DIST-9321-OUT;n:type:ShaderForge.SFN_Divide,id:2979,x:30403,y:36207,varname:node_2979,prsc:2|A-5036-X,B-6516-OUT;n:type:ShaderForge.SFN_Divide,id:9321,x:30596,y:36207,varname:node_9321,prsc:2|A-5036-Y,B-6516-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1781,x:31093,y:36543,ptovrint:False,ptlb:Lock Grunge,ptin:_LockGrunge,varname:node_1781,prsc:2,on:False|A-6763-OUT,B-3104-OUT;n:type:ShaderForge.SFN_Vector1,id:3104,x:30913,y:36594,varname:node_3104,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6763,x:30913,y:36530,varname:node_6763,prsc:2,v1:0;n:type:ShaderForge.SFN_If,id:6383,x:30913,y:36122,varname:node_6383,prsc:2|A-1781-OUT,B-6763-OUT,GT-6109-UVOUT,EQ-6978-OUT,LT-6978-OUT;n:type:ShaderForge.SFN_Panner,id:7858,x:30383,y:35689,varname:node_7858,prsc:2,spu:-1,spv:0|UVIN-6787-OUT,DIST-6236-OUT;n:type:ShaderForge.SFN_Panner,id:3820,x:30593,y:35689,varname:node_3820,prsc:2,spu:0,spv:-1|UVIN-7858-UVOUT,DIST-8785-OUT;n:type:ShaderForge.SFN_Divide,id:6236,x:30370,y:35857,varname:node_6236,prsc:2|A-5036-Z,B-6516-OUT;n:type:ShaderForge.SFN_Divide,id:8785,x:30578,y:35845,varname:node_8785,prsc:2|A-5036-X,B-6516-OUT;n:type:ShaderForge.SFN_Panner,id:8418,x:30377,y:35401,varname:node_8418,prsc:2,spu:-1,spv:0|UVIN-5485-OUT,DIST-9289-OUT;n:type:ShaderForge.SFN_Panner,id:3192,x:30548,y:35401,varname:node_3192,prsc:2,spu:0,spv:-1|UVIN-8418-UVOUT,DIST-4023-OUT;n:type:ShaderForge.SFN_Divide,id:9289,x:30377,y:35557,varname:node_9289,prsc:2|A-5036-Y,B-6516-OUT;n:type:ShaderForge.SFN_Divide,id:4023,x:30564,y:35557,varname:node_4023,prsc:2|A-5036-Z,B-6516-OUT;n:type:ShaderForge.SFN_If,id:7234,x:30885,y:35790,varname:node_7234,prsc:2|A-1781-OUT,B-6763-OUT,GT-3820-UVOUT,EQ-6787-OUT,LT-6787-OUT;n:type:ShaderForge.SFN_If,id:4755,x:30853,y:35493,varname:node_4755,prsc:2|A-1781-OUT,B-6763-OUT,GT-3192-UVOUT,EQ-5485-OUT,LT-5485-OUT;n:type:ShaderForge.SFN_Multiply,id:43,x:30602,y:34671,varname:node_43,prsc:2|A-3192-UVOUT,B-7111-OUT;n:type:ShaderForge.SFN_Multiply,id:9655,x:30602,y:34825,varname:node_9655,prsc:2|A-3820-UVOUT,B-7111-OUT;n:type:ShaderForge.SFN_Multiply,id:7209,x:30602,y:34974,varname:node_7209,prsc:2|A-6109-UVOUT,B-7111-OUT;n:type:ShaderForge.SFN_If,id:9204,x:30898,y:34672,varname:node_9204,prsc:2|A-1781-OUT,B-6763-OUT,GT-43-OUT,EQ-7364-OUT,LT-7364-OUT;n:type:ShaderForge.SFN_If,id:5562,x:30887,y:34813,varname:node_5562,prsc:2|A-1781-OUT,B-6763-OUT,GT-9655-OUT,EQ-4962-OUT,LT-4962-OUT;n:type:ShaderForge.SFN_If,id:2829,x:30895,y:34968,varname:node_2829,prsc:2|A-1781-OUT,B-6763-OUT,GT-7209-OUT,EQ-4165-OUT,LT-4165-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1905,x:28549,y:33335,ptovrint:False,ptlb:R Channel UV,ptin:_RChannelUV,varname:node_1905,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_If,id:9127,x:30721,y:33385,varname:node_9127,prsc:2|A-5244-OUT,B-3344-OUT,GT-5244-OUT,EQ-5244-OUT,LT-1869-OUT;n:type:ShaderForge.SFN_If,id:4584,x:30227,y:33407,varname:node_4584,prsc:2|A-5244-OUT,B-3344-OUT,GT-5244-OUT,EQ-5244-OUT,LT-9203-OUT;n:type:ShaderForge.SFN_Vector1,id:5244,x:30446,y:33496,varname:node_5244,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8451,x:30446,y:33564,varname:node_8451,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:3344,x:30424,y:33673,ptovrint:False,ptlb:Use Grunge,ptin:_UseGrunge,varname:node_3344,prsc:2,on:True|A-5244-OUT,B-8451-OUT;n:type:ShaderForge.SFN_If,id:6711,x:31236,y:32631,varname:node_6711,prsc:2|A-5003-OUT,B-8524-OUT,GT-146-RGB,EQ-7660-OUT,LT-7660-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5003,x:31201,y:32959,ptovrint:False,ptlb:Flat Vertex Colour,ptin:_FlatVertexColour,varname:node_5003,prsc:2,on:False|A-5518-OUT,B-2680-OUT;proporder:1792-7223-580-9372-8949-7472-6335-1273-3913-1938-1751-9302-7224-3344-4663-1799-982-6516-3321-5818-5215-7111-1721-6302-8318-1724-1905-1781-5003;pass:END;sub:END;*/

Shader "Custom/EnvironmentShader" {
    Properties {
        [MaterialToggle] _R ("R", Float ) = 0
        [MaterialToggle] _G ("G", Float ) = 1
        [MaterialToggle] _B ("B", Float ) = 0
        [MaterialToggle] _metal ("metal", Float ) = 0
        [MaterialToggle] _nonmetal ("non-metal", Float ) = 0
        _roughness ("roughness", Range(0, 1)) = 0
        _BaseTexture ("Base Texture", 2D) = "white" {}
        [MaterialToggle] _UseVertexColours ("Use Vertex Colours", Float ) = 1
        _Colour1 ("Colour 1", Color) = (0.5,0.5,0.5,1)
        _Colour2 ("Colour 2", Color) = (0.5,0.5,0.5,1)
        _Colour3 ("Colour 3", Color) = (0.5,0.5,0.5,1)
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _GrungeTexture ("Grunge Texture", 2D) = "bump" {}
        [MaterialToggle] _UseGrunge ("Use Grunge", Float ) = 1
        [MaterialToggle] _Grunge1 ("Grunge1", Float ) = 0
        [MaterialToggle] _Grunge2 ("Grunge2", Float ) = 1
        [MaterialToggle] _Grunge3 ("Grunge3", Float ) = 0
        _GrungeScale ("Grunge Scale", Float ) = 1
        _Grunge_Levels ("Grunge_Levels", Range(0, 1)) = 0.61
        _GrungeStrength ("Grunge Strength", Range(0, 1)) = 0.5
        _Grunge2_Strength ("Grunge2_Strength", Range(0, 1)) = 0.5
        _Grunge2_Scale ("Grunge2_Scale", Float ) = 1
        [MaterialToggle] _vertexalphaao ("vertex alpha ao", Float ) = 0
        _ao_strength ("ao_strength", Range(0, 1)) = 0
        [MaterialToggle] _aofacet ("ao facet", Float ) = 0
        [MaterialToggle] _UseTextureRGBMask ("Use Texture RGB Mask", Float ) = 0
        _RChannelUV ("R Channel UV", Float ) = 1
        [MaterialToggle] _LockGrunge ("Lock Grunge", Float ) = 0
        [MaterialToggle] _FlatVertexColour ("Flat Vertex Colour", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform fixed _R;
            uniform fixed _G;
            uniform fixed _B;
            uniform float _GrungeScale;
            uniform sampler2D _GrungeTexture; uniform float4 _GrungeTexture_ST;
            uniform fixed _metal;
            uniform fixed _nonmetal;
            uniform float4 _Colour1;
            uniform float4 _Colour2;
            uniform float4 _Colour3;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _roughness;
            uniform fixed _Grunge1;
            uniform fixed _Grunge2;
            uniform fixed _Grunge3;
            uniform float _GrungeStrength;
            uniform float _Grunge2_Strength;
            uniform float _Grunge2_Scale;
            uniform float _ao_strength;
            uniform fixed _vertexalphaao;
            uniform float _Grunge_Levels;
            uniform fixed _UseVertexColours;
            uniform fixed _aofacet;
            uniform sampler2D _BaseTexture; uniform float4 _BaseTexture_ST;
            uniform fixed _UseTextureRGBMask;
            uniform fixed _LockGrunge;
            uniform float _RChannelUV;
            uniform fixed _UseGrunge;
            uniform fixed _FlatVertexColour;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
            #endif
            #ifdef DYNAMICLIGHTMAP_ON
                o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
            #endif
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = UnityObjectToClipPos(v.vertex);
            UNITY_TRANSFER_FOG(o,o.pos);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
            float3 normalLocal = _NormalMap_var.rgb;
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
            float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float node_2579 = 0.0;
            float node_2362 = 1.0;
            float _Grunge1_var = lerp( node_2579, node_2362, _Grunge1 );
            float _Grunge2_var = lerp( node_2579, node_2362, _Grunge2 );
            float node_2554_if_leA = step(_Grunge1_var,_Grunge2_var);
            float node_2554_if_leB = step(_Grunge2_var,_Grunge1_var);
            float3 node_544 = abs(i.normalDir);
            float3 node_392 = (node_544*node_544);
            float node_6763 = 0.0;
            float _LockGrunge_var = lerp( node_6763, 1.0, _LockGrunge );
            float node_9204_if_leA = step(_LockGrunge_var,node_6763);
            float node_9204_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_1170 = float2(i.posWorld.g,i.posWorld.b);
            float node_3530 = 0.001;
            float node_6767 = max((_Grunge2_Scale*_GrungeScale),node_3530);
            float2 node_9085 = float2(node_6767,node_6767);
            float2 node_7364 = (node_1170/node_9085);
            float node_1361 = max(_GrungeScale,node_3530);
            float2 node_231 = float2(node_1361,node_1361);
            float2 node_5485 = (node_1170/node_231);
            float2 node_3192 = ((node_5485+(objPos.g/_GrungeScale)*float2(-1,0))+(objPos.b/_GrungeScale)*float2(0,-1));
            float2 node_9204 = lerp((node_9204_if_leA*node_7364)+(node_9204_if_leB*(node_3192*_Grunge2_Scale)),node_7364,node_9204_if_leA*node_9204_if_leB);
            float4 node_2945 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_9204, _GrungeTexture));
            float node_5562_if_leA = step(_LockGrunge_var,node_6763);
            float node_5562_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_1921 = float2(i.posWorld.b,i.posWorld.r);
            float2 node_4962 = (node_1921/node_9085);
            float2 node_6787 = (node_1921/node_231);
            float2 node_3820 = ((node_6787+(objPos.b/_GrungeScale)*float2(-1,0))+(objPos.r/_GrungeScale)*float2(0,-1));
            float2 node_5562 = lerp((node_5562_if_leA*node_4962)+(node_5562_if_leB*(node_3820*_Grunge2_Scale)),node_4962,node_5562_if_leA*node_5562_if_leB);
            float4 node_8875 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_5562, _GrungeTexture));
            float node_2829_if_leA = step(_LockGrunge_var,node_6763);
            float node_2829_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_5437 = float2(i.posWorld.r,i.posWorld.g);
            float2 node_4165 = (node_5437/node_9085);
            float2 node_6978 = (node_5437/node_231);
            float2 node_6109 = ((node_6978+(objPos.r/_GrungeScale)*float2(-1,0))+(objPos.g/_GrungeScale)*float2(0,-1));
            float2 node_2829 = lerp((node_2829_if_leA*node_4165)+(node_2829_if_leB*(node_6109*_Grunge2_Scale)),node_4165,node_2829_if_leA*node_2829_if_leB);
            float4 node_7860 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_2829, _GrungeTexture));
            float node_6080 = (node_392.r*node_2945.r + node_392.g*node_8875.r + node_392.b*node_7860.r);
            float node_2554 = lerp((node_2554_if_leA*(node_392.r*node_2945.g + node_392.g*node_8875.g + node_392.b*node_7860.g))+(node_2554_if_leB*node_6080),node_6080,node_2554_if_leA*node_2554_if_leB);
            float _Grunge3_var = lerp( node_2579, node_2362, _Grunge3 );
            float node_4615_if_leA = step(node_2554,_Grunge3_var);
            float node_4615_if_leB = step(_Grunge3_var,node_2554);
            float node_1869_if_leA = step(lerp((node_4615_if_leA*(node_392.r*node_2945.b + node_392.g*node_8875.b + node_392.b*node_7860.b))+(node_4615_if_leB*node_2554),node_2554,node_4615_if_leA*node_4615_if_leB),_Grunge_Levels);
            float node_1869_if_leB = step(_Grunge_Levels,lerp((node_4615_if_leA*(node_392.r*node_2945.b + node_392.g*node_8875.b + node_392.b*node_7860.b))+(node_4615_if_leB*node_2554),node_2554,node_4615_if_leA*node_4615_if_leB));
            float node_1869 = lerp((node_1869_if_leA*0.0)+(node_1869_if_leB*_Grunge2_Strength),_Grunge_Levels,node_1869_if_leA*node_1869_if_leB);
            float node_5613_if_leA = step(_Grunge1_var,_Grunge2_var);
            float node_5613_if_leB = step(_Grunge2_var,_Grunge1_var);
            float node_4755_if_leA = step(_LockGrunge_var,node_6763);
            float node_4755_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_4755 = lerp((node_4755_if_leA*node_5485)+(node_4755_if_leB*node_3192),node_5485,node_4755_if_leA*node_4755_if_leB);
            float4 node_1008 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_4755, _GrungeTexture));
            float node_7234_if_leA = step(_LockGrunge_var,node_6763);
            float node_7234_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_7234 = lerp((node_7234_if_leA*node_6787)+(node_7234_if_leB*node_3820),node_6787,node_7234_if_leA*node_7234_if_leB);
            float4 node_7578 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_7234, _GrungeTexture));
            float node_6383_if_leA = step(_LockGrunge_var,node_6763);
            float node_6383_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_6383 = lerp((node_6383_if_leA*node_6978)+(node_6383_if_leB*node_6109),node_6978,node_6383_if_leA*node_6383_if_leB);
            float4 node_8873 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_6383, _GrungeTexture));
            float node_5216 = (node_392.r*node_1008.r + node_392.g*node_7578.r + node_392.b*node_8873.r);
            float node_5613 = lerp((node_5613_if_leA*(node_392.r*node_1008.g + node_392.g*node_7578.g + node_392.b*node_8873.g))+(node_5613_if_leB*node_5216),node_5216,node_5613_if_leA*node_5613_if_leB);
            float node_6037_if_leA = step(node_5613,_Grunge3_var);
            float node_6037_if_leB = step(_Grunge3_var,node_5613);
            float node_9203_if_leA = step(lerp((node_6037_if_leA*(node_392.r*node_1008.b + node_392.g*node_7578.b + node_392.b*node_8873.b))+(node_6037_if_leB*node_5613),node_5613,node_6037_if_leA*node_6037_if_leB),_Grunge_Levels);
            float node_9203_if_leB = step(_Grunge_Levels,lerp((node_6037_if_leA*(node_392.r*node_1008.b + node_392.g*node_7578.b + node_392.b*node_8873.b))+(node_6037_if_leB*node_5613),node_5613,node_6037_if_leA*node_6037_if_leB));
            float node_9203 = lerp((node_9203_if_leA*0.0)+(node_9203_if_leB*_GrungeStrength),_Grunge_Levels,node_9203_if_leA*node_9203_if_leB);
            float node_3411 = (node_1869+node_9203);
            float gloss = 1.0 - (1.0-(1.0-node_3411)*(1.0-_roughness)); // Convert roughness to gloss
            float specPow = exp2( gloss * 10.0+1.0);
/// GI Data:
            UnityLight light;
            #ifdef LIGHTMAP_OFF
                light.color = lightColor;
                light.dir = lightDirection;
                light.ndotl = LambertTerm (normalDirection, light.dir);
            #else
                light.color = half3(0.f, 0.f, 0.f);
                light.ndotl = 0.0f;
                light.dir = half3(0.f, 0.f, 0.f);
            #endif
            UnityGIInput d;
            d.light = light;
            d.worldPos = i.posWorld.xyz;
            d.worldViewDir = viewDirection;
            d.atten = attenuation;
            #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                d.ambient = 0;
                d.lightmapUV = i.ambientOrLightmapUV;
            #else
                d.ambient = i.ambientOrLightmapUV;
            #endif
            d.boxMax[0] = unity_SpecCube0_BoxMax;
            d.boxMin[0] = unity_SpecCube0_BoxMin;
            d.probePosition[0] = unity_SpecCube0_ProbePosition;
            d.probeHDR[0] = unity_SpecCube0_HDR;
            d.boxMax[1] = unity_SpecCube1_BoxMax;
            d.boxMin[1] = unity_SpecCube1_BoxMin;
            d.probePosition[1] = unity_SpecCube1_ProbePosition;
            d.probeHDR[1] = unity_SpecCube1_HDR;
            UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
            lightDirection = gi.light.dir;
            lightColor = gi.light.color;
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float node_8524 = 0.0;
            float node_4336 = 1.0;
            float node_6049_if_leA = step(lerp( node_8524, node_4336, _vertexalphaao ),node_8524);
            float node_6049_if_leB = step(node_8524,lerp( node_8524, node_4336, _vertexalphaao ));
            float node_8192 = 0.0;
            float node_3575 = 1.0;
            float node_7551_if_leA = step(lerp( node_8192, node_3575, _aofacet ),node_8192);
            float node_7551_if_leB = step(node_8192,lerp( node_8192, node_3575, _aofacet ));
            float node_8941 = 0.65;
            float node_1268_if_leA = step(i.vertexColor.a,node_8941);
            float node_1268_if_leB = step(node_8941,i.vertexColor.a);
            float node_6399 = 1.0;
            float node_6049 = lerp((node_6049_if_leA*node_4336)+(node_6049_if_leB*clamp(lerp((node_7551_if_leA*i.vertexColor.a)+(node_7551_if_leB*lerp((node_1268_if_leA*node_8192)+(node_1268_if_leB*node_3575),node_8941,node_1268_if_leA*node_1268_if_leB)),i.vertexColor.a,node_7551_if_leA*node_7551_if_leB),(1.0 - _ao_strength),node_6399)),node_4336,node_6049_if_leA*node_6049_if_leB);
            float node_5518 = 0.0;
            float node_2680 = 1.0;
            float node_6711_if_leA = step(lerp( node_5518, node_2680, _FlatVertexColour ),node_8524);
            float node_6711_if_leB = step(node_8524,lerp( node_5518, node_2680, _FlatVertexColour ));
            float node_1834 = 0.0;
            float node_5102_if_leA = step(lerp( node_1834, 1.0, _UseTextureRGBMask ),node_1834);
            float node_5102_if_leB = step(node_1834,lerp( node_1834, 1.0, _UseTextureRGBMask ));
            float node_3181_if_leA = step(lerp( node_5518, node_2680, _UseVertexColours ),node_5518);
            float node_3181_if_leB = step(node_5518,lerp( node_5518, node_2680, _UseVertexColours ));
            float node_7991 = 0.0;
            float node_192 = 1.0;
            float _R_var = lerp( node_7991, node_192, _R );
            float node_4844_if_leA = step(_R_var,lerp( node_7991, node_192, _G ));
            float node_4844_if_leB = step(lerp( node_7991, node_192, _G ),_R_var);
            float4 node_4532 = tex2D(_BaseTexture,TRANSFORM_TEX(i.uv0, _BaseTexture));
            float node_4844 = lerp((node_4844_if_leA*node_4532.g)+(node_4844_if_leB*node_4532.r),_R_var,node_4844_if_leA*node_4844_if_leB);
            float node_6535_if_leA = step(node_4844,lerp( node_7991, node_192, _B ));
            float node_6535_if_leB = step(lerp( node_7991, node_192, _B ),node_4844);
            float node_6535 = lerp((node_6535_if_leA*node_4532.b)+(node_6535_if_leB*node_4844),node_4844,node_6535_if_leA*node_6535_if_leB);
            float3 node_7333 = ((saturate((lerp((node_3181_if_leA*_Colour1.rgb)+(node_3181_if_leB*(i.vertexColor.rgb.r*_Colour1.rgb + i.vertexColor.rgb.g*_Colour2.rgb + i.vertexColor.rgb.b*_Colour3.rgb)),_Colour1.rgb,node_3181_if_leA*node_3181_if_leB)*node_6535)) > 0.5 ?  (1.0-(1.0-2.0*(saturate((lerp((node_3181_if_leA*_Colour1.rgb)+(node_3181_if_leB*(i.vertexColor.rgb.r*_Colour1.rgb + i.vertexColor.rgb.g*_Colour2.rgb + i.vertexColor.rgb.b*_Colour3.rgb)),_Colour1.rgb,node_3181_if_leA*node_3181_if_leB)*node_6535))-0.5))*(1.0-node_6535)) : (2.0*saturate((lerp((node_3181_if_leA*_Colour1.rgb)+(node_3181_if_leB*(i.vertexColor.rgb.r*_Colour1.rgb + i.vertexColor.rgb.g*_Colour2.rgb + i.vertexColor.rgb.b*_Colour3.rgb)),_Colour1.rgb,node_3181_if_leA*node_3181_if_leB)*node_6535))*node_6535)) +0.15);
            float2 node_1591 = (i.uv0*_RChannelUV);
            float4 node_7059 = tex2D(_BaseTexture,TRANSFORM_TEX(node_1591, _BaseTexture));
            float3 node_2292 = lerp(saturate(( _Colour1.rgb > 0.5 ? (1.0-(1.0-2.0*(_Colour1.rgb-0.5))*(1.0-node_7059.r)) : (2.0*_Colour1.rgb*node_7059.r) )),saturate((node_4532.g*_Colour2.rgb)),node_4532.g);
            float3 node_5102 = lerp((node_5102_if_leA*node_7333)+(node_5102_if_leB*node_2292),node_7333,node_5102_if_leA*node_5102_if_leB);
            float node_5244 = 0.0;
            float _UseGrunge_var = lerp( node_5244, 1.0, _UseGrunge );
            float node_4584_if_leA = step(node_5244,_UseGrunge_var);
            float node_4584_if_leB = step(_UseGrunge_var,node_5244);
            float node_9127_if_leA = step(node_5244,_UseGrunge_var);
            float node_9127_if_leB = step(_UseGrunge_var,node_5244);
            float3 node_7660 = lerp(lerp(node_5102,(node_5102*_Colour2.rgb),lerp((node_4584_if_leA*node_9203)+(node_4584_if_leB*node_5244),node_5244,node_4584_if_leA*node_4584_if_leB)),(node_5102*_Colour3.rgb),lerp((node_9127_if_leA*node_1869)+(node_9127_if_leB*node_5244),node_5244,node_9127_if_leA*node_9127_if_leB));
            float3 diffuseColor = (lerp(_LightColor0.rgb,dot(_LightColor0.rgb,float3(0.3,0.59,0.11)),0.6)*(lerp(node_6049,node_6399,node_6049)*lerp(lerp((node_6711_if_leA*node_7660)+(node_6711_if_leB*i.vertexColor.rgb),node_7660,node_6711_if_leA*node_6711_if_leB),dot(lerp((node_6711_if_leA*node_7660)+(node_6711_if_leB*i.vertexColor.rgb),node_7660,node_6711_if_leA*node_6711_if_leB),float3(0.3,0.59,0.11)),(-0.5)))); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            float node_8481 = 0.0;
            float node_9850 = 1.0;
            float node_3358_if_leA = step(lerp( node_8481, node_9850, _metal ),lerp( node_8481, node_9850, _nonmetal ));
            float node_3358_if_leB = step(lerp( node_8481, node_9850, _nonmetal ),lerp( node_8481, node_9850, _metal ));
            float node_3358 = lerp((node_3358_if_leA*node_8481)+(node_3358_if_leB*node_9850),node_8481,node_3358_if_leA*node_3358_if_leB);
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, saturate((node_3358-node_3411)), specularColor, specularMonochrome );
            specularMonochrome = 1-specularMonochrome;
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            half grazingTerm = saturate( gloss + specularMonochrome );
            float3 indirectSpecular = (gi.indirect.specular + UNITY_LIGHTMODEL_AMBIENT.rgb);
            indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
            float3 specular = (directSpecular + indirectSpecular);
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float3 indirectDiffuse = float3(0,0,0);
            indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Diffuse Ambient Light
            indirectDiffuse += gi.indirect.diffuse;
            float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            fixed4 finalRGBA = fixed4(finalColor,1);
            UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
            return finalRGBA;
        }
        ENDCG
    }
    Pass {
        Name "FORWARD_DELTA"
        Tags {
            "LightMode"="ForwardAdd"
        }
        Blend One One
        
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_FORWARDADD
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "AutoLight.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #pragma multi_compile_fwdadd_fullshadows
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform fixed _R;
        uniform fixed _G;
        uniform fixed _B;
        uniform float _GrungeScale;
        uniform sampler2D _GrungeTexture; uniform float4 _GrungeTexture_ST;
        uniform fixed _metal;
        uniform fixed _nonmetal;
        uniform float4 _Colour1;
        uniform float4 _Colour2;
        uniform float4 _Colour3;
        uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
        uniform float _roughness;
        uniform fixed _Grunge1;
        uniform fixed _Grunge2;
        uniform fixed _Grunge3;
        uniform float _GrungeStrength;
        uniform float _Grunge2_Strength;
        uniform float _Grunge2_Scale;
        uniform float _ao_strength;
        uniform fixed _vertexalphaao;
        uniform float _Grunge_Levels;
        uniform fixed _UseVertexColours;
        uniform fixed _aofacet;
        uniform sampler2D _BaseTexture; uniform float4 _BaseTexture_ST;
        uniform fixed _UseTextureRGBMask;
        uniform fixed _LockGrunge;
        uniform float _RChannelUV;
        uniform fixed _UseGrunge;
        uniform fixed _FlatVertexColour;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
            float4 tangent : TANGENT;
            float2 texcoord0 : TEXCOORD0;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
            float4 vertexColor : COLOR;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv0 : TEXCOORD0;
            float2 uv1 : TEXCOORD1;
            float2 uv2 : TEXCOORD2;
            float4 posWorld : TEXCOORD3;
            float3 normalDir : TEXCOORD4;
            float3 tangentDir : TEXCOORD5;
            float3 bitangentDir : TEXCOORD6;
            float4 vertexColor : COLOR;
            LIGHTING_COORDS(7,8)
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv0 = v.texcoord0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.vertexColor = v.vertexColor;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = UnityObjectToClipPos(v.vertex);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
            float3 normalLocal = _NormalMap_var.rgb;
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float node_2579 = 0.0;
            float node_2362 = 1.0;
            float _Grunge1_var = lerp( node_2579, node_2362, _Grunge1 );
            float _Grunge2_var = lerp( node_2579, node_2362, _Grunge2 );
            float node_2554_if_leA = step(_Grunge1_var,_Grunge2_var);
            float node_2554_if_leB = step(_Grunge2_var,_Grunge1_var);
            float3 node_544 = abs(i.normalDir);
            float3 node_392 = (node_544*node_544);
            float node_6763 = 0.0;
            float _LockGrunge_var = lerp( node_6763, 1.0, _LockGrunge );
            float node_9204_if_leA = step(_LockGrunge_var,node_6763);
            float node_9204_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_1170 = float2(i.posWorld.g,i.posWorld.b);
            float node_3530 = 0.001;
            float node_6767 = max((_Grunge2_Scale*_GrungeScale),node_3530);
            float2 node_9085 = float2(node_6767,node_6767);
            float2 node_7364 = (node_1170/node_9085);
            float node_1361 = max(_GrungeScale,node_3530);
            float2 node_231 = float2(node_1361,node_1361);
            float2 node_5485 = (node_1170/node_231);
            float2 node_3192 = ((node_5485+(objPos.g/_GrungeScale)*float2(-1,0))+(objPos.b/_GrungeScale)*float2(0,-1));
            float2 node_9204 = lerp((node_9204_if_leA*node_7364)+(node_9204_if_leB*(node_3192*_Grunge2_Scale)),node_7364,node_9204_if_leA*node_9204_if_leB);
            float4 node_2945 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_9204, _GrungeTexture));
            float node_5562_if_leA = step(_LockGrunge_var,node_6763);
            float node_5562_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_1921 = float2(i.posWorld.b,i.posWorld.r);
            float2 node_4962 = (node_1921/node_9085);
            float2 node_6787 = (node_1921/node_231);
            float2 node_3820 = ((node_6787+(objPos.b/_GrungeScale)*float2(-1,0))+(objPos.r/_GrungeScale)*float2(0,-1));
            float2 node_5562 = lerp((node_5562_if_leA*node_4962)+(node_5562_if_leB*(node_3820*_Grunge2_Scale)),node_4962,node_5562_if_leA*node_5562_if_leB);
            float4 node_8875 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_5562, _GrungeTexture));
            float node_2829_if_leA = step(_LockGrunge_var,node_6763);
            float node_2829_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_5437 = float2(i.posWorld.r,i.posWorld.g);
            float2 node_4165 = (node_5437/node_9085);
            float2 node_6978 = (node_5437/node_231);
            float2 node_6109 = ((node_6978+(objPos.r/_GrungeScale)*float2(-1,0))+(objPos.g/_GrungeScale)*float2(0,-1));
            float2 node_2829 = lerp((node_2829_if_leA*node_4165)+(node_2829_if_leB*(node_6109*_Grunge2_Scale)),node_4165,node_2829_if_leA*node_2829_if_leB);
            float4 node_7860 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_2829, _GrungeTexture));
            float node_6080 = (node_392.r*node_2945.r + node_392.g*node_8875.r + node_392.b*node_7860.r);
            float node_2554 = lerp((node_2554_if_leA*(node_392.r*node_2945.g + node_392.g*node_8875.g + node_392.b*node_7860.g))+(node_2554_if_leB*node_6080),node_6080,node_2554_if_leA*node_2554_if_leB);
            float _Grunge3_var = lerp( node_2579, node_2362, _Grunge3 );
            float node_4615_if_leA = step(node_2554,_Grunge3_var);
            float node_4615_if_leB = step(_Grunge3_var,node_2554);
            float node_1869_if_leA = step(lerp((node_4615_if_leA*(node_392.r*node_2945.b + node_392.g*node_8875.b + node_392.b*node_7860.b))+(node_4615_if_leB*node_2554),node_2554,node_4615_if_leA*node_4615_if_leB),_Grunge_Levels);
            float node_1869_if_leB = step(_Grunge_Levels,lerp((node_4615_if_leA*(node_392.r*node_2945.b + node_392.g*node_8875.b + node_392.b*node_7860.b))+(node_4615_if_leB*node_2554),node_2554,node_4615_if_leA*node_4615_if_leB));
            float node_1869 = lerp((node_1869_if_leA*0.0)+(node_1869_if_leB*_Grunge2_Strength),_Grunge_Levels,node_1869_if_leA*node_1869_if_leB);
            float node_5613_if_leA = step(_Grunge1_var,_Grunge2_var);
            float node_5613_if_leB = step(_Grunge2_var,_Grunge1_var);
            float node_4755_if_leA = step(_LockGrunge_var,node_6763);
            float node_4755_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_4755 = lerp((node_4755_if_leA*node_5485)+(node_4755_if_leB*node_3192),node_5485,node_4755_if_leA*node_4755_if_leB);
            float4 node_1008 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_4755, _GrungeTexture));
            float node_7234_if_leA = step(_LockGrunge_var,node_6763);
            float node_7234_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_7234 = lerp((node_7234_if_leA*node_6787)+(node_7234_if_leB*node_3820),node_6787,node_7234_if_leA*node_7234_if_leB);
            float4 node_7578 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_7234, _GrungeTexture));
            float node_6383_if_leA = step(_LockGrunge_var,node_6763);
            float node_6383_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_6383 = lerp((node_6383_if_leA*node_6978)+(node_6383_if_leB*node_6109),node_6978,node_6383_if_leA*node_6383_if_leB);
            float4 node_8873 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_6383, _GrungeTexture));
            float node_5216 = (node_392.r*node_1008.r + node_392.g*node_7578.r + node_392.b*node_8873.r);
            float node_5613 = lerp((node_5613_if_leA*(node_392.r*node_1008.g + node_392.g*node_7578.g + node_392.b*node_8873.g))+(node_5613_if_leB*node_5216),node_5216,node_5613_if_leA*node_5613_if_leB);
            float node_6037_if_leA = step(node_5613,_Grunge3_var);
            float node_6037_if_leB = step(_Grunge3_var,node_5613);
            float node_9203_if_leA = step(lerp((node_6037_if_leA*(node_392.r*node_1008.b + node_392.g*node_7578.b + node_392.b*node_8873.b))+(node_6037_if_leB*node_5613),node_5613,node_6037_if_leA*node_6037_if_leB),_Grunge_Levels);
            float node_9203_if_leB = step(_Grunge_Levels,lerp((node_6037_if_leA*(node_392.r*node_1008.b + node_392.g*node_7578.b + node_392.b*node_8873.b))+(node_6037_if_leB*node_5613),node_5613,node_6037_if_leA*node_6037_if_leB));
            float node_9203 = lerp((node_9203_if_leA*0.0)+(node_9203_if_leB*_GrungeStrength),_Grunge_Levels,node_9203_if_leA*node_9203_if_leB);
            float node_3411 = (node_1869+node_9203);
            float gloss = 1.0 - (1.0-(1.0-node_3411)*(1.0-_roughness)); // Convert roughness to gloss
            float specPow = exp2( gloss * 10.0+1.0);
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float node_8524 = 0.0;
            float node_4336 = 1.0;
            float node_6049_if_leA = step(lerp( node_8524, node_4336, _vertexalphaao ),node_8524);
            float node_6049_if_leB = step(node_8524,lerp( node_8524, node_4336, _vertexalphaao ));
            float node_8192 = 0.0;
            float node_3575 = 1.0;
            float node_7551_if_leA = step(lerp( node_8192, node_3575, _aofacet ),node_8192);
            float node_7551_if_leB = step(node_8192,lerp( node_8192, node_3575, _aofacet ));
            float node_8941 = 0.65;
            float node_1268_if_leA = step(i.vertexColor.a,node_8941);
            float node_1268_if_leB = step(node_8941,i.vertexColor.a);
            float node_6399 = 1.0;
            float node_6049 = lerp((node_6049_if_leA*node_4336)+(node_6049_if_leB*clamp(lerp((node_7551_if_leA*i.vertexColor.a)+(node_7551_if_leB*lerp((node_1268_if_leA*node_8192)+(node_1268_if_leB*node_3575),node_8941,node_1268_if_leA*node_1268_if_leB)),i.vertexColor.a,node_7551_if_leA*node_7551_if_leB),(1.0 - _ao_strength),node_6399)),node_4336,node_6049_if_leA*node_6049_if_leB);
            float node_5518 = 0.0;
            float node_2680 = 1.0;
            float node_6711_if_leA = step(lerp( node_5518, node_2680, _FlatVertexColour ),node_8524);
            float node_6711_if_leB = step(node_8524,lerp( node_5518, node_2680, _FlatVertexColour ));
            float node_1834 = 0.0;
            float node_5102_if_leA = step(lerp( node_1834, 1.0, _UseTextureRGBMask ),node_1834);
            float node_5102_if_leB = step(node_1834,lerp( node_1834, 1.0, _UseTextureRGBMask ));
            float node_3181_if_leA = step(lerp( node_5518, node_2680, _UseVertexColours ),node_5518);
            float node_3181_if_leB = step(node_5518,lerp( node_5518, node_2680, _UseVertexColours ));
            float node_7991 = 0.0;
            float node_192 = 1.0;
            float _R_var = lerp( node_7991, node_192, _R );
            float node_4844_if_leA = step(_R_var,lerp( node_7991, node_192, _G ));
            float node_4844_if_leB = step(lerp( node_7991, node_192, _G ),_R_var);
            float4 node_4532 = tex2D(_BaseTexture,TRANSFORM_TEX(i.uv0, _BaseTexture));
            float node_4844 = lerp((node_4844_if_leA*node_4532.g)+(node_4844_if_leB*node_4532.r),_R_var,node_4844_if_leA*node_4844_if_leB);
            float node_6535_if_leA = step(node_4844,lerp( node_7991, node_192, _B ));
            float node_6535_if_leB = step(lerp( node_7991, node_192, _B ),node_4844);
            float node_6535 = lerp((node_6535_if_leA*node_4532.b)+(node_6535_if_leB*node_4844),node_4844,node_6535_if_leA*node_6535_if_leB);
            float3 node_7333 = ((saturate((lerp((node_3181_if_leA*_Colour1.rgb)+(node_3181_if_leB*(i.vertexColor.rgb.r*_Colour1.rgb + i.vertexColor.rgb.g*_Colour2.rgb + i.vertexColor.rgb.b*_Colour3.rgb)),_Colour1.rgb,node_3181_if_leA*node_3181_if_leB)*node_6535)) > 0.5 ?  (1.0-(1.0-2.0*(saturate((lerp((node_3181_if_leA*_Colour1.rgb)+(node_3181_if_leB*(i.vertexColor.rgb.r*_Colour1.rgb + i.vertexColor.rgb.g*_Colour2.rgb + i.vertexColor.rgb.b*_Colour3.rgb)),_Colour1.rgb,node_3181_if_leA*node_3181_if_leB)*node_6535))-0.5))*(1.0-node_6535)) : (2.0*saturate((lerp((node_3181_if_leA*_Colour1.rgb)+(node_3181_if_leB*(i.vertexColor.rgb.r*_Colour1.rgb + i.vertexColor.rgb.g*_Colour2.rgb + i.vertexColor.rgb.b*_Colour3.rgb)),_Colour1.rgb,node_3181_if_leA*node_3181_if_leB)*node_6535))*node_6535)) +0.15);
            float2 node_1591 = (i.uv0*_RChannelUV);
            float4 node_7059 = tex2D(_BaseTexture,TRANSFORM_TEX(node_1591, _BaseTexture));
            float3 node_2292 = lerp(saturate(( _Colour1.rgb > 0.5 ? (1.0-(1.0-2.0*(_Colour1.rgb-0.5))*(1.0-node_7059.r)) : (2.0*_Colour1.rgb*node_7059.r) )),saturate((node_4532.g*_Colour2.rgb)),node_4532.g);
            float3 node_5102 = lerp((node_5102_if_leA*node_7333)+(node_5102_if_leB*node_2292),node_7333,node_5102_if_leA*node_5102_if_leB);
            float node_5244 = 0.0;
            float _UseGrunge_var = lerp( node_5244, 1.0, _UseGrunge );
            float node_4584_if_leA = step(node_5244,_UseGrunge_var);
            float node_4584_if_leB = step(_UseGrunge_var,node_5244);
            float node_9127_if_leA = step(node_5244,_UseGrunge_var);
            float node_9127_if_leB = step(_UseGrunge_var,node_5244);
            float3 node_7660 = lerp(lerp(node_5102,(node_5102*_Colour2.rgb),lerp((node_4584_if_leA*node_9203)+(node_4584_if_leB*node_5244),node_5244,node_4584_if_leA*node_4584_if_leB)),(node_5102*_Colour3.rgb),lerp((node_9127_if_leA*node_1869)+(node_9127_if_leB*node_5244),node_5244,node_9127_if_leA*node_9127_if_leB));
            float3 diffuseColor = (lerp(_LightColor0.rgb,dot(_LightColor0.rgb,float3(0.3,0.59,0.11)),0.6)*(lerp(node_6049,node_6399,node_6049)*lerp(lerp((node_6711_if_leA*node_7660)+(node_6711_if_leB*i.vertexColor.rgb),node_7660,node_6711_if_leA*node_6711_if_leB),dot(lerp((node_6711_if_leA*node_7660)+(node_6711_if_leB*i.vertexColor.rgb),node_7660,node_6711_if_leA*node_6711_if_leB),float3(0.3,0.59,0.11)),(-0.5)))); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            float node_8481 = 0.0;
            float node_9850 = 1.0;
            float node_3358_if_leA = step(lerp( node_8481, node_9850, _metal ),lerp( node_8481, node_9850, _nonmetal ));
            float node_3358_if_leB = step(lerp( node_8481, node_9850, _nonmetal ),lerp( node_8481, node_9850, _metal ));
            float node_3358 = lerp((node_3358_if_leA*node_8481)+(node_3358_if_leB*node_9850),node_8481,node_3358_if_leA*node_3358_if_leB);
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, saturate((node_3358-node_3411)), specularColor, specularMonochrome );
            specularMonochrome = 1-specularMonochrome;
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            float3 specular = directSpecular;
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float3 diffuse = directDiffuse * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            return fixed4(finalColor * 1,0);
        }
        ENDCG
    }
    Pass {
        Name "Meta"
        Tags {
            "LightMode"="Meta"
        }
        Cull Off
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_META 1
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #include "UnityMetaPass.cginc"
        #pragma fragmentoption ARB_precision_hint_fastest
        #pragma multi_compile_shadowcaster
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform fixed _R;
        uniform fixed _G;
        uniform fixed _B;
        uniform float _GrungeScale;
        uniform sampler2D _GrungeTexture; uniform float4 _GrungeTexture_ST;
        uniform fixed _metal;
        uniform fixed _nonmetal;
        uniform float4 _Colour1;
        uniform float4 _Colour2;
        uniform float4 _Colour3;
        uniform float _roughness;
        uniform fixed _Grunge1;
        uniform fixed _Grunge2;
        uniform fixed _Grunge3;
        uniform float _GrungeStrength;
        uniform float _Grunge2_Strength;
        uniform float _Grunge2_Scale;
        uniform float _ao_strength;
        uniform fixed _vertexalphaao;
        uniform float _Grunge_Levels;
        uniform fixed _UseVertexColours;
        uniform fixed _aofacet;
        uniform sampler2D _BaseTexture; uniform float4 _BaseTexture_ST;
        uniform fixed _UseTextureRGBMask;
        uniform fixed _LockGrunge;
        uniform float _RChannelUV;
        uniform fixed _UseGrunge;
        uniform fixed _FlatVertexColour;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
            float2 texcoord0 : TEXCOORD0;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
            float4 vertexColor : COLOR;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv0 : TEXCOORD0;
            float2 uv1 : TEXCOORD1;
            float2 uv2 : TEXCOORD2;
            float4 posWorld : TEXCOORD3;
            float3 normalDir : TEXCOORD4;
            float4 vertexColor : COLOR;
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv0 = v.texcoord0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.vertexColor = v.vertexColor;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
            return o;
        }
        float4 frag(VertexOutput i) : SV_Target {
            float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 normalDirection = i.normalDir;
            float3 lightColor = _LightColor0.rgb;
            UnityMetaInput o;
            UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
            
            o.Emission = 0;
            
            float node_8524 = 0.0;
            float node_4336 = 1.0;
            float node_6049_if_leA = step(lerp( node_8524, node_4336, _vertexalphaao ),node_8524);
            float node_6049_if_leB = step(node_8524,lerp( node_8524, node_4336, _vertexalphaao ));
            float node_8192 = 0.0;
            float node_3575 = 1.0;
            float node_7551_if_leA = step(lerp( node_8192, node_3575, _aofacet ),node_8192);
            float node_7551_if_leB = step(node_8192,lerp( node_8192, node_3575, _aofacet ));
            float node_8941 = 0.65;
            float node_1268_if_leA = step(i.vertexColor.a,node_8941);
            float node_1268_if_leB = step(node_8941,i.vertexColor.a);
            float node_6399 = 1.0;
            float node_6049 = lerp((node_6049_if_leA*node_4336)+(node_6049_if_leB*clamp(lerp((node_7551_if_leA*i.vertexColor.a)+(node_7551_if_leB*lerp((node_1268_if_leA*node_8192)+(node_1268_if_leB*node_3575),node_8941,node_1268_if_leA*node_1268_if_leB)),i.vertexColor.a,node_7551_if_leA*node_7551_if_leB),(1.0 - _ao_strength),node_6399)),node_4336,node_6049_if_leA*node_6049_if_leB);
            float node_5518 = 0.0;
            float node_2680 = 1.0;
            float node_6711_if_leA = step(lerp( node_5518, node_2680, _FlatVertexColour ),node_8524);
            float node_6711_if_leB = step(node_8524,lerp( node_5518, node_2680, _FlatVertexColour ));
            float node_1834 = 0.0;
            float node_5102_if_leA = step(lerp( node_1834, 1.0, _UseTextureRGBMask ),node_1834);
            float node_5102_if_leB = step(node_1834,lerp( node_1834, 1.0, _UseTextureRGBMask ));
            float node_3181_if_leA = step(lerp( node_5518, node_2680, _UseVertexColours ),node_5518);
            float node_3181_if_leB = step(node_5518,lerp( node_5518, node_2680, _UseVertexColours ));
            float node_7991 = 0.0;
            float node_192 = 1.0;
            float _R_var = lerp( node_7991, node_192, _R );
            float node_4844_if_leA = step(_R_var,lerp( node_7991, node_192, _G ));
            float node_4844_if_leB = step(lerp( node_7991, node_192, _G ),_R_var);
            float4 node_4532 = tex2D(_BaseTexture,TRANSFORM_TEX(i.uv0, _BaseTexture));
            float node_4844 = lerp((node_4844_if_leA*node_4532.g)+(node_4844_if_leB*node_4532.r),_R_var,node_4844_if_leA*node_4844_if_leB);
            float node_6535_if_leA = step(node_4844,lerp( node_7991, node_192, _B ));
            float node_6535_if_leB = step(lerp( node_7991, node_192, _B ),node_4844);
            float node_6535 = lerp((node_6535_if_leA*node_4532.b)+(node_6535_if_leB*node_4844),node_4844,node_6535_if_leA*node_6535_if_leB);
            float3 node_7333 = ((saturate((lerp((node_3181_if_leA*_Colour1.rgb)+(node_3181_if_leB*(i.vertexColor.rgb.r*_Colour1.rgb + i.vertexColor.rgb.g*_Colour2.rgb + i.vertexColor.rgb.b*_Colour3.rgb)),_Colour1.rgb,node_3181_if_leA*node_3181_if_leB)*node_6535)) > 0.5 ?  (1.0-(1.0-2.0*(saturate((lerp((node_3181_if_leA*_Colour1.rgb)+(node_3181_if_leB*(i.vertexColor.rgb.r*_Colour1.rgb + i.vertexColor.rgb.g*_Colour2.rgb + i.vertexColor.rgb.b*_Colour3.rgb)),_Colour1.rgb,node_3181_if_leA*node_3181_if_leB)*node_6535))-0.5))*(1.0-node_6535)) : (2.0*saturate((lerp((node_3181_if_leA*_Colour1.rgb)+(node_3181_if_leB*(i.vertexColor.rgb.r*_Colour1.rgb + i.vertexColor.rgb.g*_Colour2.rgb + i.vertexColor.rgb.b*_Colour3.rgb)),_Colour1.rgb,node_3181_if_leA*node_3181_if_leB)*node_6535))*node_6535)) +0.15);
            float2 node_1591 = (i.uv0*_RChannelUV);
            float4 node_7059 = tex2D(_BaseTexture,TRANSFORM_TEX(node_1591, _BaseTexture));
            float3 node_2292 = lerp(saturate(( _Colour1.rgb > 0.5 ? (1.0-(1.0-2.0*(_Colour1.rgb-0.5))*(1.0-node_7059.r)) : (2.0*_Colour1.rgb*node_7059.r) )),saturate((node_4532.g*_Colour2.rgb)),node_4532.g);
            float3 node_5102 = lerp((node_5102_if_leA*node_7333)+(node_5102_if_leB*node_2292),node_7333,node_5102_if_leA*node_5102_if_leB);
            float node_5244 = 0.0;
            float _UseGrunge_var = lerp( node_5244, 1.0, _UseGrunge );
            float node_4584_if_leA = step(node_5244,_UseGrunge_var);
            float node_4584_if_leB = step(_UseGrunge_var,node_5244);
            float node_2579 = 0.0;
            float node_2362 = 1.0;
            float _Grunge1_var = lerp( node_2579, node_2362, _Grunge1 );
            float _Grunge2_var = lerp( node_2579, node_2362, _Grunge2 );
            float node_5613_if_leA = step(_Grunge1_var,_Grunge2_var);
            float node_5613_if_leB = step(_Grunge2_var,_Grunge1_var);
            float3 node_544 = abs(i.normalDir);
            float3 node_392 = (node_544*node_544);
            float node_6763 = 0.0;
            float _LockGrunge_var = lerp( node_6763, 1.0, _LockGrunge );
            float node_4755_if_leA = step(_LockGrunge_var,node_6763);
            float node_4755_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_1170 = float2(i.posWorld.g,i.posWorld.b);
            float node_3530 = 0.001;
            float node_1361 = max(_GrungeScale,node_3530);
            float2 node_231 = float2(node_1361,node_1361);
            float2 node_5485 = (node_1170/node_231);
            float2 node_3192 = ((node_5485+(objPos.g/_GrungeScale)*float2(-1,0))+(objPos.b/_GrungeScale)*float2(0,-1));
            float2 node_4755 = lerp((node_4755_if_leA*node_5485)+(node_4755_if_leB*node_3192),node_5485,node_4755_if_leA*node_4755_if_leB);
            float4 node_1008 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_4755, _GrungeTexture));
            float node_7234_if_leA = step(_LockGrunge_var,node_6763);
            float node_7234_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_1921 = float2(i.posWorld.b,i.posWorld.r);
            float2 node_6787 = (node_1921/node_231);
            float2 node_3820 = ((node_6787+(objPos.b/_GrungeScale)*float2(-1,0))+(objPos.r/_GrungeScale)*float2(0,-1));
            float2 node_7234 = lerp((node_7234_if_leA*node_6787)+(node_7234_if_leB*node_3820),node_6787,node_7234_if_leA*node_7234_if_leB);
            float4 node_7578 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_7234, _GrungeTexture));
            float node_6383_if_leA = step(_LockGrunge_var,node_6763);
            float node_6383_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_5437 = float2(i.posWorld.r,i.posWorld.g);
            float2 node_6978 = (node_5437/node_231);
            float2 node_6109 = ((node_6978+(objPos.r/_GrungeScale)*float2(-1,0))+(objPos.g/_GrungeScale)*float2(0,-1));
            float2 node_6383 = lerp((node_6383_if_leA*node_6978)+(node_6383_if_leB*node_6109),node_6978,node_6383_if_leA*node_6383_if_leB);
            float4 node_8873 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_6383, _GrungeTexture));
            float node_5216 = (node_392.r*node_1008.r + node_392.g*node_7578.r + node_392.b*node_8873.r);
            float node_5613 = lerp((node_5613_if_leA*(node_392.r*node_1008.g + node_392.g*node_7578.g + node_392.b*node_8873.g))+(node_5613_if_leB*node_5216),node_5216,node_5613_if_leA*node_5613_if_leB);
            float _Grunge3_var = lerp( node_2579, node_2362, _Grunge3 );
            float node_6037_if_leA = step(node_5613,_Grunge3_var);
            float node_6037_if_leB = step(_Grunge3_var,node_5613);
            float node_9203_if_leA = step(lerp((node_6037_if_leA*(node_392.r*node_1008.b + node_392.g*node_7578.b + node_392.b*node_8873.b))+(node_6037_if_leB*node_5613),node_5613,node_6037_if_leA*node_6037_if_leB),_Grunge_Levels);
            float node_9203_if_leB = step(_Grunge_Levels,lerp((node_6037_if_leA*(node_392.r*node_1008.b + node_392.g*node_7578.b + node_392.b*node_8873.b))+(node_6037_if_leB*node_5613),node_5613,node_6037_if_leA*node_6037_if_leB));
            float node_9203 = lerp((node_9203_if_leA*0.0)+(node_9203_if_leB*_GrungeStrength),_Grunge_Levels,node_9203_if_leA*node_9203_if_leB);
            float node_9127_if_leA = step(node_5244,_UseGrunge_var);
            float node_9127_if_leB = step(_UseGrunge_var,node_5244);
            float node_2554_if_leA = step(_Grunge1_var,_Grunge2_var);
            float node_2554_if_leB = step(_Grunge2_var,_Grunge1_var);
            float node_9204_if_leA = step(_LockGrunge_var,node_6763);
            float node_9204_if_leB = step(node_6763,_LockGrunge_var);
            float node_6767 = max((_Grunge2_Scale*_GrungeScale),node_3530);
            float2 node_9085 = float2(node_6767,node_6767);
            float2 node_7364 = (node_1170/node_9085);
            float2 node_9204 = lerp((node_9204_if_leA*node_7364)+(node_9204_if_leB*(node_3192*_Grunge2_Scale)),node_7364,node_9204_if_leA*node_9204_if_leB);
            float4 node_2945 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_9204, _GrungeTexture));
            float node_5562_if_leA = step(_LockGrunge_var,node_6763);
            float node_5562_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_4962 = (node_1921/node_9085);
            float2 node_5562 = lerp((node_5562_if_leA*node_4962)+(node_5562_if_leB*(node_3820*_Grunge2_Scale)),node_4962,node_5562_if_leA*node_5562_if_leB);
            float4 node_8875 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_5562, _GrungeTexture));
            float node_2829_if_leA = step(_LockGrunge_var,node_6763);
            float node_2829_if_leB = step(node_6763,_LockGrunge_var);
            float2 node_4165 = (node_5437/node_9085);
            float2 node_2829 = lerp((node_2829_if_leA*node_4165)+(node_2829_if_leB*(node_6109*_Grunge2_Scale)),node_4165,node_2829_if_leA*node_2829_if_leB);
            float4 node_7860 = tex2D(_GrungeTexture,TRANSFORM_TEX(node_2829, _GrungeTexture));
            float node_6080 = (node_392.r*node_2945.r + node_392.g*node_8875.r + node_392.b*node_7860.r);
            float node_2554 = lerp((node_2554_if_leA*(node_392.r*node_2945.g + node_392.g*node_8875.g + node_392.b*node_7860.g))+(node_2554_if_leB*node_6080),node_6080,node_2554_if_leA*node_2554_if_leB);
            float node_4615_if_leA = step(node_2554,_Grunge3_var);
            float node_4615_if_leB = step(_Grunge3_var,node_2554);
            float node_1869_if_leA = step(lerp((node_4615_if_leA*(node_392.r*node_2945.b + node_392.g*node_8875.b + node_392.b*node_7860.b))+(node_4615_if_leB*node_2554),node_2554,node_4615_if_leA*node_4615_if_leB),_Grunge_Levels);
            float node_1869_if_leB = step(_Grunge_Levels,lerp((node_4615_if_leA*(node_392.r*node_2945.b + node_392.g*node_8875.b + node_392.b*node_7860.b))+(node_4615_if_leB*node_2554),node_2554,node_4615_if_leA*node_4615_if_leB));
            float node_1869 = lerp((node_1869_if_leA*0.0)+(node_1869_if_leB*_Grunge2_Strength),_Grunge_Levels,node_1869_if_leA*node_1869_if_leB);
            float3 node_7660 = lerp(lerp(node_5102,(node_5102*_Colour2.rgb),lerp((node_4584_if_leA*node_9203)+(node_4584_if_leB*node_5244),node_5244,node_4584_if_leA*node_4584_if_leB)),(node_5102*_Colour3.rgb),lerp((node_9127_if_leA*node_1869)+(node_9127_if_leB*node_5244),node_5244,node_9127_if_leA*node_9127_if_leB));
            float3 diffColor = (lerp(_LightColor0.rgb,dot(_LightColor0.rgb,float3(0.3,0.59,0.11)),0.6)*(lerp(node_6049,node_6399,node_6049)*lerp(lerp((node_6711_if_leA*node_7660)+(node_6711_if_leB*i.vertexColor.rgb),node_7660,node_6711_if_leA*node_6711_if_leB),dot(lerp((node_6711_if_leA*node_7660)+(node_6711_if_leB*i.vertexColor.rgb),node_7660,node_6711_if_leA*node_6711_if_leB),float3(0.3,0.59,0.11)),(-0.5))));
            float specularMonochrome;
            float3 specColor;
            float node_3411 = (node_1869+node_9203);
            float node_8481 = 0.0;
            float node_9850 = 1.0;
            float node_3358_if_leA = step(lerp( node_8481, node_9850, _metal ),lerp( node_8481, node_9850, _nonmetal ));
            float node_3358_if_leB = step(lerp( node_8481, node_9850, _nonmetal ),lerp( node_8481, node_9850, _metal ));
            float node_3358 = lerp((node_3358_if_leA*node_8481)+(node_3358_if_leB*node_9850),node_8481,node_3358_if_leA*node_3358_if_leB);
            diffColor = DiffuseAndSpecularFromMetallic( diffColor, saturate((node_3358-node_3411)), specColor, specularMonochrome );
            float roughness = (1.0-(1.0-node_3411)*(1.0-_roughness));
            o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
            
            return UnityMetaFragment( o );
        }
        ENDCG
    }
}
FallBack "Diffuse"
CustomEditor "ShaderForgeMaterialInspector"
}
