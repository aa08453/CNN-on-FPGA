set ModuleHierarchy {[{
"Name" : "top", "RefName" : "top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_conv1_fu_527", "RefName" : "conv1","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_conv1_Pipeline_LOAD_W_fu_353", "RefName" : "conv1_Pipeline_LOAD_W","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_W","RefName" : "LOAD_W","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_conv1_Pipeline_LOAD_B_fu_504", "RefName" : "conv1_Pipeline_LOAD_B","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_B","RefName" : "LOAD_B","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_conv1_Pipeline_LOAD_1_fu_527", "RefName" : "conv1_Pipeline_LOAD_1","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_1","RefName" : "LOAD_1","ID" : "7","Type" : "pipeline"},]},
		{"Name" : "grp_conv1_Pipeline_CO_1_H_1_W_1_fu_550", "RefName" : "conv1_Pipeline_CO_1_H_1_W_1","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "CO_1_H_1_W_1","RefName" : "CO_1_H_1_W_1","ID" : "9","Type" : "pipeline"},]},]},
	{"Name" : "grp_pool_fu_699", "RefName" : "pool","ID" : "10","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_pool_Pipeline_LOAD_POOL_fu_93", "RefName" : "pool_Pipeline_LOAD_POOL","ID" : "11","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_POOL","RefName" : "LOAD_POOL","ID" : "12","Type" : "pipeline"},]},
		{"Name" : "grp_pool_Pipeline_CO_LOOP_H_LOOP_W_LOOP_fu_110", "RefName" : "pool_Pipeline_CO_LOOP_H_LOOP_W_LOOP","ID" : "13","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "CO_LOOP_H_LOOP_W_LOOP","RefName" : "CO_LOOP_H_LOOP_W_LOOP","ID" : "14","Type" : "pipeline"},]},]},
	{"Name" : "grp_conv2_fu_717", "RefName" : "conv2","ID" : "15","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_conv2_Pipeline_LOAD_W_fu_336", "RefName" : "conv2_Pipeline_LOAD_W","ID" : "16","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_W","RefName" : "LOAD_W","ID" : "17","Type" : "pipeline"},]},
		{"Name" : "grp_conv2_Pipeline_LOAD_B_fu_361", "RefName" : "conv2_Pipeline_LOAD_B","ID" : "18","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_B","RefName" : "LOAD_B","ID" : "19","Type" : "pipeline"},]},
		{"Name" : "grp_conv2_Pipeline_LOAD_2_fu_400", "RefName" : "conv2_Pipeline_LOAD_2","ID" : "20","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_2","RefName" : "LOAD_2","ID" : "21","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "CO_2","RefName" : "CO_2","ID" : "22","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_94_1","RefName" : "VITIS_LOOP_94_1","ID" : "23","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_95_2","RefName" : "VITIS_LOOP_95_2","ID" : "24","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_conv2_Pipeline_CI_2_fu_415", "RefName" : "conv2_Pipeline_CI_2","ID" : "25","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "CI_2","RefName" : "CI_2","ID" : "26","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "grp_pool_1_fu_795", "RefName" : "pool_1","ID" : "27","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_pool_1_Pipeline_LOAD_POOL_fu_93", "RefName" : "pool_1_Pipeline_LOAD_POOL","ID" : "28","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_POOL","RefName" : "LOAD_POOL","ID" : "29","Type" : "pipeline"},]},
		{"Name" : "grp_pool_1_Pipeline_CO_LOOP_H_LOOP_W_LOOP_fu_110", "RefName" : "pool_1_Pipeline_CO_LOOP_H_LOOP_W_LOOP","ID" : "30","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "CO_LOOP_H_LOOP_W_LOOP","RefName" : "CO_LOOP_H_LOOP_W_LOOP","ID" : "31","Type" : "pipeline"},]},]},
	{"Name" : "grp_top_Pipeline_LOAD_IN_fu_813", "RefName" : "top_Pipeline_LOAD_IN","ID" : "32","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "LOAD_IN","RefName" : "LOAD_IN","ID" : "33","Type" : "pipeline"},]},
	{"Name" : "grp_top_Pipeline_LOAD_BIAS_fu_836", "RefName" : "top_Pipeline_LOAD_BIAS","ID" : "34","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "LOAD_BIAS","RefName" : "LOAD_BIAS","ID" : "35","Type" : "pipeline"},]},
	{"Name" : "grp_top_Pipeline_DENSE_OUTER_DENSE_INNER_fu_853", "RefName" : "top_Pipeline_DENSE_OUTER_DENSE_INNER","ID" : "36","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "DENSE_OUTER_DENSE_INNER","RefName" : "DENSE_OUTER_DENSE_INNER","ID" : "37","Type" : "pipeline"},]},]
}]}