set ModuleHierarchy {[{
"Name" : "top", "RefName" : "top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_conv1_fu_226", "RefName" : "conv1","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_conv1_Pipeline_LOAD_1_fu_133", "RefName" : "conv1_Pipeline_LOAD_1","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_1","RefName" : "LOAD_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_conv1_Pipeline_CO_1_H_1_W_1_fu_156", "RefName" : "conv1_Pipeline_CO_1_H_1_W_1","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "CO_1_H_1_W_1","RefName" : "CO_1_H_1_W_1","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "grp_pool_fu_238", "RefName" : "pool","ID" : "6","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CO_LOOP_H_LOOP_W_LOOP","RefName" : "CO_LOOP_H_LOOP_W_LOOP","ID" : "7","Type" : "pipeline"},]},
	{"Name" : "grp_conv2_fu_255", "RefName" : "conv2","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CO_2","RefName" : "CO_2","ID" : "9","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_69_1","RefName" : "VITIS_LOOP_69_1","ID" : "10","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_70_2","RefName" : "VITIS_LOOP_70_2","ID" : "11","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_conv2_Pipeline_CI_2_fu_251", "RefName" : "conv2_Pipeline_CI_2","ID" : "12","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "CI_2","RefName" : "CI_2","ID" : "13","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "grp_pool_1_fu_303", "RefName" : "pool_1","ID" : "14","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CO_LOOP_H_LOOP_W_LOOP","RefName" : "CO_LOOP_H_LOOP_W_LOOP","ID" : "15","Type" : "pipeline"},]},
	{"Name" : "grp_top_Pipeline_DENSE_OUTER_DENSE_INNER_fu_317", "RefName" : "top_Pipeline_DENSE_OUTER_DENSE_INNER","ID" : "16","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "DENSE_OUTER_DENSE_INNER","RefName" : "DENSE_OUTER_DENSE_INNER","ID" : "17","Type" : "pipeline"},]},]
}]}