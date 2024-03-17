#include <a_samp>
#include <streamer>

public OnFilterScriptInit()
{
	new
		Unused_Object,
		tmpobjid,
		g_Object[732]
	;

	//Interior Gobierno
	g_Object[0] = CreateObject(19464, 908.9829, -1475.7220, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[0], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[1] = CreateObject(18981, 917.3012, -1463.5339, 2752.8217, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[1], 0, 15034, "genhotelsave", "bathtile05_int", 0xFFFFFFFF);
	g_Object[2] = CreateObject(1536, 920.2229, -1476.0039, 2753.0510, 0.0000, 0.0000, 180.0000); //Gen_doorEXT15
	SetObjectMaterial(g_Object[2], 0, 1569, "adam_v_doort", "ws_guardhousedoor", 0xFFFFFFFF);
	g_Object[3] = CreateObject(1536, 920.1928, -1476.0039, 2753.0510, 0.0000, 0.0000, 0.0000); //Gen_doorEXT15
	SetObjectMaterial(g_Object[3], 0, 1569, "adam_v_doort", "ws_guardhousedoor", 0xFFFFFFFF);
	g_Object[4] = CreateObject(19464, 921.7540, -1478.8221, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[4], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[5] = CreateObject(19464, 918.6541, -1478.8221, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[5], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[6] = CreateObject(19464, 915.8043, -1475.9718, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[6], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[7] = CreateObject(19464, 909.8748, -1475.9718, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[7], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[8] = CreateObject(19450, 913.7258, -1472.9619, 2753.2600, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[8], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[9] = CreateObject(19450, 920.3264, -1477.5727, 2753.2399, 0.0000, 90.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[9], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[10] = CreateObject(19464, 918.6643, -1475.7132, 2751.6335, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[10], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[11] = CreateObject(19565, 918.5355, -1475.3172, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[11], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[12] = CreateObject(19565, 918.5355, -1475.7860, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[12], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[13] = CreateObject(19565, 918.5355, -1474.8469, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[13], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[14] = CreateObject(19565, 918.5355, -1474.3763, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[14], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[15] = CreateObject(19565, 918.5355, -1473.9061, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[15], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[16] = CreateObject(19565, 918.5355, -1473.4455, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[16], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[17] = CreateObject(19565, 918.5355, -1472.9752, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[17], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[18] = CreateObject(19464, 918.6243, -1475.6832, 2750.9328, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[18], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[19] = CreateObject(19464, 918.6743, -1475.6832, 2750.9328, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[19], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[20] = CreateObject(19450, 913.7258, -1476.4620, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[20], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[21] = CreateObject(1708, 917.9519, -1473.0107, 2753.2717, 0.0000, 0.0000, -90.0000); //kb_chair02
	SetObjectMaterial(g_Object[21], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[21], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[22] = CreateObject(2315, 914.4351, -1472.9880, 2753.3161, 0.0000, 0.0000, 0.0000); //CJ_TV_TABLE4
	g_Object[23] = CreateObject(1708, 917.9519, -1471.4803, 2753.2717, 0.0000, 0.0000, -90.0000); //kb_chair02
	SetObjectMaterial(g_Object[23], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[23], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[24] = CreateObject(1708, 912.3715, -1472.4554, 2753.2717, 0.0000, 0.0000, 89.0000); //kb_chair02
	SetObjectMaterial(g_Object[24], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[24], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[25] = CreateObject(1708, 912.3646, -1473.9858, 2753.2717, 0.0000, 0.0000, 89.0000); //kb_chair02
	SetObjectMaterial(g_Object[25], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[25], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[26] = CreateObject(2001, 912.7150, -1475.1645, 2753.3142, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetObjectMaterial(g_Object[26], 1, 630, "gta_potplants", "kb_teracota_pot64", 0xFFFFFFFF);
	g_Object[27] = CreateObject(2001, 917.7155, -1475.1645, 2753.3142, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetObjectMaterial(g_Object[27], 1, 630, "gta_potplants", "kb_teracota_pot64", 0xFFFFFFFF);
	g_Object[28] = CreateObject(1753, 916.2219, -1475.3032, 2753.2915, 0.0000, 0.0000, 180.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[28], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[29] = CreateObject(19786, 915.2346, -1475.9768, 2755.8620, 0.0000, 0.0000, 180.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[29], 0, 14570, "traidaqua", "ab_tv", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[29], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[30] = CreateObject(2816, 915.4837, -1472.9720, 2753.8125, 0.0000, 0.0000, 0.0000); //gb_bedmags01
	g_Object[31] = CreateObject(2855, 914.5407, -1472.9958, 2753.8032, 0.0000, 0.0000, 0.0000); //gb_bedmags05
	g_Object[32] = CreateObject(955, 909.4804, -1473.5239, 2753.6857, 0.0000, 0.0000, 90.0000); //CJ_EXT_SPRUNK
	g_Object[33] = CreateObject(956, 909.4525, -1474.9178, 2753.7165, 0.0000, 0.0000, 90.0000); //CJ_EXT_CANDY
	g_Object[34] = CreateObject(19825, 911.2739, -1475.8176, 2756.0183, 0.0000, 0.0000, 180.0000); //SprunkClock1
	g_Object[35] = CreateObject(19565, 906.5717, -1457.0998, 2756.3854, 0.0000, 0.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[35], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[36] = CreateObject(19565, 907.0421, -1457.0998, 2756.3854, 0.0000, 0.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[36], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[37] = CreateObject(19464, 906.1342, -1472.8424, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[37], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[38] = CreateObject(19464, 901.8338, -1466.9337, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[38], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[39] = CreateObject(19464, 904.7039, -1469.8027, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[39], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[40] = CreateObject(19464, 904.6939, -1458.9835, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[40], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[41] = CreateObject(19464, 903.8833, -1463.8735, 2754.3547, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[41], 0, 10765, "airportgnd_sfse", "white", 0xFF692015);
	g_Object[42] = CreateObject(19464, 901.8338, -1461.8331, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[42], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[43] = CreateObject(19464, 901.8338, -1464.5334, 2756.9982, 0.0000, 90.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[43], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[44] = CreateObject(19565, 929.6234, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[44], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[45] = CreateObject(18981, 892.3007, -1463.5339, 2752.8217, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[45], 0, 15034, "genhotelsave", "bathtile05_int", 0xFFFFFFFF);
	g_Object[46] = CreateObject(1337, 903.8958, -1462.4918, 2754.5273, 31.9999, 0.0000, 90.0000); //BinNt07_LA
	SetObjectMaterial(g_Object[46], 1, 1328, "labins01_la", "bins9_LAe2", 0xFFFFFFFF);
	g_Object[47] = CreateObject(1337, 903.8958, -1463.2926, 2754.5273, 31.9999, 0.0000, 90.0000); //BinNt07_LA
	SetObjectMaterial(g_Object[47], 1, 1328, "labins01_la", "bins9_LAe2", 0xFFFFFFFF);
	g_Object[48] = CreateObject(2593, 904.4027, -1465.8520, 2754.1142, 0.0000, 0.0000, 0.0000); //roleplay_rack
	g_Object[49] = CreateObject(2593, 904.4027, -1464.6418, 2754.1142, 0.0000, 0.0000, 0.0000); //roleplay_rack
	g_Object[50] = CreateObject(19450, 911.7766, -1461.8607, 2752.3906, 90.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[50], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[51] = CreateObject(1569, 911.7252, -1459.2601, 2753.2839, 0.0000, 0.0000, -122.0998); //ADAM_V_DOOR
	g_Object[52] = CreateObject(19174, 904.8389, -1469.5666, 2755.6752, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetObjectMaterial(g_Object[52], 0, 2266, "picture_frame", "CJ_PAINTING3", 0xFFFFFFFF);
	g_Object[53] = CreateObject(19174, 904.8389, -1459.3762, 2755.6752, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetObjectMaterial(g_Object[53], 0, 2266, "picture_frame", "CJ_PAINTING16", 0xFFFFFFFF);
	g_Object[54] = CreateObject(19450, 915.3461, -1463.5118, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[54], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[55] = CreateObject(19450, 913.4473, -1463.5218, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[55], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[56] = CreateObject(2162, 926.0319, -1463.4350, 2753.2990, 0.0000, 0.0000, -180.0000); //MED_OFFICE_UNIT_1
	g_Object[57] = CreateObject(19565, 909.4722, -1457.0998, 2756.3854, 0.0000, 0.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[57], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[58] = CreateObject(19402, 918.8341, -1462.7749, 2755.0104, 0.0000, 0.0000, 90.0000); //wall050
	SetObjectMaterial(g_Object[58], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[59] = CreateObject(19450, 917.1854, -1464.6108, 2753.2399, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[59], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[60] = CreateObject(19450, 916.5449, -1464.6108, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[60], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[61] = CreateObject(19466, 918.9342, -1462.7762, 2756.4970, 0.0000, 0.0000, 90.0000); //window001
	g_Object[62] = CreateObject(19087, 919.7230, -1462.7740, 2756.3122, 0.0000, 0.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[62], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[63] = CreateObject(19087, 917.9428, -1462.7740, 2756.3122, 0.0000, 0.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[63], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[64] = CreateObject(19087, 919.8325, -1462.7740, 2755.5312, 90.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[64], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[65] = CreateObject(19087, 919.8325, -1462.7740, 2755.8715, 90.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[65], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[66] = CreateObject(19087, 919.8325, -1462.7740, 2754.4501, 90.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[66], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[67] = CreateObject(19087, 918.8919, -1462.7740, 2755.5412, 0.0000, 0.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[67], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[68] = CreateObject(18762, 916.7473, -1463.0930, 2754.7031, 0.0000, 0.0000, 0.0000); //Concrete1mx1mx5m
	SetObjectMaterial(g_Object[68], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[69] = CreateObject(19385, 911.7733, -1458.5091, 2755.0256, 0.0000, 0.0000, 0.0000); //wall033
	SetObjectMaterial(g_Object[69], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[70] = CreateObject(19464, 907.7542, -1456.9422, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[70], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[71] = CreateObject(19464, 908.7846, -1456.9621, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[71], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[72] = CreateObject(3051, 910.3054, -1457.1009, 2754.6354, 0.0000, 0.0000, 135.6000); //lift_dr
	SetObjectMaterial(g_Object[72], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[73] = CreateObject(3051, 907.3848, -1457.0985, 2754.6354, 0.0000, 0.0000, 135.6000); //lift_dr
	SetObjectMaterial(g_Object[73], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[74] = CreateObject(19565, 909.9224, -1457.0998, 2756.3854, 0.0000, 0.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[74], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[75] = CreateObject(3051, 909.0891, -1457.1036, 2754.6354, 0.0000, 0.0000, -43.9000); //lift_dr
	SetObjectMaterial(g_Object[75], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[76] = CreateObject(3051, 906.1680, -1457.0931, 2754.6354, 0.0000, 0.0000, -43.9000); //lift_dr
	SetObjectMaterial(g_Object[76], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[77] = CreateObject(19565, 909.9323, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[77], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[78] = CreateObject(19565, 909.4622, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[78], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[79] = CreateObject(19565, 909.4622, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[79], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[80] = CreateObject(19565, 909.9326, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[80], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[81] = CreateObject(19565, 909.2525, -1456.9095, 2756.4055, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[81], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[82] = CreateObject(19565, 910.1328, -1456.9095, 2756.4055, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[82], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[83] = CreateObject(19565, 907.2523, -1456.9095, 2756.4055, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[83], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[84] = CreateObject(19565, 906.3621, -1456.9095, 2756.4055, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[84], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[85] = CreateObject(19565, 906.5822, -1457.1499, 2756.4055, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[85], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[86] = CreateObject(19565, 907.0526, -1457.1499, 2756.4055, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[86], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[87] = CreateObject(19565, 906.5623, -1457.1499, 2756.6455, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[87], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[88] = CreateObject(19565, 907.0327, -1457.1499, 2756.6455, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[88], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[89] = CreateObject(19565, 906.5625, -1457.1499, 2756.4052, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[89], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[90] = CreateObject(19174, 909.6889, -1457.1361, 2756.5361, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[90], "1. Elev", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[90], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[91] = CreateObject(19174, 906.8087, -1457.1361, 2756.5361, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[91], "1. Elev", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[91], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[92] = CreateObject(19174, 915.0288, -1463.6440, 2755.8454, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[92], "Gobierno", 0, 90, "Times New Roman", 40, 1, 0xFFA5A9A7, 0x0, 1);
	SetObjectMaterial(g_Object[92], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[93] = CreateObject(19174, 915.0288, -1463.6440, 2755.4851, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[93], "Los Santos", 0, 90, "Times New Roman", 25, 1, 0xFFA5A9A7, 0x0, 1);
	SetObjectMaterial(g_Object[93], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[94] = CreateObject(1753, 908.0017, -1472.2602, 2753.2915, 0.0000, 0.0000, 180.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[94], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[95] = CreateObject(19174, 909.4691, -1457.0837, 2754.0336, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[95], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[95], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[96] = CreateObject(19174, 907.0280, -1457.0837, 2754.9841, 0.0000, 180.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[96], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[96], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[97] = CreateObject(2315, 924.1851, -1472.9880, 2753.3061, 0.0000, 0.0000, 0.0000); //CJ_TV_TABLE4
	g_Object[98] = CreateObject(19464, 921.7551, -1475.7132, 2751.6335, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[98], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[99] = CreateObject(19464, 921.7249, -1475.6832, 2750.9328, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[99], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[100] = CreateObject(19464, 921.7951, -1475.6933, 2750.9328, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[100], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[101] = CreateObject(19565, 921.6159, -1475.3172, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[101], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[102] = CreateObject(19565, 921.6159, -1475.7873, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[102], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[103] = CreateObject(19565, 921.6159, -1474.8465, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[103], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[104] = CreateObject(19565, 921.6159, -1474.3763, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[104], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[105] = CreateObject(19565, 921.6159, -1473.9056, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[105], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[106] = CreateObject(19565, 921.6159, -1473.4355, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[106], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[107] = CreateObject(19565, 921.6159, -1472.9753, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[107], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[108] = CreateObject(19450, 926.7258, -1472.9619, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[108], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[109] = CreateObject(19450, 926.7258, -1476.4620, 2753.2509, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[109], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[110] = CreateObject(19464, 924.8234, -1475.9718, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[110], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[111] = CreateObject(19464, 930.7633, -1475.9718, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[111], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[112] = CreateObject(19464, 931.2830, -1475.7220, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[112], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[113] = CreateObject(2001, 922.5961, -1475.1645, 2753.3142, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetObjectMaterial(g_Object[113], 1, 630, "gta_potplants", "kb_teracota_pot64", 0xFFFFFFFF);
	g_Object[114] = CreateObject(1753, 925.8120, -1475.3032, 2753.2915, 0.0000, 0.0000, 180.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[114], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[115] = CreateObject(2001, 926.9959, -1475.1645, 2753.3142, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetObjectMaterial(g_Object[115], 1, 630, "gta_potplants", "kb_teracota_pot64", 0xFFFFFFFF);
	g_Object[116] = CreateObject(19786, 924.9046, -1475.9768, 2755.8620, 0.0000, 0.0000, 180.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[116], 0, 14570, "traidaqua", "ab_tv", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[116], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[117] = CreateObject(19825, 929.0645, -1475.8176, 2756.0183, 0.0000, 0.0000, 180.0000); //SprunkClock1
	g_Object[118] = CreateObject(1708, 922.4799, -1472.6322, 2753.2717, 0.0000, 0.0000, 89.0000); //kb_chair02
	SetObjectMaterial(g_Object[118], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[118], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[119] = CreateObject(1708, 922.4628, -1474.1623, 2753.2717, 0.0000, 0.0000, 89.0000); //kb_chair02
	SetObjectMaterial(g_Object[119], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[119], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[120] = CreateObject(1708, 927.5222, -1473.0107, 2753.2717, 0.0000, 0.0000, -90.0000); //kb_chair02
	SetObjectMaterial(g_Object[120], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[120], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[121] = CreateObject(1708, 927.5123, -1471.4803, 2753.2717, 0.0000, 0.0000, -90.0000); //kb_chair02
	SetObjectMaterial(g_Object[121], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[121], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[122] = CreateObject(955, 930.7802, -1473.5239, 2753.6857, 0.0000, 0.0000, 270.0000); //CJ_EXT_SPRUNK
	g_Object[123] = CreateObject(956, 930.8322, -1474.9178, 2753.7165, 0.0000, 0.0000, 270.0000); //CJ_EXT_CANDY
	g_Object[124] = CreateObject(2816, 924.3339, -1472.9720, 2753.8125, 0.0000, 0.0000, 0.0000); //gb_bedmags01
	g_Object[125] = CreateObject(2855, 925.5050, -1472.9338, 2753.8032, 0.0000, 0.0000, -48.0000); //gb_bedmags05
	g_Object[126] = CreateObject(19450, 927.4669, -1461.8607, 2752.3906, 90.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[126], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[127] = CreateObject(18762, 920.9376, -1463.0930, 2754.7031, 0.0000, 0.0000, 0.0000); //Concrete1mx1mx5m
	SetObjectMaterial(g_Object[127], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[128] = CreateObject(19450, 922.2877, -1463.5218, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[128], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[129] = CreateObject(19174, 924.0399, -1463.6440, 2755.5251, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[129], "Los Santos", 0, 90, "Times New Roman", 25, 1, 0xFFA5A9A7, 0x0, 1);
	SetObjectMaterial(g_Object[129], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[130] = CreateObject(19174, 924.0399, -1463.6440, 2755.8454, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[130], "Gobierno", 0, 90, "Times New Roman", 40, 1, 0xFFA5A9A7, 0x0, 1);
	SetObjectMaterial(g_Object[130], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[131] = CreateObject(19385, 927.4738, -1458.5091, 2755.0256, 0.0000, 0.0000, 0.0000); //wall033
	SetObjectMaterial(g_Object[131], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[132] = CreateObject(1569, 927.4956, -1459.2479, 2753.2839, 0.0000, 0.0000, -48.7999); //ADAM_V_DOOR
	g_Object[133] = CreateObject(19174, 918.8895, -1462.8747, 2756.3559, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[133], "i", 0, 90, "Webdings", 70, 1, 0xFFA5A9A7, 0x0, 1);
	SetObjectMaterial(g_Object[133], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[134] = CreateObject(18981, 918.0518, -1454.1363, 2757.7150, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[134], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[135] = CreateObject(18981, 897.3908, -1463.8270, 2757.7150, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[135], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[136] = CreateObject(18981, 943.0202, -1463.8270, 2757.7150, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[136], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[137] = CreateObject(19464, 934.9027, -1464.8940, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[137], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[138] = CreateObject(18981, 923.0510, -1463.5339, 2752.8317, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[138], 0, 15034, "genhotelsave", "bathtile05_int", 0xFFFFFFFF);
	g_Object[139] = CreateObject(19450, 922.7360, -1464.6108, 2753.2529, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[139], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[140] = CreateObject(19464, 934.1234, -1472.8424, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[140], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[141] = CreateObject(19464, 934.9027, -1470.8310, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[141], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[142] = CreateObject(1753, 934.0222, -1472.2602, 2753.2915, 0.0000, 0.0000, 180.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[142], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[143] = CreateObject(3034, 934.7407, -1465.0699, 2755.4609, 0.0000, 0.0000, -90.0000); //bd_window
	SetObjectMaterial(g_Object[143], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[144] = CreateObject(19430, 934.8759, -1466.7534, 2757.2348, 90.0000, 0.0000, 0.0000); //wall070
	SetObjectMaterial(g_Object[144], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[145] = CreateObject(19450, 925.7769, -1463.5218, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[145], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[146] = CreateObject(19430, 934.8759, -1462.4420, 2757.2348, 90.0000, 0.0000, 0.0000); //wall070
	SetObjectMaterial(g_Object[146], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[147] = CreateObject(19174, 934.7780, -1459.5168, 2755.6752, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetObjectMaterial(g_Object[147], 0, 2266, "picture_frame", "CJ_PAINTING16", 0xFFFFFFFF);
	g_Object[148] = CreateObject(19174, 934.7780, -1470.5576, 2755.6752, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetObjectMaterial(g_Object[148], 0, 2254, "picture_frame_clip", "CJ_PAINTING15", 0xFFFFFFFF);
	g_Object[149] = CreateObject(19450, 933.2952, -1476.0218, 2753.2500, 0.0000, 90.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[149], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[150] = CreateObject(19450, 906.5750, -1476.0218, 2753.2500, 0.0000, 90.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[150], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[151] = CreateObject(19450, 913.1157, -1472.9416, 2753.2800, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[151], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[152] = CreateObject(3051, 929.1109, -1457.0914, 2754.6354, 0.0000, 0.0000, -43.9000); //lift_dr
	SetObjectMaterial(g_Object[152], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[153] = CreateObject(3051, 930.3195, -1457.1086, 2754.6354, 0.0000, 0.0000, 134.6999); //lift_dr
	SetObjectMaterial(g_Object[153], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[154] = CreateObject(3051, 933.3319, -1457.0992, 2754.6354, 0.0000, 0.0000, 136.6000); //lift_dr
	SetObjectMaterial(g_Object[154], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[155] = CreateObject(3051, 932.1450, -1457.0965, 2754.6354, 0.0000, 0.0000, -43.9000); //lift_dr
	SetObjectMaterial(g_Object[155], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[156] = CreateObject(19174, 930.0083, -1457.0837, 2754.9841, 0.0000, 180.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[156], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[156], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[157] = CreateObject(19174, 932.4487, -1457.0837, 2754.0231, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[157], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[157], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[158] = CreateObject(19464, 934.9027, -1458.9647, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[158], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[159] = CreateObject(18766, 925.5288, -1463.5604, 2758.5424, 90.0000, 90.0000, 90.0000); //Concrete10mx1mx5m
	SetObjectMaterial(g_Object[159], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[160] = CreateObject(19464, 931.9254, -1456.9621, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[160], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[161] = CreateObject(19464, 926.0551, -1456.9422, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[161], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[162] = CreateObject(18766, 914.8186, -1463.5604, 2758.5424, 90.0000, 90.0000, 90.0000); //Concrete10mx1mx5m
	SetObjectMaterial(g_Object[162], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[163] = CreateObject(18766, 924.1887, -1463.5604, 2758.5424, 90.0000, 90.0000, 90.0000); //Concrete10mx1mx5m
	SetObjectMaterial(g_Object[163], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[164] = CreateObject(18766, 907.2075, -1470.9383, 2758.5424, 90.0000, 90.0000, 0.0000); //Concrete10mx1mx5m
	SetObjectMaterial(g_Object[164], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[165] = CreateObject(18766, 907.3577, -1461.0788, 2758.5424, 90.0000, 90.0000, 0.0000); //Concrete10mx1mx5m
	SetObjectMaterial(g_Object[165], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[166] = CreateObject(18766, 933.2080, -1470.9383, 2758.5424, 90.0000, 90.0000, 0.0000); //Concrete10mx1mx5m
	SetObjectMaterial(g_Object[166], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[167] = CreateObject(18981, 918.0518, -1454.1363, 2759.4965, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[167], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[168] = CreateObject(18981, 897.3908, -1463.8270, 2759.4863, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[168], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[169] = CreateObject(18981, 942.9807, -1463.8270, 2759.4863, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[169], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[170] = CreateObject(18762, 913.1666, -1473.9322, 2759.4521, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetObjectMaterial(g_Object[170], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[171] = CreateObject(18762, 913.1666, -1469.0615, 2759.4519, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetObjectMaterial(g_Object[171], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[172] = CreateObject(18762, 927.4771, -1473.9322, 2759.5019, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetObjectMaterial(g_Object[172], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[173] = CreateObject(18762, 927.4771, -1468.9621, 2759.5019, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetObjectMaterial(g_Object[173], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[174] = CreateObject(19464, 924.8234, -1475.9615, 2760.7905, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[174], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[175] = CreateObject(19464, 918.8933, -1475.9615, 2760.7905, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[175], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[176] = CreateObject(19464, 912.9534, -1475.9615, 2760.7905, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[176], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[177] = CreateObject(19464, 910.1743, -1475.9914, 2762.0214, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[177], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[178] = CreateObject(19464, 939.3153, -1475.9914, 2762.0214, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[178], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[179] = CreateObject(19464, 918.8933, -1476.1118, 2757.9890, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[179], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[180] = CreateObject(18766, 933.0078, -1461.0710, 2758.5424, 90.0000, 90.0000, 0.0000); //Concrete10mx1mx5m
	SetObjectMaterial(g_Object[180], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[181] = CreateObject(3858, 909.8286, -1473.8785, 2762.0288, 0.0000, 0.0000, -45.2000); //ottosmash1
	SetObjectMaterial(g_Object[181], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[182] = CreateObject(3859, 912.4848, -1466.5985, 2762.0224, 0.0000, 0.0000, 106.8000); //ottosmash04
	SetObjectMaterial(g_Object[182], 0, 1717, "cj_tv", "green_glass_64", 0xFF9F9D94);
	g_Object[183] = CreateObject(3859, 917.5772, -1466.6174, 2762.0224, 0.0000, 0.0000, 106.8000); //ottosmash04
	SetObjectMaterial(g_Object[183], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[184] = CreateObject(3859, 922.6889, -1466.6313, 2762.0224, 0.0000, 0.0000, 107.0998); //ottosmash04
	SetObjectMaterial(g_Object[184], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[185] = CreateObject(3858, 930.5883, -1473.8929, 2762.0288, 0.0000, 0.0000, -44.7000); //ottosmash1
	SetObjectMaterial(g_Object[185], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[186] = CreateObject(1897, 920.0504, -1466.5904, 2761.1047, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[187] = CreateObject(1897, 920.0504, -1466.5904, 2763.3256, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[188] = CreateObject(1897, 920.0504, -1466.5904, 2763.8161, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[189] = CreateObject(1897, 925.1815, -1466.5904, 2763.8161, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[190] = CreateObject(1897, 925.1810, -1466.5904, 2763.3256, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[191] = CreateObject(1897, 925.1810, -1466.5904, 2761.1057, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[192] = CreateObject(1897, 930.4218, -1466.5904, 2761.1047, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[193] = CreateObject(1897, 930.4212, -1466.5904, 2763.3256, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[194] = CreateObject(1897, 930.4212, -1466.5904, 2763.8161, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[195] = CreateObject(1897, 914.9406, -1466.5904, 2763.8161, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[196] = CreateObject(1897, 914.9406, -1466.5904, 2763.3256, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[197] = CreateObject(1897, 914.9412, -1466.5904, 2761.1057, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[198] = CreateObject(1897, 909.9411, -1466.5904, 2761.1057, 0.0000, 0.0000, 90.0000); //wheel_support
	g_Object[199] = CreateObject(1897, 909.9409, -1466.5904, 2763.3256, 0.0000, 0.0000, 90.0000); //wheel_support
	g_Object[200] = CreateObject(1897, 909.9403, -1466.5904, 2763.8161, 0.0000, 0.0000, 90.0000); //wheel_support
	g_Object[201] = CreateObject(19087, 914.9141, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[201], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[202] = CreateObject(19087, 912.5037, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[202], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[203] = CreateObject(19087, 917.4243, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[203], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[204] = CreateObject(19087, 919.8441, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[204], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[205] = CreateObject(19087, 922.2941, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[205], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[206] = CreateObject(19087, 924.7442, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[206], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[207] = CreateObject(19087, 927.1638, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[207], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[208] = CreateObject(19087, 929.5642, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[208], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[209] = CreateObject(19087, 930.3847, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[209], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[210] = CreateObject(19087, 930.3350, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[210], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[211] = CreateObject(19087, 927.8847, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[211], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[212] = CreateObject(19087, 925.4448, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[212], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[213] = CreateObject(1897, 909.8302, -1475.7408, 2763.8161, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[214] = CreateObject(19087, 920.5443, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[214], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[215] = CreateObject(19087, 918.1032, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[215], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[216] = CreateObject(19087, 915.6630, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[216], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[217] = CreateObject(19087, 913.2529, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[217], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[218] = CreateObject(19087, 912.5025, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[218], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[219] = CreateObject(19087, 912.5025, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[219], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[220] = CreateObject(19087, 914.9229, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[220], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[221] = CreateObject(19087, 917.5131, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[221], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[222] = CreateObject(19087, 919.9437, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[222], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[223] = CreateObject(19087, 922.6140, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[223], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[224] = CreateObject(19087, 925.0349, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[224], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[225] = CreateObject(19087, 927.4047, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[225], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[226] = CreateObject(19087, 929.8048, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[226], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[227] = CreateObject(19087, 930.3850, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[227], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[228] = CreateObject(19087, 923.0048, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetObjectMaterial(g_Object[228], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[229] = CreateObject(1897, 909.8308, -1475.7419, 2763.3256, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[230] = CreateObject(1897, 909.8308, -1475.7419, 2761.1062, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[231] = CreateObject(1897, 909.8308, -1471.2009, 2761.1062, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[232] = CreateObject(1897, 909.8308, -1471.2010, 2763.3256, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[233] = CreateObject(1897, 909.8302, -1471.2004, 2763.8161, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[234] = CreateObject(19087, 909.8543, -1468.6241, 2764.4221, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[234], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[235] = CreateObject(19087, 909.8543, -1466.6048, 2764.4221, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[235], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[236] = CreateObject(19087, 909.8543, -1471.3337, 2764.4221, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[236], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[237] = CreateObject(19087, 909.8543, -1473.1749, 2764.4221, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[237], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[238] = CreateObject(19087, 909.8543, -1473.1749, 2764.9125, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[238], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[239] = CreateObject(19087, 909.8543, -1470.7441, 2764.9125, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[239], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[240] = CreateObject(19087, 909.8543, -1468.3044, 2764.9125, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[240], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[241] = CreateObject(19087, 909.8543, -1466.6335, 2764.9125, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[241], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[242] = CreateObject(19087, 909.8543, -1473.2651, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[242], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[243] = CreateObject(19087, 909.8543, -1470.8254, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[243], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[244] = CreateObject(19087, 909.8543, -1468.4858, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[244], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[245] = CreateObject(19087, 909.8543, -1466.6445, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[245], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[246] = CreateObject(3859, 927.8892, -1466.6334, 2762.0224, 0.0000, 0.0000, 107.0998); //ottosmash04
	SetObjectMaterial(g_Object[246], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[247] = CreateObject(1897, 930.5916, -1471.2004, 2763.8161, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[248] = CreateObject(1897, 930.5916, -1471.2010, 2763.3256, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[249] = CreateObject(1897, 930.5913, -1471.2009, 2761.1062, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[250] = CreateObject(1897, 930.5913, -1475.7423, 2761.1062, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[251] = CreateObject(1897, 930.5905, -1475.7419, 2763.3256, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[252] = CreateObject(1897, 930.5902, -1475.7408, 2763.8161, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[253] = CreateObject(19087, 930.5562, -1466.6445, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[253], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[254] = CreateObject(19087, 930.5562, -1468.9952, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[254], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[255] = CreateObject(19087, 930.5562, -1471.4339, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[255], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[256] = CreateObject(19087, 930.5562, -1473.8431, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[256], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[257] = CreateObject(19087, 930.5562, -1473.8431, 2764.4338, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[257], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[258] = CreateObject(19087, 930.5562, -1471.3935, 2764.4338, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[258], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[259] = CreateObject(19087, 930.5562, -1469.0124, 2764.4338, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[259], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[260] = CreateObject(19087, 930.5562, -1466.5511, 2764.4338, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[260], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[261] = CreateObject(19087, 930.5562, -1466.5511, 2764.9143, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[261], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[262] = CreateObject(19087, 930.5562, -1468.9724, 2764.9143, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[262], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[263] = CreateObject(19087, 930.5562, -1471.3735, 2764.9143, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[263], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[264] = CreateObject(19087, 930.5562, -1473.8155, 2764.9143, 0.0000, 90.0000, 90.0000); //Rope1
	SetObjectMaterial(g_Object[264], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[265] = CreateObject(19565, 929.9935, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[265], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[266] = CreateObject(19565, 932.5051, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[266], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[267] = CreateObject(19565, 932.8754, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[267], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[268] = CreateObject(19565, 929.6226, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[268], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[269] = CreateObject(19565, 929.9931, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[269], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[270] = CreateObject(19565, 932.5037, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[270], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[271] = CreateObject(19565, 932.8837, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[271], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[272] = CreateObject(19174, 929.8189, -1457.1361, 2756.5361, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[272], "1. Elev", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[272], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[273] = CreateObject(19174, 932.6793, -1457.1361, 2756.5361, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[273], "1. Elev", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[273], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[274] = CreateObject(19565, 929.4240, -1456.9095, 2756.3754, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[274], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[275] = CreateObject(19565, 930.1942, -1456.9095, 2756.3754, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[275], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[276] = CreateObject(19565, 932.2946, -1456.9095, 2756.3754, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[276], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[277] = CreateObject(19565, 933.0853, -1456.9095, 2756.3754, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[277], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[278] = CreateObject(11711, 920.2321, -1475.9582, 2756.0922, 0.0000, 0.0000, 0.0000); //ExitSign1
	g_Object[279] = CreateObject(19450, 915.3059, -1457.0123, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[279], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[280] = CreateObject(19450, 913.4359, -1457.0023, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[280], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[281] = CreateObject(19450, 925.8062, -1456.9923, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[281], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[282] = CreateObject(19450, 922.7467, -1457.0123, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[282], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[283] = CreateObject(19450, 918.8057, -1457.0223, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[283], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[284] = CreateObject(19450, 916.5449, -1461.1208, 2753.2600, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[284], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[285] = CreateObject(19450, 916.5449, -1457.8409, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[285], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[286] = CreateObject(19450, 922.7354, -1461.1175, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[286], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[287] = CreateObject(19450, 922.7354, -1457.6269, 2753.2600, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[287], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[288] = CreateObject(19450, 922.2871, -1457.0223, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[288], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[289] = CreateObject(19430, 918.8248, -1462.7816, 2757.2348, 90.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[289], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF46597A);
	g_Object[290] = CreateObject(2162, 923.5117, -1463.4350, 2753.2990, 0.0000, 0.0000, -180.0000); //MED_OFFICE_UNIT_1
	g_Object[291] = CreateObject(2162, 915.5119, -1463.4350, 2753.2990, 0.0000, 0.0000, -180.0000); //MED_OFFICE_UNIT_1
	g_Object[292] = CreateObject(2162, 913.4514, -1463.4350, 2753.2990, 0.0000, 0.0000, -180.0000); //MED_OFFICE_UNIT_1
	g_Object[293] = CreateObject(2199, 927.3060, -1460.9044, 2753.1269, 0.0000, 0.0000, 270.0000); //MED_OFFICE6_MC_1
	SetObjectMaterial(g_Object[293], 2, 14650, "ab_trukstpc", "sa_wood08_128", 0xFFFFFFFF);
	g_Object[294] = CreateObject(2199, 911.9057, -1461.3148, 2753.1269, 0.0000, 0.0000, 90.0000); //MED_OFFICE6_MC_1
	SetObjectMaterial(g_Object[294], 2, 14650, "ab_trukstpc", "sa_wood08_128", 0xFFFFFFFF);
	g_Object[295] = CreateObject(1671, 918.5828, -1460.8330, 2753.7797, 0.0000, 0.0000, 0.0000); //swivelchair_A
	g_Object[296] = CreateObject(2817, 914.6895, -1473.4670, 2753.7687, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetObjectMaterial(g_Object[296], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[297] = CreateObject(2817, 914.6895, -1473.4670, 2753.8088, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetObjectMaterial(g_Object[297], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[298] = CreateObject(2817, 914.6895, -1473.4770, 2753.7687, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetObjectMaterial(g_Object[298], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[299] = CreateObject(2817, 924.4199, -1473.4770, 2753.7687, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetObjectMaterial(g_Object[299], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[300] = CreateObject(2817, 924.4199, -1473.4770, 2753.7988, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetObjectMaterial(g_Object[300], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[301] = CreateObject(1999, 919.2733, -1462.1870, 2753.2299, 0.0000, 0.0000, 180.0000); //officedesk2
	SetObjectMaterial(g_Object[301], 0, 18232, "cw_truckstopcs_t", "des_roswin3", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[301], 1, 14802, "lee_bdupsflat", "Bdup_table", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[301], 2, 14802, "lee_bdupsflat", "Bdup_table", 0xFFFFFFFF);
	g_Object[302] = CreateObject(2163, 924.7196, -1456.9438, 2754.5229, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_2
	g_Object[303] = CreateObject(2163, 922.4096, -1456.9438, 2754.5229, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_2
	g_Object[304] = CreateObject(2163, 913.0283, -1456.9438, 2754.5229, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_2
	g_Object[305] = CreateObject(2163, 915.2387, -1456.9438, 2754.5229, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_2
	g_Object[306] = CreateObject(19825, 919.1264, -1457.1561, 2756.2692, 0.0000, 0.0000, 0.0000); //SprunkClock1
	g_Object[307] = CreateObject(2200, 918.3737, -1457.1142, 2753.3464, 0.0000, 0.0000, 0.0000); //MED_OFFICE5_UNIT_1
	g_Object[308] = CreateObject(16780, 914.5795, -1460.3094, 2757.3347, 0.0000, 0.0000, 0.0000); //ufo_light03
	g_Object[309] = CreateObject(16780, 923.9711, -1460.3094, 2757.3347, 0.0000, 0.0000, 0.0000); //ufo_light03
	g_Object[310] = CreateObject(14687, 921.2670, -1462.5118, 2755.5612, 0.0000, 0.0000, 0.0000); //Int_tat_lights02
	g_Object[311] = CreateObject(14687, 934.2390, -1458.7705, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[312] = CreateObject(14687, 934.2490, -1463.6103, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[313] = CreateObject(14687, 934.2188, -1468.0317, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[314] = CreateObject(14687, 910.8579, -1463.6103, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[315] = CreateObject(14687, 910.8579, -1458.7292, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[316] = CreateObject(14687, 910.8579, -1468.0600, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[317] = CreateObject(14687, 926.0379, -1465.9333, 2755.5612, 0.0000, 0.0000, 0.0000); //Int_tat_lights02
	g_Object[318] = CreateObject(14687, 916.5460, -1465.9333, 2755.5612, 0.0000, 0.0000, 0.0000); //Int_tat_lights02
	g_Object[319] = CreateObject(3051, 910.3054, -1457.1009, 2761.3532, 0.0000, 0.0000, 135.6000); //lift_dr
	SetObjectMaterial(g_Object[319], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[320] = CreateObject(3051, 907.3848, -1457.0985, 2761.3666, 0.0000, 0.0000, 135.6000); //lift_dr
	SetObjectMaterial(g_Object[320], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[321] = CreateObject(3051, 909.0891, -1457.1036, 2761.3569, 0.0000, 0.0000, -43.9000); //lift_dr
	SetObjectMaterial(g_Object[321], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[322] = CreateObject(3051, 906.1680, -1457.0931, 2761.3669, 0.0000, 0.0000, -43.9000); //lift_dr
	SetObjectMaterial(g_Object[322], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[323] = CreateObject(3051, 929.1109, -1457.0914, 2761.3395, 0.0000, 0.0000, -43.9000); //lift_dr
	SetObjectMaterial(g_Object[323], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[324] = CreateObject(3051, 930.3195, -1457.1086, 2761.3398, 0.0000, 0.0000, 134.6999); //lift_dr
	SetObjectMaterial(g_Object[324], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[325] = CreateObject(3051, 933.3319, -1457.0992, 2761.3481, 0.0000, 0.0000, 136.6000); //lift_dr
	SetObjectMaterial(g_Object[325], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[326] = CreateObject(3051, 932.1450, -1457.0965, 2761.3471, 0.0000, 0.0000, -43.9000); //lift_dr
	SetObjectMaterial(g_Object[326], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[327] = CreateObject(19464, 932.2858, -1456.9621, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[327], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[328] = CreateObject(19464, 930.2645, -1456.9421, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[328], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[329] = CreateObject(19464, 907.3543, -1456.9421, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[329], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[330] = CreateObject(19464, 909.2437, -1456.9521, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[330], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[331] = CreateObject(19174, 930.0083, -1457.0837, 2761.5593, 0.0000, 180.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[331], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[331], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[332] = CreateObject(19174, 907.0269, -1457.0837, 2761.5593, 0.0000, 180.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[332], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[332], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[333] = CreateObject(19174, 909.4674, -1457.0837, 2760.6384, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[333], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[333], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[334] = CreateObject(19174, 932.4478, -1457.0837, 2760.6384, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[334], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[334], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[335] = CreateObject(19174, 932.7396, -1457.1361, 2763.1921, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[335], "E.G.", 0, 90, "Arial Black", 20, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[335], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[336] = CreateObject(19174, 906.8192, -1457.1361, 2763.1921, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[336], "E.G.", 0, 90, "Arial Black", 20, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[336], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[337] = CreateObject(19174, 909.7092, -1457.1361, 2763.1921, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[337], "E.G.", 0, 90, "Arial Black", 20, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[337], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[338] = CreateObject(19565, 907.0526, -1457.1499, 2763.0705, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[338], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[339] = CreateObject(19565, 906.5822, -1457.1499, 2763.0705, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[339], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[340] = CreateObject(19565, 909.5128, -1457.1499, 2763.0705, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[340], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[341] = CreateObject(19565, 909.9533, -1457.1499, 2763.0705, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[341], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[342] = CreateObject(19565, 909.9533, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[342], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[343] = CreateObject(19565, 909.5128, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[343], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[344] = CreateObject(19565, 907.0526, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[344], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[345] = CreateObject(19565, 906.5825, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[345], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[346] = CreateObject(19565, 929.6544, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[346], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[347] = CreateObject(19565, 930.0045, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[347], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[348] = CreateObject(19565, 932.5454, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[348], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[349] = CreateObject(19565, 932.9459, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[349], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[350] = CreateObject(19565, 932.9459, -1457.1499, 2763.0905, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[350], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[351] = CreateObject(19565, 932.5454, -1457.1499, 2763.0905, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[351], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[352] = CreateObject(19565, 929.9940, -1457.1499, 2763.0905, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[352], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[353] = CreateObject(19565, 929.6536, -1457.1499, 2763.0905, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[353], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[354] = CreateObject(19565, 929.4539, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[354], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[355] = CreateObject(19565, 930.2045, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[355], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[356] = CreateObject(19565, 932.3449, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[356], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[357] = CreateObject(19565, 933.1455, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[357], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[358] = CreateObject(19565, 910.1544, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[358], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[359] = CreateObject(19565, 909.3046, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[359], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[360] = CreateObject(19565, 907.2540, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[360], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[361] = CreateObject(19565, 906.3842, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetObjectMaterial(g_Object[361], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[362] = CreateObject(19387, 922.6312, -1457.0212, 2761.6650, 0.0000, 0.0000, 90.0000); //wall035
	SetObjectMaterial(g_Object[362], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[363] = CreateObject(19464, 917.4323, -1456.9128, 2765.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[363], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[364] = CreateObject(19464, 927.1738, -1456.9331, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[364], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[365] = CreateObject(19464, 911.5225, -1456.9331, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[365], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[366] = CreateObject(19464, 921.2628, -1456.9331, 2765.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[366], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[367] = CreateObject(19387, 916.0405, -1457.0412, 2761.6650, 0.0000, 0.0000, 90.0000); //wall035
	SetObjectMaterial(g_Object[367], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[368] = CreateObject(19174, 921.0272, -1457.1136, 2761.4895, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[368], "Damas ", 0, 90, "Arial", 15, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[368], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[369] = CreateObject(1753, 925.3228, -1457.5426, 2759.9807, 0.0000, 0.0000, 0.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[369], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[370] = CreateObject(1753, 911.7719, -1457.5426, 2759.9807, 0.0000, 0.0000, 0.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[370], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[371] = CreateObject(19464, 938.5679, -1461.3734, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[371], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[372] = CreateObject(19464, 901.4240, -1456.9521, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[372], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[373] = CreateObject(19464, 901.0338, -1466.3739, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[373], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[374] = CreateObject(19464, 901.0341, -1458.5622, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[374], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[375] = CreateObject(19387, 938.5313, -1465.9105, 2761.6650, 0.0000, 0.0000, 0.0000); //wall035
	SetObjectMaterial(g_Object[375], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[376] = CreateObject(3858, 927.8206, -1473.8166, 2764.9653, -45.5998, 90.0000, 0.0000); //ottosmash1
	SetObjectMaterial(g_Object[376], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[377] = CreateObject(3858, 922.0006, -1473.8166, 2764.9653, -45.5998, 90.0000, 0.0000); //ottosmash1
	SetObjectMaterial(g_Object[377], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[378] = CreateObject(3858, 916.1806, -1473.8166, 2764.9653, -45.5998, 90.0000, 0.0000); //ottosmash1
	SetObjectMaterial(g_Object[378], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[379] = CreateObject(3858, 910.3609, -1473.8166, 2764.9653, -45.5998, 90.0000, 0.0000); //ottosmash1
	SetObjectMaterial(g_Object[379], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[380] = CreateObject(18981, 897.3908, -1463.8270, 2765.3720, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[380], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[381] = CreateObject(18981, 943.0200, -1463.8270, 2765.3720, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[381], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[382] = CreateObject(18981, 920.8698, -1454.0860, 2765.3720, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[382], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[383] = CreateObject(19430, 911.7835, -1458.6311, 2757.2348, 90.0000, 0.0000, 0.0000); //wall070
	SetObjectMaterial(g_Object[383], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF46597A);
	g_Object[384] = CreateObject(19430, 927.4541, -1458.6311, 2757.2348, 90.0000, 0.0000, 0.0000); //wall070
	SetObjectMaterial(g_Object[384], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF46597A);
	g_Object[385] = CreateObject(18981, 897.3609, -1463.8270, 2759.5163, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[385], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[386] = CreateObject(18981, 943.0114, -1463.8270, 2759.5163, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[386], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[387] = CreateObject(18981, 919.9412, -1454.1279, 2759.5063, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[387], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[388] = CreateObject(19464, 901.0340, -1473.3723, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[388], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[389] = CreateObject(19464, 938.5737, -1473.3653, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[389], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[390] = CreateObject(19464, 938.5720, -1470.4040, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[390], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[391] = CreateObject(19464, 938.5689, -1466.2845, 2765.8708, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[391], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[392] = CreateObject(19464, 938.1936, -1456.9521, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[392], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[393] = CreateObject(19464, 938.5936, -1455.4936, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[393], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[394] = CreateObject(19464, 934.8054, -1476.1616, 2762.3205, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[394], 0, 14801, "lee_bdupsmain", "Bdup_Blinds", 0xFFFFFFFF);
	g_Object[395] = CreateObject(19464, 905.7351, -1476.1616, 2762.3205, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[395], 0, 14801, "lee_bdupsmain", "Bdup_Blinds", 0xFFFFFFFF);
	g_Object[396] = CreateObject(19464, 900.7233, -1475.9814, 2762.0214, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[396], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[397] = CreateObject(19464, 912.9534, -1475.9814, 2762.4321, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[397], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[398] = CreateObject(19464, 918.8842, -1475.9814, 2762.4321, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[398], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[399] = CreateObject(19464, 924.8151, -1475.9814, 2762.4321, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[399], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[400] = CreateObject(19464, 929.9545, -1475.9914, 2762.0214, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[400], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[401] = CreateObject(19464, 929.9545, -1475.9914, 2756.0769, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[401], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[402] = CreateObject(19464, 907.5247, -1475.9914, 2756.1970, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[402], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[403] = CreateObject(1753, 937.9417, -1468.2910, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[403], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[404] = CreateObject(1753, 937.9417, -1459.7016, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[404], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[405] = CreateObject(1753, 937.9417, -1472.6518, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[405], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[406] = CreateObject(1753, 901.6710, -1475.1933, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[406], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[407] = CreateObject(1753, 901.6710, -1471.3133, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[407], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[408] = CreateObject(19464, 901.0339, -1470.4338, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[408], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[409] = CreateObject(19464, 901.0319, -1461.3629, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[409], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[410] = CreateObject(19786, 901.1464, -1470.2236, 2762.4023, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[410], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[410], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[411] = CreateObject(19786, 901.1464, -1474.1933, 2762.4023, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[411], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[411], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[412] = CreateObject(19786, 901.1464, -1460.6839, 2762.4023, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[412], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[412], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[413] = CreateObject(1753, 901.6710, -1461.7126, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[413], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[414] = CreateObject(19786, 938.5164, -1460.6839, 2762.4023, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[414], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[414], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[415] = CreateObject(19786, 938.5164, -1469.3752, 2762.4023, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[415], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[415], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[416] = CreateObject(19786, 938.5164, -1473.5050, 2762.4023, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[416], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[416], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[417] = CreateObject(2002, 937.9525, -1471.5343, 2759.9567, 0.0000, 0.0000, -90.0000); //water_coolnu
	g_Object[418] = CreateObject(2002, 901.6923, -1472.2650, 2759.9567, 0.0000, 0.0000, 90.0000); //water_coolnu
	g_Object[419] = CreateObject(948, 901.5866, -1462.8619, 2759.9685, 0.0000, 0.0000, 0.0000); //Plant_Pot_10
	g_Object[420] = CreateObject(948, 901.5866, -1458.4813, 2759.9685, 0.0000, 0.0000, 0.0000); //Plant_Pot_10
	g_Object[421] = CreateObject(948, 937.9970, -1458.4813, 2759.9685, 0.0000, 0.0000, 0.0000); //Plant_Pot_10
	g_Object[422] = CreateObject(948, 937.9224, -1462.8619, 2759.9685, 0.0000, 0.0000, 0.0000); //Plant_Pot_10
	g_Object[423] = CreateObject(2010, 920.5430, -1457.4154, 2759.9716, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	SetObjectMaterial(g_Object[423], 1, 6490, "tvstudio_law2", "tvstud03_LAw2", 0xFFFFFFFF);
	g_Object[424] = CreateObject(2010, 918.2318, -1457.4154, 2759.9716, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	SetObjectMaterial(g_Object[424], 1, 6490, "tvstudio_law2", "tvstud03_LAw2", 0xFFFFFFFF);
	g_Object[425] = CreateObject(19174, 920.0172, -1457.1037, 2760.9187, 0.0000, 90.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[425], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[425], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[426] = CreateObject(19174, 918.8164, -1457.0937, 2763.3608, 0.0000, -90.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[426], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[426], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[427] = CreateObject(19174, 921.5076, -1457.1037, 2761.8898, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[427], "__", 0, 90, "Arial Black", 50, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[427], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[428] = CreateObject(19174, 919.6466, -1457.0937, 2761.8898, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[428], "__", 0, 90, "Arial Black", 50, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[428], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[429] = CreateObject(19464, 915.5947, -1475.9527, 2750.9528, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[429], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[430] = CreateObject(1491, 921.8579, -1457.0078, 2760.0092, 0.0000, 0.0000, 0.0000); //Gen_doorINT01
	SetObjectMaterial(g_Object[430], 0, 18008, "intclothesa", "CJ_VICT_DOOR2", 0xFFFFFFFF);
	g_Object[431] = CreateObject(19174, 920.1066, -1457.1335, 2761.4895, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[431], "Caballeros", 0, 90, "Arial", 15, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[431], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[432] = CreateObject(19174, 920.4569, -1457.1135, 2762.3503, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[432], "WC", 0, 90, "Arial Black", 50, 1, 0xFF000000, 0x0, 0);
	SetObjectMaterial(g_Object[432], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[433] = CreateObject(1491, 915.2772, -1457.0078, 2760.0092, 0.0000, 0.0000, 0.0000); //Gen_doorINT01
	SetObjectMaterial(g_Object[433], 0, 2878, "cj_vic", "CJ_VICT_DOOR", 0xFFFFFFFF);
	g_Object[434] = CreateObject(19464, 909.6546, -1475.9527, 2750.9528, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[434], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[435] = CreateObject(19464, 919.3026, -1456.9830, 2760.4577, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[435], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[436] = CreateObject(19464, 924.8046, -1475.9527, 2750.9528, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[436], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[437] = CreateObject(19464, 930.7351, -1475.9527, 2750.9528, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[437], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[438] = CreateObject(19464, 931.2553, -1475.6628, 2750.9528, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[438], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[439] = CreateObject(19464, 909.0150, -1475.6628, 2750.9528, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[439], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[440] = CreateObject(19464, 906.1853, -1472.7926, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[440], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[441] = CreateObject(19464, 934.0755, -1472.7926, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[441], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[442] = CreateObject(19464, 902.6057, -1456.9630, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[442], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[443] = CreateObject(19464, 934.8853, -1464.3923, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[443], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[444] = CreateObject(19464, 934.8853, -1458.4527, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[444], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[445] = CreateObject(19464, 904.7053, -1458.9631, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[445], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[446] = CreateObject(19464, 904.7053, -1469.7829, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[446], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[447] = CreateObject(19464, 934.8853, -1470.3321, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[447], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[448] = CreateObject(19464, 910.9254, -1456.9630, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[448], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[449] = CreateObject(19464, 936.8955, -1456.9630, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[449], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[450] = CreateObject(19464, 930.4655, -1456.9630, 2750.9729, 0.0000, 0.0000, 89.8999); //wall104
	SetObjectMaterial(g_Object[450], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[451] = CreateObject(19464, 901.8554, -1461.8431, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[451], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[452] = CreateObject(19464, 901.8554, -1466.9239, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[452], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[453] = CreateObject(19089, 936.7622, -1476.0279, 2765.0139, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[453], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[454] = CreateObject(19089, 905.3505, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[454], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[455] = CreateObject(19464, 911.6925, -1448.0040, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[455], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[456] = CreateObject(19089, 934.6113, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[456], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[457] = CreateObject(19089, 932.5114, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[457], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[458] = CreateObject(19089, 935.6959, -1476.0279, 2764.8884, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[458], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[459] = CreateObject(19089, 907.6110, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[459], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[460] = CreateObject(19089, 903.2706, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[460], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[461] = CreateObject(19089, 933.5557, -1476.0279, 2764.8884, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[461], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[462] = CreateObject(18981, 918.2313, -1463.8270, 2765.3820, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetObjectMaterial(g_Object[462], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[463] = CreateObject(19464, 911.6925, -1453.9134, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[463], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[464] = CreateObject(18763, 911.5178, -1450.7408, 2758.4553, 0.0000, 0.0000, 0.0000); //Concrete3mx3mx5m
	SetObjectMaterial(g_Object[464], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[465] = CreateObject(18763, 911.5178, -1454.4918, 2758.4553, 0.0000, 0.0000, 0.0000); //Concrete3mx3mx5m
	SetObjectMaterial(g_Object[465], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[466] = CreateObject(2515, 912.4298, -1451.4028, 2761.0720, 0.0000, 0.0000, 90.0000); //CJ_BS_SINK
	SetObjectMaterial(g_Object[466], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[466], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[467] = CreateObject(2515, 912.4298, -1450.0821, 2761.0720, 0.0000, 0.0000, 90.0000); //CJ_BS_SINK
	SetObjectMaterial(g_Object[467], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[467], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[468] = CreateObject(2515, 912.4298, -1453.8331, 2761.0720, 0.0000, 0.0000, 90.0000); //CJ_BS_SINK
	SetObjectMaterial(g_Object[468], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[468], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[469] = CreateObject(2515, 912.4298, -1455.2136, 2761.0720, 0.0000, 0.0000, 90.0000); //CJ_BS_SINK
	SetObjectMaterial(g_Object[469], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[469], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[470] = CreateObject(19786, 926.8073, -1450.6240, 2762.2639, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[470], 0, 10765, "airportgnd_sfse", "white", 0xFF5E7072);
	SetObjectMaterial(g_Object[470], 1, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	g_Object[471] = CreateObject(19786, 911.7078, -1454.4040, 2762.2639, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[471], 0, 10765, "airportgnd_sfse", "white", 0xFF5E7072);
	SetObjectMaterial(g_Object[471], 1, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	g_Object[472] = CreateObject(19089, 906.5056, -1476.0279, 2764.8884, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[472], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[473] = CreateObject(19089, 904.2954, -1476.0279, 2764.8884, 0.0000, 0.0000, 0.0000); //Rope3
	SetObjectMaterial(g_Object[473], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[474] = CreateObject(19786, 911.7078, -1450.7137, 2762.2639, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[474], 0, 10765, "airportgnd_sfse", "white", 0xFF5E7072);
	SetObjectMaterial(g_Object[474], 1, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	g_Object[475] = CreateObject(19786, 926.8577, -1454.5439, 2762.2639, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[475], 0, 10765, "airportgnd_sfse", "white", 0xFF5E7072);
	SetObjectMaterial(g_Object[475], 1, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	g_Object[476] = CreateObject(2741, 911.9041, -1452.5372, 2761.9111, 0.0000, 0.0000, 90.0000); //CJ_SOAP_DISP
	g_Object[477] = CreateObject(11706, 912.6079, -1452.6064, 2759.8071, 0.0000, 0.0000, 0.0000); //SmallWasteBin1
	g_Object[478] = CreateObject(11707, 911.9008, -1448.4228, 2760.9423, 0.0000, 0.0000, 90.0000); //TowelRack1
	g_Object[479] = CreateObject(11707, 913.8812, -1456.6722, 2760.9423, 0.0000, 0.0000, 180.0000); //TowelRack1
	g_Object[480] = CreateObject(19464, 911.5319, -1456.8735, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[480], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[481] = CreateObject(19464, 917.4118, -1456.8935, 2765.9201, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[481], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[482] = CreateObject(19464, 923.3214, -1456.8935, 2765.9201, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[482], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[483] = CreateObject(19464, 919.2819, -1456.8735, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[483], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[484] = CreateObject(19387, 922.6309, -1456.8415, 2761.6650, 0.0000, 0.0000, 90.0000); //wall035
	SetObjectMaterial(g_Object[484], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[485] = CreateObject(19387, 916.0405, -1456.8415, 2761.6650, 0.0000, 0.0000, 90.0000); //wall035
	SetObjectMaterial(g_Object[485], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[486] = CreateObject(19464, 919.2819, -1454.2237, 2762.5297, 90.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[486], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[487] = CreateObject(19464, 919.2819, -1449.1544, 2762.5297, 90.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[487], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[488] = CreateObject(2602, 918.8112, -1454.3535, 2760.4091, 0.0000, 0.0000, -92.0000); //Police_cell_Toilet
	g_Object[489] = CreateObject(2602, 918.7774, -1452.1710, 2760.4091, 0.0000, 0.0000, -92.0000); //Police_cell_Toilet
	g_Object[490] = CreateObject(2602, 918.7683, -1450.1290, 2760.4091, 0.0000, 0.0000, -92.0000); //Police_cell_Toilet
	g_Object[491] = CreateObject(2528, 917.0606, -1445.8050, 2760.0144, 0.0000, 0.0000, 0.0000); //CJ_TOILET3
	g_Object[492] = CreateObject(19464, 915.8820, -1445.1855, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[492], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[493] = CreateObject(19464, 912.8524, -1444.4643, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[493], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[494] = CreateObject(19464, 915.5230, -1444.4941, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[494], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[495] = CreateObject(1491, 916.2495, -1447.5289, 2759.9321, 0.0000, 0.0000, 0.0000); //Gen_doorINT01
	g_Object[496] = CreateObject(1491, 913.3394, -1447.5289, 2759.9321, 0.0000, 0.0000, 0.0000); //Gen_doorINT01
	g_Object[497] = CreateObject(19464, 920.3118, -1447.4841, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[497], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[498] = CreateObject(19464, 910.8120, -1447.4841, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[498], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[499] = CreateObject(19464, 915.2119, -1447.4741, 2765.3906, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[499], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[500] = CreateObject(19464, 918.5029, -1444.4145, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[500], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[501] = CreateObject(19430, 915.5341, -1447.5362, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[501], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[502] = CreateObject(2528, 914.2509, -1445.7755, 2760.0144, 0.0000, 0.0000, 0.0000); //CJ_TOILET3
	g_Object[503] = CreateObject(18075, 915.5850, -1450.0450, 2764.8454, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[504] = CreateObject(16779, 915.4411, -1452.3680, 2764.8708, 0.0000, 0.0000, 0.0000); //ufo_light02
	g_Object[505] = CreateObject(19814, 911.8272, -1452.5699, 2761.1025, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[506] = CreateObject(19814, 911.8272, -1452.5699, 2761.2126, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[507] = CreateObject(19814, 911.8272, -1452.5699, 2760.9824, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[508] = CreateObject(19464, 926.8728, -1453.9134, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[508], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[509] = CreateObject(19464, 926.7316, -1456.8741, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[509], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[510] = CreateObject(11707, 924.6409, -1456.6822, 2760.9423, 0.0000, 0.0000, 180.0000); //TowelRack1
	g_Object[511] = CreateObject(18763, 927.2877, -1454.4918, 2758.4553, 0.0000, 0.0000, 0.0000); //Concrete3mx3mx5m
	SetObjectMaterial(g_Object[511], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[512] = CreateObject(18763, 927.2877, -1450.5815, 2758.4553, 0.0000, 0.0000, 0.0000); //Concrete3mx3mx5m
	SetObjectMaterial(g_Object[512], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[513] = CreateObject(19464, 926.8828, -1448.0235, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[513], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[514] = CreateObject(2515, 926.2197, -1455.2136, 2761.0720, 0.0000, 0.0000, -90.0000); //CJ_BS_SINK
	SetObjectMaterial(g_Object[514], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[514], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[515] = CreateObject(2515, 926.2197, -1453.7335, 2761.0720, 0.0000, 0.0000, -90.0000); //CJ_BS_SINK
	SetObjectMaterial(g_Object[515], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[515], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[516] = CreateObject(2515, 926.2197, -1451.2635, 2761.0720, 0.0000, 0.0000, -90.0000); //CJ_BS_SINK
	SetObjectMaterial(g_Object[516], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[516], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[517] = CreateObject(2515, 926.2197, -1449.8236, 2761.0720, 0.0000, 0.0000, -90.0000); //CJ_BS_SINK
	SetObjectMaterial(g_Object[517], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[517], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[518] = CreateObject(11706, 926.1981, -1452.5063, 2759.8071, 0.0000, 0.0000, 0.0000); //SmallWasteBin1
	g_Object[519] = CreateObject(2741, 926.6439, -1452.5472, 2761.9111, 0.0000, 0.0000, -90.0000); //CJ_SOAP_DISP
	g_Object[520] = CreateObject(19174, 929.8189, -1457.1361, 2763.1921, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[520], "E.G.", 0, 90, "Arial Black", 20, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[520], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[521] = CreateObject(11707, 926.6912, -1448.4228, 2760.9423, 0.0000, 0.0000, -90.0000); //TowelRack1
	g_Object[522] = CreateObject(19814, 926.7271, -1452.5400, 2760.9824, 0.0000, 0.0000, -90.0000); //ElectricalOutlet2
	g_Object[523] = CreateObject(19814, 926.7271, -1452.5400, 2761.1225, 0.0000, 0.0000, -90.0000); //ElectricalOutlet2
	g_Object[524] = CreateObject(19814, 926.7271, -1452.5400, 2761.2626, 0.0000, 0.0000, -90.0000); //ElectricalOutlet2
	g_Object[525] = CreateObject(2528, 919.8004, -1449.7551, 2760.0144, 0.0000, 0.0000, 90.0000); //CJ_TOILET3
	g_Object[526] = CreateObject(2528, 919.8004, -1452.9956, 2760.0144, 0.0000, 0.0000, 90.0000); //CJ_TOILET3
	g_Object[527] = CreateObject(2528, 919.8004, -1455.6451, 2760.0144, 0.0000, 0.0000, 90.0000); //CJ_TOILET3
	g_Object[528] = CreateObject(19464, 925.4016, -1447.4841, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[528], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[529] = CreateObject(1753, 931.0811, -1470.3409, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[529], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[530] = CreateObject(1491, 921.5900, -1450.5792, 2759.9321, 0.0000, 0.0000, 90.0000); //Gen_doorINT01
	g_Object[531] = CreateObject(1491, 921.5869, -1453.6593, 2759.9321, 0.0000, 0.0000, 90.0000); //Gen_doorINT01
	g_Object[532] = CreateObject(1491, 921.5869, -1456.7395, 2759.9321, 0.0000, 0.0000, 90.0000); //Gen_doorINT01
	g_Object[533] = CreateObject(19430, 921.5739, -1454.4365, 2760.6806, 0.0000, 0.0000, 0.0000); //wall070
	SetObjectMaterial(g_Object[533], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[534] = CreateObject(19430, 920.7645, -1454.4365, 2760.6806, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[534], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[535] = CreateObject(19430, 919.9735, -1451.3664, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[535], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[536] = CreateObject(19430, 920.7636, -1451.3763, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[536], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[537] = CreateObject(19430, 921.5739, -1448.2961, 2760.6806, 0.0000, 0.0000, 0.0000); //wall070
	SetObjectMaterial(g_Object[537], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[538] = CreateObject(19430, 920.1641, -1454.4265, 2760.6806, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[538], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[539] = CreateObject(19430, 921.5739, -1451.3564, 2760.6806, 0.0000, 0.0000, 0.0000); //wall070
	SetObjectMaterial(g_Object[539], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[540] = CreateObject(19430, 920.7636, -1448.4565, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[540], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[541] = CreateObject(19430, 920.1535, -1448.4565, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[541], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[542] = CreateObject(19464, 921.5219, -1449.1544, 2765.3295, 90.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[542], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[543] = CreateObject(19464, 921.5020, -1454.2047, 2765.3295, 90.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[543], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[544] = CreateObject(18075, 926.6956, -1450.3454, 2764.8454, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[545] = CreateObject(16779, 923.8812, -1452.3680, 2764.8708, 0.0000, 0.0000, 0.0000); //ufo_light02
	g_Object[546] = CreateObject(19175, 924.2739, -1447.6396, 2762.4118, 0.0000, 0.0000, 0.0000); //SAMPPicture4
	SetObjectMaterial(g_Object[546], 0, 2266, "picture_frame", "CJ_PAINTING18", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[546], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[547] = CreateObject(19089, 930.4857, -1451.8974, 2759.9978, 0.0000, 90.0000, 90.0000); //Rope3
	SetObjectMaterial(g_Object[547], 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	g_Object[548] = CreateObject(19089, 930.4857, -1459.2679, 2759.9978, 0.0000, 90.0000, 90.0000); //Rope3
	SetObjectMaterial(g_Object[548], 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	g_Object[549] = CreateObject(1753, 931.1015, -1474.7010, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[549], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[550] = CreateObject(1753, 909.3314, -1472.6711, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[550], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[551] = CreateObject(1753, 909.3314, -1468.1905, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetObjectMaterial(g_Object[551], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[552] = CreateObject(19089, 909.8756, -1451.8974, 2759.9978, 0.0000, 90.0000, 90.0000); //Rope3
	SetObjectMaterial(g_Object[552], 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	g_Object[553] = CreateObject(19089, 909.8756, -1459.2375, 2759.9978, 0.0000, 90.0000, 90.0000); //Rope3
	SetObjectMaterial(g_Object[553], 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	g_Object[554] = CreateObject(19174, 901.1901, -1465.8480, 2762.9099, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[554], "___________", 0, 90, "Arial", 24, 1, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[554], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[555] = CreateObject(19174, 901.1901, -1465.8480, 2763.1000, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[555], "___________", 0, 90, "Arial", 24, 1, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[555], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[556] = CreateObject(19174, 938.4401, -1465.8480, 2763.1000, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[556], "___________", 0, 90, "Arial", 24, 1, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[556], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[557] = CreateObject(19174, 938.4398, -1465.8580, 2762.9018, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[557], "Servicios", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[557], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[558] = CreateObject(19174, 938.4503, -1465.8480, 2762.9299, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[558], "___________", 0, 90, "Arial", 24, 1, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[558], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[559] = CreateObject(1491, 938.5797, -1465.1302, 2760.0092, 0.0000, 0.0000, 270.0000); //Gen_doorINT01
	SetObjectMaterial(g_Object[559], 0, 1569, "adam_v_doort", "ws_guardhousedoor", 0xFFFFFFFF);
	g_Object[560] = CreateObject(1536, 901.1024, -1465.1301, 2759.9863, 0.0000, 0.0000, -90.0000); //Gen_doorEXT15
	SetObjectMaterial(g_Object[560], 0, 1569, "adam_v_doort", "ws_guardhousedoor", 0xFFFFFFFF);
	g_Object[561] = CreateObject(19814, 908.2202, -1475.8642, 2760.3498, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[562] = CreateObject(19814, 908.4503, -1475.8642, 2760.3498, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[563] = CreateObject(19814, 902.2800, -1475.8642, 2760.3498, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[564] = CreateObject(19814, 902.5399, -1475.8642, 2760.3498, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[565] = CreateObject(19814, 901.1403, -1462.3841, 2760.3098, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[566] = CreateObject(19814, 901.1704, -1458.9731, 2760.3098, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[567] = CreateObject(19814, 901.1702, -1468.3935, 2760.3098, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[568] = CreateObject(19814, 938.4500, -1459.0124, 2760.3098, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[569] = CreateObject(19814, 938.4500, -1462.3730, 2760.3098, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[570] = CreateObject(19814, 938.4500, -1471.0437, 2760.3098, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[571] = CreateObject(19814, 938.4500, -1472.0240, 2760.3098, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[572] = CreateObject(19814, 936.9995, -1475.8741, 2760.3098, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[573] = CreateObject(19814, 937.2398, -1475.8741, 2760.3098, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[574] = CreateObject(2961, 904.8776, -1457.0854, 2761.3278, 0.0000, 0.0000, 0.0000); //fire_break
	g_Object[575] = CreateObject(2961, 934.5474, -1457.0854, 2761.3278, 0.0000, 0.0000, 0.0000); //fire_break
	g_Object[576] = CreateObject(2962, 934.5465, -1457.0898, 2761.3232, 0.0000, 0.0000, 0.0000); //fire_break_glass
	g_Object[577] = CreateObject(2962, 904.8767, -1457.0898, 2761.3232, 0.0000, 0.0000, 0.0000); //fire_break_glass
	g_Object[578] = CreateObject(19826, 917.0244, -1456.6499, 2761.3168, 0.0000, 0.0000, 180.0000); //LightSwitch1
	SetObjectMaterial(g_Object[578], 0, 14706, "labig2int2", "lightswitch01_int", 0xFFFFFFFF);
	g_Object[579] = CreateObject(19826, 917.1646, -1456.6499, 2761.3168, 0.0000, 0.0000, 180.0000); //LightSwitch1
	SetObjectMaterial(g_Object[579], 0, 14706, "labig2int2", "lightswitch01_int", 0xFFFFFFFF);
	g_Object[580] = CreateObject(19826, 923.6148, -1456.6499, 2761.3168, 0.0000, 0.0000, 180.0000); //LightSwitch1
	SetObjectMaterial(g_Object[580], 0, 14706, "labig2int2", "lightswitch01_int", 0xFFFFFFFF);
	g_Object[581] = CreateObject(19826, 923.8048, -1456.6499, 2761.3168, 0.0000, 0.0000, 180.0000); //LightSwitch1
	SetObjectMaterial(g_Object[581], 0, 14706, "labig2int2", "lightswitch01_int", 0xFFFFFFFF);
	g_Object[582] = CreateObject(19814, 913.2304, -1475.8453, 2753.5849, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[583] = CreateObject(19814, 916.9713, -1475.8453, 2753.5849, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[584] = CreateObject(19814, 923.0114, -1475.8453, 2753.5849, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[585] = CreateObject(19814, 926.5117, -1475.8453, 2753.5849, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[586] = CreateObject(19814, 918.1419, -1462.6749, 2753.4748, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[587] = CreateObject(19814, 918.5722, -1462.6749, 2753.4748, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[588] = CreateObject(19786, 906.7141, -1472.8266, 2755.8620, 0.0000, 0.0000, 180.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[588], 0, 14570, "traidaqua", "ab_tv", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[588], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[589] = CreateObject(19786, 932.9738, -1472.8266, 2755.8620, 0.0000, 0.0000, 180.0000); //LCDTVBig1
	SetObjectMaterial(g_Object[589], 0, 14570, "traidaqua", "ab_tv", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[589], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[590] = CreateObject(19387, 938.6715, -1465.9105, 2761.6650, 0.0000, 0.0000, 0.0000); //wall035
	SetObjectMaterial(g_Object[590], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[591] = CreateObject(19464, 938.6336, -1470.4040, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[591], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[592] = CreateObject(19464, 938.6336, -1461.3641, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[592], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[593] = CreateObject(19464, 938.6320, -1466.2845, 2765.8708, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[593], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[594] = CreateObject(19430, 944.8953, -1468.0417, 2759.9421, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[594], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[595] = CreateObject(18762, 944.7965, -1465.6184, 2760.4494, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetObjectMaterial(g_Object[595], 0, 10765, "airportgnd_sfse", "white", 0xFF3B4E78);
	g_Object[596] = CreateObject(19430, 944.8953, -1463.2016, 2759.9421, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[596], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[597] = CreateObject(19430, 944.8953, -1465.6627, 2759.9421, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[597], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[598] = CreateObject(19430, 944.3754, -1466.2519, 2760.1323, 90.0000, 90.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[598], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[599] = CreateObject(19430, 944.3754, -1464.9720, 2760.1323, 90.0000, 90.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[599], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[600] = CreateObject(1714, 946.6273, -1466.6816, 2759.9899, 0.0000, 0.0000, -90.0000); //kb_swivelchair1
	g_Object[601] = CreateObject(19175, 944.2650, -1465.4127, 2759.8366, 0.0000, 0.0000, 270.0000); //SAMPPicture4
	SetObjectMaterialText(g_Object[601], "Notario", 0, 90, "Arial", 20, 1, 0xFFFFFFFF, 0x0, 0);
	SetObjectMaterial(g_Object[601], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[602] = CreateObject(19175, 944.2650, -1467.7425, 2759.8366, 0.0000, 0.0000, 270.0000); //SAMPPicture4
	SetObjectMaterialText(g_Object[602], "Grua", 0, 90, "Arial", 20, 1, 0xFFFFFFFF, 0x0, 0);
	SetObjectMaterial(g_Object[602], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[603] = CreateObject(1714, 946.6273, -1464.5013, 2759.9899, 0.0000, 0.0000, -90.0000); //kb_swivelchair1
	g_Object[604] = CreateObject(19808, 945.0086, -1464.4233, 2760.9680, 0.0000, 0.0000, 90.0000); //Keyboard1
	g_Object[605] = CreateObject(19808, 945.0086, -1466.7937, 2760.9680, 0.0000, 0.0000, 90.0000); //Keyboard1
	g_Object[606] = CreateObject(2601, 944.5239, -1464.4315, 2760.9790, 0.0000, 0.0000, 0.0000); //CJ_JUICE_CAN
	SetObjectMaterial(g_Object[606], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[607] = CreateObject(2601, 944.6040, -1466.7921, 2760.9790, 0.0000, 0.0000, 0.0000); //CJ_JUICE_CAN
	SetObjectMaterial(g_Object[607], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[608] = CreateObject(2263, 945.0792, -1464.4593, 2761.1420, -16.7000, 0.0000, 90.0000); //Frame_SLIM_4
	SetObjectMaterial(g_Object[608], 0, 3881, "apsecurity_sfxrf", "WIN_DESKTOP", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[608], 1, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[609] = CreateObject(2601, 944.6040, -1464.4322, 2760.9189, 0.0000, 90.0000, 90.0000); //CJ_JUICE_CAN
	SetObjectMaterial(g_Object[609], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[610] = CreateObject(2263, 944.1259, -1466.7998, 2760.9052, 16.4999, 0.0000, 270.0000); //Frame_SLIM_4
	SetObjectMaterial(g_Object[610], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[610], 1, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[611] = CreateObject(2263, 944.1373, -1464.4189, 2760.8666, 16.4999, 0.0000, 270.0000); //Frame_SLIM_4
	SetObjectMaterial(g_Object[611], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[611], 1, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[612] = CreateObject(2263, 945.0676, -1466.8298, 2761.1801, -16.7000, 0.0000, 90.0000); //Frame_SLIM_4
	SetObjectMaterial(g_Object[612], 0, 3881, "apsecurity_sfxrf", "WIN_DESKTOP", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[612], 1, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[613] = CreateObject(2601, 944.6040, -1466.7922, 2760.9189, 0.0000, 90.0000, 90.0000); //CJ_JUICE_CAN
	SetObjectMaterial(g_Object[613], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[614] = CreateObject(19513, 944.8659, -1463.8675, 2760.9340, 0.0000, 0.0000, 90.0000); //whitephone
	g_Object[615] = CreateObject(19513, 944.8659, -1466.2380, 2760.9340, 0.0000, 0.0000, 90.0000); //whitephone
	g_Object[616] = CreateObject(1811, 939.2077, -1463.7757, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[617] = CreateObject(1811, 939.2077, -1462.7456, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[618] = CreateObject(1811, 939.2077, -1461.7054, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[619] = CreateObject(1811, 939.2077, -1467.8857, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[620] = CreateObject(1811, 939.2077, -1468.9260, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[621] = CreateObject(1811, 939.2077, -1469.9460, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[622] = CreateObject(19175, 938.7739, -1462.8496, 2762.4118, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetObjectMaterial(g_Object[622], 0, 2266, "picture_frame", "CJ_PAINTING16", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[622], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[623] = CreateObject(19175, 938.7739, -1468.7794, 2762.4118, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetObjectMaterial(g_Object[623], 0, 2266, "picture_frame", "CJ_PAINTING16", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[623], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[624] = CreateObject(19464, 941.5139, -1471.3243, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[624], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[625] = CreateObject(19464, 947.4340, -1471.3243, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[625], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[626] = CreateObject(19464, 947.4340, -1460.3436, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[626], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[627] = CreateObject(19464, 941.7039, -1460.3232, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[627], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[628] = CreateObject(19464, 949.9140, -1463.3531, 2762.5297, 0.0000, 0.0000, 180.0000); //wall104
	SetObjectMaterial(g_Object[628], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[629] = CreateObject(19464, 949.9140, -1469.2729, 2762.5297, 0.0000, 0.0000, 180.0000); //wall104
	SetObjectMaterial(g_Object[629], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[630] = CreateObject(1811, 940.7675, -1460.8951, 2760.5717, 0.0000, 0.0000, 90.0000); //MED_DIN_CHAIR_5
	g_Object[631] = CreateObject(1811, 942.0974, -1460.8951, 2760.5717, 0.0000, 0.0000, 90.0000); //MED_DIN_CHAIR_5
	g_Object[632] = CreateObject(1811, 943.3975, -1460.8951, 2760.5717, 0.0000, 0.0000, 90.0000); //MED_DIN_CHAIR_5
	g_Object[633] = CreateObject(1811, 943.3975, -1470.7954, 2760.5717, 0.0000, 0.0000, -90.0000); //MED_DIN_CHAIR_5
	g_Object[634] = CreateObject(1811, 942.0269, -1470.7954, 2760.5717, 0.0000, 0.0000, -90.0000); //MED_DIN_CHAIR_5
	g_Object[635] = CreateObject(1811, 940.6666, -1470.7954, 2760.5717, 0.0000, 0.0000, -90.0000); //MED_DIN_CHAIR_5
	g_Object[636] = CreateObject(2010, 939.3461, -1470.7407, 2759.9838, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	SetObjectMaterial(g_Object[636], 1, 18012, "genintgeneric", "planterbox128", 0xFFFFFFFF);
	g_Object[637] = CreateObject(2010, 939.3461, -1460.8907, 2759.9838, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	SetObjectMaterial(g_Object[637], 1, 18012, "genintgeneric", "planterbox128", 0xFFFFFFFF);
	g_Object[638] = CreateObject(2161, 944.8826, -1460.4896, 2760.8225, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_4
	g_Object[639] = CreateObject(2161, 945.2528, -1471.2099, 2760.8225, 0.0000, 0.0000, 180.0000); //MED_OFFICE_UNIT_4
	g_Object[640] = CreateObject(2162, 949.7091, -1469.1296, 2760.9421, 0.0000, 0.0000, 270.0000); //MED_OFFICE_UNIT_1
	g_Object[641] = CreateObject(2162, 949.7091, -1461.5295, 2760.9421, 0.0000, 0.0000, 270.0000); //MED_OFFICE_UNIT_1
	g_Object[642] = CreateObject(2164, 949.7589, -1464.0985, 2759.9963, 0.0000, 0.0000, -90.0000); //MED_OFFICE_UNIT_5
	g_Object[643] = CreateObject(2167, 946.9199, -1460.2558, 2759.9951, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_7
	g_Object[644] = CreateObject(2167, 948.2697, -1460.2558, 2759.9951, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_7
	g_Object[645] = CreateObject(2167, 948.2697, -1471.3559, 2759.9951, 0.0000, 0.0000, 180.0000); //MED_OFFICE_UNIT_7
	g_Object[646] = CreateObject(2167, 946.9196, -1471.3559, 2759.9951, 0.0000, 0.0000, 180.0000); //MED_OFFICE_UNIT_7
	g_Object[647] = CreateObject(2186, 949.3242, -1466.6075, 2759.9931, 0.0000, 0.0000, -90.0000); //PHOTOCOPIER_1
	g_Object[648] = CreateObject(19464, 941.5139, -1471.3044, 2767.2912, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[648], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[649] = CreateObject(19464, 946.9442, -1471.3044, 2767.2912, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[649], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[650] = CreateObject(19464, 946.9442, -1460.3536, 2767.2912, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[650], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[651] = CreateObject(19464, 941.7042, -1460.3536, 2767.2912, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[651], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[652] = CreateObject(19464, 938.6845, -1463.3634, 2767.2912, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[652], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[653] = CreateObject(19464, 938.7045, -1468.3736, 2767.2912, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[653], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[654] = CreateObject(19464, 949.8944, -1468.3736, 2767.2912, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[654], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[655] = CreateObject(19464, 949.8944, -1462.4427, 2767.2912, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[655], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[656] = CreateObject(19464, 949.8944, -1462.4427, 2757.5200, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[656], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[657] = CreateObject(19464, 949.8944, -1468.3530, 2757.5200, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[657], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[658] = CreateObject(19464, 949.8944, -1471.3038, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[658], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[659] = CreateObject(19464, 943.5642, -1471.3038, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[659], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[660] = CreateObject(19464, 941.6843, -1471.3038, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[660], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[661] = CreateObject(19464, 941.6843, -1460.3537, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[661], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[662] = CreateObject(19464, 947.6240, -1460.3537, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetObjectMaterial(g_Object[662], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[663] = CreateObject(19464, 938.6441, -1462.1733, 2757.5200, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[663], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[664] = CreateObject(18075, 944.4329, -1465.8193, 2764.8713, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[665] = CreateObject(16780, 943.8864, -1467.9200, 2764.9145, 0.0000, 0.0000, 0.0000); //ufo_light03
	g_Object[666] = CreateObject(16780, 943.8864, -1464.1998, 2764.9145, 0.0000, 0.0000, 0.0000); //ufo_light03
	g_Object[667] = CreateObject(3034, 946.9309, -1460.4698, 2762.8015, 0.0000, 0.0000, 0.0000); //bd_window
	SetObjectMaterial(g_Object[667], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[668] = CreateObject(3034, 941.9708, -1460.4698, 2762.8015, 0.0000, 0.0000, 0.0000); //bd_window
	SetObjectMaterial(g_Object[668], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[669] = CreateObject(3034, 946.9309, -1471.1999, 2762.8015, 0.0000, 0.0000, 180.0000); //bd_window
	SetObjectMaterial(g_Object[669], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[670] = CreateObject(3034, 941.9207, -1471.1904, 2762.8015, 0.0000, 0.0000, 180.0000); //bd_window
	SetObjectMaterial(g_Object[670], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[671] = CreateObject(19450, 909.2650, -1461.9305, 2764.9331, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[671], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[672] = CreateObject(19825, 949.6734, -1466.1933, 2762.9707, 0.0000, 0.0000, -90.0000); //SprunkClock1
	SetObjectMaterial(g_Object[672], 0, 1654, "dynamite", "clock64", 0xFFFFFFFF);
	g_Object[673] = CreateObject(19450, 918.8350, -1461.9305, 2764.9331, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[673], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[674] = CreateObject(19450, 928.3848, -1461.9305, 2764.9331, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[674], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[675] = CreateObject(19450, 930.5847, -1461.9305, 2764.9331, 0.0000, 90.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[675], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[676] = CreateObject(19450, 934.5548, -1465.0008, 2764.9331, 0.0000, 90.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[676], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[677] = CreateObject(19450, 934.5551, -1471.1998, 2764.9331, 0.0000, 90.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[677], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[678] = CreateObject(19450, 905.3654, -1471.1998, 2764.9331, 0.0000, 90.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[678], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[679] = CreateObject(19450, 905.3654, -1464.9895, 2764.9331, 0.0000, 90.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[679], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[680] = CreateObject(19450, 933.1546, -1471.1811, 2766.5825, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[680], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[681] = CreateObject(19450, 936.0051, -1471.1811, 2766.5825, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[681], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[682] = CreateObject(19450, 936.0150, -1465.2004, 2766.5925, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[682], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[683] = CreateObject(19450, 933.1547, -1468.3299, 2766.5925, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[683], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[684] = CreateObject(19450, 931.2150, -1460.4696, 2766.5925, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[684], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[685] = CreateObject(19450, 921.5955, -1460.4696, 2766.5925, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[685], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[686] = CreateObject(19450, 911.9658, -1460.4696, 2766.5925, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[686], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[687] = CreateObject(19450, 908.7152, -1460.4593, 2766.5825, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[687], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[688] = CreateObject(19450, 928.4057, -1463.4294, 2766.5825, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[688], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[689] = CreateObject(19450, 918.7656, -1463.4294, 2766.5825, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[689], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[690] = CreateObject(19450, 911.6956, -1463.4294, 2766.5625, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[690], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[691] = CreateObject(19450, 903.9754, -1465.1798, 2766.5725, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[691], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[692] = CreateObject(19450, 903.9754, -1471.2004, 2766.5725, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[692], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[693] = CreateObject(19450, 906.8054, -1468.1510, 2766.5725, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[693], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[694] = CreateObject(19450, 906.8054, -1471.1826, 2766.5727, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[694], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[695] = CreateObject(945, 911.4801, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[695], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[695], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[695], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[695], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[696] = CreateObject(945, 907.9799, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[696], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[696], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[696], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[696], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[697] = CreateObject(945, 915.2000, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[697], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[697], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[697], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[697], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[698] = CreateObject(945, 919.0300, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[698], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[698], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[698], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[698], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[699] = CreateObject(945, 923.3801, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[699], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[699], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[699], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[699], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[700] = CreateObject(945, 927.1604, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[700], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[700], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[700], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[700], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[701] = CreateObject(945, 931.3502, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[701], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[701], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[701], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[701], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[702] = CreateObject(945, 934.5601, -1464.2613, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[702], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[702], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[702], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[702], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[703] = CreateObject(945, 934.5601, -1468.5815, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[703], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[703], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[703], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[703], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[704] = CreateObject(945, 934.5601, -1473.1910, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[704], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[704], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[704], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[704], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[705] = CreateObject(945, 905.3192, -1473.1910, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[705], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[705], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[705], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[705], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[706] = CreateObject(945, 905.3192, -1464.6014, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[706], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[706], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[706], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[706], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[707] = CreateObject(945, 905.3192, -1468.9615, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetObjectMaterial(g_Object[707], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[707], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[707], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[707], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[708] = CreateObject(19450, 901.1259, -1471.0997, 2766.5539, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[708], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[709] = CreateObject(19450, 901.1259, -1461.4602, 2766.5539, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[709], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[710] = CreateObject(19450, 901.1259, -1461.4602, 2758.2934, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[710], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[711] = CreateObject(19450, 901.1259, -1471.1606, 2758.2934, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[711], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[712] = CreateObject(19450, 905.7857, -1457.0102, 2766.5637, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[712], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[713] = CreateObject(19450, 915.4157, -1457.0102, 2766.5637, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[713], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[714] = CreateObject(19450, 925.0053, -1457.0102, 2766.5637, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[714], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[715] = CreateObject(19450, 934.6154, -1457.0102, 2766.5637, 0.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[715], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[716] = CreateObject(19450, 938.5158, -1461.8902, 2766.5637, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[716], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[717] = CreateObject(19450, 938.5158, -1471.4997, 2766.5637, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[717], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[718] = CreateObject(19450, 938.5158, -1471.4298, 2758.2827, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[718], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[719] = CreateObject(19450, 938.5158, -1460.3293, 2758.2827, 0.0000, 0.0000, 0.0000); //wall090
	SetObjectMaterial(g_Object[719], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[720] = CreateObject(19450, 940.1759, -1457.0283, 2760.3825, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[720], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[721] = CreateObject(19450, 899.4359, -1457.0283, 2760.3825, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[721], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[722] = CreateObject(19450, 899.4655, -1475.8977, 2760.3825, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[722], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[723] = CreateObject(19450, 940.1760, -1475.8878, 2760.3825, 90.0000, 0.0000, 90.0000); //wall090
	SetObjectMaterial(g_Object[723], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[724] = CreateObject(11721, 936.6129, -1457.0749, 2760.5214, 0.0000, 0.0000, 0.0000); //Radiator1
	SetObjectMaterial(g_Object[724], 1, 14704, "lahss2_2int2", "HS_radiator2", 0xFFFFFFFF);
	g_Object[725] = CreateObject(11721, 902.9525, -1457.0749, 2760.5214, 0.0000, 0.0000, 0.0000); //Radiator1
	SetObjectMaterial(g_Object[725], 1, 14704, "lahss2_2int2", "HS_radiator2", 0xFFFFFFFF);
	g_Object[726] = CreateObject(19174, 901.1901, -1465.8580, 2762.9018, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[726], "Sala de Reuniones", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[726], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[727] = CreateObject(19174, 901.1901, -1465.8580, 2762.7216, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetObjectMaterialText(g_Object[727], "¡Sólo para personas autorizadas!", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetObjectMaterial(g_Object[727], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[728] = CreateObject(19464, 938.6441, -1469.6035, 2757.5200, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[728], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[729] = CreateObject(19464, 938.5836, -1464.4643, 2765.7199, 0.0000, 0.0000, 0.0000); //wall104
	SetObjectMaterial(g_Object[729], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[730] = CreateObject(19430, 920.7636, -1448.4466, 2763.5612, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[730], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[731] = CreateObject(19430, 920.1735, -1448.4266, 2763.5612, 0.0000, 0.0000, 90.0000); //wall070
	SetObjectMaterial(g_Object[731], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);

	//Exterior Banco
	tmpobjid = CreateDynamicObject(19377, 1462.219970, -1020.567443, 22.816400, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1467.124877, -1016.994018, 22.816400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1457.355834, -1016.984558, 22.816400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1471.856323, -1021.724121, 22.816400, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1481.488525, -1021.725585, 22.816400, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1487.251586, -1021.724487, 22.816400, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1452.626098, -1021.713684, 22.816400, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1436.783325, -1021.711120, 25.482889, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1443.001464, -1021.713439, 22.816400, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18980, 1464.905639, -1020.167175, 18.222129, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(19433, 1461.359497, -1020.608032, 24.484289, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10023, "bigwhitesfe", "bigwhite_2", 0x00000000);
	tmpobjid = CreateDynamicObject(19433, 1462.959106, -1020.609252, 24.484289, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10023, "bigwhitesfe", "bigwhite_2", 0x00000000);
	tmpobjid = CreateDynamicObject(19433, 1463.674316, -1019.897705, 24.484300, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(19433, 1460.643188, -1019.897277, 24.484300, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(19433, 1462.167358, -1019.899230, 24.484300, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(19433, 1462.146850, -1019.902893, 26.220710, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1436.783203, -1021.713134, 22.816400, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1443.001342, -1021.711364, 25.482900, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1452.626098, -1021.711669, 25.482900, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1457.353881, -1016.984558, 25.482900, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1462.202270, -1020.565795, 25.482900, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1467.126831, -1016.993835, 25.482900, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1471.856201, -1021.722106, 25.482900, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1481.488525, -1021.723571, 25.482900, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1487.251586, -1021.722473, 25.482900, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1452.646362, -1016.564086, 30.649789, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1443.024536, -1016.564514, 30.649789, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1436.780395, -1016.563598, 30.649789, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1462.211547, -1015.423217, 30.649789, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1471.849731, -1016.570007, 30.828800, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1481.481567, -1016.563110, 30.649789, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1487.250732, -1016.568298, 30.649789, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1464.317871, -1015.847595, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1465.493041, -1015.846923, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1465.137329, -1018.729797, 19.328300, 45.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1464.789184, -1018.730102, 19.328300, 45.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1459.578979, -1018.778808, 19.328300, 45.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1459.224365, -1018.775695, 19.328300, 45.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(18980, 1467.719238, -1021.316955, 18.163629, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(18980, 1491.395507, -1021.315307, 18.163629, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1467.131469, -1016.999206, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1468.306762, -1016.998657, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(18980, 1459.422729, -1020.168151, 18.163629, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1458.835449, -1015.852905, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1459.996582, -1015.851440, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1481.907714, -1021.760681, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1485.116088, -1021.760437, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1488.324462, -1021.760131, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1442.196533, -1021.726379, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1438.988159, -1021.726684, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1435.779785, -1021.726928, 27.496610, 0.000000, 0.000000, 90.059997, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1433.224853, -1016.988952, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1432.049438, -1016.987487, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(18980, 1432.637207, -1021.307250, 18.163629, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(18980, 1456.719970, -1021.311706, 18.163629, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10806, "airfence_sfse", "ws_oldpainted", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1457.307495, -1016.993408, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1456.132202, -1016.993957, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1447.164062, -1021.729980, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1450.372436, -1021.729736, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1453.580810, -1021.729431, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1470.847778, -1021.734741, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1474.056152, -1021.734497, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1477.264526, -1021.734191, 27.496610, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1434.258056, -1020.227416, 27.503400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1443.713867, -1020.217041, 27.503400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1445.645507, -1020.219421, 27.503400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1455.100708, -1020.216247, 27.503400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1469.326782, -1020.221496, 27.503400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1478.778686, -1020.224975, 27.503400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1480.391235, -1020.245605, 27.503400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1489.846069, -1020.245910, 27.503400, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1447.483886, -1020.215454, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1450.982055, -1020.213745, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1488.186767, -1020.247436, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1453.269287, -1020.214782, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1484.687011, -1020.246337, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1482.056030, -1020.244934, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1453.437622, -1020.216613, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1449.937377, -1020.215515, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1447.306884, -1020.220153, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1442.052001, -1020.215209, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1438.551757, -1020.214111, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1435.921264, -1020.218750, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1477.117309, -1020.225097, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1473.617065, -1020.223999, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1470.986572, -1020.228637, 25.832799, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1442.052001, -1020.215209, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1438.551757, -1020.214111, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1435.921264, -1020.218811, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1470.986572, -1020.228576, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1473.617065, -1020.223999, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1477.117309, -1020.225097, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1482.056030, -1020.244873, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1484.687011, -1020.246276, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1488.186767, -1020.247375, 29.162500, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1436.789428, -1023.312194, 22.747499, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "adeta", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1446.422241, -1023.311584, 22.747499, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "adeta", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1456.053222, -1023.311340, 22.747499, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "adeta", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1475.317260, -1023.312316, 22.747499, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "adeta", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1484.948608, -1023.312072, 22.747499, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "adeta", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1487.255249, -1023.314880, 22.745500, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "adeta", 0x00000000);
	tmpobjid = CreateDynamicObject(19370, 1462.162719, -1020.577880, 28.453300, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1462.161010, -1018.919128, 26.791000, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1460.646240, -1019.062255, 28.453399, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1462.161010, -1018.919067, 30.115600, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19357, 1463.679199, -1019.062744, 28.453399, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1450.799072, -1016.991455, 24.011310, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1440.301025, -1016.988708, 24.011310, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1438.559936, -1016.986633, 24.011310, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1461.979736, -1015.843505, 24.011310, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1452.199462, -1016.986572, 24.011310, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1473.645019, -1016.998535, 24.011310, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1472.275268, -1016.995971, 24.011310, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1484.141723, -1016.998046, 24.011310, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19381, 1485.467285, -1016.997070, 24.011310, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1471.849731, -1016.570007, 30.649789, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1462.211547, -1015.423217, 30.828800, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1481.481567, -1016.563110, 30.828800, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1487.250732, -1016.568298, 30.828800, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1452.646362, -1016.564086, 30.828800, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1443.024536, -1016.564514, 30.828800, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1436.780395, -1016.563598, 30.828800, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3096, "bbpcpx", "blugrad32", 0x00000000);
	tmpobjid = CreateDynamicObject(700, 1488.776367, -1026.140991, 23.227769, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFF66FF66);
	tmpobjid = CreateDynamicObject(18770, 1488.963256, -1026.074340, -77.028060, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_church_grass_alt", 0x00000000);
	tmpobjid = CreateDynamicObject(700, 1434.892089, -1026.081542, 23.227769, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFF66FF66);
	tmpobjid = CreateDynamicObject(18770, 1434.997436, -1026.104003, -77.028060, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_church_grass_alt", 0x00000000);
	tmpobjid = CreateDynamicObject(700, 1453.899169, -1026.008178, 23.227769, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFF66FF66);
	tmpobjid = CreateDynamicObject(18770, 1454.070434, -1026.031372, -77.028060, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_church_grass_alt", 0x00000000);
	tmpobjid = CreateDynamicObject(700, 1470.378540, -1026.149047, 23.227769, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFF66FF66);
	tmpobjid = CreateDynamicObject(18770, 1470.547729, -1026.057006, -77.028060, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_church_grass_alt", 0x00000000);
	tmpobjid = CreateDynamicObject(1368, 1474.513061, -1022.360656, 23.531099, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 2755, "ab_dojowall", "mp_apt1_roomfloor", 0x00000000);
	tmpobjid = CreateDynamicObject(1368, 1484.741210, -1022.465454, 23.531099, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 2755, "ab_dojowall", "mp_apt1_roomfloor", 0x00000000);
	tmpobjid = CreateDynamicObject(638, 1479.697631, -1022.329467, 23.542400, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4835, "airoads_las", "aarprt8LAS", 0x00000000);
	tmpobjid = CreateDynamicObject(638, 1444.842895, -1022.230041, 23.542400, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4835, "airoads_las", "aarprt8LAS", 0x00000000);
	tmpobjid = CreateDynamicObject(1368, 1439.062011, -1022.278808, 23.531099, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 2755, "ab_dojowall", "mp_apt1_roomfloor", 0x00000000);
	tmpobjid = CreateDynamicObject(1368, 1450.273071, -1022.376953, 23.531099, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 2755, "ab_dojowall", "mp_apt1_roomfloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1488.764648, -1027.163208, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1489.192993, -1027.161621, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1490.043945, -1026.448852, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1487.875610, -1026.449829, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1487.876464, -1025.875610, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1488.588867, -1024.990478, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1489.168701, -1024.991333, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1490.043579, -1025.704101, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1434.800537, -1027.190063, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1433.911499, -1026.476684, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1433.912353, -1025.902465, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1434.624755, -1025.017333, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1435.204589, -1025.018188, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1436.079467, -1025.730957, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1436.079833, -1026.475708, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1435.228881, -1027.188476, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1453.870605, -1027.142089, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1452.981567, -1026.428710, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1452.982421, -1025.854492, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1453.694824, -1024.969360, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1454.274658, -1024.970214, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1455.149536, -1025.682983, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1455.149902, -1026.427734, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1454.298950, -1027.140502, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1470.353759, -1027.155517, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1469.464721, -1026.442138, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1469.465576, -1025.867919, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1470.177978, -1024.982788, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1470.757812, -1024.983642, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1471.632690, -1025.696411, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1471.633056, -1026.441162, 21.219100, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19430, 1470.782104, -1027.153930, 21.219100, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1432.059936, -1023.746704, 17.589599, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1436.964355, -1028.474731, 17.589599, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1446.598022, -1028.473510, 17.589599, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1456.229736, -1028.473388, 17.589599, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1465.687133, -1023.308410, 22.747499, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "adeta", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1465.861328, -1028.474121, 17.589599, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1475.493408, -1028.475830, 17.589599, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1485.123046, -1028.477416, 17.589599, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1491.984985, -1023.749694, 17.589599, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1487.258056, -1028.478881, 17.589599, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(2010, 1456.670776, -1022.426757, 22.832990, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "kbplanter_plants1", 0xFF66FF66);
	tmpobjid = CreateDynamicObject(2010, 1467.724975, -1022.420532, 22.833240, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "kbplanter_plants1", 0xFF66FF66);
	tmpobjid = CreateDynamicObject(2010, 1491.447753, -1022.267822, 22.831079, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "kbplanter_plants1", 0xFF66FF66);
	tmpobjid = CreateDynamicObject(2010, 1432.642456, -1022.415344, 22.835699, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "kbplanter_plants1", 0xFF66FF66);
	tmpobjid = CreateDynamicObject(19482, 1490.110351, -1021.833190, 23.371437, 7.999997, 0.000000, -90.000022, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10023, "bigwhitesfe", "bigwhite_2", 0x00000000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "", 120, "Ariel", 25, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(19482, 1490.092407, -1021.823181, 23.348859, 7.999997, 0.000000, -90.000022, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10023, "bigwhitesfe", "bigwhite_2", 0x00000000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "", 120, "Ariel", 25, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(19377, 1459.402465, -1018.774475, 19.328269, 45.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19377, 1464.963500, -1018.729614, 19.328269, 45.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1897, 1461.853027, -1019.590148, 24.621610, 0.000000, 90.000000, 270.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1897, 1462.492919, -1019.588378, 24.591600, 180.000000, 90.000000, 270.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19381, 1491.982788, -1017.001281, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19381, 1490.806518, -1016.998718, 25.469020, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19377, 1465.687133, -1023.308410, 22.747499, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19526, 1454.990600, -1022.258239, 22.835119, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19526, 1469.451782, -1022.260559, 22.835119, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1460.317871, -1020.842773, 23.093442, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1460.317871, -1020.842773, 23.093442, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1463.988647, -1020.842773, 23.093442, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1463.988647, -1020.842773, 23.093442, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1472.889282, -1022.293029, 22.893438, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1476.078857, -1022.293029, 22.893438, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1483.119384, -1022.293029, 22.893438, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1486.339599, -1022.293029, 22.893438, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1451.879760, -1022.293029, 22.893438, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1448.658813, -1022.293029, 22.893438, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1440.677978, -1022.293029, 22.893438, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1215, 1437.376953, -1022.293029, 22.893438, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);

	//FARMACIA
	tmpobjid = CreateDynamicObjectEx(18981,-435.459,-1717.750,2242.861,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.416,-1724.835,2242.563,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.454,-1722.105,2243.824,0.000,90.000,270.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.408,-1728.824,2242.563,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(18981,-435.938,-1718.135,2248.948,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-10-percent", -1);
	tmpobjid = CreateDynamicObjectEx(2439,-424.216,-1724.236,2243.367,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	SetDynamicObjectMaterial(tmpobjid, 1, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(19477,-423.418,-1727.695,2245.623,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "+", 130, "Ariel", 199, 1, -3801088, 0, 1);
	tmpobjid = CreateDynamicObjectEx(1744,-424.587,-1730.038,2243.858,0.000,0.000,180.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(19476,-429.743,-1729.927,2245.703,0.000,0.000,89.899,600.000,600.000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "EXIT", 120, "Ariel", 100, 1, -16777216, 0, 1);
	tmpobjid = CreateDynamicObjectEx(19465,-433.924,-1730.008,2245.912,0.000,0.000,270.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(18980,-423.235,-1724.232,2237.702,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(1744,-425.532,-1730.055,2246.751,0.000,179.994,180.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(2385,-424.500,-1729.921,2244.183,0.000,0.000,180.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "barbersmir1", 0);
	SetDynamicObjectMaterial(tmpobjid, 2, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(19464,-425.638,-1730.032,2245.913,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(19464,-432.899,-1727.136,2245.912,0.000,0.000,179.994,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(19464,-432.878,-1723.682,2245.912,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-432.266,-1728.921,2243.361,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-432.266,-1726.928,2243.361,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-432.266,-1727.918,2243.361,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.408,-1723.994,2247.116,90.000,179.994,179.994,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(18980,-423.235,-1729.401,2237.702,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.415,-1726.712,2239.964,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.454,-1722.105,2248.443,0.000,90.000,269.999,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.403,-1723.990,2248.336,90.000,180.005,179.983,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.412,-1723.989,2243.970,90.000,179.994,179.994,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.484,-1724.727,2242.563,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-423.488,-1728.901,2242.563,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-432.389,-1723.022,2243.361,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-432.369,-1722.021,2243.361,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(19464,-423.519,-1720.875,2245.912,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(19464,-429.839,-1720.616,2245.912,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(19464,-426.222,-1720.622,2245.912,0.000,0.000,270.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(18762,-423.230,-1726.630,2243.315,0.000,90.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-430.957,-1730.008,2242.563,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-428.628,-1730.015,2242.563,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-431.506,-1721.094,2243.361,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-430.506,-1721.104,2243.361,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-429.505,-1721.093,2243.361,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-428.505,-1721.116,2243.361,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-427.505,-1721.139,2243.361,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-426.503,-1721.137,2243.361,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(1989,-425.502,-1721.136,2243.361,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2439,-425.174,-1724.234,2243.361,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	SetDynamicObjectMaterial(tmpobjid, 1, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2439,-426.156,-1724.236,2243.367,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	SetDynamicObjectMaterial(tmpobjid, 1, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.671,-1729.958,2245.710,90.000,179.994,269.989,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.623,-1729.944,2248.325,90.000,179.994,269.989,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2439,-424.217,-1724.228,2249.452,0.000,180.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", -1);
	tmpobjid = CreateDynamicObjectEx(2439,-425.191,-1724.225,2249.452,0.000,179.994,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", -1);
	tmpobjid = CreateDynamicObjectEx(2439,-426.141,-1724.228,2249.452,0.000,179.994,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.680,-1730.015,2247.281,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.669,-1730.005,2245.562,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(957,-431.454,-1728.943,2245.893,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(957,-431.453,-1726.907,2245.893,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(19452,-433.079,-1725.241,2246.981,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 7979, "vegasairprtland", "blackshadow3", -1);
	tmpobjid = CreateDynamicObjectEx(2439,-426.141,-1724.227,2247.735,0.000,179.994,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	SetDynamicObjectMaterial(tmpobjid, 1, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2439,-425.190,-1724.225,2247.735,0.000,179.994,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	SetDynamicObjectMaterial(tmpobjid, 1, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2439,-424.217,-1724.228,2247.735,0.000,179.994,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	SetDynamicObjectMaterial(tmpobjid, 1, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(19757,-426.301,-1724.220,2297.622,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(19757,-424.040,-1724.291,2297.622,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(957,-426.246,-1724.385,2246.665,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(957,-424.167,-1724.384,2246.665,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(19452,-429.672,-1719.852,2245.835,0.000,90.000,89.994,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(19452,-429.656,-1720.256,2245.986,0.000,90.000,89.999,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(957,-431.506,-1723.565,2245.893,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(957,-431.489,-1721.817,2245.867,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(957,-427.488,-1721.817,2245.867,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(957,-425.484,-1721.817,2245.867,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(957,-429.589,-1721.817,2245.867,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(19452,-429.654,-1720.256,2247.007,0.000,90.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 7979, "vegasairprtland", "blackshadow3", -1);
	tmpobjid = CreateDynamicObjectEx(19452,-434.497,-1721.147,2248.038,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(19562,-432.417,-1726.857,2244.208,90.000,90.000,280.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "CJ_7_11_win", 0);
	tmpobjid = CreateDynamicObjectEx(19452,-434.497,-1721.147,2248.368,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(19572,-432.281,-1728.808,2244.510,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 5422, "idlewood6_lae", "las69str2", 0);
	tmpobjid = CreateDynamicObjectEx(19570,-425.579,-1729.489,2245.072,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 8035, "vgsshospshop", "hosp_sign01a", 0);
	tmpobjid = CreateDynamicObjectEx(2385,-424.502,-1729.916,2245.053,0.000,0.000,179.994,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "barbersmir1", 0);
	SetDynamicObjectMaterial(tmpobjid, 2, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(19570,-425.238,-1729.557,2245.072,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 8035, "vgsshospshop", "hosp_sign01a", 0);
	tmpobjid = CreateDynamicObjectEx(19570,-425.790,-1729.569,2245.072,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 8035, "vgsshospshop", "hosp_sign01a", 0);
	tmpobjid = CreateDynamicObjectEx(19452,-432.977,-1725.238,2245.986,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(19452,-433.594,-1725.208,2245.862,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.669,-1730.005,2245.861,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.669,-1730.005,2248.452,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.622,-1729.943,2248.102,90.000,180.005,269.978,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.622,-1729.942,2247.853,90.000,180.005,269.978,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.621,-1729.942,2247.180,90.000,179.994,269.989,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.619,-1729.941,2246.509,90.000,179.994,269.989,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.680,-1730.015,2247.031,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.680,-1730.015,2247.704,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.680,-1730.015,2246.633,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.680,-1730.015,2246.358,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(2920,-435.680,-1730.015,2243.364,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(19089,-429.765,-1729.965,2245.552,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(19452,-433.255,-1725.116,2243.291,0.000,90.000,0.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(19452,-428.365,-1720.150,2243.291,0.000,90.000,89.994,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", -1);
	tmpobjid = CreateDynamicObjectEx(18075,-430.157,-1725.348,2248.447,0.000,0.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", 0);
	tmpobjid = CreateDynamicObjectEx(19452,-432.098,-1719.039,2248.366,0.000,90.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(19476,-423.408,-1727.744,2244.900,0.000,0.000,-179.000,600.000,600.000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "24/7", 120, "Ariel", 199, 1, -16777216, 0, 1);
	tmpobjid = CreateDynamicObjectEx(19477,-423.409,-1727.638,2245.702,0.000,0.000,0.000,600.000,600.000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "+", 130, "Ariel", 199, 1, -1, 0, 1);
	tmpobjid = CreateDynamicObjectEx(19452,-432.098,-1719.039,2248.036,0.000,90.000,90.000,600.000,600.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 3899, "hospital2", "black", -1);
	tmpobjid = CreateDynamicObjectEx(19325,-423.403,-1726.866,2246.270,90.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2597,-424.239,-1721.323,2244.212,0.000,0.000,40.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2369,-424.994,-1724.026,2244.257,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2689,-424.427,-1721.443,2244.260,0.000,0.000,310.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-432.369,-1728.783,2243.361,0.000,0.000,90.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-432.382,-1727.782,2243.361,0.000,0.000,90.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-432.447,-1726.803,2243.361,0.000,0.000,90.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11738,-432.183,-1729.019,2244.183,0.000,0.000,87.989,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11738,-432.152,-1728.031,2244.183,0.000,0.000,87.994,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11738,-432.151,-1728.030,2244.905,0.000,0.000,87.994,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11738,-432.149,-1728.029,2244.556,0.000,0.000,87.994,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19786,60.483,27.024,572.043,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(1726,-431.997,-1725.999,2243.361,0.000,0.000,90.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19325,-430.673,-1729.957,2243.805,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19325,-431.927,-1729.933,2247.927,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-428.385,-1720.989,2243.361,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-427.372,-1721.001,2243.361,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-426.356,-1720.990,2243.361,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-425.365,-1720.974,2243.361,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-429.393,-1720.952,2243.361,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-431.444,-1720.855,2243.361,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-430.350,-1720.911,2243.361,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-432.553,-1722.848,2243.361,0.000,0.000,90.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2462,-432.506,-1721.875,2243.361,0.000,0.000,90.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11723,-429.783,-1721.404,2243.972,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11723,-431.778,-1721.261,2243.972,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19570,-432.054,-1726.680,2243.735,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19570,-432.368,-1726.876,2243.735,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19570,-432.278,-1726.703,2243.735,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19570,-432.143,-1726.853,2243.735,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19570,-432.093,-1727.072,2243.735,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19570,-432.278,-1727.162,2243.735,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(5862,-407.901,-1749.310,2243.153,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(4021,-387.760,-1719.241,2249.435,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(4193,-355.622,-1724.880,2257.635,0.000,0.000,206.500,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(4564,-195.160,-1715.496,2353.414,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(4569,-374.263,-1773.852,2256.875,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(5862,-481.798,-1745.576,2243.278,0.000,0.000,179.994,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(4564,-360.536,-1666.412,2334.373,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(8391,-458.819,-1788.154,2265.133,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(5862,-408.046,-1849.193,2242.679,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(8391,-357.187,-1842.375,2263.987,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(8391,-530.922,-1787.459,2264.760,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(5862,-596.591,-1750.612,2243.003,0.000,0.000,179.994,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(8391,-606.874,-1787.891,2264.760,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(5862,-332.954,-1700.072,2243.601,0.000,0.000,180.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(5862,-405.951,-1633.086,2243.153,0.000,0.000,268.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(8392,-389.273,-1597.511,2271.905,0.000,0.000,270.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(8392,-277.079,-1675.967,2271.905,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2364,-431.803,-1732.176,2243.207,0.000,0.000,333.997,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(2745,-421.290,-1724.776,2243.655,0.000,0.000,94.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(3856,-415.462,-1759.270,2247.987,0.000,0.000,275.998,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(7597,-395.084,-1685.321,2252.629,0.000,0.000,320.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11738,-424.454,-1729.590,2245.601,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11738,-425.789,-1729.583,2244.280,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-424.638,-1729.634,2245.113,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-427.527,-1721.172,2244.892,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-426.517,-1721.172,2244.892,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11738,-425.290,-1729.618,2244.280,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11738,-424.864,-1729.514,2244.290,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11738,-424.433,-1729.641,2244.280,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19570,-425.416,-1729.527,2245.072,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(19570,-424.325,-1729.604,2245.072,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(1727,-426.523,-1729.407,2243.361,0.000,0.000,180.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-428.548,-1721.172,2244.892,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-430.548,-1721.172,2244.892,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-430.548,-1721.112,2244.532,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-429.518,-1721.112,2244.532,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-427.548,-1721.112,2244.532,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-426.497,-1721.112,2244.532,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-426.497,-1721.112,2244.172,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-428.567,-1721.112,2244.172,0.000,0.000,0.000,600.000,600.000);
	tmpobjid = CreateDynamicObjectEx(11736,-431.607,-1721.072,2244.532,0.000,0.000,0.000,600.000,600.000);

	//TALLER
	tmpobjid = CreateDynamicObject(8651, 1822.059082, -1406.515869, 13.392513, 0.000000, 0.000000, 90.000000, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8651, 1822.059082, -1390.825805, 13.392513, 0.000000, 0.000000, 90.000000, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18765, 1821.868774, -1401.243286, 9.892481, 0.000000, 0.000000, 0.000000, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1831.868774, -1396.222167, 9.892481, 0.000000, 0.000000, 0.000000, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1821.868774, -1396.222167, 9.892481, 0.000000, 0.000000, 0.000000, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(19866, 1837.211669, -1419.947143, 17.326383, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.236816, -1417.548095, 14.896373, -89.999992, -705.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1836.447021, -1417.852416, 18.857389, 0.000051, -0.000104, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(19325, 1836.743896, -1419.070678, 15.186360, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.187133, -1422.337158, 14.896373, -89.999992, -705.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.211669, -1419.947143, 12.626372, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1836.436523, -1415.982055, 15.866374, 89.999992, 795.536193, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(5779, 1836.979980, -1424.893554, 17.347822, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1836.752441, -1419.852539, 12.626372, -0.000051, 360.000000, 179.399856, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1836.398315, -1424.462402, 18.856388, 0.000051, -0.000104, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(8326, 1837.806762, -1434.931030, 16.874534, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", 0x00FFFFFF);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FFFFFF}El mejor taller de todo San Andreas", 120, "Calibri", 20, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(19866, 1837.133789, -1427.409057, 14.896373, -89.999992, -705.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.108398, -1429.808471, 17.326383, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1827.476074, -1418.904052, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1827.460327, -1420.404785, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.108398, -1429.808471, 12.626372, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19325, 1836.622558, -1430.651855, 15.186360, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1836.646850, -1429.942260, 12.626376, -0.000051, 360.000000, 179.399856, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1827.407714, -1425.395141, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1836.322875, -1431.622558, 18.856388, 0.000051, -0.000104, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1826.368408, -1415.769287, 18.856388, -0.000104, -0.000051, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(3761, 1826.322021, -1418.629394, 14.558368, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.083251, -1432.198852, 14.896373, -89.999992, -705.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.081665, -1432.369873, 14.896373, -89.999992, -705.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1829.679321, -1430.395874, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8326, 1837.790893, -1434.900268, 17.544553, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "trail_wall1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3241, "conhooses", "sanruf", 0x00000000);
	tmpobjid = CreateDynamicObject(8326, 1837.807983, -1434.901123, 18.464572, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", 0x00FFFFFF);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FFFFFF}TALLER MECANICO", 120, "Arial", 45, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(19379, 1825.367187, -1420.270263, 20.185094, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1825.083374, -1450.040405, 13.116979, 89.999992, 975.536987, -76.136917, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3979, "civic01_lan", "sl_flagstone1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 6094, "canalsg_law", "sw_brewbrick01", 0xFFA0A0A0);
	tmpobjid = CreateDynamicObject(2691, 1826.078491, -1423.172485, 12.623164, -89.999992, -1065.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{ffffff}1", 100, "Arial", 190, 0, 0x00000000, 0x00000000, 0);
	tmpobjid = CreateDynamicObject(19379, 1825.436889, -1425.071166, 20.175094, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(19866, 1837.055908, -1434.768676, 17.326383, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1826.068725, -1425.639404, 12.552634, -89.999992, -885.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(9339, 1827.530029, -1430.373291, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1827.355834, -1430.345092, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(11701, 1835.482055, -1433.791625, 13.625546, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.055908, -1434.768676, 12.626372, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1836.598388, -1434.572387, 12.626376, -0.000051, 360.000000, 179.399856, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1829.634277, -1434.716552, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1822.495971, -1418.851562, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1822.480590, -1420.352539, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18244, 1823.828735, -1423.794555, 12.200887, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1823.430786, -1422.591918, 12.551633, -89.999992, -975.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(19866, 1837.031738, -1437.159301, 14.896373, -89.999992, -705.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1824.979980, -1430.346557, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.029663, -1437.359008, 14.896373, -89.999992, -705.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19325, 1836.553466, -1437.280029, 15.186360, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1822.428710, -1425.342407, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1823.395385, -1425.934082, 12.551633, -89.999992, -975.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(2691, 1825.990478, -1431.572387, 12.623164, -89.999992, -1065.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{ffffff}2", 100, "Arial", 190, 0, 0x00000000, 0x00000000, 0);
	tmpobjid = CreateDynamicObject(16322, 1835.438354, -1436.956420, 14.267314, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3394, 1823.440795, -1427.354492, 12.633986, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 2, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 3, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 4, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 5, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 6, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 8, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3392, 1823.327148, -1427.338500, 12.558341, 0.000118, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1826.001220, -1432.160766, 12.551633, -89.999992, -885.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(19603, 1827.303955, -1435.284301, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3392, 1823.484252, -1428.549194, 12.558341, -0.000118, -0.000051, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3394, 1823.427490, -1428.626220, 12.633986, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 2, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 3, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 4, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 5, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 6, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 8, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1836.248657, -1438.732055, 18.856388, 0.000051, -0.000104, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(19866, 1837.003906, -1439.758178, 17.326383, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1822.600219, -1430.322021, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379, 1825.338134, -1434.472412, 20.175094, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(19603, 1822.376708, -1430.293334, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1837.003906, -1439.758178, 12.626372, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1836.545654, -1439.602905, 12.626376, -0.000051, 360.000000, 179.399856, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1823.001708, -1431.032958, 12.563628, -89.999992, -975.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1819.249389, -1415.694824, 18.856388, -0.000104, -0.000051, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(18244, 1823.740356, -1432.244384, 12.200887, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1810.409301, -1417.549682, 15.976380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(929, 1835.383422, -1439.845581, 14.573886, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1818.606079, -1421.535278, 15.521739, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(19089, 1818.588500, -1421.662719, 15.541726, -0.000051, 0.000123, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1818.451049, -1421.497802, 13.353164, 0.000051, 270.000000, -0.600592, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1818.606079, -1421.535278, 12.591727, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(3630, 1818.252075, -1417.278930, 14.050965, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1185, 1820.455566, -1429.142333, 12.753066, 0.000117, -0.000009, -59.600349, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18066, 1818.591064, -1422.209716, 12.556634, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19809, 1818.572143, -1422.699951, 12.586791, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1836.979370, -1442.147583, 14.896373, -89.999992, -705.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "sanruf", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19789, 1818.591186, -1421.479736, 11.610230, -0.000051, 0.000130, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1820.059692, -1430.295288, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1817.516845, -1418.799926, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1818.560424, -1425.945922, 15.521739, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(19603, 1817.501098, -1420.300292, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19089, 1818.542358, -1426.013671, 15.541726, -0.000051, 0.000123, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(7313, 1822.967407, -1434.344360, 12.551633, -89.999992, -975.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(19809, 1818.548828, -1424.910156, 12.586791, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18066, 1818.557495, -1425.390014, 12.556634, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1818.560424, -1425.945922, 12.591723, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1818.402709, -1426.137939, 13.353164, 0.000051, 270.000000, -0.600592, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1827.252075, -1440.252929, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1822.324584, -1435.232421, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1789, 1817.487304, -1420.809814, 13.150891, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1083, 1817.518066, -1421.196411, 13.050885, 0.000112, -179.999984, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3394, 1823.353271, -1435.684692, 12.633986, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 2, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 3, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 4, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 5, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 6, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 8, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9093, 1808.731689, -1431.622558, 14.107013, 0.000007, -0.000058, -0.600501, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3392, 1823.239257, -1435.708007, 12.558341, 0.000112, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1817.448608, -1425.290405, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19789, 1818.542968, -1426.129394, 11.610230, -0.000051, 0.000130, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1825.932373, -1438.651855, 12.551633, -89.999992, -885.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1816.095825, -1449.945312, 13.116979, 89.999992, 975.536987, -76.136917, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3979, "civic01_lan", "sl_flagstone1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 6094, "canalsg_law", "sw_brewbrick01", 0xFFA0A0A0);
	tmpobjid = CreateDynamicObject(3071, 1818.519287, -1429.807006, 15.521739, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(7313, 1817.020996, -1422.524902, 12.551633, -89.999992, -975.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(19089, 1818.501220, -1429.934204, 15.541726, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(3392, 1823.396362, -1436.918823, 12.558341, -0.000112, -0.000051, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1836.146362, -1443.689208, 15.866374, 89.999992, 795.536193, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(3394, 1823.339599, -1436.965942, 12.633986, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 2, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 3, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 4, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 5, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 6, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 8, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19325, 1836.483642, -1443.918457, 15.186360, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2691, 1825.904174, -1439.833129, 12.623164, -89.999992, -1065.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{ffffff}3", 100, "Arial", 190, 0, 0x00000000, 0x00000000, 0);
	tmpobjid = CreateDynamicObject(2935, 1810.409301, -1417.549682, 13.066379, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1818.363891, -1429.769653, 13.353164, 0.000051, 270.000000, -0.600592, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1818.519287, -1429.807006, 12.591727, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(1083, 1817.034301, -1426.311279, 13.050885, 0.000112, -179.999984, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1789, 1817.105712, -1426.666015, 13.150891, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1816.986083, -1425.866455, 12.551633, -89.999992, -975.535278, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(19789, 1818.504882, -1429.751586, 11.610230, -0.000051, 0.000127, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18066, 1818.504394, -1430.481445, 12.556634, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2154, 1834.390625, -1442.936279, 12.504842, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19809, 1818.484985, -1430.972412, 12.586791, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1817.489868, -1430.267944, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1817.396972, -1430.240722, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1789, 1817.400024, -1429.109619, 13.150891, -0.000051, 0.000112, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1083, 1817.430541, -1429.496826, 13.050885, 0.000104, -179.999984, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379, 1814.927246, -1420.160644, 20.185094, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(19903, 1815.145385, -1420.831420, 12.580884, 0.000104, -0.000076, -30.200475, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1148, 1821.530273, -1437.590942, 13.126164, 0.000117, -0.000001, -62.900352, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379, 1814.997192, -1424.961791, 20.175094, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(19809, 1818.462036, -1433.182250, 12.586791, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1836.174072, -1445.851318, 18.856388, 0.000051, -0.000104, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1836.154052, -1445.851440, 18.326383, 0.000051, -0.000104, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(7313, 1822.915649, -1439.243286, 12.551633, -89.999992, -975.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(1635, 1838.288085, -1446.788940, 18.472101, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1818.473388, -1434.217773, 15.521739, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(19089, 1818.455810, -1434.286132, 15.541726, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(18066, 1818.470947, -1433.661987, 12.556634, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1814.164794, -1421.488159, 15.521739, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(364, 1814.311523, -1421.507446, 14.121730, 0.000051, 89.999870, -0.600974, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19089, 1814.146484, -1421.616699, 15.541726, -0.000051, 0.000116, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(19786, 1814.170166, -1423.710205, 17.282770, 16.599834, -0.000054, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 15040, "cuntcuts", "GB_phone02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 9818, "ship_brijsfw", "ship_greenscreen1", 0x00000000);
	tmpobjid = CreateDynamicObject(18244, 1823.654174, -1440.453491, 12.200887, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1818.473388, -1434.217773, 12.591723, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1818.315795, -1434.410522, 13.353164, 0.000051, 270.000000, -0.600592, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1822.272705, -1440.200683, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1816.592041, -1430.965576, 12.551633, -89.999992, -975.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(3071, 1814.164794, -1421.488159, 12.591727, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1814.009277, -1421.451171, 13.353164, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1836.116577, -1446.558105, 15.866374, 89.999992, 795.536193, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(18066, 1814.149047, -1422.162963, 12.556634, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19789, 1818.455810, -1434.401611, 11.610230, -0.000051, 0.000127, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19809, 1814.130737, -1422.654296, 12.586791, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19789, 1814.150146, -1421.432739, 11.610230, -0.000051, 0.000123, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1814.118286, -1425.899536, 15.521739, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(19089, 1814.101196, -1425.967529, 15.541726, -0.000051, 0.000116, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1836.130859, -1447.091918, 18.326383, 0.000051, -0.000104, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(19809, 1814.107666, -1424.863891, 12.586791, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19903, 1814.456176, -1426.690429, 12.580884, 0.000003, -0.000132, 21.500162, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18066, 1814.115722, -1425.343750, 12.556634, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1814.920288, -1430.241210, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1827.200439, -1445.222167, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1817.345214, -1435.180419, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19903, 1815.058105, -1429.131591, 12.580884, 0.000100, -0.000071, -30.200475, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1814.118286, -1425.899536, 12.591723, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1813.961059, -1426.091796, 13.353164, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379, 1825.237792, -1444.082397, 20.175094, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1812.739379, -1415.616699, 18.836385, -0.000104, -0.000051, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(19603, 1812.546875, -1418.748046, 19.555669, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19789, 1814.101074, -1426.083129, 11.610230, -0.000051, 0.000123, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1812.531127, -1420.248657, 19.555669, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1083, 1816.947021, -1434.611572, 13.050885, 0.000104, -179.999984, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1789, 1817.018920, -1434.966064, 13.150891, -0.000051, 0.000112, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1814.078002, -1429.760620, 15.521739, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(364, 1814.224975, -1429.779785, 14.121730, 0.000051, 89.999870, -0.600974, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1816.557373, -1434.276489, 12.551633, -89.999992, -975.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(19089, 1814.059814, -1429.888061, 15.541726, -0.000051, 0.000112, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(7313, 1823.230957, -1442.586791, 12.551633, -89.999992, -975.535156, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(3071, 1818.432739, -1438.098266, 15.521739, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(19089, 1818.414550, -1438.226196, 15.541726, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(19603, 1812.479248, -1425.238525, 19.555669, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(927, 1811.983764, -1419.654296, 15.548821, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2886, 1812.050659, -1418.751098, 14.616069, -0.000104, -0.000051, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1810.335205, -1425.580322, 15.946380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(3071, 1814.078002, -1429.760620, 12.591727, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1813.922851, -1429.723022, 13.353164, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3386, 1812.213867, -1420.444458, 12.543929, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2960, 1818.277954, -1438.061401, 13.353164, 0.000051, 270.000000, -0.600592, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1818.432739, -1438.098266, 12.591727, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(19789, 1814.063232, -1429.705078, 11.610230, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18066, 1814.063232, -1430.435058, 12.556634, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19789, 1818.417846, -1438.043090, 11.610230, -0.000051, 0.000125, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19786, 1814.083496, -1432.010620, 17.282770, 16.599845, -0.000054, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 15040, "cuntcuts", "GB_phone02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 9818, "ship_brijsfw", "ship_screen1sfw", 0x00000000);
	tmpobjid = CreateDynamicObject(19866, 1811.712036, -1423.623535, 17.006383, -0.000112, 360.000000, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19809, 1814.044433, -1430.925292, 12.586791, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1789, 1817.313354, -1437.391113, 13.150891, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18066, 1818.417480, -1438.773315, 12.556634, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379, 1814.898681, -1434.362915, 20.175094, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(1083, 1817.344482, -1437.777587, 13.050885, 0.000096, -179.999984, -90.600242, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(13646, 1811.391723, -1423.635009, 15.478157, 89.999992, 885.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16322, "a51_stores", "metpat64chev_128", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1816.464843, -1415.078491, 13.116979, 89.999992, 1155.536987, -76.136917, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3979, "civic01_lan", "sl_flagstone1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 6094, "canalsg_law", "sw_brewbrick01", 0xFFA0A0A0);
	tmpobjid = CreateDynamicObject(19809, 1818.398681, -1439.264282, 12.586791, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8326, 1837.807983, -1434.901123, 16.334556, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", 0x00FFFFFF);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FFFFFF}Abierto las 24 horas del dia los 365 días del año", 120, "Calibri", 20, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(3761, 1825.748657, -1448.665405, 14.558368, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2886, 1811.961181, -1427.268920, 14.626071, -0.000104, -0.000051, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1812.427001, -1430.189086, 19.555669, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(927, 1811.894409, -1428.203979, 15.548821, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1810.409545, -1418.490478, 18.856388, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.409301, -1417.549682, 18.886388, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(19809, 1814.021118, -1433.135864, 12.586791, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1814.031860, -1434.171264, 15.521739, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1834.127563, -1449.240844, 18.836385, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(19089, 1814.014282, -1434.239501, 15.541726, -0.000051, 0.000112, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(18066, 1814.029541, -1433.615478, 12.556634, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1811.959594, -1430.149536, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3386, 1812.121704, -1429.213745, 12.543929, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1822.220703, -1445.170288, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1817.293090, -1440.149291, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1814.031860, -1434.171264, 12.591723, 89.999992, 1065.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1825.448120, -1415.171752, 13.116979, 89.999992, 1155.536987, -76.136917, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3979, "civic01_lan", "sl_flagstone1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 6094, "canalsg_law", "sw_brewbrick01", 0xFFA0A0A0);
	tmpobjid = CreateDynamicObject(19903, 1814.369262, -1434.990600, 12.580884, 0.000007, -0.000125, 21.500028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2960, 1813.874511, -1434.363525, 13.353164, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1810.335205, -1425.580322, 18.856388, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(19815, 1834.590942, -1446.017944, 13.308045, 0.000058, 0.000007, -90.700233, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19789, 1814.014648, -1434.354614, 11.610230, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19809, 1818.375976, -1441.473876, 12.586791, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(7313, 1816.505981, -1439.175659, 12.551633, -89.999992, -975.535217, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(3675, 1808.179443, -1448.052856, 15.289767, 0.000057, 0.000012, -96.000175, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19903, 1814.971191, -1437.413085, 12.580884, 0.000096, -0.000065, -30.200445, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1811.625366, -1431.923706, 17.006383, -0.000104, 360.000000, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1818.386718, -1442.509887, 15.521739, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(18066, 1818.383911, -1441.953613, 12.556634, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19089, 1818.369140, -1442.577392, 15.541726, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(3071, 1818.386718, -1442.509887, 12.591723, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(13646, 1811.303222, -1432.033569, 15.478157, 89.999992, 885.536254, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16322, "a51_stores", "metpat64chev_128", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1818.228759, -1442.701538, 13.353164, 0.000051, 270.000000, -0.600592, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1812.375488, -1435.128173, 19.555669, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19789, 1818.369140, -1442.693359, 11.610230, -0.000051, 0.000125, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1811.913696, -1434.530517, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1813.991577, -1438.051757, 15.521739, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(364, 1814.138183, -1438.071289, 14.121730, 0.000051, 89.999870, -0.600974, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19089, 1813.973022, -1438.180053, 15.541726, -0.000051, 0.000110, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1813.835937, -1438.015380, 13.353164, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1813.991577, -1438.051757, 12.591727, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(19789, 1813.976196, -1437.996826, 11.610230, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2886, 1811.874633, -1435.609497, 14.606067, -0.000104, -0.000051, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18066, 1813.976196, -1438.726196, 12.556634, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1810.260742, -1432.710693, 18.856388, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(7313, 1816.821777, -1442.520141, 12.551633, -89.999992, -975.535156, 103.864028, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2896, "law_coffintxd", "metleg_32_law", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "materialtext1", 0x00000000);
	tmpobjid = CreateDynamicObject(3675, 1808.703735, -1416.364013, 15.289767, 0.000057, 0.000012, -96.000175, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1083, 1816.860351, -1442.892700, 13.050885, 0.000096, -179.999984, -90.600242, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19809, 1813.957153, -1439.217407, 12.586791, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18765, 1816.931152, -1420.022338, 10.078046, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1831.868774, -1401.243286, 9.892481, 0.000000, 0.000000, 0.000000, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(1789, 1816.932128, -1443.247192, 13.150891, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(927, 1811.806274, -1436.613647, 15.548821, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19786, 1813.996582, -1440.291748, 17.282770, 16.599845, -0.000054, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 15040, "cuntcuts", "GB_phone02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 9818, "ship_brijsfw", "ship_greenscreen1", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1822.289184, -1449.129394, 18.856388, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(3386, 1812.037231, -1437.302856, 12.543929, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1817.241088, -1445.118408, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18765, 1811.868774, -1401.243286, 9.892481, 0.000000, 0.000000, 0.000000, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(3761, 1818.126953, -1448.546386, 14.558368, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19809, 1813.933837, -1441.427246, 12.586791, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1812.323974, -1440.096679, 19.555669, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3071, 1813.945312, -1442.463378, 15.521739, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(18066, 1813.942626, -1441.907470, 12.556634, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19089, 1813.927124, -1442.530639, 15.541726, -0.000051, 0.000110, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "Metal3_128", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1814.797851, -1443.973388, 20.175094, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(3071, 1813.945312, -1442.463378, 12.591723, 89.999992, 1065.536376, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	tmpobjid = CreateDynamicObject(2960, 1813.787353, -1442.655517, 13.353164, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19866, 1811.538208, -1440.204833, 17.006383, -0.000096, 360.000000, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19903, 1814.283081, -1443.271728, 12.580884, 0.000007, -0.000117, 21.499975, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19789, 1813.927368, -1442.646850, 11.610230, -0.000051, 0.000118, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(13646, 1811.216064, -1440.322265, 15.478157, 89.999992, 885.536193, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16322, "a51_stores", "metpat64chev_128", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1811.868774, -1396.222167, 9.892481, 0.000000, 0.000000, 0.000000, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.186279, -1439.840698, 18.856388, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1816.840454, -1430.023193, 10.078046, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1830.448120, -1415.171752, 13.116979, 89.999992, 1155.536987, -76.136917, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3979, "civic01_lan", "sl_flagstone1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 6094, "canalsg_law", "sw_brewbrick01", 0xFFA0A0A0);
	tmpobjid = CreateDynamicObject(19603, 1812.271606, -1445.066162, 19.555669, 0.000051, 179.999984, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1831.368408, -1415.769287, 18.856388, -0.000104, -0.000051, 89.400222, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1815.169677, -1449.054931, 18.856388, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1816.753051, -1440.003417, 10.078046, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(2649, 1812.713500, -1448.894775, 14.217372, 0.000096, -89.999954, -90.600242, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2935, 1810.111083, -1446.990234, 18.856388, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.335205, -1425.580322, 13.036380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.409545, -1418.490478, 15.946380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.409545, -1418.490478, 13.036380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.260742, -1432.710693, 15.946380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.260742, -1432.710693, 13.036380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.186279, -1439.840698, 15.946380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.186279, -1439.840698, 13.036380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.111083, -1446.990234, 15.946380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1810.111083, -1446.990234, 13.036380, -0.000051, 0.000104, 179.399780, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(2935, 1836.107788, -1449.200683, 15.866374, 89.999992, 795.536193, -76.135971, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1816.712890, -1444.413818, 10.088047, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1826.922973, -1420.108520, 10.078046, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1826.836303, -1430.098144, 10.078046, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1826.747924, -1440.098510, 10.078046, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1826.686157, -1444.499755, 10.088047, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(8326, 1822.777832, -1450.178833, 14.454556, 0.000012, 0.000054, -90.600181, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4227, "graffiti_lan01", "cleargraf01_LA", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 9514, "711_sfw", "ws_carpark2", 0x00FFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 2, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 3, 4227, "graffiti_lan01", "cleargraf01_LA", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 4, 4227, "graffiti_lan01", "cleargraf01_LA", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1830.083374, -1450.040405, 13.116979, 89.999992, 975.536987, -76.136917, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3979, "civic01_lan", "sl_flagstone1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 6094, "canalsg_law", "sw_brewbrick01", 0xFFA0A0A0);
	tmpobjid = CreateDynamicObject(2935, 1827.289184, -1449.129394, 18.856388, 0.000104, 0.000051, -90.600318, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 16640, "a51", "redmetal", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1830.237792, -1444.082397, 20.175094, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1830.338134, -1434.472412, 20.175094, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1830.367187, -1420.270263, 20.185094, 0.000051, 270.000000, -0.600683, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(9339, 1827.530029, -1430.373291, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379, 1830.436889, -1425.071166, 20.175094, 0.000051, 270.000000, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	tmpobjid = CreateDynamicObject(19603, 1832.252075, -1440.252929, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(9339, 1832.530029, -1430.373291, 19.206373, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12848, "cunte_town1", "rufwallb256hi", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1832.407714, -1425.395141, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1832.200439, -1445.222167, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1832.303955, -1435.284301, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1832.355834, -1430.345092, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19603, 1832.460327, -1420.404785, 19.555669, 0.000051, 179.999984, -0.600807, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3881, "apsecurity_sfxrf", "ws_rooftarmac2", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18765, 1831.922973, -1420.108520, 10.078046, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1831.836303, -1430.098144, 10.078046, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1831.747924, -1440.098510, 10.078046, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	tmpobjid = CreateDynamicObject(18765, 1831.686157, -1444.499755, 10.088047, 0.000058, 0.000007, -90.500221, 0, 0, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(1437, 1838.920166, -1416.251098, 12.575545, -0.000058, -0.000006, 90.000137, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1412, 1831.162353, -1412.547607, 13.792569, 0.000050, 0.000004, -88.500030, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1412, 1828.436889, -1410.006958, 13.792569, 0.000004, -0.000050, 1.499747, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1412, 1817.306396, -1412.910400, 13.792569, 0.000050, 0.000004, -88.500030, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1412, 1819.805419, -1410.255737, 13.792569, 0.000004, -0.000050, 1.499747, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1372, 1824.207153, -1414.654541, 12.642541, -0.000007, 0.000050, 178.999679, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1415, 1821.611206, -1414.628784, 12.572541, -0.000007, 0.000050, 178.999679, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2675, 1827.488159, -1412.259887, 12.642541, 0.000050, 0.000000, -84.200057, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(850, 1819.596923, -1412.195312, 12.642541, -0.000050, 0.000000, 99.300102, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1358, 1828.868286, -1412.429321, 13.732560, -0.000006, 0.000050, -178.999786, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2008, 1831.629882, -1447.015380, 12.552664, 0.000000, 0.000000, 0.000000, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2310, 1832.019775, -1445.401000, 13.033074, 0.000000, 0.000000, 80.799980, 0, 0, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2310, 1832.625244, -1447.837524, 13.041245, 0.000000, 0.000000, 270.000000, 0, 0, -1, 300.00, 300.00); 

	//Bank interior por AtomicPower
	new AT_bank_int[299];
 
	AT_bank_int[0] = CreateDynamicObject(19377, 1397.05444, 1320.60864, 1500.00000,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[1] = CreateDynamicObject(19377, 1402.86365, 1310.97815, 1499.99805,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[2] = CreateDynamicObject(19377, 1407.38416, 1320.60071, 1499.99805,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[3] = CreateDynamicObject(19377, 1407.38464, 1310.97876, 1500.00195,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[75] = CreateDynamicObject(19377, 1392.75269, 1330.16150, 1500.00195,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[76] = CreateDynamicObject(14407, 1395.54675, 1314.59460, 1496.87964,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);//
	AT_bank_int[77] = CreateDynamicObject(19377, 1392.39172, 1314.38013, 1497.02747,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);//
	SetDynamicObjectMaterial( AT_bank_int[0], 0, 10938, "skyscrap_sfse", "concpanel_la",  0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[1], 0, 10938, "skyscrap_sfse", "concpanel_la",  0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[2], 0, 10938, "skyscrap_sfse", "concpanel_la",  0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[3], 0, 10938, "skyscrap_sfse", "concpanel_la",  0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[75], 0, 10938, "skyscrap_sfse", "concpanel_la",  0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[76], 0, 10938, "skyscrap_sfse", "concpanel_la",  0xFF626262);
	SetDynamicObjectMaterial( AT_bank_int[77], 0, 10938, "skyscrap_sfse", "concpanel_la",  0xFF626262);

	AT_bank_int[4] = CreateDynamicObject(2229, 1409.87744, 1320.26294, 1500.07629,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[5] = CreateDynamicObject(2229, 1410.49170, 1321.15552, 1500.07825,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[6] = CreateDynamicObject(2229, 1410.49133, 1321.59106, 1500.07617,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[7] = CreateDynamicObject(2229, 1407.95337, 1320.26294, 1500.07629,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[8] = CreateDynamicObject(2229, 1408.56763, 1321.15552, 1500.07825,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[9] = CreateDynamicObject(2229, 1406.02942, 1320.26294, 1500.07629,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[10] = CreateDynamicObject(2229, 1406.64355, 1321.15552, 1500.07825,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[11] = CreateDynamicObject(2229, 1406.64331, 1321.59106, 1500.07617,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[12] = CreateDynamicObject(2229, 1403.62439, 1320.26294, 1500.07629,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[13] = CreateDynamicObject(2229, 1404.23865, 1321.15552, 1500.07825,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[14] = CreateDynamicObject(2229, 1404.23547, 1321.61084, 1500.07617,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[15] = CreateDynamicObject(2229, 1401.70044, 1320.26294, 1500.07629,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[16] = CreateDynamicObject(2229, 1402.31458, 1321.15552, 1500.07825,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[17] = CreateDynamicObject(2229, 1399.77637, 1320.26294, 1500.07629,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[18] = CreateDynamicObject(2229, 1400.39063, 1321.15552, 1500.07825,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[19] = CreateDynamicObject(2229, 1400.38745, 1321.61084, 1500.07617,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[4], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[5], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[6], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[7], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[8], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[9], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[10], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[11], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[12], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[13], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[14], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[15], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[16], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[17], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[18], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[19], 0, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[4], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[5], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[6], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[7], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[8], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[9], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[10], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[11], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[12], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[13], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[14], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[15], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[16], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[17], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[18], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[19], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[4], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[5], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[6], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[7], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[8], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[9], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[10], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[11], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[12], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[13], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[14], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[15], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[16], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[17], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[18], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[19], 1, 10226, "sfeship1", "CJ_WOOD5",  0xFF404040);

	AT_bank_int[20] = CreateDynamicObject(1783, 1409.68652, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[21] = CreateDynamicObject(1783, 1409.05054, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[22] = CreateDynamicObject(1783, 1408.41455, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[23] = CreateDynamicObject(1783, 1407.77856, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[24] = CreateDynamicObject(1783, 1407.14258, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[25] = CreateDynamicObject(1783, 1406.50659, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[26] = CreateDynamicObject(1783, 1403.44995, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[27] = CreateDynamicObject(1783, 1402.81396, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[28] = CreateDynamicObject(1783, 1402.17798, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[29] = CreateDynamicObject(1783, 1401.54199, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[30] = CreateDynamicObject(1783, 1400.90601, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[31] = CreateDynamicObject(1783, 1400.27002, 1320.72131, 1501.02368,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[20], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[21], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[22], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[23], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[24], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[25], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[26], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[27], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[28], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[29], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[30], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[31], 0, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[20], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[21], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[22], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[23], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[24], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[25], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[26], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[27], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[28], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[29], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[30], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[31], 1, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[20], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[21], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[22], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[23], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[24], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[25], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[26], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[27], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[28], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[29], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[30], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);
	SetDynamicObjectMaterial( AT_bank_int[31], 2, 10226, "sfeship1", "CJ_WOOD5", 0xFF707070);

	AT_bank_int[32] = CreateDynamicObject(19371, 1408.41614, 1320.75476, 1499.31506,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[33] = CreateDynamicObject(19371, 1408.09814, 1320.74878, 1499.31506,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[34] = CreateDynamicObject(19371, 1402.32776, 1320.79736, 1499.31506,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[35] = CreateDynamicObject(19371, 1401.69177, 1320.79541, 1499.31506,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[32], 0, 1223, "dynsigns", "white64", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[33], 0, 1223, "dynsigns", "white64", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[34], 0, 1223, "dynsigns", "white64", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[35], 0, 1223, "dynsigns", "white64", 0xFFBCE4FA);

	AT_bank_int[36] = CreateDynamicObject(19425, 1408.43188, 1321.10217, 1500.77808,   180.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[37] = CreateDynamicObject(19425, 1408.13196, 1321.10217, 1500.77612,   180.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[38] = CreateDynamicObject(19425, 1408.13196, 1321.23425, 1500.78015,   180.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[39] = CreateDynamicObject(19425, 1408.43188, 1321.23425, 1500.77612,   180.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[40] = CreateDynamicObject(19425, 1402.16382, 1321.07813, 1500.77808,   180.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[41] = CreateDynamicObject(19425, 1401.90002, 1321.07813, 1500.77612,   180.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[42] = CreateDynamicObject(19425, 1402.16382, 1321.23425, 1500.77612,   180.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[43] = CreateDynamicObject(19425, 1401.90002, 1321.23425, 1500.78015,   180.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[36], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[37], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[38], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[39], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[40], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[41], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[42], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[43], 0, 10226, "sfeship1", "CJ_WOOD5", 0);

	AT_bank_int[44] = CreateDynamicObject(2293, 1409.84692, 1311.45801, 1500.07825,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[45] = CreateDynamicObject(2293, 1408.89392, 1311.45886, 1500.07825,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[46] = CreateDynamicObject(2293, 1407.94177, 1311.46570, 1500.07825,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[47] = CreateDynamicObject(2293, 1407.02795, 1311.45886, 1500.07825,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[48] = CreateDynamicObject(2293, 1405.16199, 1311.45886, 1500.07825,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[49] = CreateDynamicObject(2293, 1404.22900, 1311.45886, 1500.07825,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[50] = CreateDynamicObject(2293, 1403.29602, 1311.45886, 1500.07825,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[51] = CreateDynamicObject(2293, 1402.36304, 1311.45886, 1500.07825,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[44], 0,  10948, "skyscrapper_sfs", "ws_asphalt", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[45], 0,  10948, "skyscrapper_sfs", "ws_asphalt", 0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[46], 0,  10948, "skyscrapper_sfs", "ws_asphalt", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[47], 0,  10948, "skyscrapper_sfs", "ws_asphalt", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[48], 0, 10948, "skyscrapper_sfs", "ws_asphalt", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[49], 0, 10948, "skyscrapper_sfs", "ws_asphalt", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[50], 0, 10948, "skyscrapper_sfs", "ws_asphalt", 0xFF404040);
	SetDynamicObjectMaterial( AT_bank_int[51], 0, 10948, "skyscrapper_sfs", "ws_asphalt", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[44], 1,  8843, "vegasarrows", "dirtywhite", 0);
	SetDynamicObjectMaterial( AT_bank_int[45], 1,  8843, "vegasarrows", "dirtywhite", 0);
	SetDynamicObjectMaterial( AT_bank_int[46], 1,  8843, "vegasarrows", "dirtywhite", 0);
	SetDynamicObjectMaterial( AT_bank_int[47], 1,  8843, "vegasarrows", "dirtywhite", 0);
	SetDynamicObjectMaterial( AT_bank_int[48], 1,  8843, "vegasarrows", "dirtywhite", 0);
	SetDynamicObjectMaterial( AT_bank_int[49], 1,  8843, "vegasarrows", "dirtywhite", 0);
	SetDynamicObjectMaterial( AT_bank_int[50], 1,  8843, "vegasarrows", "dirtywhite", 0);
	SetDynamicObjectMaterial( AT_bank_int[51], 1,  8843, "vegasarrows", "dirtywhite", 0);

	AT_bank_int[52] = CreateDynamicObject(19448, 1407.80005, 1323.94739, 1501.79858,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[53] = CreateDynamicObject(19448, 1402.52002, 1323.95020, 1501.79858,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[54] = CreateDynamicObject(19448, 1397.64343, 1328.59155, 1501.79858,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[55] = CreateDynamicObject(19448, 1398.53809, 1308.12610, 1501.79858,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[56] = CreateDynamicObject(19448, 1403.24109, 1310.53662, 1501.79858,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[57] = CreateDynamicObject(19448, 1407.80005, 1310.53748, 1501.79858,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[58] = CreateDynamicObject(19448, 1393.80994, 1312.85864, 1501.79858,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[78] = CreateDynamicObject(19448, 1393.80994, 1312.85864, 1498.30054,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[79] = CreateDynamicObject(19448, 1388.89221, 1316.27661, 1498.30054,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);//
	AT_bank_int[80] = CreateDynamicObject(19448, 1391.91467, 1320.62366, 1498.30054,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);//
	AT_bank_int[81] = CreateDynamicObject(19448, 1396.64331, 1315.87585, 1498.30054,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[82] = CreateDynamicObject(19448, 1390.51587, 1319.00146, 1498.30054,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[83] = CreateDynamicObject(19448, 1393.65063, 1329.45300, 1501.79858,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[84] = CreateDynamicObject(19448, 1391.81213, 1325.20935, 1501.79858,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);//
	AT_bank_int[85] = CreateDynamicObject(19448, 1391.81396, 1320.61072, 1501.79858,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);//
	AT_bank_int[97] = CreateDynamicObject(19448, 1394.84595, 1315.87280, 1504.16675,   -34.50000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[52], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[53], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[54], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[55], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[56], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[57], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[58], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[97], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[78], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[79], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[80], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[81], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[82], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[83], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[84], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[85], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);

	AT_bank_int[59] = CreateDynamicObject(2920, 1412.61023, 1324.49341, 1500.19775,   90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[60] = CreateDynamicObject(2920, 1412.61255, 1307.20703, 1500.19775,   90.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[61] = CreateDynamicObject(2920, 1412.61023, 1324.31738, 1503.42859,   90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[62] = CreateDynamicObject(2920, 1412.61255, 1310.18604, 1503.42859,   90.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[63] = CreateDynamicObject(2920, 1412.60815, 1323.75586, 1496.23474,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[64] = CreateDynamicObject(2920, 1412.60925, 1317.56165, 1496.23474,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[65] = CreateDynamicObject(2920, 1412.60803, 1314.16638, 1496.23474,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[66] = CreateDynamicObject(2920, 1412.60815, 1310.75793, 1496.23474,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[67] = CreateDynamicObject(2920, 1412.60974, 1320.70361, 1496.23474,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[68] = CreateDynamicObject(2920, 1412.60730, 1315.83655, 1509.61548,   0.00000, 180.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[69] = CreateDynamicObject(1897, 1412.71875, 1316.54517, 1502.60596,   0.00000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[70] = CreateDynamicObject(1897, 1412.71936, 1315.15161, 1502.58203,   0.00000, -90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[71] = CreateDynamicObject(1897, 1412.71936, 1315.15161, 1502.70142,   0.00000, -90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[72] = CreateDynamicObject(1897, 1412.71875, 1316.54517, 1502.72583,   0.00000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[73] = CreateDynamicObject(2920, 1412.60803, 1313.94995, 1496.23474,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[74] = CreateDynamicObject(2920, 1412.60925, 1317.80005, 1496.23474,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[86] = CreateDynamicObject(2920, 1412.61023, 1324.31738, 1503.6766,   90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[87] = CreateDynamicObject(2920, 1412.61023, 1324.31738, 1503.9246,   90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[88] = CreateDynamicObject(2920, 1412.61255, 1310.18604, 1503.6766,   90.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[89] = CreateDynamicObject(2920, 1412.61255, 1310.18604, 1503.9246,   90.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[59], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[60], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[61], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[62], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[63], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[64], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[65], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[66], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[67], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[68], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[69], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[70], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[71], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[72], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[73], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[74], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[86], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[87], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[88], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[89], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);

	CreateDynamicObject(4649, 1437.77979, 1282.13147, 1498.38147,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4650, 1499.84375, 1339.13135, 1497.04419,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4651, 1489.83142, 1396.67981, 1496.91479,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4585, 1469.79443, 1309.09814, 1586.63599,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4568, 1499.17395, 1386.75208, 1496.50269,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4690, 1490.08435, 1374.56055, 1506.36865,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(700, 1455.23425, 1354.28186, 1499.46777,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4681, 1604.73755, 1346.70850, 1506.94385,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4571, 1535.18909, 1378.84387, 1544.81921,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4584, 1499.29883, 1277.14868, 1494.11914,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4569, 1490.61377, 1260.33313, 1515.10461,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4703, 1444.05493, 1426.24866, 1497.17859,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4666, 1427.62219, 1470.71790, 1516.70435,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4665, 1427.62219, 1470.71790, 1516.70435,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4664, 1530.43140, 1498.77100, 1515.34094,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4595, 1517.97668, 1490.37646, 1497.11572,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1294, 1440.57166, 1309.86755, 1501.40869,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1283, 1446.12048, 1337.79199, 1499.97302,   0.00000, 0.00000, -90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1283, 1435.69678, 1346.69800, 1499.97302,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(729, 1480.63184, 1438.66370, 1496.86194,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(729, 1457.53821, 1422.30310, 1496.86194,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(729, 1520.04944, 1447.82092, 1496.86194,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(762, 1508.08984, 1447.84460, 1502.16406,   0.00000, 0.00000, 71.27999);
	CreateDynamicObject(4718, 1538.13550, 1591.90503, 1517.18408,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4585, 1390.00232, 1372.76270, 1550.00000,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4585, 1347.87378, 1336.75903, 1550.00000,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4585, 1345.14465, 1307.01538, 1550.00000,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4585, 1388.88855, 1277.29407, 1550.00000,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(4585, 1384.67175, 1336.22705, 1524.32104,   0.00000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[147] = CreateDynamicObject(4600, 1392.54540, 1309.93079, 1508.62451,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[147], 1,  -1, "none", "none", 0x00FFFFFF);

	AT_bank_int[99] = CreateDynamicObject(19379, 1403.84119, 1308.13196, 1503.62134,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[100] = CreateDynamicObject(19379, 1407.38867, 1308.13257, 1503.61926,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[101] = CreateDynamicObject(19379, 1402.98401, 1324.68579, 1503.62134,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[102] = CreateDynamicObject(19379, 1407.38867, 1324.68384, 1503.61926,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[93] = CreateDynamicObject(19380, 1398.63257, 1315.99915, 1508.82312,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[94] = CreateDynamicObject(19379, 1393.46899, 1313.85913, 1503.62329,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[95] = CreateDynamicObject(19379, 1393.46887, 1320.57825, 1503.62366,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[96] = CreateDynamicObject(19379, 1393.50305, 1329.78992, 1503.62170,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[98] = CreateDynamicObject(19448, 1394.84595, 1315.87280, 1504.16675,   -34.50000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[130] = CreateDynamicObject(19377, 1386.65002, 1314.90857, 1500.00903,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[99], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[100], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[101], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[102], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[93], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[94], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[95], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[96], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[98], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[130], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);

	AT_bank_int[103] = CreateDynamicObject(2678, 1405.78564, 1316.41687, 1501.05896,   0.00000, 0.00000, -90.00000, 5, 5, -1, 200.00);
	AT_bank_int[104] = CreateDynamicObject(2678, 1405.82605, 1315.69226, 1501.05896,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[105] = CreateDynamicObject(2678, 1405.06006, 1316.38354, 1501.05896,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[106] = CreateDynamicObject(2678, 1405.09998, 1315.65894, 1501.05896,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[107] = CreateDynamicObject(2678, 1405.78564, 1316.41687, 1503.50061,   0.00000, 0.00000, -90.00000, 5, 5, -1, 200.00);
	AT_bank_int[90] = CreateDynamicObject(2678, 1405.06006, 1316.38354, 1503.50061,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[91] = CreateDynamicObject(2678, 1405.09998, 1315.65894, 1503.50061,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[92] = CreateDynamicObject(2678, 1405.82605, 1315.69226, 1503.50061,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[103], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[104], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[105], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[106], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[107], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[90], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[91], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[92], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[103], 2,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[104], 2,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[105], 2,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[106], 2,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[107], 2,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[90], 2,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[91], 2,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[92], 2,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[103], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[104], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[105], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[106], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[107], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[90], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[91], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[92], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[103], 3,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[104], 3,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[105], 3,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[106], 3,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[107], 3,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[90], 3,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[91], 3,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);
	SetDynamicObjectMaterial( AT_bank_int[92], 3,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);

	AT_bank_int[108] = CreateDynamicObject(19380, 1407.38867, 1315.89441, 1504.02197,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[109] = CreateDynamicObject(19380, 1403.80127, 1316.00769, 1504.02002,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[108], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[109], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	AT_bank_int[154] = CreateDynamicObject(19448, 1395.68018, 1314.03955, 1502.72510,   -34.50000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[154], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF4F4F4);


	AT_bank_int[110] = CreateDynamicObject(2229, 1405.19800, 1316.35486, 1503.14160,   -60.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[111] = CreateDynamicObject(2229, 1405.15405, 1316.35291, 1503.64587,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[112] = CreateDynamicObject(2229, 1403.80005, 1316.35486, 1503.64795,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[113] = CreateDynamicObject(2229, 1402.40002, 1316.35486, 1503.64587,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[114] = CreateDynamicObject(2229, 1401.00000, 1316.35486, 1503.64795,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[115] = CreateDynamicObject(2229, 1399.94995, 1316.35291, 1503.64587,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[116] = CreateDynamicObject(2229, 1405.66931, 1315.75842, 1503.14160,   -60.00000, 0.00000, -90.00000, 5, 5, -1, 200.00);
	AT_bank_int[117] = CreateDynamicObject(2229, 1407.18372, 1316.37256, 1503.64587,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[118] = CreateDynamicObject(2229, 1408.55005, 1316.37061, 1503.64795,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[119] = CreateDynamicObject(2229, 1409.90002, 1316.37256, 1503.64587,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[120] = CreateDynamicObject(2229, 1411.30005, 1316.37061, 1503.64795,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[121] = CreateDynamicObject(2229, 1412.69995, 1316.37256, 1503.64587,   -90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[122] = CreateDynamicObject(2229, 1405.74805, 1316.31458, 1503.14160,   -60.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[123] = CreateDynamicObject(2229, 1405.74927, 1316.39087, 1503.64795,   -90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[124] = CreateDynamicObject(2229, 1405.74731, 1317.75000, 1503.64587,   -90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[125] = CreateDynamicObject(2229, 1405.74927, 1319.00000, 1503.64795,   -90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[126] = CreateDynamicObject(2229, 1405.13440, 1315.78467, 1503.14160,   -60.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	AT_bank_int[127] = CreateDynamicObject(2229, 1405.74854, 1314.36304, 1503.64795,   -90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[128] = CreateDynamicObject(2229, 1405.74890, 1313.04346, 1503.64587,   -90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[129] = CreateDynamicObject(2229, 1405.75085, 1312.00000, 1503.64990,   -90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[289] =CreateDynamicObject(19381, 1407.78735, 1320.18164, 1508.83557,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[290] =CreateDynamicObject(19381, 1403.50000, 1320.17957, 1508.83557,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[291] =CreateDynamicObject(19381, 1407.78735, 1312.68164, 1508.83557,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[292] =CreateDynamicObject(19381, 1402.28735, 1312.67957, 1508.83557,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[110], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[111], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[112], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[113], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[114], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[115], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[116], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[117], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[118], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[119], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[120], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[121], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[122], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[123], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[124], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[125], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[126], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[127], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[128], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[129], 1,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[289], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[290], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[291], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);
	SetDynamicObjectMaterial( AT_bank_int[292], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFF0F0F0);

	AT_bank_int[131] = CreateDynamicObject(19325, 1397.83984, 1321.96497, 1502.02559,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[132] = CreateDynamicObject(19325, 1394.29175, 1315.86646, 1502.02559,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[131], 0,  -1, "none", "none", 0xFF9FF5FF);
	SetDynamicObjectMaterial( AT_bank_int[132], 0,  -1, "none", "none", 0xFF9FF5FF);

	AT_bank_int[139] = CreateDynamicObject(19089, 1397.84375, 1318.63489, 1504.28833,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[140] = CreateDynamicObject(19089, 1397.84375, 1323.85596, 1504.28833,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[141] = CreateDynamicObject(19089, 1397.59705, 1315.86560, 1504.28833,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[142] = CreateDynamicObject(19089, 1397.84351, 1318.63013, 1503.52209,   90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[143] = CreateDynamicObject(19089, 1397.84351, 1318.63013, 1500.09875,   90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[144] = CreateDynamicObject(19089, 1397.60461, 1315.86804, 1500.09875,   90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[145] = CreateDynamicObject(19089, 1397.60461, 1315.86804, 1503.52686,   90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[146] = CreateDynamicObject(19089, 1397.93835, 1315.87024, 1504.15405,   55.50000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[139], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[140], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[141], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[142], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[143], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[144], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[145], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[146], 0, 10226, "sfeship1", "CJ_WOOD5", 0);

	CreateDynamicObject(19325, 1412.60974, 1320.78882, 1501.28259,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(19325, 1412.60669, 1310.53210, 1501.28259,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(19325, 1412.59338, 1315.85974, 1505.95728,   90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);

	AT_bank_int[148] = CreateDynamicObject(968, 1412.63416, 1324.49341, 1500.86975,   0.00000, 90.00000, -90.00000, 5, 5, -1, 200.00);
	AT_bank_int[149] = CreateDynamicObject(968, 1412.63416, 1324.49341, 1501.20581,   0.00000, 90.00000, -90.00000, 5, 5, -1, 200.00);
	AT_bank_int[150] = CreateDynamicObject(968, 1412.63416, 1324.49341, 1501.54175,   0.00000, 90.00000, -90.00000, 5, 5, -1, 200.00);
	AT_bank_int[151] = CreateDynamicObject(968, 1412.64001, 1306.87244, 1500.86975,   0.00000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[152] = CreateDynamicObject(968, 1412.64001, 1306.87244, 1501.20581,   0.00000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[153] = CreateDynamicObject(968, 1412.64001, 1306.87244, 1501.54175,   0.00000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[148], 1,  19325, "lsmall_shops", "lsmall_window01", 0xFF9FF5FF);
	SetDynamicObjectMaterial( AT_bank_int[149], 1,  19325, "lsmall_shops", "lsmall_window01", 0xFF9FF5FF);
	SetDynamicObjectMaterial( AT_bank_int[150], 1,  19325, "lsmall_shops", "lsmall_window01", 0xFF9FF5FF);
	SetDynamicObjectMaterial( AT_bank_int[151], 1,  19325, "lsmall_shops", "lsmall_window01", 0xFF9FF5FF);
	SetDynamicObjectMaterial( AT_bank_int[152], 1,  19325, "lsmall_shops", "lsmall_window01", 0xFF9FF5FF);
	SetDynamicObjectMaterial( AT_bank_int[153], 1,  19325, "lsmall_shops", "lsmall_window01", 0xFF9FF5FF);

	CreateDynamicObject(2166, 1397.08081, 1328.00000, 1500.08655,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2166, 1397.08081, 1322.37927, 1500.08655,   0.00000, 0.00000, 180.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1714, 1396.09290, 1328.61316, 1500.08862,   0.00000, 0.00000, 24.96000, 5, 5, -1, 200.00);
	CreateDynamicObject(1714, 1396.09241, 1322.87146, 1500.08862,   0.00000, 0.00000, 24.96000, 5, 5, -1, 200.00);
	CreateDynamicObject(1714, 1401.31909, 1322.60889, 1500.08862,   0.00000, 0.00000, -13.02000, 5, 5, -1, 200.00);
	CreateDynamicObject(1714, 1403.20508, 1322.60889, 1500.08862,   0.00000, 0.00000, -13.02000, 5, 5, -1, 200.00);
	CreateDynamicObject(1714, 1409.60828, 1322.60889, 1500.08862,   0.00000, 0.00000, -13.02000, 5, 5, -1, 200.00);
	CreateDynamicObject(1714, 1407.73083, 1322.60889, 1500.08862,   0.00000, 0.00000, -13.02000, 5, 5, -1, 200.00);
	CreateDynamicObject(2164, 1396.26099, 1324.76672, 1500.08643,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2161, 1404.46484, 1323.85510, 1500.08643,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2163, 1405.80005, 1323.85510, 1500.08643,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2186, 1392.36316, 1324.45142, 1500.08704,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2164, 1391.93518, 1328.08655, 1500.08643,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2163, 1391.92871, 1326.30945, 1500.08643,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2162, 1391.92871, 1321.50000, 1500.08643,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1808, 1392.10205, 1323.00684, 1500.08728,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);

	CreateDynamicObject(1721, 1397.36389, 1319.75916, 1500.08728,   0.00000, 0.00000, 15.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1721, 1395.88953, 1319.73755, 1500.08728,   0.00000, 0.00000, -15.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1721, 1397.22388, 1325.33923, 1500.08728,   0.00000, 0.00000, 15.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1721, 1395.82947, 1325.41748, 1500.08728,   0.00000, 0.00000, -15.00000, 5, 5, -1, 200.00);

	AT_bank_int[137] = CreateDynamicObject(19373, 1396.93469, 1324.87634, 1500.18811,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[137], 0,  16150, "ufo_bar", "GEwhite1_64", 0xFFBCE4FA);

	CreateDynamicObject(2194, 1395.78455, 1321.13220, 1501.12170,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2194, 1395.78345, 1326.69922, 1501.12170,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2194, 1392.17676, 1327.23853, 1501.24304,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2854, 1405.64832, 1320.77136, 1500.92175,   0.00000, 0.00000, 7.20000, 5, 5, -1, 200.00);

	AT_bank_int[156] = CreateDynamicObject(19373, 1396.18518, 1320.51880, 1500.00476,   0.00000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[157] = CreateDynamicObject(19373, 1396.18518, 1324.01563, 1500.00684,   0.00000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[158] = CreateDynamicObject(19373, 1396.18518, 1327.51367, 1500.00476,   0.00000, 90.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[159] = CreateDynamicObject(19378, 1405.14807, 1325.69373, 1500.00598,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[156], 0,  10948, "skyscrapper_sfs", "ws_asphalt", 0xFF3F3F3F);
	SetDynamicObjectMaterial( AT_bank_int[157], 0,  10948, "skyscrapper_sfs", "ws_asphalt", 0xFF3F3F3F);
	SetDynamicObjectMaterial( AT_bank_int[158], 0,  10948, "skyscrapper_sfs", "ws_asphalt", 0xFF3F3F3F);
	SetDynamicObjectMaterial( AT_bank_int[159], 0,  10948, "skyscrapper_sfs", "ws_asphalt", 0xFF3F3F3F);

	AT_bank_int[160] = CreateDynamicObject(2725, 1404.53479, 1320.82739, 1500.48645,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[161] = CreateDynamicObject(2725, 1405.69995, 1320.82739, 1500.48645,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[160], 0, 1223, "dynsigns", "white64", 0xFF737373);
	SetDynamicObjectMaterial( AT_bank_int[161], 0, 1223, "dynsigns", "white64", 0xFF737373);
	SetDynamicObjectMaterial( AT_bank_int[160], 1, 1223, "dynsigns", "white64", 0xFF737373);
	SetDynamicObjectMaterial( AT_bank_int[161], 1, 1223, "dynsigns", "white64", 0xFF737373);
	SetDynamicObjectMaterial( AT_bank_int[160], 2, 1223, "dynsigns", "white64", 0xFF737373);
	SetDynamicObjectMaterial( AT_bank_int[161], 2, 1223, "dynsigns", "white64", 0xFF737373);

	AT_bank_int[162] = CreateDynamicObject(2203, 1405.07104, 1320.58838, 1500.24365,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[162], 1, 1223, "dynsigns", "white64", 0xFFFFFFFF);

	AT_bank_int[163] = CreateDynamicObject(14834, 1405.05615, 1320.58911, 1500.12891,   0.00000, 0.00000, -45.54000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[163], 2, 1223, "dynsigns", "white64", 0x00737373);

	AT_bank_int[164] = CreateDynamicObject(630, 1406.33606, 1315.95398, 1501.10229,   0.00000, 0.00000, -42.90000, 5, 5, -1, 200.00);
	AT_bank_int[165] = CreateDynamicObject(630, 1404.50464, 1316.00122, 1501.10229,   0.00000, 0.00000, -144.24001, 5, 5, -1, 200.00);
	AT_bank_int[166] = CreateDynamicObject(631, 1406.14978, 1311.41174, 1500.97607,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[167] = CreateDynamicObject(631, 1399.52966, 1311.48853, 1500.97607,   0.00000, 0.00000, -11.52000, 5, 5, -1, 200.00);
	AT_bank_int[168] = CreateDynamicObject(630, 1392.94385, 1316.80518, 1501.10229,   0.00000, 0.00000, -267.53995);
	SetDynamicObjectMaterial( AT_bank_int[164], 1, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[165], 1, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[166], 1, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[167], 1, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[168], 1, 1223, "dynsigns", "white64", 0xFFFFFFFF);

	AT_bank_int[133] = CreateDynamicObject(19089, 1397.06567, 1321.33374, 1509.6312,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[134] = CreateDynamicObject(19089, 1396.46777, 1510.35718, 1510.35718,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[135] = CreateDynamicObject(19089, 1395.84766, 1321.33374, 1510.10522,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[136] = CreateDynamicObject(19089, 1396.43567, 1321.33374, 1510.35718,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[138] = CreateDynamicObject(19089, 1397.06567, 1326.98840, 1509.6312,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[155] = CreateDynamicObject(19089, 1396.43567, 1326.98840, 1510.35718,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[169] = CreateDynamicObject(19089, 1395.84766, 1326.98840, 1510.10522,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);

	SetDynamicObjectMaterial( AT_bank_int[133], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[134], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[135], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[136], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[138], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[155], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[169], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);

	AT_bank_int[170] = CreateDynamicObject(2114, 1397.05713, 1326.99194, 1502.3715,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[171] = CreateDynamicObject(2114, 1396.43005, 1326.99194, 1502.84351,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[172] = CreateDynamicObject(2114, 1395.84399, 1326.99194, 1502.59058,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[173] = CreateDynamicObject(2114, 1397.05713, 1321.33521, 1502.3715,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[174] = CreateDynamicObject(2114, 1396.43005, 1321.33521, 1502.84351,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[175] = CreateDynamicObject(2114, 1395.84399, 1321.33521, 1502.59058,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[170], 0, 2026, "shadetmp", "kb_lightshade", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[171], 0, 2026, "shadetmp", "kb_lightshade", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[172], 0, 2026, "shadetmp", "kb_lightshade", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[173], 0, 2026, "shadetmp", "kb_lightshade", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[174], 0, 2026, "shadetmp", "kb_lightshade", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[175], 0, 2026, "shadetmp", "kb_lightshade", 0xFFFFFFFF);

	AT_bank_int[176] = CreateDynamicObject(2268, 1395.40137, 1326.93201, 1501.21692,   0.00000, 90.00000, 330.00000, 5, 5, -1, 200.00);
	AT_bank_int[177] = CreateDynamicObject(2040, 1395.87854, 1327.09436, 1500.79565,   0.00000, 0.00000, 60.00000, 5, 5, -1, 200.00);
	AT_bank_int[178] = CreateDynamicObject(2752, 1395.86145, 1327.09924, 1500.87744,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[179] = CreateDynamicObject(2752, 1395.75903, 1327.19727, 1501.18384,   90.00000, 0.00000, 60.00000, 5, 5, -1, 200.00);
	AT_bank_int[180] = CreateDynamicObject(2752, 1395.86145, 1321.44519, 1500.87744,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[181] = CreateDynamicObject(2752, 1395.75903, 1321.54333, 1501.18384,   90.00000, 0.00000, 60.00000, 5, 5, -1, 200.00);
	AT_bank_int[182] = CreateDynamicObject(2268, 1395.40137, 1321.27795, 1501.21692,   0.00000, 90.00000, 330.00000, 5, 5, -1, 200.00);
	AT_bank_int[183] = CreateDynamicObject(2040, 1395.87854, 1321.44043, 1500.79565,   0.00000, 0.00000, 60.00000, 5, 5, -1, 200.00);
	AT_bank_int[184] = CreateDynamicObject(2040, 1400.77417, 1321.15173, 1500.69336,   0.00000, 0.00000, 75.00000, 5, 5, -1, 200.00);
	AT_bank_int[185] = CreateDynamicObject(2752, 1400.74866, 1321.15808, 1500.81006,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[186] = CreateDynamicObject(2752, 1400.91565, 1321.17212, 1501.12720,   0.00000, 90.00000, 165.00000, 5, 5, -1, 200.00);
	AT_bank_int[187] = CreateDynamicObject(2268, 1400.34375, 1320.84680, 1501.14941,   0.00000, 90.00000, -15.00000, 5, 5, -1, 200.00);
	AT_bank_int[188] = CreateDynamicObject(2040, 1408.89722, 1321.15173, 1500.69336,   0.00000, 0.00000, 75.00000, 5, 5, -1, 200.00);
	AT_bank_int[189] = CreateDynamicObject(2752, 1402.54468, 1321.13416, 1500.81006,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[190] = CreateDynamicObject(2752, 1409.03857, 1321.15808, 1501.12720,   0.00000, 90.00000, 165.00000, 5, 5, -1, 200.00);
	AT_bank_int[191] = CreateDynamicObject(2268, 1408.46680, 1320.84680, 1501.14941,   0.00000, 90.00000, -15.00000, 5, 5, -1, 200.00);
	AT_bank_int[192] = CreateDynamicObject(2040, 1406.97424, 1321.15173, 1500.69336,   0.00000, 0.00000, 75.00000, 5, 5, -1, 200.00);
	AT_bank_int[193] = CreateDynamicObject(2752, 1406.94873, 1321.15808, 1500.81006,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[194] = CreateDynamicObject(2752, 1407.11560, 1321.17212, 1501.12720,   0.00000, 90.00000, 165.00000, 5, 5, -1, 200.00);
	AT_bank_int[195] = CreateDynamicObject(2268, 1406.54382, 1320.84680, 1501.14941,   0.00000, 90.00000, -15.00000, 5, 5, -1, 200.00);
	AT_bank_int[196] = CreateDynamicObject(2040, 1402.56226, 1321.15173, 1500.69336,   0.00000, 0.00000, 75.00000, 5, 5, -1, 200.00);
	AT_bank_int[197] = CreateDynamicObject(2752, 1408.8756, 1321.1407, 1500.8101,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[198] = CreateDynamicObject(2752, 1402.70361, 1321.17212, 1501.12720,   0.00000, 90.00000, 165.00000, 5, 5, -1, 200.00);
	AT_bank_int[199] = CreateDynamicObject(2268, 1402.13184, 1320.84680, 1501.14941,   0.00000, 90.00000, -15.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[176], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[177], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[178], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[179], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[180], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[181], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[182], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[183], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[184], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[185], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[186], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[187], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[188], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[189], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[190], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[191], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[192], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[193], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[194], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[195], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[196], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[197], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[198], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[199], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[176], 1, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[182], 1, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[187], 1, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[191], 1, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[195], 1, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[199], 1, 1223, "dynsigns", "white64", 0xFF000000);

	AT_bank_int[200] = CreateDynamicObject(2268, 1396.46143, 1327.44128, 1501.21692,   0.00000, 90.00000, 150.00000, 5, 5, -1, 200.00);
	AT_bank_int[201] = CreateDynamicObject(2268, 1396.46143, 1321.78735, 1501.21692,   0.00000, 90.00000, 150.00000, 5, 5, -1, 200.00);
	AT_bank_int[202] = CreateDynamicObject(2268, 1401.23767, 1321.61975, 1501.14941,   0.00000, 90.00000, -195.00000, 5, 5, -1, 200.00);
	AT_bank_int[203] = CreateDynamicObject(2268, 1403.02576, 1321.61975, 1501.14941,   0.00000, 90.00000, -195.00000, 5, 5, -1, 200.00);
	AT_bank_int[204] = CreateDynamicObject(2268, 1409.36072, 1321.61975, 1501.14941,   0.00000, 90.00000, -195.00000, 5, 5, -1, 200.00);
	AT_bank_int[205] = CreateDynamicObject(2268, 1407.43774, 1321.61975, 1501.14941,   0.00000, 90.00000, -195.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[200], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[201], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[202], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[203], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[204], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[205], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[200], 1, 1223, "dynsigns", "white64", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[201], 1, 1223, "dynsigns", "white64", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[202], 1, 1223, "dynsigns", "white64", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[203], 1, 1223, "dynsigns", "white64", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[204], 1, 1223, "dynsigns", "white64", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[205], 1, 1223, "dynsigns", "white64", 0xFFBCE4FA);

	AT_bank_int[206] = CreateDynamicObject(19327,1404.632,1320.701,1500.546,0.000,0.000,0.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[206], 0, "2",  120, "Ariel", 140, 0, -6760456, 0, 0);
	AT_bank_int[207] = CreateDynamicObject(19327,1409.574,1312.207,1500.585,-90.000,133.699,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[207], 0, "(",  120, "Ariel", 130, 0, -4397830, 0, 0);
	AT_bank_int[208] = CreateDynamicObject(19327,1402.776,1320.697,1500.545,0.000,0.000,0.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[208], 0, "1", 120, "Ariel", 140, 0, -6760456, 0, 0);
	AT_bank_int[209] = CreateDynamicObject(19327,1408.976,1320.654,1500.546,0.000,0.000,0.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[209], 0, "3",  120, "Ariel", 140, 0, -6760456, 0, 0);
	AT_bank_int[210] = CreateDynamicObject(19327,1410.887,1320.659,1500.558,0.000,0.000,0.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[210], 0, "4",  120, "Ariel", 140, 0, -6760456, 0, 0);
	AT_bank_int[211] = CreateDynamicObject(19327,1402.328,1312.014,1500.584,-90.000,38.800,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[211], 0, "(",  120, "Ariel", 130, 0, -4397830, 0, 0);
	AT_bank_int[212] = CreateDynamicObject(19327,1395.937,1321.530,1501.186,0.000,0.000,150.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[212], 0, "BANCO",  140, "Ariel", 35, 1, -7548425, 0, 1);
	AT_bank_int[213] = CreateDynamicObject(19327,1395.923,1327.193,1501.194,0.000,0.000,150.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[213], 0, "BANCO",  140, "Ariel", 35, 1, -7548425, 0, 1);
	AT_bank_int[214] = CreateDynamicObject(19327,1399.911,1321.478,1500.537,0.000,0.000,-195.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[214], 0, "BANCO",  140, "Ariel", 35, 1, -7548425, 0, 0);
	AT_bank_int[215] = CreateDynamicObject(19327,1402.589,1321.241,1501.117,0.000,0.000,-195.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[215], 0, "BANCO",  140, "Ariel", 35, 1, -7548425, 0, 1);
	AT_bank_int[216] = CreateDynamicObject(19327,1406.983,1321.245,1501.133,0.000,0.000,-195.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[216], 0, "BANCO",  140, "Ariel", 35, 1, -7548425, 0, 1);
	AT_bank_int[217] = CreateDynamicObject(19327,1408.898,1321.248,1501.131,0.000,0.000,-195.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[217], 0, "BANCO",  140, "Ariel", 35, 1, -7548425, 0, 1);

	AT_bank_int[218] = CreateDynamicObject(19443, 1399.62415, 1322.05505, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[219] = CreateDynamicObject(19443, 1400.97107, 1322.05505, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[220] = CreateDynamicObject(19443, 1402.31799, 1322.05505, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[221] = CreateDynamicObject(19443, 1403.66504, 1322.05505, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[222] = CreateDynamicObject(19443, 1405.01196, 1322.05505, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[223] = CreateDynamicObject(19443, 1406.35901, 1322.05505, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[224] = CreateDynamicObject(19443, 1407.70605, 1322.05505, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[225] = CreateDynamicObject(19443, 1409.05310, 1322.05505, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[226] = CreateDynamicObject(19443, 1410.40015, 1322.05505, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[227] = CreateDynamicObject(19443, 1400.21631, 1311.75281, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[228] = CreateDynamicObject(19443, 1401.56335, 1311.75281, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[229] = CreateDynamicObject(19443, 1402.91040, 1311.75281, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[230] = CreateDynamicObject(19443, 1404.25745, 1311.75281, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[231] = CreateDynamicObject(19443, 1405.60437, 1311.75281, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[232] = CreateDynamicObject(19443, 1406.95142, 1311.75281, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[233] = CreateDynamicObject(19443, 1408.29834, 1311.75281, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[234] = CreateDynamicObject(19443, 1409.64526, 1311.75281, 1505.27534,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[218], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[219], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[220], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[221], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[222], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[223], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[224], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[225], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[226], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[227], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[228], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[229], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[230], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[231], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[232], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[233], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[234], 0, 1223, "dynsigns", "white64", 0xFFFFFFFF);

	AT_bank_int[235] = CreateDynamicObject(19444, 1399.60815, 1322.03906, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[236] = CreateDynamicObject(19444, 1399.64014, 1322.07104, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[237] = CreateDynamicObject(19444, 1400.23059, 1311.76746, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[238] = CreateDynamicObject(19444, 1400.19849, 1311.74329, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[239] = CreateDynamicObject(19444, 1400.95520, 1322.03906, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[240] = CreateDynamicObject(19444, 1403.64917, 1322.03906, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[241] = CreateDynamicObject(19444, 1402.30225, 1322.03906, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[242] = CreateDynamicObject(19444, 1404.99622, 1322.03906, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[243] = CreateDynamicObject(19444, 1406.34314, 1322.03906, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[244] = CreateDynamicObject(19444, 1407.69006, 1322.03906, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[245] = CreateDynamicObject(19444, 1409.03711, 1322.03906, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[246] = CreateDynamicObject(19444, 1410.38416, 1322.03906, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[247] = CreateDynamicObject(19444, 1400.98706, 1322.07104, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[248] = CreateDynamicObject(19444, 1402.33411, 1322.07104, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[249] = CreateDynamicObject(19444, 1403.68115, 1322.07104, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[250] = CreateDynamicObject(19444, 1405.02820, 1322.07104, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[251] = CreateDynamicObject(19444, 1406.37524, 1322.07104, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[252] = CreateDynamicObject(19444, 1407.72217, 1322.07104, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[253] = CreateDynamicObject(19444, 1409.06921, 1322.07104, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[254] = CreateDynamicObject(19444, 1410.41626, 1322.07104, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[255] = CreateDynamicObject(19444, 1401.57764, 1311.76746, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[256] = CreateDynamicObject(19444, 1401.54553, 1311.74329, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[257] = CreateDynamicObject(19444, 1402.89246, 1311.74329, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[258] = CreateDynamicObject(19444, 1402.92456, 1311.76746, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[259] = CreateDynamicObject(19444, 1404.27161, 1311.76746, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[260] = CreateDynamicObject(19444, 1404.23950, 1311.74329, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[261] = CreateDynamicObject(19444, 1405.58655, 1311.74329, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[262] = CreateDynamicObject(19444, 1405.61865, 1311.76746, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[263] = CreateDynamicObject(19444, 1406.93347, 1311.74329, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[264] = CreateDynamicObject(19444, 1406.96570, 1311.76746, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[265] = CreateDynamicObject(19444, 1408.28052, 1311.74329, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[266] = CreateDynamicObject(19444, 1408.31274, 1311.76746, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[267] = CreateDynamicObject(19444, 1409.65967, 1311.76746, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[268] = CreateDynamicObject(19444, 1409.62744, 1311.74329, 1505.27942,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[235], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[236], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[237], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[238], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[239], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[240], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[241], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[242], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[243], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[244], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[245], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[246], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[247], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[248], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[249], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[250], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[251], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[252], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[253], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[254], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[255], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[256], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[257], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[258], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[259], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[260], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[261], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[262], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[263], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[264], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[265], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[266], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[267], 0, 1223, "dynsigns", "white64", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[268], 0, 1223, "dynsigns", "white64", 0xFF000000);

	AT_bank_int[269] = CreateDynamicObject(19327,1408.101,1310.651,1502.122,0.000,73.999,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[269], 0,"(",  130, "Ariel", 199, 0, -9591092, 0, 1);
	AT_bank_int[270] = CreateDynamicObject(19327,1406.402,1310.648,1502.151,0.000,0.000,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[270], 0, "BANCO",  130, "Ariel", 140, 1, -9591092, 0, 1);
	AT_bank_int[271] = CreateDynamicObject(19327,1407.198,1310.647,1501.959,0.000,-17.400,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[271], 0, "(",  130, "Ariel", 35, 0, -9591092, 0, 0);
	AT_bank_int[272] = CreateDynamicObject(19327,1408.430,1310.648,1502.225,0.000,29.300,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[272],  0,"(",  130, "Ariel", 38, 0, -9591092, 0, 1);
	AT_bank_int[273] = CreateDynamicObject(19327,1408.366,1310.647,1502.266,0.000,75.399,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[273], 0, "(",  130, "Ariel", 35, 0, -9591092, 0, 1);
	AT_bank_int[274] = CreateDynamicObject(19327,1408.285,1310.645,1502.351,0.000,24.700,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[274], 0, "(",  130, "Ariel", 38, 0, -9591092, 0, 1);
	AT_bank_int[275] = CreateDynamicObject(19327,1408.177,1310.645,1502.404,0.000,85.000,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[275], 0, "(",  130, "Ariel", 46, 0, -9591092, 0, 1);
	AT_bank_int[276] = CreateDynamicObject(19327,1408.063,1310.645,1502.323,0.000,157.600,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[276],  0,"(",  130, "Ariel", 38, 0, -9591092, 0, 1);
	AT_bank_int[277] = CreateDynamicObject(19327,1407.996,1310.644,1502.274,0.000,84.299,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[277], 0, "(",  130, "Ariel", 26, 0, -9591092, 0, 1);
	AT_bank_int[278] = CreateDynamicObject(19327,1407.931,1310.648,1502.238,0.000,135.099,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[278], 0, "(",  130, "Ariel", 32, 0, -9591092, 0, 1);
	AT_bank_int[279] = CreateDynamicObject(19327,1407.910,1310.648,1502.185,0.000,168.099,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[279], 0, "(",  130, "Ariel", 26, 0, -9591092, 0, 1);
	AT_bank_int[280] = CreateDynamicObject(19327,1404.164,1310.648,1502.143,0.000,0.000,180.000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterialText(AT_bank_int[280], 0, "LS",  130, "Ariel", 140, 0, -9591092, 0, 1);

	AT_bank_int[281] = CreateDynamicObject(19443, 1404.47388, 1310.55396, 1502.10974,   90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[282] = CreateDynamicObject(19443, 1407.69995, 1310.55200, 1502.10974,   90.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[281], 0, 1223, "dynsigns", "white64", 0xFFBCE4FA);
	SetDynamicObjectMaterial( AT_bank_int[282], 0, 1223, "dynsigns", "white64", 0xFFBCE4FA);

	AT_bank_int[283] = CreateDynamicObject(19444, 1409.51624, 1308.96753, 1502.10974,   90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[284] = CreateDynamicObject(19444, 1402.69995, 1308.96753, 1502.10974,   90.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[285] = CreateDynamicObject(19444, 1404.36157, 1309.91602, 1502.85925,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[286] = CreateDynamicObject(19444, 1407.85596, 1309.91602, 1502.85925,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[287] = CreateDynamicObject(19444, 1407.85596, 1309.91602, 1501.31616,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[288] = CreateDynamicObject(19444, 1404.36157, 1309.91602, 1501.31616,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[283], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[284], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[285], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[286], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[287], 0, 10226, "sfeship1", "CJ_WOOD5", 0);
	SetDynamicObjectMaterial( AT_bank_int[288], 0, 10226, "sfeship1", "CJ_WOOD5", 0);

	AT_bank_int[292] = CreateDynamicObject(19089, 1412.64795, 1315.85596, 1502.58105,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[293] = CreateDynamicObject(19089, 1412.64795, 1315.83801, 1502.58105,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[294] = CreateDynamicObject(1566, 1412.68774, 1315.84473, 1501.10034,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[295] = CreateDynamicObject(1566, 1412.68774, 1314.26196, 1501.10034,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	AT_bank_int[296] = CreateDynamicObject(2040, 1412.62488, 1315.81836, 1502.68420,   0.00000, 90.00000, 0.00000, 5, 5, -1, 200.00);
	AT_bank_int[297] = CreateDynamicObject(1854, 1412.67542, 1315.82080, 1502.66687,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	SetDynamicObjectMaterial( AT_bank_int[297], 0, 2360, "shopping_acc", "white", 0xFFCC0000);
	SetDynamicObjectMaterial( AT_bank_int[296], 0, 2360, "shopping_acc", "white", 0xFF000000);
	SetDynamicObjectMaterial( AT_bank_int[292], 0, 2360, "shopping_acc", "white", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[293], 0, 2360, "shopping_acc", "white", 0xFFFFFFFF);
	SetDynamicObjectMaterial( AT_bank_int[294], 0, 19325, "lsmall_shops", "lsmall_window01", 0);
	SetDynamicObjectMaterial( AT_bank_int[295], 0, 19325, "lsmall_shops", "lsmall_window01", 0);

	CreateDynamicObject(1886, 1409.31372, 1323.80005, 1503.57764,   20.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1886, 1407.03870, 1323.80005, 1503.57764,   20.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1886, 1402.94373, 1323.80005, 1503.57764,   20.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(1886, 1400.66870, 1323.80005, 1503.57764,   20.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2269, 1406.17676, 1323.37561, 1501.53857,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2266, 1399.11719, 1311.73401, 1502.31775,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2270, 1392.39514, 1319.99866, 1501.76013,   0.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	CreateDynamicObject(2265, 1393.06165, 1328.87427, 1501.90894,   0.00000, 0.00000, 0.00000, 5, 5, -1, 200.00);
    CreateDynamicObject(1965, 1389.72009, 1318.92175, 1497.80042,   180.00000, 0.00000, 90.00000, 5, 5, -1, 200.00);
	
	Unused_Object = CreateDynamicObject(19377, 1097.182006, 1529.329956, 1451.389160, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(2205, 1102.147949, 1530.402954, 1451.291992, 0.000000, 0.000000, -270.002014, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(2205, 1107.739013, 1530.402954, 1451.291992, 0.000000, 0.000000, -270.002014, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(19377, 1107.677978, 1529.344970, 1451.389160, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19377, 1103.178955, 1519.727050, 1451.389160, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19375, 1092.203979, 1534.812988, 1451.389160, 0.000000, 180.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(2205, 1106.759033, 1530.422973, 1451.291992, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(2205, 1104.458984, 1530.422973, 1451.291992, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(18762, 1107.744995, 1530.430053, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(19834, 1104.816040, 1515.057006, 1454.049804, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1105.916015, 1515.057006, 1452.912109, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19375, 1096.818969, 1534.105957, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(18762, 1107.744995, 1531.410034, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1106.744995, 1530.430053, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1105.755004, 1530.430053, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1104.765991, 1530.430053, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(19375, 1106.438964, 1534.105957, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1111.267944, 1534.105957, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19834, 1103.725952, 1515.057006, 1452.912109, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19089, 1104.803955, 1515.053955, 1454.009765, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(18762, 1102.584960, 1534.500000, 1453.872070, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(18762, 1107.084960, 1534.500000, 1453.872070, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.373046, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.373046, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1099.042968, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1099.042968, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1096.723022, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1096.723022, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1094.392944, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1094.392944, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.142944, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.104003, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1117.884033, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1117.884033, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1115.553955, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1115.553955, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1113.234008, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1113.234008, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1110.904052, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1110.904052, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1108.654052, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1108.614013, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1103.922973, 1534.008056, 1452.382812, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1105.593994, 1534.008056, 1452.382812, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19375, 1092.197021, 1521.178955, 1451.389160, 0.000000, 180.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1096.818969, 1524.526000, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1101.557006, 1519.779052, 1451.389160, 0.000000, 180.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19357, 1104.828002, 1518.519042, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1104.828002, 1521.718017, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1104.828002, 1524.907958, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1104.828002, 1528.057983, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1101.338012, 1528.057983, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1097.848022, 1528.057983, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1094.396972, 1528.057983, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19375, 1107.828002, 1519.779052, 1451.389160, 0.000000, 180.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19377, 1103.178955, 1512.027954, 1451.546875, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19357, 1104.828002, 1515.307983, 1451.551757, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19377, 1103.178955, 1511.646972, 1451.714843, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19357, 1104.828002, 1514.887939, 1451.721191, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19375, 1104.838012, 1514.958984, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19834, 1105.593994, 1534.008056, 1452.069824, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1104.244018, 1534.008056, 1452.069824, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(18762, 1103.545043, 1536.510986, 1455.880859, -90.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(18762, 1104.515014, 1536.510986, 1455.880859, -90.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(18762, 1105.484985, 1536.510986, 1455.880859, -90.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(18762, 1106.465942, 1536.510986, 1455.880859, -90.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19357, 1108.296997, 1528.057983, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1111.797973, 1528.057983, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19377, 1118.167968, 1529.344970, 1451.389160, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19359, 1104.880981, 1534.087036, 1454.661132, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterialText(Unused_Object, 0, "BANCO", 140, "Times New Roman", 160, 1, -13619152, 0, 1);
	Unused_Object = CreateDynamicObject(19359, 1104.880981, 1534.087036, 1453.852050, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterialText(Unused_Object, 0, "G", 140, "Webdings", 120, 0, -13619152, 0, 1);
	Unused_Object = CreateDynamicObject(19359, 1104.880981, 1534.087036, 1453.092773, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterialText(Unused_Object, 0, "San Fierro", 140, "Times New Roman", 100, 1, -13619152, 0, 1);
	Unused_Object = CreateDynamicObject(19375, 1112.578979, 1524.526000, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1122.218017, 1524.526000, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19834, 1118.173950, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1118.173950, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1115.843994, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1115.843994, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1113.524047, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1113.524047, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1111.193969, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1111.193969, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1108.943969, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1108.905029, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(18762, 1108.186035, 1524.140014, 1453.872070, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(18762, 1101.194946, 1524.140014, 1453.872070, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1523.412963, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1523.412963, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1521.082031, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1521.083007, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1518.760986, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1518.760986, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1516.432983, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1516.432983, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1514.182006, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1107.718994, 1514.142944, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1523.412963, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1523.412963, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1521.082031, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1521.083007, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1518.760986, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1518.760986, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1516.432983, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1516.432983, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1514.182006, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.667968, 1514.142944, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1108.233032, 1515.087036, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1108.233032, 1515.087036, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1105.902954, 1515.087036, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1105.902954, 1515.087036, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1103.582031, 1515.087036, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1103.582031, 1515.087036, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.254028, 1515.088012, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1101.254028, 1515.087036, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1099.003051, 1515.087036, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1098.963012, 1515.087036, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1100.213012, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1100.213012, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1097.883056, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1097.883056, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1095.562988, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1095.562988, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1093.233032, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1093.234008, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1090.983032, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1090.943969, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19379, 1104.180053, 1519.791015, 1456.340820, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19379, 1104.180053, 1529.411010, 1456.340820, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19379, 1093.729980, 1529.411010, 1456.340820, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19375, 1092.207031, 1528.389038, 1459.714843, 0.000000, 180.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(18762, 1103.775024, 1530.430053, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1527.093994, 1451.541992, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1529.375000, 1451.541992, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1529.375000, 1454.417968, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1527.125000, 1454.417968, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1525.974975, 1453.579101, 0.000000, -90.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1525.974975, 1452.459960, 0.000000, -90.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1529.925048, 1452.459960, 0.000000, -90.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1529.925048, 1453.859863, 0.000000, -90.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1526.734985, 1453.299804, 0.000000, -90.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1526.734985, 1452.399902, 0.000000, -90.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1529.265014, 1452.399902, 0.000000, -90.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1529.265014, 1453.588867, 0.000000, -90.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1527.926025, 1453.970214, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1092.287963, 1528.105957, 1453.970214, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19379, 1114.640014, 1529.411010, 1456.340820, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(18762, 1102.796020, 1530.430053, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1102.114990, 1530.430053, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1102.114990, 1531.420043, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(2205, 1101.167968, 1531.774047, 1451.291992, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(2205, 1099.438964, 1531.774047, 1451.286132, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(18762, 1101.135009, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1100.145019, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1099.145019, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1098.155029, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1098.086059, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(2205, 1098.098022, 1532.642944, 1451.291992, 0.000000, 0.000000, -270.002014, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(18762, 1098.086059, 1533.661010, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1098.086059, 1532.720947, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(2205, 1111.447998, 1531.774047, 1451.291992, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(2205, 1109.718994, 1531.774047, 1451.286132, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(18762, 1111.415039, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1110.425048, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1109.426025, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1108.435058, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1111.456054, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(2205, 1111.468994, 1532.642944, 1451.291992, 0.000000, 0.000000, 89.997001, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19004, "roundbuilding1", "stonewalltile4", -1);
	Unused_Object = CreateDynamicObject(18762, 1111.456054, 1533.661010, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1111.456054, 1532.720947, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1102.115966, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(18762, 1107.745971, 1531.781005, 1449.695800, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", -1);
	Unused_Object = CreateDynamicObject(19089, 1101.791992, 1530.000976, 1452.791015, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	Unused_Object = CreateDynamicObject(19089, 1104.022949, 1530.000976, 1452.791015, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	Unused_Object = CreateDynamicObject(19089, 1105.822998, 1530.000976, 1452.791015, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	Unused_Object = CreateDynamicObject(19089, 1108.053955, 1530.000976, 1452.791015, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	Unused_Object = CreateDynamicObject(19327, 1102.027954, 1530.003051, 1452.647949, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterialText(Unused_Object, 0, "1.", 140, "Comic Sans MS", 100, 1, -1, 0, 1);
	Unused_Object = CreateDynamicObject(19327, 1106.057983, 1530.003051, 1452.647949, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterialText(Unused_Object, 0, "2.", 140, "Comic Sans MS", 100, 1, -1, 0, 1);
	Unused_Object = CreateDynamicObject(2263, 1103.194946, 1530.864990, 1452.324218, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -12566464);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2263, 1103.155029, 1529.884033, 1452.324218, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19348, 1103.182983, 1530.359008, 1451.792968, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2040, 1103.185058, 1530.375976, 1452.121093, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19808, 1103.212036, 1530.640991, 1452.235839, 0.000000, 0.000000, -180.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	Unused_Object = CreateDynamicObject(2263, 1106.805053, 1530.864990, 1452.324218, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -12566464);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2263, 1106.765014, 1529.884033, 1452.324218, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19348, 1106.792968, 1530.359008, 1451.792968, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2040, 1106.795043, 1530.375976, 1452.121093, 0.000000, 0.000000, -89.999000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19808, 1106.822021, 1530.640991, 1452.235839, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	Unused_Object = CreateDynamicObject(2263, 1109.665039, 1532.185058, 1452.324218, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -12566464);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2263, 1109.625000, 1531.203979, 1452.324218, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19348, 1109.652954, 1531.677978, 1451.792968, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2040, 1109.655029, 1531.696044, 1452.121093, 0.000000, 0.000000, -89.999000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19808, 1109.682006, 1531.959960, 1452.235839, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	Unused_Object = CreateDynamicObject(2263, 1099.214965, 1532.185058, 1452.324218, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -12566464);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2263, 1099.175048, 1531.203979, 1452.324218, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19348, 1099.203002, 1531.677978, 1451.792968, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2040, 1099.203979, 1531.696044, 1452.121093, 0.000000, 0.000000, -89.999000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19808, 1099.232055, 1531.959960, 1452.235839, 0.000000, 0.000000, -179.998992, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	Unused_Object = CreateDynamicObject(19357, 1115.296997, 1528.057983, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1115.296997, 1531.267944, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1118.787963, 1531.267944, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1118.787963, 1528.057006, 1451.395019, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19375, 1121.708007, 1529.244995, 1451.389160, 0.000000, 180.000000, -180.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19379, 1125.089965, 1529.411010, 1456.340820, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19375, 1123.048950, 1534.105957, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1118.188964, 1534.114990, 1458.915039, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19834, 1120.173950, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.894042, 1534.008056, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1120.183959, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.573974, 1534.008056, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(1714, 1106.678955, 1531.660034, 1451.443847, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	Unused_Object = CreateDynamicObject(1714, 1103.198974, 1531.660034, 1451.443847, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	Unused_Object = CreateDynamicObject(1714, 1100.159057, 1532.979980, 1451.443847, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	Unused_Object = CreateDynamicObject(1714, 1109.678955, 1532.979980, 1451.443847, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	Unused_Object = CreateDynamicObject(627, 1108.197021, 1525.139038, 1453.235839, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 1, 4604, "buildblk555", "gm_labuld5_b", -1);
	Unused_Object = CreateDynamicObject(627, 1101.146972, 1525.139038, 1453.235839, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 1, 4604, "buildblk555", "gm_labuld5_b", -1);
	Unused_Object = CreateDynamicObject(1722, 1098.067016, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1097.456054, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1096.845947, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1096.234985, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1095.625000, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1095.015014, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(18762, 1117.214965, 1529.300048, 1453.872070, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(18762, 1117.135009, 1529.369995, 1449.176757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(18762, 1117.135009, 1529.219970, 1449.176757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(18762, 1117.295043, 1529.219970, 1449.176757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(18762, 1117.295043, 1529.369995, 1449.176757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(1722, 1113.677001, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1113.067016, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1112.456054, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1111.844970, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1111.234985, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(1722, 1110.625000, 1524.668945, 1451.480957, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 9514, "711_sfw", "ws_carpark2", -8355712);
	Unused_Object = CreateDynamicObject(18762, 1117.135009, 1529.369995, 1458.500000, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(18762, 1117.135009, 1529.219970, 1458.500000, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(18762, 1117.295043, 1529.219970, 1458.500000, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(18762, 1117.295043, 1529.369995, 1458.500000, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1533.822998, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1533.822998, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1531.493041, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1531.493041, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1529.171997, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1529.171997, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1526.843017, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1526.843994, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1524.912963, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1121.540039, 1524.762939, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1533.822998, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1533.822998, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1531.493041, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1531.493041, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1529.171997, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1529.171997, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1526.843017, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1526.843994, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1524.912963, 1455.801757, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1092.319946, 1524.762939, 1455.453125, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19087, 1104.277954, 1529.932006, 1452.070800, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19087, 1104.968994, 1529.932006, 1451.953125, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19087, 1105.659057, 1529.932006, 1451.845214, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19087, 1106.280029, 1529.932006, 1451.726074, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19087, 1107.119995, 1529.932006, 1451.617187, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19087, 1108.191040, 1529.932006, 1451.527832, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2773, 1113.478027, 1531.224975, 1451.827148, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2773, 1120.557983, 1531.224975, 1451.827148, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2773, 1120.557983, 1527.824951, 1451.827148, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2773, 1117.968017, 1526.415039, 1451.827148, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2773, 1114.927001, 1526.415039, 1451.827148, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2773, 1114.927001, 1532.964965, 1451.827148, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2773, 1119.187988, 1532.964965, 1451.827148, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2161, 1094.834960, 1534.017944, 1451.475097, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19597, "lsbeachside", "carpet19-128x128", 0);
	SetDynamicObjectMaterial(Unused_Object, 2, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2161, 1096.125000, 1534.017944, 1451.475097, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19597, "lsbeachside", "carpet19-128x128", 0);
	SetDynamicObjectMaterial(Unused_Object, 2, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2608, 1093.322998, 1533.890991, 1452.067871, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 10765, "airportgnd_sfse", "white", -16777216);
	SetDynamicObjectMaterial(Unused_Object, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(Unused_Object, 3, 10765, "airportgnd_sfse", "white", -8355712);
	SetDynamicObjectMaterial(Unused_Object, 5, 10765, "airportgnd_sfse", "white", -13619152);
	Unused_Object = CreateDynamicObject(2811, 1107.212036, 1515.432983, 1451.782226, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(2811, 1102.052001, 1515.432983, 1451.782226, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(2811, 1094.212036, 1524.891967, 1451.394042, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19354, 1116.024047, 1535.636962, 1452.108886, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", 0);
	Unused_Object = CreateDynamicObject(19354, 1118.314941, 1535.636962, 1452.108886, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", 0);
	Unused_Object = CreateDynamicObject(19834, 1120.364013, 1524.637939, 1455.801757, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(19834, 1120.364013, 1524.637939, 1455.453125, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	Unused_Object = CreateDynamicObject(2811, 1114.572021, 1524.891967, 1451.394042, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(2811, 1121.281982, 1524.891967, 1451.394042, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19377, 1118.167968, 1539.875976, 1450.725097, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19377, 1118.167968, 1529.586059, 1451.220214, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19377, 1118.167968, 1529.855957, 1451.050781, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19377, 1118.167968, 1530.086059, 1450.882812, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19377, 1118.167968, 1530.286010, 1450.725097, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19377, 1118.167968, 1538.865966, 1453.752929, 0.000000, 90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	Unused_Object = CreateDynamicObject(19375, 1118.808959, 1534.076049, 1446.208984, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1118.808959, 1534.316040, 1446.049804, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1118.808959, 1534.586059, 1445.880859, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1118.808959, 1534.816040, 1445.702148, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1123.048950, 1537.186035, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1111.279052, 1537.186035, 1451.389160, 0.000000, 180.000000, -90.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1122.409057, 1539.526000, 1451.389160, 0.000000, 180.000000, -180.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1112.999023, 1540.385986, 1451.389160, 0.000000, 180.000000, -180.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(19375, 1117.668945, 1543.456054, 1451.389160, 0.000000, 180.000000, -270.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 9582, "fort_sfw", "mallfloor2", -1);
	Unused_Object = CreateDynamicObject(948, 1108.586059, 1530.901977, 1451.193847, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(Unused_Object, 3, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(948, 1101.275024, 1530.901977, 1451.193847, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(Unused_Object, 3, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(948, 1112.224975, 1533.682006, 1451.193847, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19595, "lsappartments1", "carpet4-256x256", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(Unused_Object, 3, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1119.386962, 1540.266967, 1450.741210, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(19357, 1115.887939, 1540.266967, 1450.741210, 0.000000, -90.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19597, "lsbeachside", "carpet19-128x128", 0);
	Unused_Object = CreateDynamicObject(2161, 1113.073974, 1537.748046, 1450.808105, 0.000000, 0.000000, -270.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19597, "lsbeachside", "carpet19-128x128", 0);
	SetDynamicObjectMaterial(Unused_Object, 2, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(2161, 1113.073974, 1539.208007, 1450.808105, 0.000000, 0.000000, -270.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, -1, "none", "none", -1);
	SetDynamicObjectMaterial(Unused_Object, 1, 19597, "lsbeachside", "carpet19-128x128", 0);
	SetDynamicObjectMaterial(Unused_Object, 2, 10765, "airportgnd_sfse", "white", -16777216);
	Unused_Object = CreateDynamicObject(19857, 1114.941040, 1537.235961, 1452.020019, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19426, "all_walls", "officewallsnew1", -1);
	Unused_Object = CreateDynamicObject(19857, 1117.901000, 1537.235961, 1452.020019, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19426, "all_walls", "officewallsnew1", -1);
	Unused_Object = CreateDynamicObject(19857, 1114.941040, 1537.235961, 1454.507812, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19426, "all_walls", "officewallsnew1", -1);
	Unused_Object = CreateDynamicObject(19857, 1117.901000, 1537.235961, 1454.507812, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19426, "all_walls", "officewallsnew1", -1);
	Unused_Object = CreateDynamicObject(19857, 1117.931030, 1537.235961, 1454.469238, 0.000000, -180.000000, 0.000000, 10, 10, -1, 200.000000);
	SetDynamicObjectMaterial(Unused_Object, 0, 19426, "all_walls", "officewallsnew1", -1);
	Unused_Object = CreateDynamicObject(19466, 1104.833007, 1515.051025, 1453.029785, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(19466, 1104.833007, 1515.051025, 1451.095214, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(19325, 1092.279052, 1528.021972, 1453.011230, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(19466, 1102.906005, 1530.009033, 1451.819824, 0.000000, 0.000000, 90.000000, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(19466, 1106.937011, 1530.009033, 1451.819824, 0.000000, 0.000000, 89.999000, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(18756, 1094.176513, 1527.971801, 1453.418945, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(18757, 1094.176513, 1527.971801, 1453.418945, 0.000000, 0.000000, 0.000000, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(2165, 1115.512329, 1540.919311, 1450.821289, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(2183, 1121.595581, 1541.667724, 1450.761230, 0.000000, 0.000000, -90.000000, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(1714, 1114.547119, 1540.414306, 1450.818847, 0.000000, 0.000000, 75.783752, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(1722, 1116.942993, 1539.820556, 1450.839843, 0.000000, 0.000000, 78.193962, 10, 10, -1, 200.000000);
	Unused_Object = CreateDynamicObject(1722, 1116.891235, 1541.153076, 1450.839843, 0.000000, 0.000000, 118.437599, 10, 10, -1, 200.000000);
	
	//BANK INTERIOR LAS VENTURAS BY MrBurn
	CreateDynamicObject(19450, 2695.84863, -604.27930, -70.91602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2677.42285, -603.17480, -70.91602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2696.12207, -603.17969, -70.91602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2695.84863, -617.67480, -70.91602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2696.16699, -618.56934, -70.91602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2672.87988, -610.83887, -70.91602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2686.55273, -618.55371, -70.91602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2677.49609, -617.57129, -70.91602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2677.49609, -604.21387, -70.91602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2686.52344, -603.17480, -70.91602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1557, 2672.90430, -609.29651, -72.66602,   0.00000, 0.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1557, 2672.90601, -612.32324, -72.66602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2672.76270, -612.71582, -70.91602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2672.76270, -608.95410, -70.91602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2678.42676, -618.55371, -70.91602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2679.19238, -618.47656, -68.36328,   270.00000, 179.99451, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19174, 2675.27832, -612.62988, -70.60938,   0.00000, 0.00000, 179.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(19172, 2675.16797, -609.04004, -70.61328,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2631, 2662.34863, -686.52148, -72.82617,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(14867, 2691.34180, -618.17676, -71.13086,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2700.84668, -607.29883, -70.91602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2700.85645, -616.92383, -70.91602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(18092, 2691.92285, -610.99512, -72.15430,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1714, 2679.70020, -605.83905, -72.66602,   0.00000, 0.00000, 88.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2675.82715, -612.71582, -68.36328,   270.00000, 0.00000, 269.99847, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2682.52930, -618.47656, -68.36328,   270.00000, 179.99451, 269.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2686.00537, -618.47656, -68.36328,   270.00000, 180.00012, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2689.48999, -618.47656, -68.36328,   270.00000, 179.99957, 269.99951, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2692.98120, -618.47656, -68.36328,   270.00000, 179.99957, 269.99951, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2696.44971, -618.47656, -68.36328,   270.00000, 179.99963, 269.99951, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2699.94482, -618.47424, -68.36328,   270.00000, 179.99451, 269.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2682.61621, -603.18066, -68.36328,   270.00000, 180.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2679.11328, -603.18066, -68.36328,   270.00000, 180.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2700.11304, -603.18066, -68.36328,   270.00000, 180.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2686.11426, -603.18066, -68.36328,   270.00000, 180.00153, 270.00146, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2689.61230, -603.18066, -68.36328,   270.00000, 179.99451, 269.98901, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2693.11426, -603.18066, -68.36328,   270.00000, 180.00153, 270.00146, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2696.61035, -603.18066, -68.36328,   270.00000, 179.99451, 269.98901, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2700.84961, -605.00305, -68.36328,   270.00000, 180.00000, 180.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2700.85254, -611.99805, -68.36328,   270.00000, 179.99451, 179.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2700.85254, -615.44781, -68.36328,   270.00000, 179.99963, 179.99963, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2700.85254, -618.92969, -68.36328,   270.00000, 179.99854, 179.99854, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2700.84961, -608.50098, -68.36328,   270.00000, 179.99451, 179.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 3051.79150, -407.22601, -68.48828,   270.00000, 179.99451, 269.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2675.77393, -608.84857, -68.36328,   270.00000, 179.99451, 269.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2672.39111, -612.71960, -68.36328,   270.00000, 180.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2672.33179, -608.84857, -68.36328,   270.00000, 179.99854, 269.99847, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2677.48828, -607.17816, -68.36328,   270.00000, 179.99988, 179.99988, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2677.48828, -603.69281, -68.36328,   270.00000, 179.99854, 179.99854, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2672.87988, -608.78357, -68.36328,   270.00000, 180.00153, 180.00153, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2672.87988, -612.26465, -68.36328,   270.00000, 179.99451, 179.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2677.49609, -614.49811, -68.36328,   270.00000, 179.99854, 179.99854, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2677.49609, -617.97363, -68.36328,   270.00000, 179.99451, 179.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2678.88086, -612.62891, -70.99414,   0.00000, 0.00000, 179.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2685.01855, -612.62891, -71.00000,   0.00000, 0.00000, 179.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2687.22852, -619.20703, -71.00000,   0.00000, 0.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2687.22852, -614.84375, -71.00000,   0.00000, 0.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2685.01855, -612.62891, -71.00000,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2687.22852, -614.84375, -71.00000,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2687.22852, -619.20703, -71.00391,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2678.88159, -612.62921, -71.00000,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2678.89941, -609.04199, -71.00000,   0.00000, 0.00000, 180.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2678.89941, -609.04199, -71.00000,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2678.89941, -609.04199, -71.00000,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2685.01904, -609.04199, -71.00000,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2687.21680, -602.44336, -71.00000,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2685.01855, -609.04199, -71.00000,   0.00000, 0.00000, 179.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2687.22437, -606.84473, -71.00000,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2687.22363, -606.84473, -71.00000,   0.00000, 0.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1649, 2687.22583, -602.45819, -71.00000,   0.00000, 0.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2001, 2695.45703, -607.90753, -72.66602,   0.00000, 0.00000, 225.50000, -1, 15, -1, 200.0);
	CreateDynamicObject(2190, 2691.44531, -611.76758, -71.65430,   0.00000, 0.00000, 91.99951, -1, 15, -1, 200.0);
	CreateDynamicObject(2184, 2681.16211, -607.05597, -72.66016,   0.00000, 0.00000, 82.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1714, 2693.18774, -610.95612, -72.66602,   0.00000, 0.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2190, 2681.38403, -605.31439, -71.88477,   0.00000, 0.00000, 278.99951, -1, 15, -1, 200.0);
	CreateDynamicObject(1808, 2688.02051, -603.62262, -72.66602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1705, 2683.42407, -606.86835, -72.60547,   0.00000, 0.00000, 250.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1705, 2683.20264, -604.58282, -72.66602,   0.00000, 0.00000, 290.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2164, 2677.60645, -604.64294, -72.66602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2164, 2677.60645, -606.40503, -72.66602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2164, 2677.60645, -608.17670, -72.66602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19164, 2681.18115, -603.29529, -70.45117,   90.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2184, 2681.08105, -616.49609, -72.66016,   0.00000, 0.00000, 85.99548, -1, 15, -1, 200.0);
	CreateDynamicObject(2164, 2677.60938, -614.14160, -72.66602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2162, 2677.56006, -615.90485, -71.74609,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2163, 2677.59741, -615.90106, -72.66602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2164, 2677.60620, -617.67883, -72.66602,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1714, 2679.68945, -615.33936, -72.66602,   0.00000, 0.00000, 87.99500, -1, 15, -1, 200.0);
	CreateDynamicObject(2190, 2681.16650, -614.84247, -71.88477,   0.00000, 0.00000, 278.99231, -1, 15, -1, 200.0);
	CreateDynamicObject(1709, 2689.79028, -604.80200, -72.66211,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1702, 2686.67773, -605.21094, -72.66602,   0.00000, 0.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1703, 2686.67773, -614.49414, -72.66602,   0.00000, 0.00000, 270.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1704, 2683.47949, -614.03613, -72.66602,   0.00000, 0.00000, 289.99512, -1, 15, -1, 200.0);
	CreateDynamicObject(1704, 2683.61108, -616.32043, -72.60547,   0.00000, 0.00000, 250.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19173, 2691.50903, -603.28265, -70.34766,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(18718, 2689.73706, -507.10602, -71.52344,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2256, 2689.11987, -603.26965, -70.33984,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19175, 2694.38672, -603.26563, -70.33008,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19171, 2681.02026, -618.47382, -70.35547,   0.00000, 90.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19169, 2682.89380, -618.47382, -70.35547,   0.00000, 90.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19170, 2684.78442, -618.47382, -70.35547,   0.00000, 90.00000, 90.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2251, 2691.67139, -613.07312, -70.81055,   0.00000, 0.00000, 36.75000, -1, 15, -1, 200.0);
	CreateDynamicObject(2251, 2691.67139, -609.06049, -70.81055,   0.00000, 0.00000, 323.25000, -1, 15, -1, 200.0);
	CreateDynamicObject(1661, 2682.23926, -605.92383, -68.72852,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2026, 2682.23828, -605.93750, -68.41992,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2026, 2691.71338, -610.95526, -68.41211,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2026, 2682.26270, -615.62305, -68.43164,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1661, 2682.26074, -615.62207, -68.75977,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(1661, 2691.71167, -610.95477, -68.71289,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(2001, 2695.57715, -614.27441, -72.66602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(16010, 2702.68750, -605.55566, -60.00000,   0.00000, 179.99451, 179.99451, -1, 15, -1, 200.0);
	CreateDynamicObject(19379, 2682.63550, -613.79254, -72.74414,   0.00000, 90.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19379, 2682.63525, -604.15656, -72.74414,   0.00000, 90.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19379, 2693.13647, -604.15674, -72.74414,   0.00000, 90.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19379, 2693.13525, -613.78766, -72.74414,   0.00000, 90.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19379, 2703.63818, -607.68738, -72.74414,   0.00000, 90.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19379, 2703.63330, -617.31927, -72.74414,   0.00000, 90.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19379, 2672.13550, -610.15051, -72.74414,   0.00000, 90.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19450, 2695.89209, -610.97491, -70.91602,   0.00000, 0.00000, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2695.90088, -616.91455, -69.07490,   90.00000, 179.99960, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2695.90088, -613.41461, -69.07490,   90.00000, 179.99960, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2695.90088, -609.91461, -69.07490,   90.00000, 179.99960, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2695.90088, -606.41461, -69.07490,   90.00000, 179.99960, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19435, 2695.90088, -602.91461, -69.07490,   90.00000, 179.99960, 0.00000, -1, 15, -1, 200.0);
	CreateDynamicObject(19858, 2695.76221, -611.77655, -71.42399,   0.00000, 0.00000, 90.00000, -1, 15, -1, 200.0);

	//policia ls
	CreateDynamicObject(19126, 1544.69641, -1622.43372, 13.05470,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1544.69641, -1620.53772, 13.05470,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1544.69641, -1618.64172, 13.05470,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1544.69641, -1634.28369, 13.05470,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1544.69641, -1636.17969, 13.45328,   0.00000, 0.00000, 0.00000);

	//Policia sf
	CreateDynamicObject(973, -1701.18640, 694.82916, 24.62465,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(973, -1701.18640, 704.32922, 24.62470,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(973, -1701.18640, 713.82922, 24.62470,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(973, -1696.28479, 718.54956, 24.62470,   0.00000, 0.00000, 0.00000);


	// Taxi LS 
	CreateDynamicObject(19126, 1811.34326, -1898.09070, 13.08716,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1811.34326, -1896.09070, 13.08720,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1811.34326, -1894.09070, 12.91164,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1811.34326, -1885.35669, 12.91160,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1811.34326, -1883.60181, 13.08720,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1811.34326, -1882.08069, 13.08720,   0.00000, 0.00000, 0.00000);

	//Taxi LV
	CreateDynamicObject(8059, 1658.47620, 1303.34338, 13.21090,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1717.04956, 1299.83630, 10.33355,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1717.04956, 1297.03027, 10.33360,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1717.04956, 1294.14233, 10.33360,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1717.04956, 1309.53625, 10.33360,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1717.04956, 1298.47827, 10.33360,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, 1717.04956, 1295.56836, 10.33360,   0.00000, 0.00000, 0.00000);
	

	//Camioneros
	CreateDynamicObject(19126, -486.99551, -562.33020, 25.03777,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, -484.49551, -562.33020, 25.03780,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, -481.99551, -562.33020, 25.03780,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, -496.49551, -562.33020, 25.03780,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1508, -510.70068, -538.82001, 26.10739,   0.00000, 0.00000, 90.00000);

	// Interior Camioneros
	CreateDynamicObject(14612, 1285.12305, -11.30272, 1002.55237,   0.00000, 0.00000, 90.30498, -1, 18);
	CreateDynamicObject(14612, 1266.74963, -9.87934, 1002.55237,   0.00000, 0.00000, 90.30498, -1, 18);
	CreateDynamicObject(10231, 1280.02087, -0.73506, 1001.82019,   0.00000, 0.00000, 0.00000, -1, 18);
	CreateDynamicObject(10231, 1299.94922, 2.68807, 1006.17328,   0.00000, 0.00000, 0.00000, -1, 18);
	CreateDynamicObject(10231, 1255.35876, -27.79058, 1001.82227,   0.00000, 0.00000, 262.05930, -1, 18);
	CreateDynamicObject(10231, 1242.80920, -49.14617, 1006.28748,   0.00000, 0.00000, 262.05930, -1, 18);
	CreateDynamicObject(14612, 1264.27087, -42.04043, 1002.55237,   0.00000, 0.00000, 179.70186, -1, 18);
	CreateDynamicObject(14612, 1262.90320, -31.35233, 1002.55237,   0.00000, 0.00000, 179.70186, -1, 18);
	CreateDynamicObject(14612, 1261.36365, -40.46191, 1004.04388,   0.00000, 0.00000, 179.70186, -1, 18);
	CreateDynamicObject(14612, 1298.48987, -9.65936, 1002.55237,   0.00000, 0.00000, 90.30498, -1, 18);
	CreateDynamicObject(14612, 1295.60022, -12.82239, 1002.55237,   0.00000, 0.00000, 90.30498, -1, 18);
	CreateDynamicObject(14612, 1285.90088, -8.42085, 1004.62329,   0.00000, 0.00000, 90.30498, -1, 18);
	CreateDynamicObject(14612, 1257.22168, -61.05569, 1003.63049,   0.00000, 0.00000, 179.70186, -1, 18);
	CreateDynamicObject(14612, 1253.29663, -66.38022, 1005.42694,   0.00000, 0.00000, 179.70186, -1, 18);
	CreateDynamicObject(19325, 1297.49377, -60.93700, 1002.27350,   0.00000, 0.00000, 90.00000, -1, 18);
	CreateDynamicObject(19457, 1294.01965, -65.63230, 1003.08197,   0.00000, 0.00000, 0.00000, -1, 18);
	CreateDynamicObject(19457, 1300.69702, -65.61610, 1003.08197,   0.00000, 0.00000, 0.00000, -1, 18);
	CreateDynamicObject(18981, 1294.53027, -73.07288, 1005.25018,   0.00000, 90.00000, 0.00000, -1, 18);
	CreateDynamicObject(2959, 1298.16870, -60.89499, 1001.32788,   0.00000, 0.00000, 90.00000, -1, 18);
	CreateDynamicObject(2164, 1299.42688, -68.08530, 1001.36182,   0.00000, 0.00000, 180.00000, -1, 18);
	CreateDynamicObject(2167, 1297.64197, -68.12460, 1001.36029,   0.00000, 0.00000, 180.00000, -1, 18);
	CreateDynamicObject(19457, 1296.71130, -68.23150, 1003.08197,   0.00000, 0.00000, 90.00000, -1, 18);
	CreateDynamicObject(2008, 1296.59583, -65.86160, 1001.36609,   0.00000, 0.00000, 0.00000, -1, 18);
	CreateDynamicObject(1806, 1296.81079, -66.99750, 1001.35120,   0.00000, 0.00000, 335.99600, -1, 18);
	CreateDynamicObject(2309, 1296.51038, -64.56910, 1001.30048,   0.00000, 0.00000, 206.93300, -1, 18);
	CreateDynamicObject(1808, 1300.45959, -63.16458, 1001.30267,   0.00000, 0.00000, -90.00000, -1, 18);
	CreateDynamicObject(2687, 1300.51221, -63.66422, 1002.61273,   0.00000, 0.00000, -90.00000, -1, 18);
	CreateDynamicObject(19394, 1297.43677, -60.89015, 1003.02789,   0.00000, 0.00000, 90.00000, -1, 18);
	CreateDynamicObject(19325, 1297.49377, -60.93700, 1006.38245,   0.00000, 0.00000, 90.00000, -1, 18);
	
	//Fumigador
	CreateDynamicObject(3253, -1345.98474, -2195.13477, 22.59103,   0.00000, 0.00000, 105.97034);
	
	//Basurero
	CreateDynamicObject(3173, -1905.31494, -1758.43140, 20.62970,   0.00000, 0.00000, 123.07970);
	
	//Agricultor
	CreateDynamicObject(19636, 1565.74695, 32.16721, 23.98587,   0.00000, 0.00000, 3.21291);
	CreateDynamicObject(2762, 1566.41821, 32.23222, 23.54325,   0.00000, 0.00000, 2.61760);
	CreateDynamicObject(19637, 1566.51672, 32.39969, 23.98590,   0.00000, 0.00000, 91.02391);
	CreateDynamicObject(19637, 1565.74695, 32.16720, 24.16350,   0.00000, 0.00000, 1.42500);
	CreateDynamicObject(19638, 1565.74695, 32.16720, 24.34120,   0.00000, 0.00000, 5.98270);
	CreateDynamicObject(19636, 1566.51672, 32.39970, 24.16570,   0.00000, 0.00000, 95.33160);
	CreateDynamicObject(19639, 1567.19641, 32.69400, 24.36320,   71.00000, 0.50000, 3.95280);
	CreateDynamicObject(19636, 1567.20532, 32.21730, 24.18570,   34.00000, 0.00000, 0.00000);
	CreateDynamicObject(19637, 1566.25073, 32.39360, 24.49950,   17.24000, -12.46000, 98.95280);
	CreateDynamicObject(19637, 1567.25366, 32.48973, 23.13416,   0.00000, 0.00000, 93.69552);
	CreateDynamicObject(19637, 1567.25366, 32.48973, 23.30536,   0.00000, 0.00000, 86.58141);
	CreateDynamicObject(19637, 1567.25366, 32.48973, 23.47065,   0.00000, 0.00000, 91.97438);
	CreateDynamicObject(19638, 1567.82751, 32.52583, 23.45512,   50.00000, 0.00000, 93.69550);
	CreateDynamicObject(1810, 1568.11365, 31.17669, 23.14706,   0.00000, 0.00000, 318.49307);
	CreateDynamicObject(19569, 1566.22827, 31.91360, 23.96590,   0.00000, 0.00000, 348.05225);
	CreateDynamicObject(19569, 1566.48059, 32.04295, 24.01571,   90.00000, 0.00000, 272.55219);
	CreateDynamicObject(19578, 1566.54382, 31.96620, 23.98420,   0.00000, 0.00000, 61.15220);
	CreateDynamicObject(19577, 1566.42004, 31.94500, 23.98710,   0.00000, -34.50000, 61.15220);
	CreateDynamicObject(19576, 1566.83484, 31.88530, 23.99612,   -32.00000, 15.50000, 61.15220);
	CreateDynamicObject(19577, 1566.44727, 31.83170, 23.98710,   0.00000, -34.50000, 61.15220);
	CreateDynamicObject(19563, 1566.82532, 32.03273, 23.97294,   0.00000, 0.00000, -61.15220);
	CreateDynamicObject(19578, 1566.42029, 31.17250, 23.17750,   0.00000, 0.00000, 561.15222);
	CreateDynamicObject(19578, 1566.94299, 31.74110, 23.17750,   0.00000, 0.00000, 51.15220);
	CreateDynamicObject(19578, 1565.60278, 31.63940, 23.17750,   0.00000, 0.00000, 21.15220);
	CreateDynamicObject(19578, 1565.98853, 31.53850, 23.17750,   0.00000, 0.00000, 461.15219);
	CreateDynamicObject(19559, 1564.91541, 32.65730, 24.31392,   0.00000, 0.00000, 7.11410);
	CreateDynamicObject(2074, 1566.51709, 30.06398, 25.04712,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19468, 1567.47437, 31.75647, 23.24608,   0.00000, 0.00000, 0.00000);

	//Black market
	CreateDynamicObject(3050, 2118.70605, -2016.71936, 7.41750,   0.00000, 0.00000, 40.44000);
	CreateDynamicObject(3050, 2125.93994, -2010.91003, 5.95716,   180.00000, 0.00000, 37.33590);
	CreateDynamicObject(3050, 2129.48999, -2007.91003, 7.41750,   0.00000, 0.00000, 40.44000);
	CreateDynamicObject(2047, 2127.66992, -2009.52002, 9.73000,   0.00000, 0.00000, 40.26000);
	CreateDynamicObject(2047, 2120.03003, -2015.87000, 9.71000,   0.00000, 0.00000, 40.26000);
	CreateDynamicObject(1440, 2127.62012, -2010.77002, 7.48000,   0.00000, 0.00000, 36.18000);
	CreateDynamicObject(1440, 2130.22998, -2008.64001, 7.48000,   0.00000, 0.00000, 36.18000);
	CreateDynamicObject(1438, 2129.66992, -2010.90002, 6.98000,   0.00000, 0.00000, -122.70000);
	CreateDynamicObject(1438, 2121.04004, -2016.59998, 6.98000,   0.00000, 0.00000, 48.66000);
	CreateDynamicObject(1440, 2121.60010, -2018.20996, 7.48000,   0.00000, 0.00000, 145.98000);
	CreateDynamicObject(910, 2131.82007, -2011.85999, 8.19000,   0.00000, 0.00000, -4.62000);
	CreateDynamicObject(3861, 2114.65991, -2011.63000, 8.05000,   0.00000, 0.00000, 136.80000);
	CreateDynamicObject(3040, 2124.77002, -2006.02002, 9.23000,   0.00000, 0.00000, 44.52000);
	CreateDynamicObject(3862, 2120.33008, -2000.53003, 8.09000,   0.00000, 0.00000, -45.60000);
	CreateDynamicObject(3863, 2110.31006, -2006.71997, 8.12000,   0.00000, 0.00000, 114.06000);
	CreateDynamicObject(3039, 2116.01001, -2005.32996, 6.86000,   0.00000, 0.00000, -46.68000);
	CreateDynamicObject(2619, 2120.65991, -1999.09998, 8.35000,   -18.96000, -0.06000, 44.28000);
	CreateDynamicObject(2619, 2121.61011, -2000.05005, 8.35000,   2.16000, 1.02000, 44.28000);
	CreateDynamicObject(3016, 2120.82007, -2001.65002, 7.86000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1650, 2120.70996, -2002.05005, 8.02000,   0.00000, 0.00000, -115.02000);
	CreateDynamicObject(1650, 2120.40991, -2001.96997, 8.02000,   0.00000, 0.00000, -153.66000);
	CreateDynamicObject(2358, 2119.35010, -1999.95996, 7.83000,   0.00000, 0.00000, -26.64000);
	CreateDynamicObject(2359, 2119.04004, -2000.43994, 7.92000,   0.00000, 0.00000, -37.50000);
	CreateDynamicObject(2042, 2119.39990, -1999.94995, 8.03000,   0.00000, 0.00000, -29.94000);
	CreateDynamicObject(2041, 2119.76001, -2000.37000, 7.91000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2040, 2118.84009, -2000.34998, 7.80000,   0.00000, 0.00000, 52.92000);
	CreateDynamicObject(2038, 2119.76001, -2000.60999, 7.80000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2037, 2119.56006, -2000.78003, 7.78000,   0.00000, 0.00000, 13.50000);
	CreateDynamicObject(2037, 2119.76001, -2000.77002, 7.78000,   0.00000, 0.00000, -39.48000);
	CreateDynamicObject(3014, 2119.27002, -2000.06006, 7.19000,   0.00000, 0.00000, 41.40000);
	CreateDynamicObject(3014, 2118.83008, -2000.48999, 7.19000,   0.00000, 0.00000, 41.40000);
	CreateDynamicObject(1271, 2119.64990, -2000.79004, 7.31000,   0.00000, 0.00000, 41.88000);
	CreateDynamicObject(1271, 2120.17993, -2001.39001, 7.31000,   0.00000, 0.00000, 41.88000);
	CreateDynamicObject(2358, 2120.54004, -2002.04004, 7.08000,   0.00000, 0.00000, 45.18000);
	CreateDynamicObject(2358, 2120.54004, -2002.04004, 7.30000,   0.00000, 0.00000, 45.18000);
	CreateDynamicObject(2358, 2121.06006, -2001.45996, 7.10000,   0.00000, 0.00000, 78.36000);
	CreateDynamicObject(2358, 2121.06006, -2001.45996, 7.32000,   0.00000, 0.00000, 78.36000);
	CreateDynamicObject(2358, 2121.81006, -2001.07996, 7.10000,   0.00000, 0.00000, 219.42000);
	CreateDynamicObject(2358, 2121.81006, -2001.07996, 7.32000,   0.00000, 0.00000, 219.42000);
	CreateDynamicObject(2359, 2121.39990, -2000.66003, 7.19000,   0.00000, 0.00000, -147.48000);
	CreateDynamicObject(335, 2120.35010, -2001.87000, 7.70550,   90.78000, 26.40000, 70.44000);
	CreateDynamicObject(335, 2120.51001, -2001.70996, 7.70550,   90.78000, 26.40000, 110.52000);
	CreateDynamicObject(335, 2120.38989, -2001.40002, 7.70550,   90.78000, 26.40000, 238.74001);
	CreateDynamicObject(3028, 2119.92993, -2001.91003, 7.72000,   98.16000, 46.74000, 0.00000);
	CreateDynamicObject(3028, 2119.97998, -2001.65002, 7.72000,   98.16000, 46.74000, 11.82000);
	CreateDynamicObject(1458, 2127.53003, -2007.47998, 7.19000,   0.00000, 0.00000, 121.80000);
	CreateDynamicObject(2969, 2124.12988, -2003.46997, 7.09000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2969, 2124.12988, -2003.46997, 7.31000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2969, 2124.12988, -2003.46997, 7.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2969, 2123.73999, -2002.88000, 7.10000,   0.00000, 0.00000, 46.56000);
	CreateDynamicObject(2969, 2123.73999, -2002.88000, 7.31000,   0.00000, 0.00000, 46.56000);
	CreateDynamicObject(2969, 2124.68994, -2003.84998, 7.07000,   0.00000, 0.00000, 63.36000);
	CreateDynamicObject(1575, 2114.17993, -2010.60999, 7.65000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1575, 2114.34009, -2010.15002, 7.65000,   0.00000, 0.00000, 36.18000);
	CreateDynamicObject(1575, 2114.52002, -2010.56006, 7.69000,   -0.30000, 15.72000, 21.78000);
	CreateDynamicObject(1575, 2114.34009, -2010.15002, 7.77000,   0.00000, 0.00000, 49.20000);
	CreateDynamicObject(1577, 2116.04004, -2011.63000, 7.65000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1577, 2115.86011, -2012.06995, 7.65000,   0.00000, 0.00000, -86.04000);
	CreateDynamicObject(1579, 2115.39990, -2011.73999, 7.64000,   0.00000, 0.00000, -65.70000);
	CreateDynamicObject(1579, 2115.39990, -2011.73999, 7.74000,   0.00000, 0.00000, -65.70000);
	CreateDynamicObject(2969, 2115.28003, -2011.13000, 7.08000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2969, 2114.60010, -2010.53003, 7.08000,   0.00000, 0.00000, 70.74000);
	CreateDynamicObject(1271, 2115.43994, -2013.97998, 7.29000,   0.00000, 0.00000, -44.94000);
	CreateDynamicObject(1271, 2115.43994, -2013.97998, 7.95000,   0.00000, 0.00000, -44.94000);
	CreateDynamicObject(1271, 2116.63989, -2014.27002, 7.31000,   0.00000, 0.00000, -7.02000);
	CreateDynamicObject(1271, 2116.63989, -2014.27002, 7.99000,   0.00000, 0.00000, -7.02000);
	CreateDynamicObject(1271, 2117.48999, -2014.56006, 7.31000,   0.00000, 0.00000, 15.42000);
	CreateDynamicObject(1271, 2111.45996, -2009.88000, 7.30000,   0.00000, 0.00000, -38.40000);
	CreateDynamicObject(1271, 2110.89990, -2009.22998, 7.30000,   0.00000, 0.00000, -53.52000);
	CreateDynamicObject(1271, 2111.45996, -2009.88000, 7.96000,   0.00000, 0.00000, -38.40000);
	CreateDynamicObject(18633, 2111.73999, -2007.43994, 7.77000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18633, 2111.56006, -2007.35999, 7.77000,   0.00000, 0.00000, -31.32000);
	CreateDynamicObject(18633, 2111.48999, -2007.37000, 7.77000,   0.00000, 0.00000, -32.82000);
	CreateDynamicObject(18633, 2110.98999, -2005.38000, 7.77000,   -1.20000, 95.64000, 26.94000);
	CreateDynamicObject(18633, 2110.78003, -2005.37000, 7.77000,   -1.20000, 95.64000, -167.82001);
	CreateDynamicObject(18634, 2110.18994, -2005.73999, 7.77000,   0.78000, -89.88000, 0.00000);
	CreateDynamicObject(18634, 2110.43994, -2005.78003, 7.77000,   -0.30000, -96.12000, -132.42000);
	CreateDynamicObject(18634, 2110.53003, -2005.64001, 7.78000,   -1.32000, -93.60000, -114.00000);
	CreateDynamicObject(18635, 2110.82007, -2006.59998, 7.81000,   -88.80000, -76.86000, 0.00000);
	CreateDynamicObject(18635, 2110.88989, -2006.72998, 7.81000,   -88.80000, -76.86000, 66.84000);
	CreateDynamicObject(18635, 2111.21997, -2006.70996, 7.81000,   -88.80000, -76.86000, 45.24000);
	CreateDynamicObject(337, 2111.02002, -2004.97998, 7.33000,   -1.02000, -6.78000, 28.50000);
	CreateDynamicObject(337, 2111.14990, -2005.28003, 7.33000,   -1.02000, -6.78000, 28.50000);
	CreateDynamicObject(18451, 2114.04004, -1997.56006, 7.52000,   0.00000, 0.00000, 37.92000);
	CreateDynamicObject(3050, 2114.84009, -1992.96997, 9.14000,   0.00000, 0.00000, 43.50000);
	CreateDynamicObject(3050, 2111.44995, -1996.13000, 9.14000,   0.00000, 0.00000, 43.50000);
	CreateDynamicObject(3050, 2106.26001, -2001.03003, 9.14000,   0.00000, 0.00000, 79.56000);
	CreateDynamicObject(1335, 2108.45996, -1997.73999, 8.06000,   0.00000, 0.00000, 135.12000);
	CreateDynamicObject(1330, 2109.66992, -1996.80005, 7.42000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1330, 2110.33008, -1996.15002, 7.34569,   -28.98000, -97.26000, 0.00000);
	CreateDynamicObject(910, 2111.08008, -1994.71997, 8.19000,   0.00000, 0.00000, -76.98000);
	CreateDynamicObject(910, 2112.83008, -1993.15002, 8.19000,   0.00000, 0.00000, -130.20000);
	CreateDynamicObject(14791, 2107.01001, -1989.31006, 8.35999,   0.00000, 0.00000, -45.18000);
	CreateDynamicObject(14782, 2100.30005, -1998.81995, 7.92000,   0.00000, 0.00000, 134.58000);
	CreateDynamicObject(14779, 2100.62988, -1994.56006, 9.25000,   0.00000, 0.00000, 45.90000);
	CreateDynamicObject(14779, 2097.58008, -1991.48999, 9.25000,   0.00000, 0.00000, 45.90000);
	CreateDynamicObject(2047, 2108.96997, -1987.29004, 9.81000,   0.00000, 0.00000, -43.92000);
	CreateDynamicObject(1462, 2111.83008, -1990.80005, 6.99000,   0.00000, 0.00000, -46.98000);
	CreateDynamicObject(1810, 2102.65991, -1989.92004, 6.98000,   0.00000, 0.00000, 87.36000);
	CreateDynamicObject(1810, 2102.32007, -1988.83997, 6.98000,   0.00000, 0.00000, 196.56000);
	CreateDynamicObject(1810, 2105.62988, -1993.81995, 6.98000,   0.00000, 0.00000, 138.12000);
	CreateDynamicObject(1810, 2104.87988, -1993.27002, 6.98000,   0.00000, 0.00000, 120.90000);
	CreateDynamicObject(1810, 2104.26001, -1993.16003, 6.98000,   2.40000, 91.20000, 120.90000);
	CreateDynamicObject(1810, 2103.02002, -1991.69995, 6.98000,   0.00000, 0.00000, 105.84000);
	CreateDynamicObject(1439, 2097.20996, -1995.58997, 7.03000,   0.00000, 0.00000, 134.16000);
	CreateDynamicObject(1372, 2096.87988, -1993.34998, 7.07000,   0.00000, 0.00000, 80.64000);
	CreateDynamicObject(2916, 2099.22998, -1996.65002, 7.02000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2916, 2098.89990, -1996.45996, 7.02000,   0.00000, 0.00000, 38.70000);
	CreateDynamicObject(4227, 2092.67993, -1991.67004, 9.68000,   0.00000, 0.00000, -225.30000);
	CreateDynamicObject(17969, 2104.44995, -1982.73999, 9.04000,   0.00000, 0.00000, 44.46000);
	CreateDynamicObject(12846, 2113.32007, -1995.42004, 5.66000,   0.00000, 0.00000, -45.96000);
	CreateDynamicObject(3260, 2091.39990, -1989.34998, 7.53000,   0.30000, -0.30000, -104.22000);
	CreateDynamicObject(3260, 2091.87988, -1987.41003, 7.53000,   0.30000, -0.30000, -104.22000);
	CreateDynamicObject(3260, 2091.36011, -1985.80005, 7.53000,   0.30000, -0.30000, -41.88000);
	CreateDynamicObject(3260, 2088.84009, -1984.59998, 7.53000,   0.30000, -0.30000, 17.58000);
	CreateDynamicObject(3260, 2087.12988, -1985.54004, 7.53000,   0.30000, -0.30000, 39.42000);
	CreateDynamicObject(3260, 2087.70996, -1986.34998, 9.54000,   89.46000, 9.96000, 28.50000);
	CreateDynamicObject(3260, 2089.14990, -1985.19995, 9.54000,   89.46000, 9.96000, 40.44000);
	CreateDynamicObject(3260, 2089.48999, -1988.76001, 9.56000,   89.46000, 9.96000, 28.50000);
	CreateDynamicObject(3260, 2090.52002, -1987.50000, 9.56000,   89.46000, 9.96000, 29.64000);
	CreateDynamicObject(3260, 2090.27002, -1987.19995, 9.56000,   89.46000, 9.96000, 95.70000);
	CreateDynamicObject(14861, 2090.25000, -1987.95996, 6.99000,   0.00000, 0.00000, 49.44000);
	CreateDynamicObject(911, 2088.43994, -1986.56995, 7.49000,   0.00000, 0.00000, 134.94000);
	CreateDynamicObject(1407, 2091.62988, -1988.67004, 7.42000,   0.00000, -41.94000, 77.82000);
	CreateDynamicObject(2843, 2090.79004, -1987.76001, 6.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2846, 2090.90991, -1986.98999, 6.98000,   0.00000, 0.00000, 42.42000);
	CreateDynamicObject(2068, 2087.36011, -1990.01001, 9.79000,   -4.98000, 7.74000, -5.16000);
	CreateDynamicObject(3260, 2103.29004, -1982.78003, 7.91000,   0.00000, 0.00000, 39.12000);
	CreateDynamicObject(3260, 2101.80005, -1983.98999, 7.91000,   0.00000, 0.00000, 39.12000);
	CreateDynamicObject(3260, 2100.31006, -1984.07996, 7.91000,   0.00000, 0.00000, -35.82000);
	CreateDynamicObject(3260, 2099.48999, -1982.60999, 7.91000,   0.00000, 0.00000, 92.10000);
	CreateDynamicObject(3260, 2101.03003, -1980.05005, 7.91000,   0.00000, 0.00000, 42.00000);
	CreateDynamicObject(3260, 2101.59009, -1980.72998, 9.92000,   89.52000, -10.50000, 51.18000);
	CreateDynamicObject(3260, 2102.09009, -1981.18994, 9.92000,   89.52000, -10.50000, 51.18000);
	CreateDynamicObject(3260, 2100.21997, -1982.03003, 9.92000,   89.52000, -10.50000, 51.18000);
	CreateDynamicObject(3260, 2100.61011, -1982.45996, 9.92000,   89.52000, -10.50000, 51.18000);
	CreateDynamicObject(3260, 2100.17993, -1982.78003, 9.92000,   89.52000, -10.50000, 51.18000);
	CreateDynamicObject(1460, 2100.19995, -1984.13000, 7.30000,   -2.76000, -84.84000, -34.44000);
	CreateDynamicObject(1460, 2102.94995, -1983.07996, 8.31000,   -2.82000, -27.42000, 38.40000);
	CreateDynamicObject(1462, 2099.81006, -1984.33997, 6.99000,   0.00000, 0.00000, -39.96000);
	CreateDynamicObject(14861, 2102.34009, -1982.53003, 6.99000,   0.00000, 0.00000, -51.06000);
	CreateDynamicObject(2846, 2100.88989, -1980.79004, 6.99000,   0.00000, 0.00000, -27.96000);
	CreateDynamicObject(2845, 2100.12012, -1981.57996, 6.98000,   0.00000, 0.00000, -21.48000);
	CreateDynamicObject(3050, 2086.59009, -1985.76001, 9.17000,   0.00000, 0.00000, -135.72000);
	CreateDynamicObject(3050, 2089.95996, -1982.50000, 9.17000,   0.00000, 0.00000, 242.03532);
	CreateDynamicObject(3050, 2093.28003, -1979.26001, 9.17000,   0.00000, 0.00000, -135.72000);
	CreateDynamicObject(3050, 2096.62988, -1976.05005, 9.17000,   0.00000, 0.00000, -135.72000);
	CreateDynamicObject(1372, 2097.27002, -1976.94995, 7.07000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1439, 2099.12012, -1977.95996, 7.00000,   0.00000, 0.00000, -42.84000);
	CreateDynamicObject(1271, 2095.80005, -1978.03003, 7.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1271, 2095.80005, -1978.03003, 7.97000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1271, 2094.87988, -1978.45996, 7.30000,   0.00000, 0.00000, -31.20000);
	CreateDynamicObject(1440, 2096.08813, -1979.59863, 7.45000,   0.00000, 0.00000, 17.97853);
	CreateDynamicObject(1438, 2095.52002, -1992.60999, 6.95000,   0.00000, 0.00000, 140.16000);
	CreateDynamicObject(1438, 2093.13989, -1989.98999, 6.95000,   0.00000, 0.00000, 119.70000);
	CreateDynamicObject(913, 2094.23999, -1990.98999, 7.37000,   -90.42000, -11.76000, -67.92000);
	CreateDynamicObject(1358, 2103.16992, -1985.15002, 8.18000,   0.00000, 0.00000, 43.98000);
	CreateDynamicObject(2672, 2093.26001, -1984.89001, 7.28000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2672, 2100.50000, -1987.82996, 7.28000,   0.00000, 0.00000, 109.68000);
	CreateDynamicObject(2672, 2096.62012, -1981.37000, 7.28000,   0.00000, 0.00000, 155.34000);
	CreateDynamicObject(2672, 2096.65991, -1991.16003, 7.28000,   0.00000, 0.00000, 9.84000);
	CreateDynamicObject(2670, 2096.77002, -1983.26001, 7.08000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2670, 2096.73999, -1985.17004, 7.08000,   0.00000, 0.00000, -55.98000);
	CreateDynamicObject(2670, 2095.33008, -1988.12000, 7.08000,   0.00000, 0.00000, -34.20000);
	CreateDynamicObject(2673, 2097.73999, -1988.55005, 7.06000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(348, 2119.88232, -2001.30066, 7.75150,   90.78000, 26.40000, 70.44000);
	CreateDynamicObject(352, 2120.20313, -2001.13794, 7.75150,   90.78000, 26.40000, -44.94000);
	CreateDynamicObject(3050, 2122.22656, -2013.72253, 7.41750,   0.00000, 0.00000, 40.44000);
	CreateDynamicObject(3050, 2122.22656, -2013.72253, 10.64906,   0.00000, 0.00000, 40.44000);
	CreateDynamicObject(3050, 2118.70605, -2016.71936, 10.64910,   0.00000, 0.00000, 40.44000);
	CreateDynamicObject(3050, 2125.93994, -2010.91003, 10.64910,   0.00000, 0.00000, 37.33590);
	CreateDynamicObject(3050, 2129.48999, -2007.91003, 10.64910,   0.00000, 0.00000, 40.44000);

	//Lspd
	CreateDynamicObject(19435, 1583.38098, -1638.06665, 16.58284,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19394, 246.40179, 72.51790, 1004.38483,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19394, 250.65781, 63.32170, 1004.38483,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19394, 226.13300, 71.75150, 1005.78802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19394, 222.14424, 69.75560, 1005.78802,   0.00000, 0.00000, 0.00000);
		//armero lspd
	CreateDynamicObject(3383, 218.05321, 69.66941, 1004.01599,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(355, 218.14720, 68.66820, 1005.14069,   90.00000, 0.00000, 336.19260);
	CreateDynamicObject(356, 218.08640, 69.20330, 1005.14069,   90.00000, 0.00000, 336.19260);
	CreateDynamicObject(357, 217.94960, 68.99330, 1005.14069,   90.00000, 0.00000, 350.29199);
	CreateDynamicObject(373, 217.35258, 70.71751, 1005.48328,   -21.90002, -67.50020, 348.24200);
	CreateDynamicObject(346, 218.57957, 70.65546, 1005.07013,   90.00000, 0.00000, 308.83682);
	CreateDynamicObject(346, 218.31314, 70.62437, 1005.07013,   90.00000, 0.00000, 345.59024);
	CreateDynamicObject(348, 218.25490, 70.96880, 1005.10364,   90.00000, 0.00000, 345.59021);
	CreateDynamicObject(2356, 219.88365, 68.85400, 1004.04266,   0.00000, 0.00000, 63.21939);
	CreateDynamicObject(2604, 219.72623, 66.30558, 1004.77869,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2611, 221.83640, 71.70237, 1005.85858,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19942, 218.55324, 69.98653, 1005.10632,   90.00000, 0.00000, 70.81435);
	CreateDynamicObject(19942, 218.30315, 69.94853, 1005.10632,   90.00000, 0.00000, 84.58054);
	CreateDynamicObject(18636, 218.07910, 69.48098, 1005.14178,   0.00000, 0.00000, 42.68287);
	CreateDynamicObject(1616, 217.26569, 66.18087, 1007.31104,   0.00000, 0.00000, -90.00000);

	
	//policia sf
	CreateDynamicObject(2924, 278.88040, 118.23861, 1004.78625,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19394, -1620.45251, 688.37708, 7.93710,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 243.15199, 119.35400, 1006.59509,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 249.78999, 119.35400, 1006.59509,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19394, 239.55240, 117.58030, 1003.95709,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19394, 253.18895, 109.09433, 1003.95709,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, 264.50720, 120.50274, 1003.58673,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11730, 265.50720, 120.50270, 1003.58667,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, 266.50720, 120.50270, 1003.58667,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, 267.50720, 120.50270, 1003.58667,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11730, 268.50720, 120.50270, 1003.58667,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, 269.50720, 120.50270, 1003.58667,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, 270.27725, 118.69037, 1003.58667,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19394, 265.85419, 112.53490, 1005.36511,   0.00000, 0.00000, 90.00000);
		//armero sfpd
	CreateDynamicObject(3383, 261.46686, 109.74873, 1003.51575,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(355, 261.28638, 108.51733, 1004.61224,   90.00000, 0.00000, 344.51929);
	CreateDynamicObject(356, 261.40860, 108.75710, 1004.61218,   90.00000, 0.00000, 356.68652);
	CreateDynamicObject(357, 261.43179, 109.08730, 1004.61218,   90.00000, 0.00000, 353.07321);
	CreateDynamicObject(373, 261.01993, 109.41758, 1004.98096,   -30.65999, -61.32013, 0.00000);
	CreateDynamicObject(346, 261.52261, 110.09190, 1004.54980,   90.00000, 0.00000, 27.56148);
	CreateDynamicObject(346, 261.56567, 110.27119, 1004.54980,   90.00000, 0.00000, 30.38580);
	CreateDynamicObject(348, 261.37054, 110.55457, 1004.54980,   90.00000, 0.00000, 1.09675);
	CreateDynamicObject(2604, 267.76678, 109.79140, 1004.39075,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2611, 263.86673, 112.29848, 1005.42139,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19942, 262.01361, 110.91120, 1004.58142,   -90.00000, 0.00000, 40.00000);
	CreateDynamicObject(18636, 261.91263, 110.71170, 1004.60956,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1616, 267.63699, 111.95854, 1006.92279,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2606, 262.84247, 107.08107, 1005.81451,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2606, 262.84247, 107.08107, 1005.35938,   0.00000, 0.00000, 180.00000);


	
	//lvpd
	CreateDynamicObject(2924, 232.18359, 181.72543, 1003.24066,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19394, 228.25470, 151.20329, 1003.76422,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19394, 228.25470, 161.18629, 1003.76422,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19394, 231.47380, 169.83540, 1003.76422,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 2294.03516, 2493.67041, 6.52140,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, 215.04109, 188.97775, 1001.96973,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, 216.04111, 188.97780, 1001.96973,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11730, 217.04111, 188.97780, 1001.96973,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, 218.04111, 188.97780, 1001.96973,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11730, 219.04111, 188.97780, 1001.96973,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, 220.04111, 188.97780, 1001.96973,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19398, 222.73120, 181.24770, 1003.77631,   0.00000, 0.00000, 90.00000);
		//amero lvpd
	CreateDynamicObject(3383, 222.72493, 188.44344, 1002.02588,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(346, 221.70547, 187.89719, 1003.08032,   90.00000, 0.00000, 74.09574);
	CreateDynamicObject(346, 221.56393, 188.33482, 1003.08032,   90.00000, 0.00000, 118.91777);
	CreateDynamicObject(349, 222.21919, 188.06329, 1003.13794,   90.00000, 0.00000, 143.26175);
	CreateDynamicObject(350, 222.37531, 188.38086, 1003.13788,   90.00000, 0.00000, 143.26170);
	CreateDynamicObject(356, 222.66338, 188.67574, 1003.13788,   90.00000, 0.00000, 275.75909);
	CreateDynamicObject(1616, 224.02190, 182.11407, 1005.55298,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2606, 224.39127, 186.37181, 1004.28857,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2604, 223.97989, 184.35429, 1002.82202,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2356, 223.61688, 186.79042, 1002.02997,   0.00000, 0.00000, 55.15324);
	CreateDynamicObject(2611, 221.02010, 183.76204, 1003.99695,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2612, 221.02010, 185.76199, 1004.00964,   0.00000, 0.00000, 90.00000);

	//Grua
	CreateDynamicObject(973, -83.77057, -1116.87732, 0.81961,   0.00000, 0.00000, 66.35763);
	CreateDynamicObject(973, -89.94199, -1132.28979, 0.81961,   0.00000, 0.00000, 70.42081);
	CreateDynamicObject(19126, -84.86983, -1121.76782, 0.55208,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, -83.37164, -1122.49402, 0.55208,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, -87.60429, -1128.40356, 0.55208,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19126, -86.20382, -1128.86804, 0.55208,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(17064, -67.25304, -1115.67249, 0.00303,   0.00000, 0.00000, 340.05429);
	
	//Hospital
	CreateDynamicObject(19388, -2029.70081, -113.10525, 1035.84106,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1500, -2030.51074, -113.14552, 1034.07397,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11738, -2033.98706, -118.21369, 1035.00330,   0.00000, 0.00000, 130.08585);

	BlockGarages();

	//camioneros
	CreateDynamicObject(1571, -467.56235, -506.71280, 25.69660,   0.00000, 0.00000, -91.00000);
	CreateDynamicObject(18059, -478.66180, -502.07880, 24.90210,   0.00000, 0.00000, 2.00000);
	CreateDynamicObject(2121, -472.44046, -499.23654, 25.00960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18059, -478.28912, -510.95724, 24.90210,   0.00000, 0.00000, 2.00000);
	CreateDynamicObject(2121, -475.68607, -499.12155, 25.00960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -478.88751, -499.13037, 25.00960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -481.93634, -499.40625, 25.00960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -485.05368, -499.59741, 25.00960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -484.56232, -508.60577, 25.00960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -481.56076, -508.29291, 25.00960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -478.46201, -508.14209, 24.98960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -475.32690, -507.93164, 24.98960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -472.16562, -507.94498, 24.98960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -484.39105, -513.73352, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(2121, -481.42172, -513.74988, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(2121, -478.23074, -513.74445, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(2121, -475.17316, -513.48810, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(2121, -472.06421, -513.64551, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(2121, -472.22220, -504.71106, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(2121, -475.48636, -504.79288, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(2121, -478.73132, -504.90991, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(2121, -481.92795, -505.11481, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(2121, -484.99567, -505.18015, 25.00960,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(19866, -487.33502, -502.92206, 24.50980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19866, -487.33371, -500.48172, 24.50980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19866, -484.92780, -498.06812, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19866, -480.13080, -498.03873, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19866, -475.32532, -498.01904, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19866, -470.37772, -498.02380, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19866, -468.31558, -498.00943, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19866, -487.31247, -512.27551, 24.50980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19866, -487.28128, -512.70215, 24.50980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19866, -484.85812, -515.14337, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19866, -480.04279, -515.17596, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19866, -475.11133, -515.15936, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19866, -470.13629, -515.13141, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19866, -467.68448, -515.12244, 24.50980,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3811, -487.62540, -504.15506, 24.89240,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3811, -487.63818, -501.78845, 24.89240,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3811, -487.64218, -499.42792, 24.89240,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3811, -487.75894, -511.12079, 24.89240,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3811, -487.72910, -513.59802, 24.89240,   0.00000, 0.00000, 179.88000);
	CreateDynamicObject(1344, -469.71271, -515.78235, 25.23710,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1344, -467.14282, -515.86108, 25.23710,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1343, -466.44601, -510.63159, 25.23520,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1264, -466.43338, -511.59857, 24.92320,   0.00000, 0.00000, 0.00000);
	
	//Piedras en ruta sf camioneros Pablo
	CreateDynamicObject(979, -1741.48315, -566.04761, 16.27593,   0.00000, 0.00000, 179.51994);
	CreateDynamicObject(979, -1750.78784, -565.96411, 16.27593,   0.00000, 0.00000, 179.51994);
	CreateDynamicObject(979, -1760.12524, -565.92499, 16.27593,   0.00000, 0.00000, 180.05992);
	CreateDynamicObject(979, -1769.34375, -565.92346, 16.27593,   0.00000, 0.00000, 180.05992);
	CreateDynamicObject(744, -1831.88660, -562.18005, 15.50668,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(746, -1831.25403, -556.93030, 15.73370,   0.00000, 0.00000, -106.25999);
	CreateDynamicObject(745, -1831.54272, -551.93018, 15.85147,   0.00000, 0.00000, -120.77998);
	CreateDynamicObject(747, -1831.56055, -546.02423, 15.92758,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(751, -1831.79578, -543.46667, 15.71700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(747, -1835.32861, -561.45129, 16.70985,   0.00000, 0.00000, 54.72004);
	CreateDynamicObject(758, -1838.35657, -562.01056, 17.62211,   0.00000, 0.00000, 438.17993);
	CreateDynamicObject(750, -1841.83337, -562.49524, 18.33449,   0.00000, 0.00000, 96.11999);
	CreateDynamicObject(745, -1845.24548, -561.88354, 18.96216,   0.00000, 0.00000, 57.12000);
	CreateDynamicObject(744, -1850.66040, -561.63263, 19.83097,   0.00000, 0.00000, -103.37998);
	CreateDynamicObject(746, -1854.22815, -561.94550, 21.30263,   0.00000, 0.00000, 57.18000);
	CreateDynamicObject(751, -1856.63428, -562.52490, 21.58299,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(758, -1859.06824, -561.68823, 21.74030,   0.00000, 0.00000, 63.59999);
	CreateDynamicObject(745, -1863.55493, -562.27081, 22.58645,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(747, -1868.11462, -562.25537, 23.14593,   0.00000, 0.00000, 70.67999);
	CreateDynamicObject(750, -1870.97498, -563.25146, 23.31569,   0.00000, 0.00000, 72.60000);
	CreateDynamicObject(973, -1816.42407, -245.80139, 18.04579,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(973, -1825.77722, -245.76927, 18.04579,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(973, -1835.16809, -245.78217, 18.04579,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(973, -1844.51416, -245.79356, 18.04579,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(973, -1852.42859, -248.97186, 18.10784,   0.00000, 0.00000, 43.91998);
	CreateDynamicObject(973, -1860.46765, -252.14670, 18.23509,   0.00000, 0.00000, 1.01998);

	//Quitamiedos
	CreateDynamicObject(973, -397.61942, -822.90417, 47.36737,   -0.78000, -3.96000, -191.21997);
	CreateDynamicObject(973, -406.86221, -821.50629, 47.90840,   -7.73999, -2.76000, 173.45988);
	CreateDynamicObject(973, -416.03802, -821.79211, 48.28061,   0.00000, -1.80000, 190.08015);
	CreateDynamicObject(973, -425.24567, -823.40820, 48.57291,   0.42000, -2.04000, 190.26001);
	CreateDynamicObject(973, -434.34427, -825.32697, 48.93306,   -0.42000, -2.34000, 193.50015);
	CreateDynamicObject(973, -443.33322, -828.11096, 49.37975,   -1.86000, -3.54000, 201.35992);
	CreateDynamicObject(973, -451.81406, -831.87061, 49.84967,   2.04000, -2.28000, -153.77995);
	CreateDynamicObject(973, -460.62601, -834.11615, 50.00925,   0.00000, 0.00000, 182.15996);
	
	//Parking ayuntamiento
	CreateDynamicObject(1360, 1484.84253, -1666.30066, 13.54425,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1360, 1476.02039, -1666.29980, 13.54425,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, 1468.03955, -1701.72852, 13.63655,   0.00000, 0.00000, 180.35999);
	CreateDynamicObject(638, 1468.08826, -1707.53174, 13.63655,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, 1467.90979, -1696.83093, 13.63655,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, 1468.01294, -1710.78333, 13.63655,   0.00000, 0.00000, 0.18000);
	CreateDynamicObject(638, 1468.14758, -1690.85437, 13.63655,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, 1468.21472, -1685.78308, 13.63655,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, 1489.14270, -1701.80139, 13.63655,   0.00000, 0.00000, 180.35999);
	CreateDynamicObject(638, 1488.98157, -1707.30859, 13.63655,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, 1489.02820, -1711.00305, 13.63655,   0.00000, 0.00000, 0.18000);
	CreateDynamicObject(638, 1489.16541, -1696.70764, 13.63655,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, 1489.16541, -1685.39966, 13.63655,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, 1489.12915, -1690.93640, 13.63655,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1364, 1469.83240, -1649.46521, 13.86166,   0.00000, 0.00000, -38.39998);
	CreateDynamicObject(1364, 1476.39465, -1653.10828, 13.86166,   0.00000, 0.00000, -12.47998);
	CreateDynamicObject(1231, 1478.21692, -1652.60620, 15.63281,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(1364, 1483.25500, -1652.83813, 13.86166,   0.00000, 0.00000, 16.14003);
	CreateDynamicObject(1364, 1489.28528, -1649.32605, 13.86166,   0.00000, 0.00000, 44.52004);
	CreateDynamicObject(1364, 1542.16553, -1647.68298, 13.86166,   0.00000, 0.00000, 77.94006);
	CreateDynamicObject(1364, 1493.01355, -1643.12451, 13.86166,   0.00000, 0.00000, 77.52012);
	CreateDynamicObject(1364, 1493.00330, -1635.84241, 13.86166,   0.00000, 0.00000, 102.84015);
	CreateDynamicObject(1364, 1489.25464, -1629.75928, 13.86166,   0.00000, 0.00000, 136.20010);
	CreateDynamicObject(1364, 1482.97949, -1626.17090, 13.86166,   0.00000, 0.00000, 163.37984);
	CreateDynamicObject(1364, 1475.91711, -1626.29321, 13.86166,   0.00000, 0.00000, 198.35971);
	CreateDynamicObject(1364, 1469.77539, -1629.89136, 13.86166,   0.00000, 0.00000, 226.90216);
	CreateDynamicObject(1364, 1466.05994, -1636.14465, 13.86166,   0.00000, 0.00000, 257.38211);
	CreateDynamicObject(1231, 1466.67419, -1638.31702, 15.63281,   356.85840, 0.00000, -1.57080);
	CreateDynamicObject(1364, 1466.25232, -1643.43787, 13.86166,   0.00000, 0.00000, 280.06189);
	CreateDynamicObject(747, 1478.31909, -1664.70544, 13.54158,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(747, 1480.44189, -1664.93103, 13.54158,   0.00000, 0.00000, -125.03997);
	CreateDynamicObject(865, 1473.07068, -1663.33704, 13.54314,   0.00000, 0.00000, -56.70000);
	CreateDynamicObject(865, 1482.79187, -1666.58130, 13.54314,   0.00000, 0.00000, 30.72000);
	CreateDynamicObject(865, 1486.10901, -1663.57861, 13.54314,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(865, 1470.85657, -1668.05286, 13.54314,   0.00000, 0.00000, 35.40000);
	CreateDynamicObject(865, 1486.10901, -1663.57861, 13.54314,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(865, 1483.18298, -1663.31641, 13.54314,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(865, 1463.29700, -1685.14368, 13.30515,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(866, 1487.69958, -1668.63025, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1485.50354, -1666.58777, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1478.06250, -1667.80042, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1475.38794, -1663.61365, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1458.80322, -1685.12292, 13.54225,   0.00000, 0.00000, 26.82000);
	CreateDynamicObject(866, 1463.03015, -1694.19202, 13.54225,   0.00000, 0.00000, 15.30000);
	CreateDynamicObject(866, 1458.46082, -1692.27588, 13.54225,   0.00000, 0.00000, -0.84000);
	CreateDynamicObject(866, 1462.75403, -1690.92297, 13.54225,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1461.00757, -1699.59753, 13.54225,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1461.00757, -1699.59753, 13.54225,   0.00000, 0.00000, 13.86000);
	CreateDynamicObject(865, 1462.26611, -1687.85620, 13.54314,   0.00000, 0.00000, -52.85999);
	CreateDynamicObject(866, 1458.37793, -1689.22522, 13.54225,   0.00000, 0.00000, 20.46000);
	CreateDynamicObject(866, 1456.82312, -1705.72632, 13.54225,   0.00000, 0.00000, -6.84000);
	CreateDynamicObject(866, 1463.18311, -1704.08521, 13.54225,   0.00000, 0.00000, -18.72000);
	CreateDynamicObject(865, 1459.26501, -1695.29517, 13.54314,   0.00000, 0.00000, -52.85999);
	CreateDynamicObject(865, 1457.66370, -1684.32422, 13.54314,   0.00000, 0.00000, -52.85999);
	CreateDynamicObject(865, 1458.70349, -1702.53467, 13.54314,   0.00000, 0.00000, -95.76001);
	CreateDynamicObject(865, 1457.06897, -1699.71277, 13.54314,   0.00000, 0.00000, -52.85999);
	CreateDynamicObject(865, 1459.16040, -1709.40845, 13.54314,   0.00000, 0.00000, -28.67999);
	CreateDynamicObject(866, 1463.18311, -1704.08521, 13.54225,   0.00000, 0.00000, -17.16000);
	CreateDynamicObject(866, 1460.97290, -1707.52295, 13.54225,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(865, 1494.02832, -1700.87268, 13.54314,   0.00000, 0.00000, -95.76001);
	CreateDynamicObject(866, 1494.57556, -1705.80457, 13.54225,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(866, 1497.02136, -1700.51050, 13.54225,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(866, 1499.18433, -1705.99207, 13.66635,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(866, 1495.57922, -1709.02454, 13.54225,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(865, 1497.71948, -1692.22009, 13.54314,   0.00000, 0.00000, -95.76001);
	CreateDynamicObject(865, 1495.30591, -1694.29272, 13.54314,   0.00000, 0.00000, -95.76001);
	CreateDynamicObject(865, 1498.18713, -1703.86816, 13.54314,   0.00000, 0.00000, -95.76001);
	CreateDynamicObject(865, 1494.39575, -1688.70898, 13.54314,   0.00000, 0.00000, -95.76001);
	CreateDynamicObject(865, 1497.97070, -1687.24695, 13.54314,   0.00000, 0.00000, -95.76001);
	CreateDynamicObject(866, 1493.83569, -1697.68188, 13.54225,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(866, 1494.14880, -1704.10876, 13.54225,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(866, 1493.16992, -1711.57727, 13.54225,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(866, 1493.91565, -1685.34094, 13.54225,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(866, 1499.64197, -1689.94531, 13.54225,   0.00000, 0.00000, -25.14000);
	CreateDynamicObject(867, 1462.15198, -1685.34363, 14.00115,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(867, 1461.78125, -1700.11938, 14.00115,   0.00000, 0.00000, -118.37997);
	CreateDynamicObject(867, 1460.07825, -1698.81812, 14.00115,   0.00000, 0.00000, -215.70004);
	CreateDynamicObject(830, 1498.11890, -1697.86792, 14.21768,   0.00000, 0.00000, -186.36009);
	CreateDynamicObject(830, 1485.95947, -1664.53101, 14.21768,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(746, 1494.21667, -1691.15784, 13.54279,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(750, 1494.04346, -1708.85181, 13.44249,   0.00000, 0.00000, -43.74001);
	CreateDynamicObject(751, 1458.69336, -1704.46667, 13.54581,   0.00000, 0.00000, -85.67999);
	CreateDynamicObject(751, 1459.36096, -1701.97437, 13.54581,   0.00000, 0.00000, -128.22005);
	CreateDynamicObject(865, 1499.71948, -1617.82935, 13.54314,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(866, 1500.01233, -1622.45667, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1502.93433, -1622.54346, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(865, 1503.63733, -1623.45398, 13.54314,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(866, 1502.75366, -1617.46802, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1459.04419, -1623.93164, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(865, 1457.97119, -1617.76978, 13.54314,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(865, 1460.09656, -1621.21606, 13.54314,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(865, 1460.08557, -1617.82593, 13.54314,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(866, 1455.90881, -1624.45496, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1459.04419, -1623.93164, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1456.42139, -1619.85828, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(866, 1499.94531, -1624.76929, 13.53821,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(865, 1502.51880, -1619.50598, 13.54314,   0.00000, 0.00000, -32.16000);
	CreateDynamicObject(639, 1511.83984, -1683.48718, 16.12773,   0.00000, 0.00000, -142.73999);
	CreateDynamicObject(14400, 1499.64246, -1683.77307, 13.89849,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1499.16699, -1685.67859, 13.73985,   0.00000, 0.00000, -200.09999);
	CreateDynamicObject(14400, 1497.77112, -1694.75098, 13.73985,   0.00000, 0.00000, -292.20004);
	CreateDynamicObject(14400, 1496.97852, -1699.84937, 13.68267,   0.00000, 0.00000, -372.47992);
	CreateDynamicObject(14400, 1472.59265, -1668.19714, 13.89849,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1461.72986, -1684.32056, 13.73985,   0.00000, 0.00000, -200.09999);
	CreateDynamicObject(14400, 1461.99475, -1689.46350, 13.73985,   0.00000, 0.00000, -292.20004);
	CreateDynamicObject(1247, 1555.87915, -1675.61816, 18.67982,   0.00000, 0.00000, 270.45178);
	CreateDynamicObject(1215, 1515.78064, -1606.91919, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.78113, -1610.10999, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.79016, -1608.51270, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.86719, -1620.54114, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.84827, -1618.46936, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.88135, -1624.65234, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.86243, -1622.62024, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.89453, -1628.62341, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.87549, -1626.63135, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.90698, -1632.28003, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.88831, -1630.32483, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.93262, -1639.80920, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.91394, -1637.92908, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.91956, -1636.00378, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.90088, -1634.08594, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.86499, -1613.59570, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.87488, -1615.25562, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.86682, -1616.92188, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.82532, -1611.91992, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.91394, -1637.92908, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.93262, -1639.80920, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.91956, -1636.00378, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.90088, -1634.08594, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.90698, -1632.28003, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.88831, -1630.32483, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.89453, -1628.62341, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.87549, -1626.63135, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.88135, -1624.65234, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.86243, -1622.62024, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.86719, -1620.54114, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.84827, -1618.46936, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.86682, -1616.92188, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.87488, -1615.25562, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.86499, -1613.59570, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.82532, -1611.91992, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.78113, -1610.10999, 13.46737,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.55188, -1692.92078, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.55554, -1691.01648, 13.45966,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.50525, -1694.81592, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.41187, -1696.67358, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.43018, -1698.59375, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.46924, -1700.35449, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.46814, -1702.43542, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.44531, -1704.19055, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.50366, -1706.15942, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.49585, -1708.48181, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.44727, -1710.42773, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.46130, -1712.43042, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.42627, -1714.27600, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.39355, -1716.17639, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1515.37964, -1717.87708, 13.52173,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1346, 1515.29956, -1743.05872, 13.86990,   0.00000, 0.00000, 270.04349);
	CreateDynamicObject(1346, 1516.63513, -1743.07458, 13.86990,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1342, 1465.29309, -1678.69385, 14.05739,   0.00000, 0.00000, 110.09998);
	CreateDynamicObject(1341, 1465.99084, -1621.67114, 13.97346,   0.00000, 0.00000, -14.88000);
	CreateDynamicObject(1340, 1466.58374, -1614.43689, 14.15433,   0.00000, 0.00000, 25.62000);
	CreateDynamicObject(1363, 1496.88232, -1655.76819, 13.92264,   0.00000, 0.00000, -13.61999);
	CreateDynamicObject(1363, 1498.86438, -1657.02686, 13.92264,   0.00000, 0.00000, 30.29999);
	CreateDynamicObject(1223, 1497.52954, -1657.03479, 13.04683,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1223, 1497.47986, -1657.03491, 13.04680,   0.00000, 0.00000, -244.00000);
	CreateDynamicObject(1223, 1497.52869, -1657.07471, 13.04680,   0.00000, 0.00000, -486.93994);
	CreateDynamicObject(1363, 1496.82178, -1658.05237, 13.92264,   0.00000, 0.00000, 6.00000);
	CreateDynamicObject(2677, 1466.56201, -1624.50305, 13.32103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2677, 1457.04822, -1650.65796, 13.32103,   0.00000, 0.00000, 203.51993);
	CreateDynamicObject(2677, 1494.00012, -1661.11108, 13.32103,   0.00000, 0.00000, 220.19989);
	CreateDynamicObject(2675, 1465.69421, -1619.92334, 13.11935,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2676, 1494.23425, -1646.69299, 13.16231,   0.00000, 0.00000, 66.95999);
	CreateDynamicObject(2676, 1457.06970, -1655.19775, 13.16231,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2676, 1470.48779, -1693.86328, 13.16231,   0.00000, 0.00000, -66.60001);
	
	//Letreros de Velocidad Dixel
	CreateDynamicObject(19991, -150.61182, -972.39520, 26.27450,   0.00000, 0.00000, -131.93993);
	CreateDynamicObject(19988, -76.92352, -1096.95593, 4.16921,   0.00000, 0.00000, -191.04025);
	CreateDynamicObject(19988, -89.09361, -1092.54968, 4.12158,   0.00000, 0.00000, 161.09972);
	CreateDynamicObject(19988, -154.70380, -1294.96094, 1.86729,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19988, -140.01350, -1297.41797, 1.33284,   0.00000, 0.00000, -21.59999);
	CreateDynamicObject(19991, -139.72859, -1295.73279, 1.54199,   0.00000, 0.00000, -184.14015);
	CreateDynamicObject(19991, -154.53920, -1293.33435, 1.75570,   0.00000, 0.00000, -194.51999);
	CreateDynamicObject(19988, -14.25813, -1526.21045, 1.24153,   0.00000, 0.00000, -111.90004);
	CreateDynamicObject(19988, 80.94150, -1533.36719, 4.32540,   0.00000, 0.00000, 77.69998);
	CreateDynamicObject(19988, 81.09331, -1521.71228, 3.58694,   0.00000, 0.00000, 77.69998);
	CreateDynamicObject(19991, -11.24132, -1518.64685, 1.25000,   0.00000, 0.00000, -280.50027);
	CreateDynamicObject(19991, -9.67254, -1511.31079, 1.25044,   0.00000, 0.00000, 76.73998);
	CreateDynamicObject(19988, -11.66275, -1519.32715, 1.29614,   0.00000, 0.00000, -104.40002);
	CreateDynamicObject(19991, 79.81115, -1537.95020, 4.34144,   0.00000, 0.00000, -98.46001);
	CreateDynamicObject(19991, 76.92603, -1548.24561, 4.67339,   0.00000, 0.00000, -101.70003);
	CreateDynamicObject(19991, -89.95040, -1096.44702, 4.02612,   0.00000, 0.00000, -3.90000);
	CreateDynamicObject(19991, -77.67851, -1098.40283, 3.82912,   0.00000, 0.00000, -52.19998);
	CreateDynamicObject(19988, -359.90561, -760.61285, 29.02414,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19988, -346.43698, -758.79028, 29.09026,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19991, -346.84848, -757.36151, 28.97859,   0.00000, 0.00000, -154.26001);
	CreateDynamicObject(19991, -360.07831, -759.37097, 28.91390,   0.00000, 0.00000, 187.86000);
	CreateDynamicObject(19991, -404.35144, -522.59229, 18.04630,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19991, -391.22525, -523.33514, 17.94417,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19988, -391.26468, -522.05853, 18.06276,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19988, -404.21176, -521.86432, 17.99712,   0.00000, 0.00000, 174.84003);
	CreateDynamicObject(19143, 1519.98438, -1658.19019, 12.54153,   0.00000, 0.00000, 0.00000);
	
	//Ballas Camionero Dixel
	CreateDynamicObject(979, -425.67325, -641.47302, 11.58263,   -0.66000, 4.92000, 16.14000);
	CreateDynamicObject(979, -434.77698, -643.27753, 12.43312,   -0.66000, 4.92000, 7.50000);
	CreateDynamicObject(979, -443.89685, -643.22906, 13.28712,   -0.48000, 5.34000, -6.42000);
	CreateDynamicObject(979, -453.03601, -641.43353, 14.24456,   1.56000, 6.24000, -15.96001);
	CreateDynamicObject(979, -461.33661, -637.68805, 15.30986,   3.30000, 7.26000, -34.38002);
	CreateDynamicObject(979, -468.49655, -632.29797, 16.23220,   -0.48000, 4.26000, -41.46002);
	CreateDynamicObject(979, -474.44315, -625.33411, 16.76852,   -9.72001, 2.52001, -56.46001);
	CreateDynamicObject(979, -479.40192, -617.54962, 17.05112,   -10.14001, 1.08001, -58.26001);
	CreateDynamicObject(979, -489.68835, -596.79175, 17.78196,   -12.00001, 4.02000, -65.94005);
	CreateDynamicObject(979, -492.79953, -588.17230, 19.21216,   -12.18001, 13.92000, -69.72003);
	CreateDynamicObject(979, -495.39014, -579.42786, 21.72118,   -12.30001, 17.58000, -69.72003);
	CreateDynamicObject(979, -497.11670, -570.57532, 23.93645,   -12.24001, 10.73998, -82.02003);
	CreateDynamicObject(979, -497.41284, -567.76990, 24.45062,   -13.32000, 11.33999, -82.02003);
	CreateDynamicObject(979, -430.52588, -628.67456, 11.61246,   0.48000, -6.18000, 194.33998);
	CreateDynamicObject(979, -439.66901, -629.72363, 12.70797,   0.60000, -7.44000, 178.98004);
	CreateDynamicObject(979, -448.72037, -628.45288, 14.04319,   0.42000, -9.48000, 165.06006);
	CreateDynamicObject(979, -456.66391, -624.45892, 15.40179,   0.72000, -7.62000, 141.24014);
	CreateDynamicObject(979, -462.94302, -617.85437, 16.13289,   -0.66000, -1.32000, 125.76008);
	CreateDynamicObject(979, -468.16919, -610.19702, 16.46459,   -1.08000, -2.34000, 122.88009);
	CreateDynamicObject(979, -472.77066, -602.12189, 16.84381,   -1.08000, -2.34000, 116.16008);
	CreateDynamicObject(979, -476.68222, -593.68805, 17.31341,   -1.08000, -3.48000, 113.28011);
	CreateDynamicObject(979, -479.82788, -585.00262, 18.60600,   -2.22000, -12.84000, 106.08016);
	CreateDynamicObject(979, -481.58658, -576.18317, 21.07309,   -7.56000, -17.88000, 93.36014);
	CreateDynamicObject(979, -481.54712, -567.38995, 23.89002,   -7.56000, -17.88000, 81.66020);
	
	//Escaleras Heli SAPD
	CreateDynamicObject(12987, 1552.19458, -1636.50024, 16.15147,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(12987, 1559.75610, -1636.58533, 22.39621,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8614, 1565.75281, -1636.95044, 26.50508,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1473, 1570.05505, -1636.52759, 24.11175,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1473, 1567.12939, -1636.98779, 23.88100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18850, 1564.60950, -1654.02820, 15.77882,   0.00000, 0.00000, 0.00000);
	
	//Camioneros Parasol
	CreateDynamicObject(4853, -557.00470, -502.01758, 27.38450,   0.00000, 0.00000, 0.00000);

	//oficina autoescuela
	tmpobjid = CreateDynamicObject(1566,1066.180,-337.779,2798.219,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1569,1074.802,-352.562,2796.679,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8565,1074.089,-319.510,2798.780,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8565,1101.339,-355.450,2798.780,0.000,0.000,-90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8565,1076.130,-371.209,2798.780,0.000,0.000,-180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8565,1042.680,-348.070,2798.780,0.000,0.000,-270.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8565,1039.729,-352.500,2798.780,0.000,0.000,135.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1566,1069.349,-337.772,2798.219,0.000,0.000,180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8565,1094.729,-369.000,2798.780,0.000,0.000,-180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(8565,1085.150,-315.450,2798.780,0.000,0.000,-45.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1714,1074.670,-345.239,2796.699,0.000,0.000,-67.680,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1822,1061.270,-348.339,2796.699,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	tmpobjid = CreateDynamicObject(1999,1078.719,-338.490,2796.699,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 3, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 4, 19480, "signsurf", "sign", 0x00000000);
	tmpobjid = CreateDynamicObject(2007,1081.910,-338.880,2796.699,0.000,0.000,-45.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2423,1064.170,-342.089,2796.699,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2424,1064.239,-338.260,2796.699,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2424,1063.239,-342.089,2796.699,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2424,1062.310,-342.089,2796.699,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2894,1064.239,-339.679,2797.751,0.000,0.000,-77.099,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2961,1065.765,-337.798,2798.040,0.000,0.000,180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3111,1078.180,-350.640,2799.370,90.000,90.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2186,1075.725,-338.381,2796.699,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(3017,1077.819,-349.519,2797.510,0.000,0.000,-180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(632,1082.808,-340.654,2797.129,0.000,0.000,-43.439,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(632,1076.038,-350.466,2797.129,0.000,0.000,-43.439,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2009,1073.047,-339.808,2796.699,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 3, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 4, 19480, "signsurf", "sign", 0x00000000);
	tmpobjid = CreateDynamicObject(1569,1063.952,-350.898,2796.677,0.000,0.000,135.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(632,1067.035,-351.967,2797.129,0.000,0.000,-12.839,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1963,1078.209,-349.910,2797.100,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2424,1064.239,-339.190,2796.699,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2424,1064.239,-340.119,2796.699,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2424,1064.239,-341.049,2796.699,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1715,1062.465,-338.764,2796.709,0.000,0.000,88.500,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1715,1062.381,-340.737,2796.709,0.000,0.000,101.819,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2009,1074.039,-346.519,2796.699,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 3, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 4, 19480, "signsurf", "sign", 0x00000000);
	tmpobjid = CreateDynamicObject(1999,1082.390,-341.757,2796.699,0.000,0.000,-90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 3, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 4, 19480, "signsurf", "sign", 0x00000000);
	tmpobjid = CreateDynamicObject(1999,1073.019,-343.157,2796.699,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 3, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 4, 19480, "signsurf", "sign", 0x00000000);
	tmpobjid = CreateDynamicObject(2007,1081.930,-350.100,2796.699,0.000,0.000,-180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2007,1080.930,-350.100,2796.699,0.000,0.000,-180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2009,1082.429,-346.908,2796.699,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 3, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 4, 19480, "signsurf", "sign", 0x00000000);
	tmpobjid = CreateDynamicObject(2272,1062.416,-348.600,2798.100,0.000,0.000,135.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 15040, "cuntcuts", "GB_tile01", 0x00000000);
	tmpobjid = CreateDynamicObject(1549,1080.129,-350.233,2796.620,0.000,0.000,23.040,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2894,1072.939,-339.429,2797.508,0.000,0.000,-289.200,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2126,1069.709,-352.769,2796.699,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	tmpobjid = CreateDynamicObject(2961,1074.771,-350.829,2798.040,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2894,1082.211,-347.028,2797.510,0.000,0.000,-195.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1714,1074.560,-342.519,2796.699,0.000,0.000,-101.819,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1714,1074.290,-339.989,2796.699,0.000,0.000,-114.660,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1714,1079.589,-339.779,2796.699,0.000,0.000,-168.479,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1714,1081.049,-342.556,2796.699,0.000,0.000,-266.100,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1714,1082.670,-345.771,2796.699,0.000,0.000,-408.839,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1714,1078.180,-348.420,2796.699,0.000,0.000,-361.920,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2611,1081.439,-350.634,2798.820,0.000,0.000,-180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 3, 18081, "cj_barb", "barberspic1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 5, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 6, 19480, "signsurf", "sign", 0x00000000);
	tmpobjid = CreateDynamicObject(3077,1078.239,-350.700,2801.340,0.000,180.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 18031, "cj_exp", "mp_furn_floor", 0x00000000);
	tmpobjid = CreateDynamicObject(1651,1078.439,-349.440,2796.399,0.000,0.000,-90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1651,1077.040,-350.899,2796.399,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(1651,1078.400,-350.420,2797.429,0.000,90.000,-90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(14599,1092.974,-343.996,2798.614,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 10, 10101, "2notherbuildsfe", "sl_vicbrikwall01", 0x00000000);
	tmpobjid = CreateDynamicObject(2272,1065.238,-351.425,2798.100,0.000,0.000,135.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 14489, "carlspics", "AH_landscap1", 0x00000000);
	tmpobjid = CreateDynamicObject(2272,1067.569,-352.404,2798.100,0.000,0.000,180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 15040, "cuntcuts", "GB_canvas06", 0x00000000);
	tmpobjid = CreateDynamicObject(2272,1073.118,-352.404,2798.100,0.000,0.000,180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 15040, "cuntcuts", "GB_canvas15", 0x00000000);
	tmpobjid = CreateDynamicObject(11744,1073.934,-338.565,2797.517,180.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19610,1073.932,-338.559,2797.554,-70.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19807,1073.059,-340.131,2797.577,0.000,0.000,117.119,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2263,1073.904,-339.108,2797.554,-4.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 17511, "stadium_lae2", "ticketsnprice_lae2", 0x00000000);
	tmpobjid = CreateDynamicObject(2777,1071.511,-338.290,2797.189,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2777,1070.851,-338.290,2797.189,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2777,1070.190,-338.290,2797.189,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2777,1072.217,-343.249,2797.189,0.000,0.000,180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2777,1072.969,-347.331,2797.189,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2777,1082.620,-347.708,2797.189,0.000,0.000,270.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2222,1079.074,-349.846,2797.576,0.000,0.000,36.780,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 6, 19480, "signsurf", "sign", 0x00000000);
	tmpobjid = CreateDynamicObject(2222,1078.667,-350.120,2797.576,0.000,0.000,91.019,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 6, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 7, 16644, "a51_detailstuff", "roucghstonebrtb", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 8, 16644, "a51_detailstuff", "roucghstonebrtb", 0x00000000);
	tmpobjid = CreateDynamicObject(2222,1078.650,-349.759,2797.576,0.000,0.000,168.900,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 6, 19480, "signsurf", "sign", 0x00000000);
	tmpobjid = CreateDynamicObject(11743,1079.259,-350.282,2797.505,0.000,0.000,-159.359,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19787,1060.916,-342.773,2799.500,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 14581, "ab_mafiasuitea", "ab_pic_bridge", 0x00000000);
	tmpobjid = CreateDynamicObject(2249,1069.477,-351.976,2797.863,0.000,0.000,41.699,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	tmpobjid = CreateDynamicObject(19808,1073.766,-338.947,2797.527,0.000,0.000,8.460,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19814,1074.753,-337.810,2797.140,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19814,1083.039,-346.194,2797.140,0.000,0.000,-90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19814,1071.223,-352.905,2797.140,0.000,0.000,-180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19814,1063.593,-337.808,2797.140,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19808,1064.123,-338.883,2797.767,0.000,0.000,-86.639,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19807,1064.120,-341.709,2797.827,0.000,0.000,-121.019,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2263,1073.940,-338.109,2797.485,4.000,0.000,180.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(2263,1073.324,-342.989,2797.554,-4.000,0.000,125.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19894, "laptopsamp1", "laptopscreen2", 0x00000000);
	tmpobjid = CreateDynamicObject(2263,1072.488,-343.530,2797.485,4.000,0.000,305.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(11744,1078.628,-338.356,2797.517,180.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19610,1078.628,-338.356,2797.554,-70.000,0.000,25.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2263,1078.852,-338.856,2797.554,-4.000,0.000,25.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14530, "estate2", "ab_SFmap", 0x00000000);
	tmpobjid = CreateDynamicObject(2263,1078.461,-337.930,2797.485,4.000,0.000,205.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(11744,1082.462,-341.698,2797.517,180.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19610,1082.462,-341.698,2797.554,-70.000,0.000,-45.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2263,1082.061,-342.073,2797.554,-4.000,0.000,-45.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 17511, "stadium_lae2", "ticketsnprice_lae2", 0x00000000);
	tmpobjid = CreateDynamicObject(2263,1082.794,-341.393,2797.485,4.000,0.000,135.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(2263,1081.760,-346.056,2797.554,-4.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 8409, "gnhotel1", "gnhotelstairs01_128", 0x00000000);
	tmpobjid = CreateDynamicObject(11744,1081.212,-346.051,2797.517,180.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19610,1081.212,-346.051,2797.554,-70.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2263,1080.760,-346.019,2797.485,4.000,0.000,270.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(19610,1072.827,-345.604,2797.554,-70.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2263,1072.380,-345.558,2797.485,4.000,0.000,270.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(2263,1073.376,-345.596,2797.554,-4.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14599, "paperchasebits", "ab_blueprint2", 0x00000000);
	tmpobjid = CreateDynamicObject(11744,1072.827,-345.604,2797.517,180.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(11744,1072.864,-343.289,2797.517,180.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19610,1072.864,-343.289,2797.554,-70.000,0.000,125.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(11744,1064.495,-340.730,2797.757,180.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19610,1064.495,-340.730,2797.794,-70.000,0.000,-90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2263,1064.943,-340.773,2797.725,4.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(2263,1063.947,-340.736,2797.794,-4.000,0.000,-90.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 17511, "stadium_lae2", "ticketsnprice_lae2", 0x00000000);
	tmpobjid = CreateDynamicObject(2263,1063.988,-338.673,2797.794,-4.000,0.000,-60.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 17511, "stadium_lae2", "ticketsnprice_lae2", 0x00000000);
	tmpobjid = CreateDynamicObject(2263,1064.872,-338.204,2797.725,4.000,0.000,120.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(19610,1064.467,-338.407,2797.794,-70.000,0.000,-60.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(11744,1064.467,-338.407,2797.757,180.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-95-percent", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19894,1069.572,-352.528,2797.205,0.000,0.000,-58.979,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19894,1078.038,-350.307,2797.502,0.000,0.000,72.240,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19893,1077.306,-350.107,2797.502,0.000,0.000,160.980,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 19894, "laptopsamp1", "laptopscreen2", 0x00000000);
	tmpobjid = CreateDynamicObject(19893,1073.776,-346.553,2797.512,0.000,0.000,206.819,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19807,1064.078,-337.992,2797.827,0.000,0.000,-66.479,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19808,1064.131,-340.898,2797.767,0.000,0.000,-92.879,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19808,1079.383,-338.623,2797.527,0.000,0.000,2.579,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19808,1082.185,-342.161,2797.527,0.000,0.000,-95.999,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19808,1081.598,-346.426,2797.527,0.000,0.000,-257.340,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(2250,1081.308,-347.105,2797.943,0.000,0.000,135.719,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 1, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	tmpobjid = CreateDynamicObject(19808,1073.229,-342.754,2797.527,0.000,0.000,100.859,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19808,1073.278,-345.633,2797.527,0.000,0.000,84.299,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19807,1082.364,-342.986,2797.577,0.000,0.000,239.579,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(18075,1067.443,-344.392,2800.545,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10778, "airportcpark_sfse", "ws_fluorescent2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 10778, "airportcpark_sfse", "ws_fluorescent2", 0x00000000);
	tmpobjid = CreateDynamicObject(18075,1077.530,-344.392,2800.545,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10778, "airportcpark_sfse", "ws_fluorescent2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 10778, "airportcpark_sfse", "ws_fluorescent2", 0x00000000);
	tmpobjid = CreateDynamicObject(18075,1072.833,-356.400,2800.545,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10778, "airportcpark_sfse", "ws_fluorescent2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(tmpobjid, 1, 10778, "airportcpark_sfse", "ws_fluorescent2", 0x00000000);
	tmpobjid = CreateDynamicObject(19379,1066.030,-342.540,2796.614,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14784, "genintwarehsint3", "lastat97", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379,1066.030,-352.174,2796.614,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14784, "genintwarehsint3", "lastat97", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379,1076.530,-352.174,2796.614,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14784, "genintwarehsint3", "lastat97", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379,1087.030,-352.174,2796.614,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14784, "genintwarehsint3", "lastat97", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379,1076.530,-342.540,2796.614,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14784, "genintwarehsint3", "lastat97", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19379,1087.030,-342.540,2796.614,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 14784, "genintwarehsint3", "lastat97", 0xFFFFFFFF);
	tmpobjid = CreateDynamicObject(19377,1087.030,-342.540,2800.560,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19853, "mihouse1", "greenwall1", 0x00000000);
	tmpobjid = CreateDynamicObject(19377,1087.030,-352.174,2800.560,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19853, "mihouse1", "greenwall1", 0x00000000);
	tmpobjid = CreateDynamicObject(19377,1076.530,-352.174,2800.560,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19853, "mihouse1", "greenwall1", 0x00000000);
	tmpobjid = CreateDynamicObject(19377,1076.530,-342.540,2800.560,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19853, "mihouse1", "greenwall1", 0x00000000);
	tmpobjid = CreateDynamicObject(19377,1066.030,-342.540,2800.560,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19853, "mihouse1", "greenwall1", 0x00000000);
	tmpobjid = CreateDynamicObject(19377,1066.030,-352.174,2800.560,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	SetDynamicObjectMaterial(tmpobjid, 0, 19853, "mihouse1", "greenwall1", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(19368,1088.479,-367.290,2798.449,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(1726,1061.709,-347.016,2796.687,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2000,1082.489,-343.786,2796.699,0.000,0.000,-90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2002,1061.530,-344.296,2796.697,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2059,1063.209,-342.019,2797.765,0.000,0.000,-8.100,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2257,1075.157,-337.847,2798.900,0.000,90.000,0.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2813,1072.919,-342.253,2797.511,0.000,0.000,-86.040,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2816,1070.297,-352.242,2797.199,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2828,1073.142,-346.542,2797.510,0.000,0.000,-69.360,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2853,1070.219,-352.279,2796.810,0.000,0.000,79.139,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2854,1073.109,-352.369,2797.206,0.000,0.000,42.060,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2855,1061.829,-347.790,2797.209,0.000,0.000,59.580,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(14852,1059.799,-338.144,2795.229,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(14852,1061.317,-365.674,2795.229,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(14852,1082.923,-372.690,2800.750,0.000,0.000,-90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(19171,1070.920,-352.906,2798.179,0.000,90.000,90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(1912,1072.619,-351.570,2796.699,0.000,0.000,0.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(19170,1070.920,-352.906,2799.679,0.000,90.000,90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(19169,1069.420,-352.906,2798.179,0.000,90.000,90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(19168,1069.420,-352.906,2799.679,0.000,90.000,90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(1726,1068.663,-352.341,2796.687,0.000,0.000,180.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(1726,1073.599,-352.329,2796.687,0.000,0.000,180.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2690,1082.680,-350.190,2797.080,0.000,0.000,-125.519,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(2002,1079.800,-349.382,2796.697,0.000,0.000,180.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(14599,1069.441,-348.873,2798.993,0.000,0.000,-90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateDynamicObject(14599,1072.513,-345.600,2798.993,0.000,0.000,90.000,-1,-1,-1,300.000,300.000);
	tmpobjid = CreateObject(6959,1073.191,-347.035,2796.728,0.000,0.000,0.000,300.000);

	// Mapeo aeropuerto --Graber
	CreateDynamicObject(8378, -1860.23962402, 45.58924484, 1053.52038574, 270.00000000, 180.00000000, 180.00000000, 1, 14); //object(vgsbighngrdoor) (1)
	CreateDynamicObject(8378, -1860.36950684, 62.81288528, 1053.52038574, 270.00000000, 179.99450684, 179.99450684, 1, 14); //object(vgsbighngrdoor) (2)
	CreateDynamicObject(2773, -1868.43530273, 47.45006561, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (1)
	CreateDynamicObject(2773, -1858.77563477, 47.44921875, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (2)
	CreateDynamicObject(2773, -1860.69921875, 47.44921875, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (3)
	CreateDynamicObject(2773, -1862.63476562, 47.44921875, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773, -1864.56469727, 47.44921875, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (5)
	CreateDynamicObject(2773, -1866.50061035, 47.45006561, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (6)
	CreateDynamicObject(2773, -1865.01013184, 45.04759979, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (9)
	CreateDynamicObject(2773, -1859.20410156, 45.05175781, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (7)
	CreateDynamicObject(2773, -1857.27514648, 45.05175781, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (8)
	CreateDynamicObject(2773, -1861.13964844, 45.04687500, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (10)
	CreateDynamicObject(2773, -1863.06933594, 45.04687500, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (11)
	CreateDynamicObject(7022, -1844.88525391, 21.26480865, 1055.70971680, 0.00000000, 0.00000000, 180.00000000, 1, 14); //object(vegasnnewfence2) (1)
	CreateDynamicObject(1538, -1855.70336914, 43.65233612, 1054.18908691, 180.00000000, 180.00000000, 0.00000000, 1, 14); //object(sl_dtdoor1) (2)
	CreateDynamicObject(1538, -1854.20715332, 43.65233612, 1054.18908691, 0.00000000, 0.00000000, 180.00000000, 1, 14); //object(sl_dtdoor1) (3)
	CreateDynamicObject(7022, -1926.37048340, 23.84698296, 1055.70971680, 0.00000000, 0.00000000, 179.99450684, 1, 14); //object(vegasnnewfence2) (2)
	CreateDynamicObject(7022, -1878.65966797, 49.94799805, 1056.84143066, 0.00000000, 0.00000000, 179.99450684, 1, 14); //object(vegasnnewfence2) (3)
	CreateDynamicObject(2773, -1855.34533691, 45.05175781, 1054.70629883, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_airprt_bar) (12)
	CreateDynamicObject(5779, -1876.73547363, 49.41286087, 1053.75878906, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(garagdoor1_lawn) (1)
	CreateDynamicObject(5779, -1871.21875000, 49.44665527, 1056.50878906, 90.00000000, 0.00000000, 270.00000000, 1, 14); //object(garagdoor1_lawn) (2)
	CreateDynamicObject(5779, -1869.74182129, 46.25665665, 1053.75878906, 0.00000000, 0.00000000, 180.00000000, 1, 14); //object(garagdoor1_lawn) (3)
	CreateDynamicObject(7022, -1801.67504883, 27.10328674, 1055.70971680, 180.00000000, 0.00000000, 359.99450684, 1, 14); //object(vegasnnewfence2) (5)
	CreateDynamicObject(1533, -1837.44042969, 49.54731750, 1054.18908691, 0.00000000, 0.00000000, 180.00000000, 1, 14); //object(gen_doorext12) (1)
	CreateDynamicObject(1533, -1839.94042969, 49.54687500, 1054.18908691, 0.00000000, 0.00000000, 179.99450684, 1, 14); //object(gen_doorext12) (2)
	CreateDynamicObject(1616, -1835.69189453, 49.68079376, 1058.61840820, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(nt_securecam1_01) (1)
	CreateDynamicObject(1616, -1835.55847168, 71.63762665, 1058.61840820, 0.00000000, 0.00000000, 90.00000000, 1, 14); //object(nt_securecam1_01) (2)
	CreateDynamicObject(1616, -1888.32629395, 71.23299408, 1058.61840820, 0.00000000, 0.00000000, 176.00000000, 1, 14); //object(nt_securecam1_01) (3)
	CreateDynamicObject(1616, -1888.21936035, 49.70156479, 1058.61840820, 0.00000000, 0.00000000, 219.99548340, 1, 14); //object(nt_securecam1_01) (4)
	CreateDynamicObject(1569, -1874.06140137, 49.43497086, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(adam_v_door) (1)
	CreateDynamicObject(986, -1878.03381348, 49.39949036, 1054.00878906, 0.00000000, 0.00000000, 180.00000000, 1, 14); //object(gate_autol) (1)
	CreateDynamicObject(986, -1869.76611328, 44.86858368, 1054.00878906, 0.00000000, 0.00000000, 89.99450684, 1, 14); //object(gate_autol) (2)
	CreateDynamicObject(2165, -1870.32202148, 46.70485306, 1054.18908691, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(med_office_desk_1) (1)
	CreateDynamicObject(1671, -1871.24084473, 46.33495331, 1054.64929199, 0.00000000, 0.00000000, 86.00000000, 1, 14); //object(swivelchair_a) (1)
	CreateDynamicObject(2165, -1876.70275879, 48.83729553, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(med_office_desk_1) (2)
	CreateDynamicObject(1671, -1876.21899414, 47.86142731, 1054.64929199, 0.00000000, 0.00000000, 169.99548340, 1, 14); //object(swivelchair_a) (2)
	CreateDynamicObject(5779, -1878.21496582, 47.68431854, 1056.50878906, 90.00000000, 0.00000000, 0.00000000, 1, 14); //object(garagdoor1_lawn) (4)
	CreateDynamicObject(986, -1885.03320312, 49.40026855, 1054.00878906, 0.00000000, 0.00000000, 179.99450684, 1, 14); //object(gate_autol) (3)
	CreateDynamicObject(5779, -1891.74499512, 53.75197220, 1055.75878906, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(garagdoor1_lawn) (6)
	CreateDynamicObject(7022, -1871.71838379, 49.00197983, 1056.40087891, 0.00000000, 0.00000000, 269.99450684, 1, 14); //object(vegasnnewfence2) (6)
	CreateDynamicObject(5779, -1891.40856934, 65.80488586, 1055.75878906, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(garagdoor1_lawn) (8)
	CreateDynamicObject(986, -1835.12597656, 52.12500000, 1054.00878906, 0.00000000, 0.00000000, 269.98901367, 1, 14); //object(gate_autol) (4)
	CreateDynamicObject(986, -1835.16113281, 66.87500000, 1054.00878906, 0.00000000, 0.00000000, 269.98901367, 1, 14); //object(gate_autol) (5)
	CreateDynamicObject(986, -1835.06909180, 68.09167480, 1054.00878906, 0.00000000, 0.00000000, 269.98901367, 1, 14); //object(gate_autol) (6)
	CreateDynamicObject(986, -1831.06250000, 53.76757812, 1054.00878906, 0.00000000, 0.00000000, 359.98352051, 1, 14); //object(gate_autol) (7)
	CreateDynamicObject(986, -1888.81665039, 52.20916367, 1054.00878906, 0.00000000, 0.00000000, 269.98901367, 1, 14); //object(gate_autol) (9)
	CreateDynamicObject(986, -1888.85668945, 66.76372528, 1054.00878906, 0.00000000, 0.00000000, 269.98901367, 1, 14); //object(gate_autol) (10)
	CreateDynamicObject(986, -1888.85339355, 68.01367188, 1054.00878906, 0.00000000, 0.00000000, 269.98901367, 1, 14); //object(gate_autol) (11)
	CreateDynamicObject(2774, -1853.19958496, 75.15379333, 1053.94970703, 90.00000000, 0.00000000, 180.00000000, 1, 14); //object(cj_airp_pillars) (5)
	CreateDynamicObject(2774, -1854.37304688, 75.09274292, 1054.42968750, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (6)
	CreateDynamicObject(2774, -1855.87304688, 75.09179688, 1054.42968750, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (7)
	CreateDynamicObject(2774, -1856.99926758, 75.15332031, 1053.94970703, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (8)
	CreateDynamicObject(2774, -1870.15002441, 75.15332031, 1053.94970703, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (9)
	CreateDynamicObject(2774, -1866.30944824, 75.15332031, 1053.94970703, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (10)
	CreateDynamicObject(2774, -1867.48999023, 75.14046478, 1054.42968750, 90.00000000, 180.00000000, 359.99450684, 1, 14); //object(cj_airp_pillars) (11)
	CreateDynamicObject(2774, -1869.00000000, 75.13964844, 1054.42968750, 90.00000000, 179.99450684, 359.98901367, 1, 14); //object(cj_airp_pillars) (12)
	CreateDynamicObject(2774, -1876.83337402, 74.83754730, 1053.94970703, 90.00000000, 180.00000000, 359.99450684, 1, 14); //object(cj_airp_pillars) (13)
	CreateDynamicObject(2774, -1880.57934570, 74.98946381, 1053.94970703, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (14)
	CreateDynamicObject(2774, -1879.48925781, 74.98632812, 1054.42065430, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (15)
	CreateDynamicObject(2774, -1846.56958008, 75.06278229, 1053.94970703, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (16)
	CreateDynamicObject(2774, -1842.72619629, 75.07282257, 1053.94970703, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (17)
	CreateDynamicObject(2774, -1843.88464355, 75.11294556, 1054.42968750, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (18)
	CreateDynamicObject(2774, -1845.38378906, 75.11230469, 1054.42968750, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (19)
	CreateDynamicObject(2774, -1873.48950195, 66.17167664, 1066.26965332, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(cj_airp_pillars) (20)
	CreateDynamicObject(2774, -1861.73474121, 65.83523560, 1066.26965332, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(cj_airp_pillars) (21)
	CreateDynamicObject(2774, -1849.98437500, 66.04867554, 1066.26965332, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(cj_airp_pillars) (22)
	CreateDynamicObject(2774, -1849.83569336, 55.54894257, 1066.26965332, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(cj_airp_pillars) (23)
	CreateDynamicObject(2774, -1861.83496094, 55.37792969, 1066.26965332, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(cj_airp_pillars) (24)
	CreateDynamicObject(2774, -1873.33850098, 55.46418381, 1066.26965332, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(cj_airp_pillars) (25)
	CreateDynamicObject(970, -1886.64660645, 50.95172119, 1054.74060059, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(fencesmallb) (1)
	CreateDynamicObject(970, -1886.59606934, 52.70045090, 1054.74060059, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(fencesmallb) (2)
	CreateDynamicObject(1572, -1887.64404297, 51.92456818, 1054.75976562, 0.00000000, 0.00000000, 74.00000000, 1, 14); //object(cj_air_trolly) (1)
	CreateDynamicObject(1572, -1887.82214355, 50.22452927, 1054.75976562, 0.00000000, 0.00000000, 90.00000000, 1, 14); //object(cj_air_trolly) (2)
	CreateDynamicObject(1572, -1886.59777832, 51.58651733, 1054.75976562, 0.00000000, 0.00000000, 100.00000000, 1, 14); //object(cj_air_trolly) (3)
	CreateDynamicObject(1572, -1887.32128906, 50.22635651, 1054.75976562, 0.00000000, 0.00000000, 90.00000000, 1, 14); //object(cj_air_trolly) (6)
	CreateDynamicObject(1572, -1886.82128906, 50.22830963, 1054.75976562, 0.00000000, 0.00000000, 90.00000000, 1, 14); //object(cj_air_trolly) (7)
	CreateDynamicObject(1572, -1886.32128906, 50.23026276, 1054.75976562, 0.00000000, 0.00000000, 90.00000000, 1, 14); //object(cj_air_trolly) (8)
	CreateDynamicObject(1572, -1885.82128906, 50.23221588, 1054.75976562, 0.00000000, 0.00000000, 90.00000000, 1, 14); //object(cj_air_trolly) (9)
	CreateDynamicObject(1572, -1885.32128906, 50.23416901, 1054.75976562, 0.00000000, 0.00000000, 90.00000000, 1, 14); //object(cj_air_trolly) (10)
	CreateDynamicObject(1210, -1881.11462402, 61.93390656, 1054.93664551, 90.00000000, 0.00000000, 18.00000000, 1, 14); //object(briefcase) (1)
	CreateDynamicObject(1575, -1880.71887207, 61.27405167, 1054.74145508, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(drug_white) (1)
	CreateDynamicObject(1578, -1879.93920898, 60.90860748, 1054.79150391, 0.00000000, 0.00000000, 324.00000000, 1, 14); //object(drug_green) (1)
	CreateDynamicObject(2060, -1878.80468750, 60.99804688, 1054.89904785, 0.00000000, 0.00000000, 11.99707031, 1, 14); //object(cj_sandbag) (1)
	CreateDynamicObject(2060, -1877.33044434, 60.95769119, 1054.89904785, 0.00000000, 0.00000000, 349.99707031, 1, 14); //object(cj_sandbag) (2)
	CreateDynamicObject(1575, -1876.60888672, 61.59281921, 1054.74145508, 0.00000000, 0.00000000, 50.00000000, 1, 14); //object(drug_white) (2)
	CreateDynamicObject(1577, -1876.36340332, 62.39925385, 1054.78112793, 0.00000000, 0.00000000, 22.00000000, 1, 14); //object(drug_yellow) (1)
	CreateDynamicObject(2060, -1878.07971191, 60.98496628, 1055.10900879, 0.00000000, 0.00000000, 25.99694824, 1, 14); //object(cj_sandbag) (3)
	CreateDynamicObject(2060, -1866.58081055, 61.35897827, 1054.89904785, 0.00000000, 0.00000000, 11.99707031, 1, 14); //object(cj_sandbag) (4)
	CreateDynamicObject(1577, -1869.44091797, 61.01148224, 1054.81127930, 20.00000000, 32.00000000, 21.99462891, 1, 14); //object(drug_yellow) (2)
	CreateDynamicObject(1575, -1869.72241211, 60.97342682, 1054.74145508, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(drug_white) (3)
	CreateDynamicObject(1210, -1868.81115723, 61.09061813, 1054.93664551, 90.00000000, 0.00000000, 55.99560547, 1, 14); //object(briefcase) (3)
	CreateDynamicObject(2060, -1870.57153320, 61.60454941, 1054.89904785, 0.00000000, 0.00000000, 307.99694824, 1, 14); //object(cj_sandbag) (5)
	CreateDynamicObject(2060, -1865.82177734, 62.10905838, 1054.89904785, 0.00000000, 0.00000000, 255.99621582, 1, 14); //object(cj_sandbag) (6)
	CreateDynamicObject(1577, -1868.23144531, 60.81954193, 1054.78112793, 0.00000000, 0.00000000, 21.99462891, 1, 14); //object(drug_yellow) (3)
	CreateDynamicObject(2694, -1867.43640137, 61.04297256, 1054.79760742, 0.00000000, 0.00000000, 348.00000000, 1, 14); //object(cj_shoe_box2) (1)
	CreateDynamicObject(2694, -1870.60400391, 62.59955215, 1054.79760742, 0.00000000, 0.00000000, 355.99743652, 1, 14); //object(cj_shoe_box2) (2)
	CreateDynamicObject(2855, -1857.71484375, 62.21533203, 1054.83911133, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(gb_bedmags05) (1)
	CreateDynamicObject(2226, -1857.26611328, 61.40007782, 1054.93908691, 0.00000000, 0.00000000, 324.00000000, 1, 14); //object(low_hi_fi_3) (1)
	CreateDynamicObject(2028, -1856.48547363, 60.79243088, 1055.02246094, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(swank_console) (1)
	CreateDynamicObject(3070, -1854.84716797, 60.65188599, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(kmb_goggles) (1)
	CreateDynamicObject(1242, -1853.75659180, 61.07728958, 1055.00646973, 0.00000000, 0.00000000, 294.00000000, 1, 14); //object(bodyarmour) (1)
	CreateDynamicObject(1579, -1853.11523438, 61.09213257, 1054.79150391, 0.00000000, 0.00000000, 36.00000000, 1, 14); //object(drug_blue) (1)
	CreateDynamicObject(1650, -1855.30810547, 61.14089203, 1055.10058594, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(petrolcanm) (1)
	CreateDynamicObject(2060, -1852.80444336, 62.09720993, 1054.84570312, 0.00000000, 0.00000000, 266.00000000, 1, 14); //object(cj_sandbag) (7)
	CreateDynamicObject(2057, -1855.68347168, 60.80422211, 1055.00952148, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(flame_tins) (1)
	CreateDynamicObject(2060, -1854.50585938, 60.86756134, 1054.84570312, 0.00000000, 0.00000000, 352.00000000, 1, 14); //object(cj_sandbag) (8)
	CreateDynamicObject(2060, -1847.00390625, 61.85345459, 1054.84570312, 0.00000000, 0.00000000, 295.99645996, 1, 14); //object(cj_sandbag) (9)
	CreateDynamicObject(2060, -1846.25488281, 61.35116577, 1054.84570312, 0.00000000, 0.00000000, 343.99365234, 1, 14); //object(cj_sandbag) (10)
	CreateDynamicObject(2060, -1845.25585938, 60.84875488, 1054.84570312, 0.00000000, 0.00000000, 1.99291992, 1, 14); //object(cj_sandbag) (11)
	CreateDynamicObject(2060, -1844.27087402, 61.08041000, 1054.84570312, 0.00000000, 0.00000000, 345.98852539, 1, 14); //object(cj_sandbag) (12)
	CreateDynamicObject(2694, -1843.35644531, 61.04873657, 1054.79760742, 0.00000000, 0.00000000, 355.99548340, 1, 14); //object(cj_shoe_box2) (3)
	CreateDynamicObject(2694, -1846.08813477, 60.88632965, 1054.79760742, 0.00000000, 0.00000000, 255.99548340, 1, 14); //object(cj_shoe_box2) (4)
	CreateDynamicObject(2060, -1842.36962891, 61.75050735, 1054.84570312, 0.00000000, 0.00000000, 53.98693848, 1, 14); //object(cj_sandbag) (13)
	CreateDynamicObject(2694, -1842.88989258, 61.22753143, 1054.79760742, 0.00000000, 0.00000000, 259.99548340, 1, 14); //object(cj_shoe_box2) (5)
	CreateDynamicObject(2774, -1877.98925781, 74.98165894, 1054.42065430, 90.00000000, 0.00000000, 179.99450684, 1, 14); //object(cj_airp_pillars) (15)
	CreateDynamicObject(1594, -1838.21972656, 61.58564377, 1054.66613770, 0.00000000, 0.00000000, 22.00000000, 1, 14); //object(chairsntable) (1)
	CreateDynamicObject(1594, -1838.29296875, 57.07922363, 1054.66613770, 0.00000000, 0.00000000, 322.00000000, 1, 14); //object(chairsntable) (2)
	CreateDynamicObject(1594, -1836.13330078, 59.41477966, 1054.66613770, 0.00000000, 0.00000000, 49.99462891, 1, 14); //object(chairsntable) (3)
	CreateDynamicObject(1843, -1827.97729492, 65.11327362, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(shop_shelf02) (1)
	CreateDynamicObject(1843, -1831.97619629, 65.10897827, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(shop_shelf02) (2)
	CreateDynamicObject(1885, -1829.98046875, 65.10530853, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(shop_baskets) (1)
	CreateDynamicObject(1885, -1829.98046875, 65.10449219, 1054.43908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(shop_baskets) (2)
	CreateDynamicObject(1885, -1829.98046875, 65.10449219, 1054.68908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(shop_baskets) (3)
	CreateDynamicObject(1984, -1832.54504395, 63.24364471, 1054.18908691, 0.00000000, 0.00000000, 180.00000000, 1, 14); //object(shlf5_till) (1)
	CreateDynamicObject(2362, -1832.17968750, 63.32152557, 1055.13525391, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(cj_sweetie_tray_1) (1)
	CreateDynamicObject(2375, -1829.27124023, 54.13641357, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(shop_set_2_unit1) (1)
	CreateDynamicObject(2387, -1834.51599121, 54.30936050, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(shop_set_2_unit5) (1)
	CreateDynamicObject(2443, -1834.52587891, 65.46512604, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(cj_ff_frige) (1)
	CreateDynamicObject(2491, -1831.51562500, 54.64038086, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(model_stand) (1)
	CreateDynamicObject(2492, -1831.74523926, 54.63327789, 1055.20751953, 0.00000000, 0.00000000, 180.00000000, 1, 14); //object(manhunt_toy2_1) (1)
	CreateDynamicObject(2492, -1831.99609375, 54.39317322, 1055.20751953, 0.00000000, 0.00000000, 269.99450684, 1, 14); //object(manhunt_toy2_1) (2)
	CreateDynamicObject(2492, -1831.52062988, 54.37837219, 1055.20751953, 0.00000000, 0.00000000, 89.98904419, 1, 14); //object(manhunt_toy2_1) (3)
	CreateDynamicObject(2698, -1827.17431641, 56.79928970, 1055.13427734, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(cj_duds_rail01) (1)
	CreateDynamicObject(2967, -1834.12780762, 63.05489349, 1055.13525391, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(mobile1993a) (1)
	CreateDynamicObject(2967, -1834.00134277, 63.05997467, 1055.13525391, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(mobile1993a) (2)
	CreateDynamicObject(2967, -1833.85083008, 63.06591034, 1055.13525391, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(mobile1993a) (3)
	CreateDynamicObject(2967, -1833.70043945, 63.07176971, 1055.13525391, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(mobile1993a) (4)
	CreateDynamicObject(2942, -1835.60144043, 63.24560547, 1054.83203125, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(kmb_atm1) (1)
	CreateDynamicObject(2942, -1835.59985352, 64.59873199, 1054.83203125, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(kmb_atm1) (2)
	CreateDynamicObject(1842, -1827.51831055, 62.15694046, 1054.65637207, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(shop_shelf05) (1)
	CreateDynamicObject(1884, -1831.36718750, 59.99617767, 1054.18908691, 0.00000000, 0.00000000, 0.00000000, 1, 14); //object(shop_dblshlf) (1)
	CreateDynamicObject(2385, -1826.51562500, 59.60868073, 1054.18908691, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(shop_set_2_unit4) (1)
	CreateDynamicObject(2714, -1835.27478027, 59.50049591, 1056.20202637, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_open_sign_2) (1)
	CreateDynamicObject(2729, -1835.45263672, 60.80334854, 1057.63281250, 0.00000000, 0.00000000, 260.00000000, 1, 14); //object(cj_binc_post3) (1)
	CreateDynamicObject(2730, -1835.57739258, 59.61295700, 1057.65197754, 0.00000000, 0.00000000, 270.00000000, 1, 14); //object(cj_binc_post2) (1)
	CreateDynamicObject(2731, -1835.49853516, 58.42656708, 1057.66076660, 0.00000000, 0.00000000, 280.00000000, 1, 14); //object(cj_binc_post) (1)
	CreateDynamicObject(986, -1830.72778320, 65.81304932, 1054.00878906, 0.00000000, 0.00000000, 359.98352051, 1, 14); //object(gate_autol) (7)

	CreateDynamicObject(3503, -1888.84021, 59.48688, 1055.32764, 0.00000, 0.00000, 0.00000, 1, 14);
	CreateDynamicObject(3503, -1888.84021, 59.48688, 1057.94604, 0.00000, 0.00000, 0.00000, 1, 14);
	CreateDynamicObject(1569, -1893.83557, 61.23060, 1054.17383, 0.00000, 0.00000, 270.00000, 1, 14);
	CreateDynamicObject(1569, -1893.83557, 58.24080, 1054.17383, 0.00000, 0.00000, 90.00000, 1, 14);
	return 1;
}

public OnPlayerConnect(playerid)
{
	//Exterior Banco
	RemoveBuildingForPlayer(playerid, 1283, 1490.296, -1031.664, 25.992, 0.250);

	//TALLER
	RemoveBuildingForPlayer(playerid, 4594, 1825.000, -1413.930, 12.554, 0.250);
	RemoveBuildingForPlayer(playerid, 4606, 1825.000, -1413.930, 12.554, 0.250);

	//Remove vallas arbol bug camionero
	RemoveBuildingForPlayer(playerid, 785, -460.2578, -591.9609, 11.0625, 0.25);
	RemoveBuildingForPlayer(playerid, 800, -500.7813, -567.7188, 25.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 800, -500.7266, -574.1953, 25.7422, 0.25);
	
	//Eliminar semaforos en ayuntamiento
	RemoveBuildingForPlayer(playerid, 1283, 1357.5156, -1732.9375, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1376.5156, -1731.8516, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1441.8594, -1733.0078, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1403.3672, -1733.0078, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1414.4141, -1731.4297, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1430.1719, -1719.4688, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1513.2344, -1732.9219, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1428.9375, -1605.8203, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1416.5859, -1591.7422, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1428.8984, -1577.1328, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1443.2031, -1592.9453, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1568.8828, -1745.4766, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1545.7656, -1731.6719, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1530.1172, -1717.0078, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1582.6719, -1733.1328, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1528.9531, -1605.8594, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1544.6250, -1593.0313, 15.6250, 0.25);
	
	//Borrar dos farolas
	RemoveBuildingForPlayer(playerid, 1231, 1477.9375, -1652.7266, 15.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1466.4688, -1637.9609, 15.6328, 0.25);

	//Eliminar contenedores y farolas Camionero
	RemoveBuildingForPlayer(playerid, 17019, -606.0313, -528.8203, 30.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -573.0547, -479.9219, 38.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -552.7656, -479.9219, 38.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -532.4688, -479.9219, 38.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -512.1641, -479.9219, 38.5938, 0.25);

	//garaje tunin
	RemoveBuildingForPlayer(playerid, 13062, 266.3594, 20.1328, 5.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 243.9531, 24.6172, 2.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 1684, 276.8438, -2.4297, 2.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 13059, 266.3594, 20.1328, 5.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 255.2734, 22.7734, 1.8984, 0.25);
	
	//policia lv
	RemoveBuildingForPlayer(playerid, 1722, 231.6172, 178.3594, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1722, 231.6172, 179.6719, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1722, 231.6172, 179.0234, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1722, 231.6172, 181.5938, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1722, 231.6172, 182.2578, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1808, 231.9375, 180.2500, 1002.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 1722, 231.6172, 182.9063, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 2197, 214.7813, 187.7969, 1002.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 2197, 215.5000, 187.7969, 1002.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 1806, 216.6406, 185.7891, 1002.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 2197, 216.2266, 187.7969, 1002.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 1806, 216.7813, 186.9531, 1002.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 2165, 216.9453, 186.6328, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1806, 218.4922, 185.7891, 1002.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 2165, 218.9063, 186.6328, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 2356, 219.2734, 187.6875, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 2191, 221.4609, 188.7813, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 2191, 221.4609, 187.1953, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 2191, 221.4609, 185.6016, 1002.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 2191, 221.4609, 183.9922, 1002.0234, 0.25);

	// Taxi LV
	RemoveBuildingForPlayer(playerid, 8041, 1715.7500, 1303.2891, 15.6016, 0.25);

	//Eliminar maquinas expendedoras
    RemoveBuildingForPlayer(playerid, 1302, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 1209, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 955, 0.0, 0.0, 0.0, 6000.0);
	RemoveBuildingForPlayer(playerid, 956, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 1775, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 1776, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 1977, 0.0, 0.0, 0.0, 6000.0);
	
	//Cosechador
	RemoveBuildingForPlayer(playerid, 3276, -378.7734, -1459.0234, 25.4766, 0.25);

	//Camionero productos limpieza
	RemoveBuildingForPlayer(playerid, 985, 2497.4063, 2777.0703, 11.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 986, 2497.4063, 2769.1094, 11.5313, 0.25);
	
	//Deposito
	RemoveBuildingForPlayer(playerid, 17350, -54.9922, -1130.7266, 4.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -89.9297, -1133.7500, 1.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -87.0547, -1132.6797, 0.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -79.2500, -1137.7188, 0.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 3285, -73.8047, -1141.4219, 1.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 17072, -54.9922, -1130.7266, 4.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 17073, -56.1250, -1130.1719, 4.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -84.3750, -1116.0938, 0.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -84.0547, -1117.2188, 1.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 1415, -68.3516, -1104.9922, 0.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -60.3594, -1116.9375, 0.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -63.6719, -1125.6953, 0.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -63.4141, -1115.4141, 0.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 1415, -63.8125, -1106.4219, 0.2188, 0.25);
	return 1;
}

stock BlockGarages()
{
	new g_Blocker[24];
	g_Blocker[0] = CreateDynamicObject(19325, 1968.74219, 2162.49219, 12.09380,   0.00000, 0.00000, 0.00000);
	g_Blocker[1] = CreateDynamicObject(19325, 2006.00000, 2303.72656, 11.31250,   0.00000, 0.00000, 90.00000);
	g_Blocker[2] = CreateDynamicObject(19325, 720.01563, -462.52341, 16.85940,   0.00000, 0.00000, 90.00000);
	g_Blocker[3] = CreateDynamicObject(19325, -100.00000, 1111.41406, 21.14060,   0.00000, 0.00000, 90.00000);
	g_Blocker[4] = CreateDynamicObject(19325, -100.00000, 1111.41406, 22.14060,   0.00000, 0.00000, 90.00000);
	g_Blocker[5] = CreateDynamicObject(19325, -1420.52686, 2591.15747, 57.24220,   0.00000, 0.00000, 90.00000);
	g_Blocker[6] = CreateDynamicObject(19325, -1420.52686, 2591.15747, 58.24220,   0.00000, 0.00000, 90.00000);
	g_Blocker[7] = CreateDynamicObject(19325, 1843.36719, -1856.32031, 13.87500,   0.00000, 0.00000, 0.00000);
	g_Blocker[8] = CreateDynamicObject(19325, -2716.35156, 217.47659, 5.38280,   0.00000, 0.00000, 0.00000);
	g_Blocker[9] = CreateDynamicObject(19325, -1935.85938, 239.53130, 35.35160,   0.00000, 0.00000, 90.00000);
	g_Blocker[10] = CreateDynamicObject(19325, -1904.53125, 277.89841, 42.45310,   0.00000, 0.00000, 90.00000);
	g_Blocker[11] = CreateDynamicObject(19325, -1904.53125, 277.89841, 43.45310,   0.00000, 0.00000, 90.00000);
	g_Blocker[12] = CreateDynamicObject(19325, -1786.81250, 1209.42188, 25.83590,   0.00000, 0.00000, 90.00000);
	g_Blocker[13] = CreateDynamicObject(19325, 1798.68750, -2146.73438, 14.00000,   0.00000, 0.00000, 0.00000);
	g_Blocker[14] = CreateDynamicObject(19325, 2644.85938, -2039.23438, 14.03910,   0.00000, 0.00000, 90.00000);
	g_Blocker[15] = CreateDynamicObject(19325, 2071.47656, -1831.42188, 14.56250,   0.00000, 0.00000, 0.00000);
	g_Blocker[16] = CreateDynamicObject(19325, 488.28131, -1734.69531, 12.39060,   0.00000, 0.00000, 81.00000);
	g_Blocker[17] = CreateDynamicObject(19325, -2425.72656, 1027.99219, 51.78130,   0.00000, 0.00000, 90.00000);
	g_Blocker[18] = CreateDynamicObject(19325, -2425.72656, 1027.99219, 52.78130,   0.00000, 0.00000, 90.00000);
	g_Blocker[19] = CreateDynamicObject(19325, 2393.76563, 1483.68750, 12.21090,   0.00000, 0.00000, 90.00000);
	g_Blocker[20] = CreateDynamicObject(19325, 2393.76563, 1483.68750, 13.21090,   0.00000, 0.00000, 90.00000);
	g_Blocker[21] = CreateDynamicObject(19325, 2386.65625, 1043.60156, 11.59380,   0.00000, 0.00000, 90.00000);
	g_Blocker[22] = CreateDynamicObject(19325, 1041.52917, -1025.91101, 33.13861,   0.00000, 0.00000, 90.00000);
	g_Blocker[23] = CreateDynamicObject(19325, 1024.22107, -1029.22949, 33.13861,   0.00000, 0.00000, 90.00000);
	for(new i = 0; i<sizeof(g_Blocker); i++) SetDynamicObjectMaterial(g_Blocker[i], 0, 0, "none", "none", 0x00FFFFFF);
}