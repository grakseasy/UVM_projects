// =============================================================================================
//
// File Name  :    verif_sv/src_env/base/cov_habm_cov_checker.sv
//
// =============================================================================================


//==================================================
// covergroup : adp_desc
//==================================================

// 

covergroup cg_adp_desc;
    option.per_instance = 1;
    option.name = "cg_adp_desc";

    coverpoint_desc_type                     : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.desc_type
    {
        bins    desc_type_0 = {8'h10};
        bins    desc_type_1 = {8'h11};
        bins    desc_type_2 = {8'h12};
        bins    desc_type_3 = {8'h13};
        bins    desc_type_4 = {8'h18};
        bins    desc_type_5 = {8'h19};
        bins    desc_type_6 = {8'h1A};
        bins    desc_type_7 = {8'h1B};
    }

    coverpoint_dce                           : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.dce
    {
        bins    dce_0 = {1};
        bins    dce_1 = {2};
        bins    dce_2 = {3};
        bins    dce_3 = {4};
        bins    dce_4 = {5};
        bins    dce_5 = {6};
        bins    dce_6 = {7};
        bins    dce_7 = {8};
        bins    dce_8 = {9};
        bins    dce_9 = {10};
        bins    dce_10 = {11};
        bins    dce_11 = {12};
        bins    dce_12 = {13};
        bins    dce_13 = {14};
        bins    dce_14 = {15};
    }

    coverpoint_statm                         : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.statm
    {
        bins    statm_0 = {0};
        bins    statm_1 = {1};
        bins    statm_2 = {2};
        bins    statm_3 = {3};
        bins    statm_4 = {4};
        bins    statm_5 = {5};
    }

    coverpoint_int                           : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.Int
    {
        bins    int_0 = {0};
        bins    int_1 = {1};
    }

    coverpoint_cmd_index                     : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.cmd_index
    {
        bins    cmd_index_0 = {0};
        bins    cmd_index_1 = {1};
        bins    cmd_index_2 = {[2:10]};
        bins    cmd_index_3 = {[11:30]};
        bins    cmd_index_4 = {[31:50]};
        bins    cmd_index_5 = {[51:70]};
        bins    cmd_index_6 = {[71:90]};
        bins    cmd_index_7 = {[91:110]};
        bins    cmd_index_8 = {[111:130]};
        bins    cmd_index_9 = {[131:150]};
        bins    cmd_index_10 = {[151:163]};
        bins    cmd_index_11 = {164};
    }

    coverpoint_eac                           : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.eac
    {
        bins    eac_0 = {0};
        bins    eac_1 = {1};
        bins    eac_2 = {2};
        bins    eac_3 = {3};
    }

    coverpoint_prpf                          : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.prpf
    {
        bins    prpf_0 = {0};
        bins    prpf_1 = {1};
    }

    coverpoint_esec                          : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.esec
    {
        bins    esec_0 = {0};
        bins    esec_1 = {2};
    }

    coverpoint_b                             : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.b
    {
        bins    b_0 = {0};
        bins    b_1 = {0};
    }

    coverpoint_plr                           : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.plr
    {
        bins    plr_0 = {0};
        bins    plr_1 = {1};
    }

    coverpoint_qoa                           : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.qoa
    {
        bins    qoa_0 = {0};
        bins    qoa_1 = {1 };
    }

    coverpoint_mdd                           : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.mdd
    {
        bins    mdd_0 = {0};
        bins    mdd_1 = {1};
    }

    coverpoint_rsr                           : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.rsr
    {
        bins    rsr_0 = {0};
        bins    rsr_1 = {1 };
    }

    coverpoint_lp                            : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.lp
    {
        bins    lp_0 = {0};
        bins    lp_1 = {1};
    }

    coverpoint_der                           : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.der
    {
        bins    der_0 = {0};
        bins    der_1 = {1};
    }

    coverpoint_soff                          : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.soff
    {
        bins    soff_0 = {0};
        bins    soff_1 = {1};
        bins    soff_2 = {2};
        bins    soff_3 = {3};
        bins    soff_4 = {4};
        bins    soff_5 = {5};
        bins    soff_6 = {6};
        bins    soff_7 = {7};
    }

    coverpoint_e                             : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.e
    {
        bins    e_0 = {0};
        bins    e_1 = {1 };
    }

    coverpoint_tsize                         : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.tsize
    {
        bins    tsize_0 = {0};
        bins    tsize_1 = {1};
        bins    tsize_2 = {[2:10]};
        bins    tsize_3 = {[11:50]};
        bins    tsize_4 = {[51:90]};
        bins    tsize_5 = {[91:110]};
        bins    tsize_6 = {[111:150]};
        bins    tsize_7 = {[151:255]};
        bins    tsize_8 = {256};
    }

    coverpoint_prph                          : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.prph
    {
        bins    prph_0 = {0};
        bins    prph_1 = {1};
        bins    prph_2 = {[2:10]};
        bins    prph_3 = {[11:50]};
        bins    prph_4 = {[51:90]};
        bins    prph_5 = {[91:110]};
        bins    prph_6 = {[111:150]};
        bins    prph_7 = {[151:255]};
        bins    prph_8 = {256};
    }

    coverpoint_co                            : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.co
    {
        bins    co_0 = {0};
        bins    co_1 = {1};
    }

    coverpoint_coffset                       : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.coffset
    {
        bins    coffset_0 = {0};
        bins    coffset_1 = {1};
        bins    coffset_2 = {2};
        bins    coffset_3 = {[3:10]};
        bins    coffset_4 = {[11:20]};
        bins    coffset_5 = {[21:50]};
        bins    coffset_6 = {[51:100]};
        bins    coffset_7 = {[100:200]};
    }

    coverpoint_dbp                           : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.dbp
    {
        bins    dbp_0 = {[32'h0:32'h0fffffff]};
        bins    dbp_1 = {[32'h10000000:32'h1fffffff]};
        bins    dbp_2 = {[32'h20000000:32'h2fffffff]};
        bins    dbp_3 = {[32'h30000000:32'h3fffffff]};
        bins    dbp_4 = {[32'h40000000:32'h4fffffff]};
        bins    dbp_5 = {[32'h50000000:32'h5fffffff]};
        bins    dbp_6 = {[32'h60000000:32'h6fffffff]};
        bins    dbp_7 = {[32'h70000000:32'h7fffffff]};
        bins    dbp_8 = {[32'h80000000:32'h8fffffff]};
        bins    dbp_9 = {[32'h90000000:32'h9fffffff]};
        bins    dbp_10 = {[32'ha0000000:32'hafffffff]};
        bins    dbp_11 = {[32'hb0000000:32'hbfffffff]};
        bins    dbp_12 = {[32'hc0000000:32'hcfffffff]};
        bins    dbp_13 = {[32'hd0000000:32'hdfffffff]};
        bins    dbp_14 = {[32'he0000000:32'hefffffff]};
        bins    dbp_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_dbp_byp                       : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.dbp[0]
    {
        bins    dbp_byp_0 = {0};
        bins    dbp_byp_1 = {1};
    }

    coverpoint_mdbp                          : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.mdbp
    {
        bins    mdbp_0 = {[32'h0:32'h0fffffff]};
        bins    mdbp_1 = {[32'h10000000:32'h1fffffff]};
        bins    mdbp_2 = {[32'h20000000:32'h2fffffff]};
        bins    mdbp_3 = {[32'h30000000:32'h3fffffff]};
        bins    mdbp_4 = {[32'h40000000:32'h4fffffff]};
        bins    mdbp_5 = {[32'h50000000:32'h5fffffff]};
        bins    mdbp_6 = {[32'h60000000:32'h6fffffff]};
        bins    mdbp_7 = {[32'h70000000:32'h7fffffff]};
        bins    mdbp_8 = {[32'h80000000:32'h8fffffff]};
        bins    mdbp_9 = {[32'h90000000:32'h9fffffff]};
        bins    mdbp_10 = {[32'ha0000000:32'hafffffff]};
        bins    mdbp_11 = {[32'hb0000000:32'hbfffffff]};
        bins    mdbp_12 = {[32'hc0000000:32'hcfffffff]};
        bins    mdbp_13 = {[32'hd0000000:32'hdfffffff]};
        bins    mdbp_14 = {[32'he0000000:32'hefffffff]};
        bins    mdbp_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_l_cid1                        : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.l_cid1 iff(habm_flow_item_q[cov_ch][cov_idx].adp_desc.dce[0]==1'b1)
    {
        bins    l_cid1_0 = {0};
        bins    l_cid1_1 = {[1:5]};
        bins    l_cid1_2 = {[6:10]};
        bins    l_cid1_3 = {[11:20]};
        bins    l_cid1_4 = {[21:30]};
        bins    l_cid1_5 = {[31:40]};
        bins    l_cid1_6 = {[41:44]};
        bins    l_cid1_7 = {45};
    }

    coverpoint_e_cid1                        : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.e_cid1 iff(habm_flow_item_q[cov_ch][cov_idx].adp_desc.dce[1]==1'b1)
    {
        bins    e_cid1_0 = {[1:59]};
    }

    coverpoint_l_cid2                        : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.l_cid2 iff(habm_flow_item_q[cov_ch][cov_idx].adp_desc.dce[2]==1'b1)
    {
        bins    l_cid2_0 = {0};
        bins    l_cid2_1 = {[1:5]};
        bins    l_cid2_2 = {[6:10]};
        bins    l_cid2_3 = {[11:20]};
        bins    l_cid2_4 = {[21:30]};
        bins    l_cid2_5 = {[31:40]};
        bins    l_cid2_6 = {[41:44]};
        bins    l_cid2_7 = {45};
    }

    coverpoint_e_cid2                        : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.l_cid2 iff(habm_flow_item_q[cov_ch][cov_idx].adp_desc.dce[3]==1'b1)
    {
        bins    e_cid2_0 = {[1:59]};
    }

    coverpoint_sfinfo                        : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.sf_info iff(habm_flow_item_q[cov_ch][cov_idx].adp_desc.statm[1]==1'b1)
    {
        bins    sfinfo_0 = {[32'h0:32'h0fffffff]};
        bins    sfinfo_1 = {[32'h10000000:32'h1fffffff]};
        bins    sfinfo_2 = {[32'h20000000:32'h2fffffff]};
        bins    sfinfo_3 = {[32'h30000000:32'h3fffffff]};
        bins    sfinfo_4 = {[32'h40000000:32'h4fffffff]};
        bins    sfinfo_5 = {[32'h50000000:32'h5fffffff]};
        bins    sfinfo_6 = {[32'h60000000:32'h6fffffff]};
        bins    sfinfo_7 = {[32'h70000000:32'h7fffffff]};
        bins    sfinfo_8 = {[32'h80000000:32'h8fffffff]};
        bins    sfinfo_9 = {[32'h90000000:32'h9fffffff]};
        bins    sfinfo_10 = {[32'ha0000000:32'hafffffff]};
        bins    sfinfo_11 = {[32'hb0000000:32'hbfffffff]};
        bins    sfinfo_12 = {[32'hc0000000:32'hcfffffff]};
        bins    sfinfo_13 = {[32'hd0000000:32'hdfffffff]};
        bins    sfinfo_14 = {[32'he0000000:32'hefffffff]};
        bins    sfinfo_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_rs_brl                        : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.rs_brl iff(habm_flow_item_q[cov_ch][cov_idx].adp_desc.rsr==1'b1)
    {
        bins    rs_brl_0 = {[32'h0:32'h0fffffff]};
        bins    rs_brl_1 = {[32'h10000000:32'h1fffffff]};
        bins    rs_brl_2 = {[32'h20000000:32'h2fffffff]};
        bins    rs_brl_3 = {[32'h30000000:32'h3fffffff]};
        bins    rs_brl_4 = {[32'h40000000:32'h4fffffff]};
        bins    rs_brl_5 = {[32'h50000000:32'h5fffffff]};
        bins    rs_brl_6 = {[32'h60000000:32'h6fffffff]};
        bins    rs_brl_7 = {[32'h70000000:32'h7fffffff]};
        bins    rs_brl_8 = {[32'h80000000:32'h8fffffff]};
        bins    rs_brl_9 = {[32'h90000000:32'h9fffffff]};
        bins    rs_brl_10 = {[32'ha0000000:32'hafffffff]};
        bins    rs_brl_11 = {[32'hb0000000:32'hbfffffff]};
        bins    rs_brl_12 = {[32'hc0000000:32'hcfffffff]};
        bins    rs_brl_13 = {[32'hd0000000:32'hdfffffff]};
        bins    rs_brl_14 = {[32'he0000000:32'hefffffff]};
        bins    rs_brl_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_data_rel_desc                 : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.data_rel_desc iff(habm_flow_item_q[cov_ch][cov_idx].adp_desc.der==1'b1)
    {
        bins    data_rel_desc_0 = {[32'h0:32'h0fffffff]};
        bins    data_rel_desc_1 = {[32'h10000000:32'h1fffffff]};
        bins    data_rel_desc_2 = {[32'h20000000:32'h2fffffff]};
        bins    data_rel_desc_3 = {[32'h30000000:32'h3fffffff]};
        bins    data_rel_desc_4 = {[32'h40000000:32'h4fffffff]};
        bins    data_rel_desc_5 = {[32'h50000000:32'h5fffffff]};
        bins    data_rel_desc_6 = {[32'h60000000:32'h6fffffff]};
        bins    data_rel_desc_7 = {[32'h70000000:32'h7fffffff]};
        bins    data_rel_desc_8 = {[32'h80000000:32'h8fffffff]};
        bins    data_rel_desc_9 = {[32'h90000000:32'h9fffffff]};
        bins    data_rel_desc_10 = {[32'ha0000000:32'hafffffff]};
        bins    data_rel_desc_11 = {[32'hb0000000:32'hbfffffff]};
        bins    data_rel_desc_12 = {[32'hc0000000:32'hcfffffff]};
        bins    data_rel_desc_13 = {[32'hd0000000:32'hdfffffff]};
        bins    data_rel_desc_14 = {[32'he0000000:32'hefffffff]};
        bins    data_rel_desc_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_data_qoa                      : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.data_qoa iff(habm_flow_item_q[cov_ch][cov_idx].adp_desc.qoa==1'b1)
    {
        bins    data_qoa_0 = {[32'h0:32'h0fffffff]};
        bins    data_qoa_1 = {[32'h10000000:32'h1fffffff]};
        bins    data_qoa_2 = {[32'h20000000:32'h2fffffff]};
        bins    data_qoa_3 = {[32'h30000000:32'h3fffffff]};
        bins    data_qoa_4 = {[32'h40000000:32'h4fffffff]};
        bins    data_qoa_5 = {[32'h50000000:32'h5fffffff]};
        bins    data_qoa_6 = {[32'h60000000:32'h6fffffff]};
        bins    data_qoa_7 = {[32'h70000000:32'h7fffffff]};
        bins    data_qoa_8 = {[32'h80000000:32'h8fffffff]};
        bins    data_qoa_9 = {[32'h90000000:32'h9fffffff]};
        bins    data_qoa_10 = {[32'ha0000000:32'hafffffff]};
        bins    data_qoa_11 = {[32'hb0000000:32'hbfffffff]};
        bins    data_qoa_12 = {[32'hc0000000:32'hcfffffff]};
        bins    data_qoa_13 = {[32'hd0000000:32'hdfffffff]};
        bins    data_qoa_14 = {[32'he0000000:32'hefffffff]};
        bins    data_qoa_15 = {[32'hf0000000:32'hffffffff]};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  219  Expexted:

endgroup


//==================================================
// covergroup : adp_sec_desc
//==================================================

// 

covergroup cg_adp_sec_desc;
    option.per_instance = 1;
    option.name = "cg_adp_sec_desc";

    coverpoint_hsec_desc_type                : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.desc_type
    {
        bins    hsec_desc_type_0 = {8'h41};
        bins    hsec_desc_type_1 = {8'h49};
    }

    coverpoint_hsec_dce                      : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.dce
    {
        bins    hsec_dce_0 = {1};
        bins    hsec_dce_1 = {2};
        bins    hsec_dce_2 = {3};
        bins    hsec_dce_3 = {4};
        bins    hsec_dce_4 = {5};
        bins    hsec_dce_5 = {6};
        bins    hsec_dce_6 = {7};
        bins    hsec_dce_7 = {8};
        bins    hsec_dce_8 = {9};
        bins    hsec_dce_9 = {10};
        bins    hsec_dce_10 = {11};
        bins    hsec_dce_11 = {12};
        bins    hsec_dce_12 = {13};
        bins    hsec_dce_13 = {14};
        bins    hsec_dce_14 = {15};
    }

    coverpoint_hsec_statm                    : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.statm
    {
        bins    hsec_statm_0 = {0};
        bins    hsec_statm_1 = {1};
        bins    hsec_statm_2 = {2};
        bins    hsec_statm_3 = {3};
    }

    coverpoint_hsec_int                      : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.Int
    {
        bins    hsec_int_0 = {0};
        bins    hsec_int_1 = {1};
    }

    coverpoint_hsec_esec                     : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.esec
    {
        bins    hsec_esec_0 = {0};
        bins    hsec_esec_1 = {2};
    }

    coverpoint_hsec_qoa                      : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.qoa
    {
        bins    hsec_qoa_0 = {0};
        bins    hsec_qoa_1 = {1 };
    }

    coverpoint_hsec_rsr                      : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.rsr
    {
        bins    hsec_rsr_0 = {0};
        bins    hsec_rsr_1 = {1 };
    }

    coverpoint_hsec_lp                       : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.lp
    {
        bins    hsec_lp_0 = {0};
        bins    hsec_lp_1 = {1};
    }

    coverpoint_hsec_der                      : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.der
    {
        bins    hsec_der_0 = {0};
        bins    hsec_der_1 = {1};
    }

    coverpoint_hsec_soff                     : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.soff
    {
        bins    hsec_soff_0 = {0};
        bins    hsec_soff_1 = {0};
    }

    coverpoint_hsec_e                        : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.e
    {
        bins    hsec_e_0 = {0};
        bins    hsec_e_1 = {1 };
    }

    coverpoint_hsec_size                     : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.size[27:9]
    {
        bins    hsec_size_0 = {1};
        bins    hsec_size_1 = {2};
        bins    hsec_size_2 = {3};
        bins    hsec_size_3 = {4};
        bins    hsec_size_4 = {5};
        bins    hsec_size_5 = {6};
        bins    hsec_size_6 = {7};
        bins    hsec_size_7 = {8};
        bins    hsec_size_8 = {9};
        bins    hsec_size_9 = {10};
        bins    hsec_size_10 = {11};
        bins    hsec_size_11 = {12};
        bins    hsec_size_12 = {13};
        bins    hsec_size_13 = {14};
        bins    hsec_size_14 = {15};
        bins    hsec_size_15 = {16};
        bins    hsec_size_16 = {17};
        bins    hsec_size_17 = {18};
        bins    hsec_size_18 = {19};
        bins    hsec_size_19 = {20};
        bins    hsec_size_20 = {21};
        bins    hsec_size_21 = {22};
        bins    hsec_size_22 = {23};
        bins    hsec_size_23 = {24};
        bins    hsec_size_24 = {25};
        bins    hsec_size_25 = {26};
        bins    hsec_size_26 = {27};
        bins    hsec_size_27 = {28};
        bins    hsec_size_28 = {29};
        bins    hsec_size_29 = {30};
        bins    hsec_size_30 = {31};
        bins    hsec_size_31 = {32};
    }

    coverpoint_hsec_sdbp                     : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.sdbp
    {
        bins    hsec_sdbp_0 = {[32'h0:32'h0fffffff]};
        bins    hsec_sdbp_1 = {[32'h10000000:32'h1fffffff]};
        bins    hsec_sdbp_2 = {[32'h20000000:32'h2fffffff]};
        bins    hsec_sdbp_3 = {[32'h30000000:32'h3fffffff]};
        bins    hsec_sdbp_4 = {[32'h40000000:32'h4fffffff]};
        bins    hsec_sdbp_5 = {[32'h50000000:32'h5fffffff]};
        bins    hsec_sdbp_6 = {[32'h60000000:32'h6fffffff]};
        bins    hsec_sdbp_7 = {[32'h70000000:32'h7fffffff]};
        bins    hsec_sdbp_8 = {[32'h80000000:32'h8fffffff]};
        bins    hsec_sdbp_9 = {[32'h90000000:32'h9fffffff]};
        bins    hsec_sdbp_10 = {[32'ha0000000:32'hafffffff]};
        bins    hsec_sdbp_11 = {[32'hb0000000:32'hbfffffff]};
        bins    hsec_sdbp_12 = {[32'hc0000000:32'hcfffffff]};
        bins    hsec_sdbp_13 = {[32'hd0000000:32'hdfffffff]};
        bins    hsec_sdbp_14 = {[32'he0000000:32'hefffffff]};
        bins    hsec_sdbp_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_hsec_ddbp                     : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.ddbp
    {
        bins    hsec_ddbp_0 = {[32'h0:32'h0fffffff]};
        bins    hsec_ddbp_1 = {[32'h10000000:32'h1fffffff]};
        bins    hsec_ddbp_2 = {[32'h20000000:32'h2fffffff]};
        bins    hsec_ddbp_3 = {[32'h30000000:32'h3fffffff]};
        bins    hsec_ddbp_4 = {[32'h40000000:32'h4fffffff]};
        bins    hsec_ddbp_5 = {[32'h50000000:32'h5fffffff]};
        bins    hsec_ddbp_6 = {[32'h60000000:32'h6fffffff]};
        bins    hsec_ddbp_7 = {[32'h70000000:32'h7fffffff]};
        bins    hsec_ddbp_8 = {[32'h80000000:32'h8fffffff]};
        bins    hsec_ddbp_9 = {[32'h90000000:32'h9fffffff]};
        bins    hsec_ddbp_10 = {[32'ha0000000:32'hafffffff]};
        bins    hsec_ddbp_11 = {[32'hb0000000:32'hbfffffff]};
        bins    hsec_ddbp_12 = {[32'hc0000000:32'hcfffffff]};
        bins    hsec_ddbp_13 = {[32'hd0000000:32'hdfffffff]};
        bins    hsec_ddbp_14 = {[32'he0000000:32'hefffffff]};
        bins    hsec_ddbp_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_hsec_l_cid1                   : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.l_cid1 iff(habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.dce[0]==1'b1)
    {
        bins    hsec_l_cid1_0 = {0};
        bins    hsec_l_cid1_1 = {[1:5]};
        bins    hsec_l_cid1_2 = {[6:10]};
        bins    hsec_l_cid1_3 = {[11:20]};
        bins    hsec_l_cid1_4 = {[21:30]};
        bins    hsec_l_cid1_5 = {[31:40]};
        bins    hsec_l_cid1_6 = {[41:44]};
        bins    hsec_l_cid1_7 = {45};
    }

    coverpoint_hsec_e_cid1                   : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.e_cid1 iff(habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.dce[1]==1'b1)
    {
        bins    hsec_e_cid1_0 = {[1:59]};
    }

    coverpoint_hsec_l_cid2                   : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.l_cid2 iff(habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.dce[2]==1'b1)
    {
        bins    hsec_l_cid2_0 = {0};
        bins    hsec_l_cid2_1 = {[1:5]};
        bins    hsec_l_cid2_2 = {[6:10]};
        bins    hsec_l_cid2_3 = {[11:20]};
        bins    hsec_l_cid2_4 = {[21:30]};
        bins    hsec_l_cid2_5 = {[31:40]};
        bins    hsec_l_cid2_6 = {[41:44]};
        bins    hsec_l_cid2_7 = {45};
    }

    coverpoint_hsec_e_cid2                   : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.l_cid2 iff(habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.dce[3]==1'b1)
    {
        bins    hsec_e_cid2_0 = {[1:59]};
    }

    coverpoint_hsec_secp                     : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.secp iff(habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.esec[1]==1'b1)
    {
        bins    hsec_secp_0 = {[16'h0000:16'h0fff]};
        bins    hsec_secp_1 = {[16'h1000:16'h1fff]};
        bins    hsec_secp_2 = {[16'h2000:16'h2fff]};
        bins    hsec_secp_3 = {[16'h3000:16'h3fff]};
        bins    hsec_secp_4 = {[16'h4000:16'h4fff]};
        bins    hsec_secp_5 = {[16'h5000:16'h5fff]};
        bins    hsec_secp_6 = {[16'h6000:16'h6fff]};
        bins    hsec_secp_7 = {[16'h7000:16'h7fff]};
        bins    hsec_secp_8 = {[16'h8000:16'h8fff]};
        bins    hsec_secp_9 = {[16'h9000:16'h9fff]};
        bins    hsec_secp_10 = {[16'h0a00:16'hafff]};
        bins    hsec_secp_11 = {[16'hb000:16'hbfff]};
        bins    hsec_secp_12 = {[16'hc000:16'hcfff]};
        bins    hsec_secp_13 = {[16'hd000:16'hdfff]};
        bins    hsec_secp_14 = {[16'he000:16'hefff]};
        bins    hsec_secp_15 = {[16'hf000:16'hffff]};
    }

    coverpoint_hsec_sfinfo                   : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.sf_info iff(habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.statm[1]==1'b1)
    {
        bins    hsec_sfinfo_0 = {[32'h0:32'h0fffffff]};
        bins    hsec_sfinfo_1 = {[32'h10000000:32'h1fffffff]};
        bins    hsec_sfinfo_2 = {[32'h20000000:32'h2fffffff]};
        bins    hsec_sfinfo_3 = {[32'h30000000:32'h3fffffff]};
        bins    hsec_sfinfo_4 = {[32'h40000000:32'h4fffffff]};
        bins    hsec_sfinfo_5 = {[32'h50000000:32'h5fffffff]};
        bins    hsec_sfinfo_6 = {[32'h60000000:32'h6fffffff]};
        bins    hsec_sfinfo_7 = {[32'h70000000:32'h7fffffff]};
        bins    hsec_sfinfo_8 = {[32'h80000000:32'h8fffffff]};
        bins    hsec_sfinfo_9 = {[32'h90000000:32'h9fffffff]};
        bins    hsec_sfinfo_10 = {[32'ha0000000:32'hafffffff]};
        bins    hsec_sfinfo_11 = {[32'hb0000000:32'hbfffffff]};
        bins    hsec_sfinfo_12 = {[32'hc0000000:32'hcfffffff]};
        bins    hsec_sfinfo_13 = {[32'hd0000000:32'hdfffffff]};
        bins    hsec_sfinfo_14 = {[32'he0000000:32'hefffffff]};
        bins    hsec_sfinfo_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_hsec_rs_brl                   : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.rs_brl iff(habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.rsr==1'b1)
    {
        bins    hsec_rs_brl_0 = {[32'h0:32'h0fffffff]};
        bins    hsec_rs_brl_1 = {[32'h10000000:32'h1fffffff]};
        bins    hsec_rs_brl_2 = {[32'h20000000:32'h2fffffff]};
        bins    hsec_rs_brl_3 = {[32'h30000000:32'h3fffffff]};
        bins    hsec_rs_brl_4 = {[32'h40000000:32'h4fffffff]};
        bins    hsec_rs_brl_5 = {[32'h50000000:32'h5fffffff]};
        bins    hsec_rs_brl_6 = {[32'h60000000:32'h6fffffff]};
        bins    hsec_rs_brl_7 = {[32'h70000000:32'h7fffffff]};
        bins    hsec_rs_brl_8 = {[32'h80000000:32'h8fffffff]};
        bins    hsec_rs_brl_9 = {[32'h90000000:32'h9fffffff]};
        bins    hsec_rs_brl_10 = {[32'ha0000000:32'hafffffff]};
        bins    hsec_rs_brl_11 = {[32'hb0000000:32'hbfffffff]};
        bins    hsec_rs_brl_12 = {[32'hc0000000:32'hcfffffff]};
        bins    hsec_rs_brl_13 = {[32'hd0000000:32'hdfffffff]};
        bins    hsec_rs_brl_14 = {[32'he0000000:32'hefffffff]};
        bins    hsec_rs_brl_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_hsec_data_rel_desc            : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.data_rel_desc iff(habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.der==1'b1)
    {
        bins    hsec_data_rel_desc_0 = {[32'h0:32'h0fffffff]};
        bins    hsec_data_rel_desc_1 = {[32'h10000000:32'h1fffffff]};
        bins    hsec_data_rel_desc_2 = {[32'h20000000:32'h2fffffff]};
        bins    hsec_data_rel_desc_3 = {[32'h30000000:32'h3fffffff]};
        bins    hsec_data_rel_desc_4 = {[32'h40000000:32'h4fffffff]};
        bins    hsec_data_rel_desc_5 = {[32'h50000000:32'h5fffffff]};
        bins    hsec_data_rel_desc_6 = {[32'h60000000:32'h6fffffff]};
        bins    hsec_data_rel_desc_7 = {[32'h70000000:32'h7fffffff]};
        bins    hsec_data_rel_desc_8 = {[32'h80000000:32'h8fffffff]};
        bins    hsec_data_rel_desc_9 = {[32'h90000000:32'h9fffffff]};
        bins    hsec_data_rel_desc_10 = {[32'ha0000000:32'hafffffff]};
        bins    hsec_data_rel_desc_11 = {[32'hb0000000:32'hbfffffff]};
        bins    hsec_data_rel_desc_12 = {[32'hc0000000:32'hcfffffff]};
        bins    hsec_data_rel_desc_13 = {[32'hd0000000:32'hdfffffff]};
        bins    hsec_data_rel_desc_14 = {[32'he0000000:32'hefffffff]};
        bins    hsec_data_rel_desc_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_hsec_data_qoa                 : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.data_qoa iff(habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.qoa==1'b1)
    {
        bins    hsec_data_qoa_0 = {[32'h0:32'h0fffffff]};
        bins    hsec_data_qoa_1 = {[32'h10000000:32'h1fffffff]};
        bins    hsec_data_qoa_2 = {[32'h20000000:32'h2fffffff]};
        bins    hsec_data_qoa_3 = {[32'h30000000:32'h3fffffff]};
        bins    hsec_data_qoa_4 = {[32'h40000000:32'h4fffffff]};
        bins    hsec_data_qoa_5 = {[32'h50000000:32'h5fffffff]};
        bins    hsec_data_qoa_6 = {[32'h60000000:32'h6fffffff]};
        bins    hsec_data_qoa_7 = {[32'h70000000:32'h7fffffff]};
        bins    hsec_data_qoa_8 = {[32'h80000000:32'h8fffffff]};
        bins    hsec_data_qoa_9 = {[32'h90000000:32'h9fffffff]};
        bins    hsec_data_qoa_10 = {[32'ha0000000:32'hafffffff]};
        bins    hsec_data_qoa_11 = {[32'hb0000000:32'hbfffffff]};
        bins    hsec_data_qoa_12 = {[32'hc0000000:32'hcfffffff]};
        bins    hsec_data_qoa_13 = {[32'hd0000000:32'hdfffffff]};
        bins    hsec_data_qoa_14 = {[32'he0000000:32'hefffffff]};
        bins    hsec_data_qoa_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_hsec_flba_l                   : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.flba_l
    {
        bins    hsec_flba_l_0 = {[32'h0:32'h0fffffff]};
        bins    hsec_flba_l_1 = {[32'h10000000:32'h1fffffff]};
        bins    hsec_flba_l_2 = {[32'h20000000:32'h2fffffff]};
        bins    hsec_flba_l_3 = {[32'h30000000:32'h3fffffff]};
        bins    hsec_flba_l_4 = {[32'h40000000:32'h4fffffff]};
        bins    hsec_flba_l_5 = {[32'h50000000:32'h5fffffff]};
        bins    hsec_flba_l_6 = {[32'h60000000:32'h6fffffff]};
        bins    hsec_flba_l_7 = {[32'h70000000:32'h7fffffff]};
        bins    hsec_flba_l_8 = {[32'h80000000:32'h8fffffff]};
        bins    hsec_flba_l_9 = {[32'h90000000:32'h9fffffff]};
        bins    hsec_flba_l_10 = {[32'ha0000000:32'hafffffff]};
        bins    hsec_flba_l_11 = {[32'hb0000000:32'hbfffffff]};
        bins    hsec_flba_l_12 = {[32'hc0000000:32'hcfffffff]};
        bins    hsec_flba_l_13 = {[32'hd0000000:32'hdfffffff]};
        bins    hsec_flba_l_14 = {[32'he0000000:32'hefffffff]};
        bins    hsec_flba_l_15 = {[32'hf0000000:32'hffffffff]};
    }

    coverpoint_hsec_flba_m                   : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_sec_desc.flba_m
    {
        bins    hsec_flba_m_0 = {[16'h0000:16'h0fff]};
        bins    hsec_flba_m_1 = {[16'h1000:16'h1fff]};
        bins    hsec_flba_m_2 = {[16'h2000:16'h2fff]};
        bins    hsec_flba_m_3 = {[16'h3000:16'h3fff]};
        bins    hsec_flba_m_4 = {[16'h4000:16'h4fff]};
        bins    hsec_flba_m_5 = {[16'h5000:16'h5fff]};
        bins    hsec_flba_m_6 = {[16'h6000:16'h6fff]};
        bins    hsec_flba_m_7 = {[16'h7000:16'h7fff]};
        bins    hsec_flba_m_8 = {[16'h8000:16'h8fff]};
        bins    hsec_flba_m_9 = {[16'h9000:16'h9fff]};
        bins    hsec_flba_m_10 = {[16'h0a00:16'hafff]};
        bins    hsec_flba_m_11 = {[16'hb000:16'hbfff]};
        bins    hsec_flba_m_12 = {[16'hc000:16'hcfff]};
        bins    hsec_flba_m_13 = {[16'hd000:16'hdfff]};
        bins    hsec_flba_m_14 = {[16'he000:16'hefff]};
        bins    hsec_flba_m_15 = {[16'hf000:16'hffff]};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  231  Expexted:

endgroup


//==================================================
// covergroup : adp_fw_desc
//==================================================

// 

covergroup cg_adp_fw_desc;
    option.per_instance = 1;
    option.name = "cg_adp_fw_desc";

    coverpoint_fw_desc_type                  : coverpoint habm_flow_item_q[cov_ch][cov_idx].adp_desc.desc_type
    {
        bins    fw_desc_type_0 = {8'h0};
        bins    fw_desc_type_1 = {8'h1};
        bins    fw_desc_type_2 = {8'h2};
        bins    fw_desc_type_3 = {8'h8};
        bins    fw_desc_type_4 = {8'h9};
        bins    fw_desc_type_5 = {8'ha};
        bins    fw_desc_type_6 = {8'hb};
        bins    fw_desc_type_7 = {8'hc};
        bins    fw_desc_type_8 = {8'hf4};
        bins    fw_desc_type_9 = {8'hf5};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  10  Expexted:

endgroup


//==================================================
// covergroup : nvme_cmpl_entry
//==================================================

// 

covergroup cg_nvme_cmpl_entry with function sample(bit [7:0] nvme_cmpl_di, bit [3:0] nvme_cmpl_desc_type, bit nvme_cmpl_err, bit nvme_cmpl_byp, bit [1:0] nvme_cmpl_cfi);
    option.per_instance = 1;
    option.name = "cg_nvme_cmpl_entry";

    coverpoint_nvme_cmpl_di                  : coverpoint nvme_cmpl_di
    {
        bins    nvme_cmpl_di_0 = {0};
        bins    nvme_cmpl_di_1 = {1};
        bins    nvme_cmpl_di_2 = {2};
        bins    nvme_cmpl_di_3 = {3};
        bins    nvme_cmpl_di_4 = {4};
        bins    nvme_cmpl_di_5 = {5};
        bins    nvme_cmpl_di_6 = {6};
        bins    nvme_cmpl_di_7 = {7};
        bins    nvme_cmpl_di_8 = {8};
        bins    nvme_cmpl_di_9 = {9};
        bins    nvme_cmpl_di_10 = {10};
        bins    nvme_cmpl_di_11 = {11};
        bins    nvme_cmpl_di_12 = {12};
        bins    nvme_cmpl_di_13 = {13};
        bins    nvme_cmpl_di_14 = {14};
        bins    nvme_cmpl_di_15 = {15};
        bins    nvme_cmpl_di_16 = {16};
        bins    nvme_cmpl_di_17 = {17};
        bins    nvme_cmpl_di_18 = {18};
        bins    nvme_cmpl_di_19 = {19};
        bins    nvme_cmpl_di_20 = {20};
        bins    nvme_cmpl_di_21 = {21};
        bins    nvme_cmpl_di_22 = {22};
        bins    nvme_cmpl_di_23 = {23};
        bins    nvme_cmpl_di_24 = {24};
        bins    nvme_cmpl_di_25 = {25};
        bins    nvme_cmpl_di_26 = {26};
        bins    nvme_cmpl_di_27 = {27};
        bins    nvme_cmpl_di_28 = {28};
        bins    nvme_cmpl_di_29 = {29};
        bins    nvme_cmpl_di_30 = {30};
        bins    nvme_cmpl_di_31 = {31};
    }

    coverpoint_nvme_cmpl_desc_type           : coverpoint nvme_cmpl_desc_type
    {
        bins    nvme_cmpl_desc_type_0 = {4'b0000};
        bins    nvme_cmpl_desc_type_1 = {4'b0001};
        bins    nvme_cmpl_desc_type_2 = {4'b0010};
        bins    nvme_cmpl_desc_type_3 = {4'b0011};
        bins    nvme_cmpl_desc_type_4 = {4'b1000};
        bins    nvme_cmpl_desc_type_5 = {4'b1001};
        bins    nvme_cmpl_desc_type_6 = {4'b1010};
        bins    nvme_cmpl_desc_type_7 = {4'b1011};
        bins    nvme_cmpl_desc_type_8 = {4'b1100};
    }

    coverpoint_nvme_cmpl_err                 : coverpoint nvme_cmpl_err
    {
        bins    nvme_cmpl_err_0 = {0};
        bins    nvme_cmpl_err_1 = {1};
    }

    coverpoint_nvme_cmpl_byp                 : coverpoint nvme_cmpl_byp
    {
        bins    nvme_cmpl_byp_0 = {0};
        bins    nvme_cmpl_byp_1 = {1};
    }

    coverpoint_nvme_cmpl_cfi                 : coverpoint nvme_cmpl_cfi
    {
        bins    nvme_cmpl_cfi_0 = {0};
        bins    nvme_cmpl_cfi_1 = {1};
        bins    nvme_cmpl_cfi_2 = {2};
        bins    nvme_cmpl_cfi_3 = {3};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  49  Expexted:

endgroup


//==================================================
// covergroup : hsec_cmpl_entry
//==================================================

// 

covergroup cg_hsec_cmpl_entry with function sample(bit [7:0] hsec_cmpl_di, bit [3:0] hsec_cmpl_desc_type, bit hsec_cmpl_err);
    option.per_instance = 1;
    option.name = "cg_hsec_cmpl_entry";

    coverpoint_hsec_cmpl_di                  : coverpoint hsec_cmpl_di
    {
        bins    hsec_cmpl_di_0 = {0};
        bins    hsec_cmpl_di_1 = {1};
        bins    hsec_cmpl_di_2 = {2};
        bins    hsec_cmpl_di_3 = {3};
        bins    hsec_cmpl_di_4 = {4};
        bins    hsec_cmpl_di_5 = {5};
        bins    hsec_cmpl_di_6 = {6};
        bins    hsec_cmpl_di_7 = {7};
        bins    hsec_cmpl_di_8 = {8};
        bins    hsec_cmpl_di_9 = {9};
        bins    hsec_cmpl_di_10 = {10};
        bins    hsec_cmpl_di_11 = {11};
        bins    hsec_cmpl_di_12 = {12};
        bins    hsec_cmpl_di_13 = {13};
        bins    hsec_cmpl_di_14 = {14};
        bins    hsec_cmpl_di_15 = {15};
        bins    hsec_cmpl_di_16 = {16};
        bins    hsec_cmpl_di_17 = {17};
        bins    hsec_cmpl_di_18 = {18};
        bins    hsec_cmpl_di_19 = {19};
        bins    hsec_cmpl_di_20 = {20};
        bins    hsec_cmpl_di_21 = {21};
        bins    hsec_cmpl_di_22 = {22};
        bins    hsec_cmpl_di_23 = {23};
        bins    hsec_cmpl_di_24 = {24};
        bins    hsec_cmpl_di_25 = {25};
        bins    hsec_cmpl_di_26 = {26};
        bins    hsec_cmpl_di_27 = {27};
        bins    hsec_cmpl_di_28 = {28};
        bins    hsec_cmpl_di_29 = {29};
        bins    hsec_cmpl_di_30 = {30};
        bins    hsec_cmpl_di_31 = {31};
    }

    coverpoint_hsec_cmpl_desc_type           : coverpoint hsec_cmpl_desc_type
    {
        bins    hsec_cmpl_desc_type_0 = {4'b0100};
        bins    hsec_cmpl_desc_type_1 = {4'b0101};
        bins    hsec_cmpl_desc_type_2 = {4'b0110};
    }

    coverpoint_hsec_cmpl_err                 : coverpoint hsec_cmpl_err
    {
        bins    hsec_cmpl_err_0 = {0};
        bins    hsec_cmpl_err_1 = {1};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  37  Expexted:

endgroup


//==================================================
// covergroup : write_regs
//==================================================

// 

covergroup cg_write_regs with function sample(bit [31:0] cmd_addr, bit [31:0] cmd_wdata);
    option.per_instance = 1;
    option.name = "cg_write_regs";

    coverpoint_HABM_CTRL_SW_RST              : coverpoint cmd_wdata[30] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SW_RST_0 = {0};
        bins    HABM_CTRL_SW_RST_1 = {1};
    }

    coverpoint_HABM_CTRL_DC_FSM_HALT_DUE_E2E_EN: coverpoint cmd_wdata[29] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_DC_FSM_HALT_DUE_E2E_EN_0 = {0};
        bins    HABM_CTRL_DC_FSM_HALT_DUE_E2E_EN_1 = {1};
    }

    coverpoint_HABM_CTRL_SET_EVT_SEC_AVAIL_EN: coverpoint cmd_wdata[20] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SET_EVT_SEC_AVAIL_EN_0 = {0};
        bins    HABM_CTRL_SET_EVT_SEC_AVAIL_EN_1 = {1};
    }

    coverpoint_HABM_CTRL_SET_EVT_SEC_REL_EN  : coverpoint cmd_wdata[19] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SET_EVT_SEC_REL_EN_0 = {0};
        bins    HABM_CTRL_SET_EVT_SEC_REL_EN_1 = {1};
    }

    coverpoint_HABM_CTRL_SET_EVT_NEW_D_FETCH_EN: coverpoint cmd_wdata[18] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SET_EVT_NEW_D_FETCH_EN_0 = {0};
        bins    HABM_CTRL_SET_EVT_NEW_D_FETCH_EN_1 = {1};
    }

    coverpoint_HABM_CTRL_SET_EVT_HSEC_D_CMPL_EN: coverpoint cmd_wdata[17] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SET_EVT_HSEC_D_CMPL_EN_0 = {0};
        bins    HABM_CTRL_SET_EVT_HSEC_D_CMPL_EN_1 = {1};
    }

    coverpoint_HABM_CTRL_SET_EVT_NVME_D_CMPL_EN: coverpoint cmd_wdata[16] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SET_EVT_NVME_D_CMPL_EN_0 = {0};
        bins    HABM_CTRL_SET_EVT_NVME_D_CMPL_EN_1 = {1};
    }

    coverpoint_HABM_CTRL_SET_EVT_HSEC_D_QUEUE_EN: coverpoint cmd_wdata[15] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SET_EVT_HSEC_D_QUEUE_EN_0 = {0};
        bins    HABM_CTRL_SET_EVT_HSEC_D_QUEUE_EN_1 = {1};
    }

    coverpoint_HABM_CTRL_SET_EVT_NVME_D_QUEUE_EN: coverpoint cmd_wdata[14] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SET_EVT_NVME_D_QUEUE_EN_0 = {0};
        bins    HABM_CTRL_SET_EVT_NVME_D_QUEUE_EN_1 = {1};
    }

    coverpoint_HABM_CTRL_SF_POST_FOR_BYP_FMU : coverpoint cmd_wdata[12] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SF_POST_FOR_BYP_FMU_0 = {0};
        bins    HABM_CTRL_SF_POST_FOR_BYP_FMU_1 = {1};
    }

    coverpoint_HABM_CTRL_CMPLT_FLOW_SVCI_PRTY: coverpoint cmd_wdata[11:10] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_CMPLT_FLOW_SVCI_PRTY_0 = {0};
        bins    HABM_CTRL_CMPLT_FLOW_SVCI_PRTY_1 = {1};
        bins    HABM_CTRL_CMPLT_FLOW_SVCI_PRTY_2 = {2};
    }

    coverpoint_HABM_CTRL_PRP_FETCH_FLOW_SVCI_PRTY: coverpoint cmd_wdata[9:8] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_PRP_FETCH_FLOW_SVCI_PRTY_0 = {0};
        bins    HABM_CTRL_PRP_FETCH_FLOW_SVCI_PRTY_1 = {1};
        bins    HABM_CTRL_PRP_FETCH_FLOW_SVCI_PRTY_2 = {2};
    }

    coverpoint_HABM_CTRL_DATA_XFER_FLOW_SVCI_PRTY: coverpoint cmd_wdata[7:6] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_DATA_XFER_FLOW_SVCI_PRTY_0 = {0};
        bins    HABM_CTRL_DATA_XFER_FLOW_SVCI_PRTY_1 = {1};
        bins    HABM_CTRL_DATA_XFER_FLOW_SVCI_PRTY_2 = {2};
    }

    coverpoint_HABM_CTRL_MPS                 : coverpoint cmd_wdata[5:2] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_MPS_0 = {0};
        bins    HABM_CTRL_MPS_1 = {0};
    }

    coverpoint_HABM_CTRL_GL_SUSPEND_MODE     : coverpoint cmd_wdata[1] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_GL_SUSPEND_MODE_0 = {0};
        bins    HABM_CTRL_GL_SUSPEND_MODE_1 = {1};
    }

    coverpoint_HABM_CTRL_GL_STOP_MODE        : coverpoint cmd_wdata[0] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_GL_STOP_MODE_0 = {0};
        bins    HABM_CTRL_GL_STOP_MODE_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_DC_FSM_E2E_ERROR_CLR_PENDING: coverpoint cmd_wdata[31] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_DC_FSM_E2E_ERROR_CLR_PENDING_0 = {0};
        bins    INTERRUPT_STATUS_0_DC_FSM_E2E_ERROR_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_ALL_HNVME_INT_DESC_COMPLETED: coverpoint cmd_wdata[29] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_ALL_HNVME_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_0_ALL_HNVME_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_ALL_HSEC_INT_DESC_COMPLETED: coverpoint cmd_wdata[28] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_ALL_HSEC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_0_ALL_HSEC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_DESC_COMPLETED_WITH_ERR: coverpoint cmd_wdata[7] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_DESC_COMPLETED_WITH_ERR_0 = {0};
        bins    INTERRUPT_STATUS_0_DESC_COMPLETED_WITH_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_DESC_COMPLETED: coverpoint cmd_wdata[6] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_0_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_WR_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[4] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_WR_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_0_WR_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_RD_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[3] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_RD_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_0_RD_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_DU_WR_CNT_REACHED_THR: coverpoint cmd_wdata[2] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_DU_WR_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_0_DU_WR_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_DU_RD_CNT_REACHED_THR: coverpoint cmd_wdata[1] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_DU_RD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_0_DU_RD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_SVCI_ERR   : coverpoint cmd_wdata[0] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_0_SVCI_ERR_0 = {0};
        bins    INTERRUPT_STATUS_0_SVCI_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_DC_FSM_E2E_ERROR_CLR_PENDING: coverpoint cmd_wdata[31] iff(cmd_addr==32'h10)
    {
        bins    INTERRUPT_STATUS_1_DC_FSM_E2E_ERROR_CLR_PENDING_0 = {0};
        bins    INTERRUPT_STATUS_1_DC_FSM_E2E_ERROR_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_ALL_HNVME_INT_DESC_COMPLETED: coverpoint cmd_wdata[29] iff(cmd_addr==32'h10)
    {
        bins    INTERRUPT_STATUS_1_ALL_HNVME_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_1_ALL_HNVME_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_ALL_HSEC_INT_DESC_COMPLETED: coverpoint cmd_wdata[28] iff(cmd_addr==32'h10)
    {
        bins    INTERRUPT_STATUS_1_ALL_HSEC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_1_ALL_HSEC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_DESC_COMPLETED_WITH_ERR: coverpoint cmd_wdata[7] iff(cmd_addr==32'h10)
    {
        bins    INTERRUPT_STATUS_1_DESC_COMPLETED_WITH_ERR_0 = {0};
        bins    INTERRUPT_STATUS_1_DESC_COMPLETED_WITH_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_DESC_COMPLETED: coverpoint cmd_wdata[6] iff(cmd_addr==32'h10)
    {
        bins    INTERRUPT_STATUS_1_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_1_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_WR_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[4] iff(cmd_addr==32'h10)
    {
        bins    INTERRUPT_STATUS_1_WR_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_1_WR_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_RD_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[3] iff(cmd_addr==32'h10)
    {
        bins    INTERRUPT_STATUS_1_RD_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_1_RD_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_DU_WR_CNT_REACHED_THR: coverpoint cmd_wdata[2] iff(cmd_addr==32'h10)
    {
        bins    INTERRUPT_STATUS_1_DU_WR_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_1_DU_WR_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_DU_RD_CNT_REACHED_THR: coverpoint cmd_wdata[1] iff(cmd_addr==32'h10)
    {
        bins    INTERRUPT_STATUS_1_DU_RD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_1_DU_RD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_1_SVCI_ERR   : coverpoint cmd_wdata[0] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_1_SVCI_ERR_0 = {0};
        bins    INTERRUPT_STATUS_1_SVCI_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_DC_FSM_E2E_ERROR_CLR_PENDING: coverpoint cmd_wdata[31] iff(cmd_addr==32'h18)
    {
        bins    INTERRUPT_STATUS_2_DC_FSM_E2E_ERROR_CLR_PENDING_0 = {0};
        bins    INTERRUPT_STATUS_2_DC_FSM_E2E_ERROR_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_ALL_HNVME_INT_DESC_COMPLETED: coverpoint cmd_wdata[29] iff(cmd_addr==32'h18)
    {
        bins    INTERRUPT_STATUS_2_ALL_HNVME_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_2_ALL_HNVME_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_ALL_HSEC_INT_DESC_COMPLETED: coverpoint cmd_wdata[28] iff(cmd_addr==32'h18)
    {
        bins    INTERRUPT_STATUS_2_ALL_HSEC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_2_ALL_HSEC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_DESC_COMPLETED_WITH_ERR: coverpoint cmd_wdata[7] iff(cmd_addr==32'h18)
    {
        bins    INTERRUPT_STATUS_2_DESC_COMPLETED_WITH_ERR_0 = {0};
        bins    INTERRUPT_STATUS_2_DESC_COMPLETED_WITH_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_DESC_COMPLETED: coverpoint cmd_wdata[6] iff(cmd_addr==32'h18)
    {
        bins    INTERRUPT_STATUS_2_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_2_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_WR_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[4] iff(cmd_addr==32'h18)
    {
        bins    INTERRUPT_STATUS_2_WR_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_2_WR_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_RD_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[3] iff(cmd_addr==32'h18)
    {
        bins    INTERRUPT_STATUS_2_RD_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_2_RD_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_DU_WR_CNT_REACHED_THR: coverpoint cmd_wdata[2] iff(cmd_addr==32'h18)
    {
        bins    INTERRUPT_STATUS_2_DU_WR_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_2_DU_WR_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_DU_RD_CNT_REACHED_THR: coverpoint cmd_wdata[1] iff(cmd_addr==32'h18)
    {
        bins    INTERRUPT_STATUS_2_DU_RD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_2_DU_RD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_2_SVCI_ERR   : coverpoint cmd_wdata[0] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_2_SVCI_ERR_0 = {0};
        bins    INTERRUPT_STATUS_2_SVCI_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_DC_FSM_E2E_ERROR_CLR_PENDING: coverpoint cmd_wdata[31] iff(cmd_addr==32'h20)
    {
        bins    INTERRUPT_STATUS_3_DC_FSM_E2E_ERROR_CLR_PENDING_0 = {0};
        bins    INTERRUPT_STATUS_3_DC_FSM_E2E_ERROR_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_ALL_HNVME_INT_DESC_COMPLETED: coverpoint cmd_wdata[29] iff(cmd_addr==32'h20)
    {
        bins    INTERRUPT_STATUS_3_ALL_HNVME_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_3_ALL_HNVME_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_ALL_HSEC_INT_DESC_COMPLETED: coverpoint cmd_wdata[28] iff(cmd_addr==32'h20)
    {
        bins    INTERRUPT_STATUS_3_ALL_HSEC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_3_ALL_HSEC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_DESC_COMPLETED_WITH_ERR: coverpoint cmd_wdata[7] iff(cmd_addr==32'h20)
    {
        bins    INTERRUPT_STATUS_3_DESC_COMPLETED_WITH_ERR_0 = {0};
        bins    INTERRUPT_STATUS_3_DESC_COMPLETED_WITH_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_DESC_COMPLETED: coverpoint cmd_wdata[6] iff(cmd_addr==32'h20)
    {
        bins    INTERRUPT_STATUS_3_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_3_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_WR_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[4] iff(cmd_addr==32'h20)
    {
        bins    INTERRUPT_STATUS_3_WR_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_3_WR_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_RD_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[3] iff(cmd_addr==32'h20)
    {
        bins    INTERRUPT_STATUS_3_RD_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_3_RD_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_DU_WR_CNT_REACHED_THR: coverpoint cmd_wdata[2] iff(cmd_addr==32'h20)
    {
        bins    INTERRUPT_STATUS_3_DU_WR_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_3_DU_WR_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_DU_RD_CNT_REACHED_THR: coverpoint cmd_wdata[1] iff(cmd_addr==32'h20)
    {
        bins    INTERRUPT_STATUS_3_DU_RD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_3_DU_RD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_3_SVCI_ERR   : coverpoint cmd_wdata[0] iff(cmd_addr==32'h8)
    {
        bins    INTERRUPT_STATUS_3_SVCI_ERR_0 = {0};
        bins    INTERRUPT_STATUS_3_SVCI_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_DC_FSM_E2E_ERROR_CLR_PENDING: coverpoint cmd_wdata[31] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_DC_FSM_E2E_ERROR_CLR_PENDING_0 = {0};
        bins    INTERRUPT_ENABLE_0_DC_FSM_E2E_ERROR_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_DC_FSM_FW_DEBUG_CLR_PENDING: coverpoint cmd_wdata[30] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_DC_FSM_FW_DEBUG_CLR_PENDING_0 = {0};
        bins    INTERRUPT_ENABLE_0_DC_FSM_FW_DEBUG_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_ALL_HNVME_INT_DESC_COMPLETED: coverpoint cmd_wdata[29] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_ALL_HNVME_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_0_ALL_HNVME_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_ALL_HSEC_INT_DESC_COMPLETED: coverpoint cmd_wdata[28] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_ALL_HSEC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_0_ALL_HSEC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_ALL_HMBC_INT_DESC_COMPLETED: coverpoint cmd_wdata[27] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_ALL_HMBC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_0_ALL_HMBC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_CH_EVENT2  : coverpoint cmd_wdata[26] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_CH_EVENT2_0 = {0};
        bins    INTERRUPT_ENABLE_0_CH_EVENT2_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_ST_FIFO_2_NOT_EMPTY: coverpoint cmd_wdata[11] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_ST_FIFO_2_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_0_ST_FIFO_2_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_ST_FIFO_1_NOT_EMPTY: coverpoint cmd_wdata[10] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_ST_FIFO_1_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_0_ST_FIFO_1_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_DC_QUEUE_NOT_EMPTY: coverpoint cmd_wdata[9] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_DC_QUEUE_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_0_DC_QUEUE_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_ERR_RB_NOT_EMPTY: coverpoint cmd_wdata[8] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_ERR_RB_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_0_ERR_RB_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_DESC_COMPLETED_WITH_ERR: coverpoint cmd_wdata[7] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_DESC_COMPLETED_WITH_ERR_0 = {0};
        bins    INTERRUPT_ENABLE_0_DESC_COMPLETED_WITH_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_DESC_COMPLETED: coverpoint cmd_wdata[6] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_0_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_CH_EVENT   : coverpoint cmd_wdata[5] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_CH_EVENT_0 = {0};
        bins    INTERRUPT_ENABLE_0_CH_EVENT_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_WR_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[4] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_WR_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_0_WR_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_RD_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[3] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_RD_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_0_RD_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_DU_WR_CNT_REACHED_THR: coverpoint cmd_wdata[2] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_DU_WR_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_0_DU_WR_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_DU_RD_CNT_REACHED_THR: coverpoint cmd_wdata[1] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_DU_RD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_0_DU_RD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_0_SVCI_ERR   : coverpoint cmd_wdata[0] iff(cmd_addr==32'h28)
    {
        bins    INTERRUPT_ENABLE_0_SVCI_ERR_0 = {0};
        bins    INTERRUPT_ENABLE_0_SVCI_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_DC_FSM_E2E_ERROR_CLR_PENDING: coverpoint cmd_wdata[31] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_DC_FSM_E2E_ERROR_CLR_PENDING_0 = {0};
        bins    INTERRUPT_ENABLE_1_DC_FSM_E2E_ERROR_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_DC_FSM_FW_DEBUG_CLR_PENDING: coverpoint cmd_wdata[30] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_DC_FSM_FW_DEBUG_CLR_PENDING_0 = {0};
        bins    INTERRUPT_ENABLE_1_DC_FSM_FW_DEBUG_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_ALL_HNVME_INT_DESC_COMPLETED: coverpoint cmd_wdata[29] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_ALL_HNVME_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_1_ALL_HNVME_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_ALL_HSEC_INT_DESC_COMPLETED: coverpoint cmd_wdata[28] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_ALL_HSEC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_1_ALL_HSEC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_ALL_HMBC_INT_DESC_COMPLETED: coverpoint cmd_wdata[27] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_ALL_HMBC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_1_ALL_HMBC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_CH_EVENT2  : coverpoint cmd_wdata[26] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_CH_EVENT2_0 = {0};
        bins    INTERRUPT_ENABLE_1_CH_EVENT2_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_ST_FIFO_2_NOT_EMPTY: coverpoint cmd_wdata[11] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_ST_FIFO_2_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_1_ST_FIFO_2_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_ST_FIFO_1_NOT_EMPTY: coverpoint cmd_wdata[10] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_ST_FIFO_1_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_1_ST_FIFO_1_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_DC_QUEUE_NOT_EMPTY: coverpoint cmd_wdata[9] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_DC_QUEUE_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_1_DC_QUEUE_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_ERR_RB_NOT_EMPTY: coverpoint cmd_wdata[8] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_ERR_RB_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_1_ERR_RB_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_DESC_COMPLETED_WITH_ERR: coverpoint cmd_wdata[7] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_DESC_COMPLETED_WITH_ERR_0 = {0};
        bins    INTERRUPT_ENABLE_1_DESC_COMPLETED_WITH_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_DESC_COMPLETED: coverpoint cmd_wdata[6] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_1_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_CH_EVENT   : coverpoint cmd_wdata[5] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_CH_EVENT_0 = {0};
        bins    INTERRUPT_ENABLE_1_CH_EVENT_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_WR_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[4] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_WR_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_1_WR_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_RD_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[3] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_RD_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_1_RD_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_DU_WR_CNT_REACHED_THR: coverpoint cmd_wdata[2] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_DU_WR_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_1_DU_WR_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_DU_RD_CNT_REACHED_THR: coverpoint cmd_wdata[1] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_DU_RD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_1_DU_RD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_1_SVCI_ERR   : coverpoint cmd_wdata[0] iff(cmd_addr==32'h30)
    {
        bins    INTERRUPT_ENABLE_1_SVCI_ERR_0 = {0};
        bins    INTERRUPT_ENABLE_1_SVCI_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_DC_FSM_E2E_ERROR_CLR_PENDING: coverpoint cmd_wdata[31] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_DC_FSM_E2E_ERROR_CLR_PENDING_0 = {0};
        bins    INTERRUPT_ENABLE_2_DC_FSM_E2E_ERROR_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_DC_FSM_FW_DEBUG_CLR_PENDING: coverpoint cmd_wdata[30] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_DC_FSM_FW_DEBUG_CLR_PENDING_0 = {0};
        bins    INTERRUPT_ENABLE_2_DC_FSM_FW_DEBUG_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_ALL_HNVME_INT_DESC_COMPLETED: coverpoint cmd_wdata[29] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_ALL_HNVME_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_2_ALL_HNVME_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_ALL_HSEC_INT_DESC_COMPLETED: coverpoint cmd_wdata[28] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_ALL_HSEC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_2_ALL_HSEC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_ALL_HMBC_INT_DESC_COMPLETED: coverpoint cmd_wdata[27] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_ALL_HMBC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_2_ALL_HMBC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_CH_EVENT2  : coverpoint cmd_wdata[26] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_CH_EVENT2_0 = {0};
        bins    INTERRUPT_ENABLE_2_CH_EVENT2_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_ST_FIFO_2_NOT_EMPTY: coverpoint cmd_wdata[11] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_ST_FIFO_2_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_2_ST_FIFO_2_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_ST_FIFO_1_NOT_EMPTY: coverpoint cmd_wdata[10] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_ST_FIFO_1_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_2_ST_FIFO_1_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_DC_QUEUE_NOT_EMPTY: coverpoint cmd_wdata[9] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_DC_QUEUE_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_2_DC_QUEUE_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_ERR_RB_NOT_EMPTY: coverpoint cmd_wdata[8] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_ERR_RB_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_2_ERR_RB_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_DESC_COMPLETED_WITH_ERR: coverpoint cmd_wdata[7] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_DESC_COMPLETED_WITH_ERR_0 = {0};
        bins    INTERRUPT_ENABLE_2_DESC_COMPLETED_WITH_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_DESC_COMPLETED: coverpoint cmd_wdata[6] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_2_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_CH_EVENT   : coverpoint cmd_wdata[5] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_CH_EVENT_0 = {0};
        bins    INTERRUPT_ENABLE_2_CH_EVENT_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_WR_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[4] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_WR_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_2_WR_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_RD_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[3] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_RD_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_2_RD_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_DU_WR_CNT_REACHED_THR: coverpoint cmd_wdata[2] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_DU_WR_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_2_DU_WR_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_DU_RD_CNT_REACHED_THR: coverpoint cmd_wdata[1] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_DU_RD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_2_DU_RD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_2_SVCI_ERR   : coverpoint cmd_wdata[0] iff(cmd_addr==32'h38)
    {
        bins    INTERRUPT_ENABLE_2_SVCI_ERR_0 = {0};
        bins    INTERRUPT_ENABLE_2_SVCI_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_DC_FSM_E2E_ERROR_CLR_PENDING: coverpoint cmd_wdata[31] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_DC_FSM_E2E_ERROR_CLR_PENDING_0 = {0};
        bins    INTERRUPT_ENABLE_3_DC_FSM_E2E_ERROR_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_DC_FSM_FW_DEBUG_CLR_PENDING: coverpoint cmd_wdata[30] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_DC_FSM_FW_DEBUG_CLR_PENDING_0 = {0};
        bins    INTERRUPT_ENABLE_3_DC_FSM_FW_DEBUG_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_ALL_HNVME_INT_DESC_COMPLETED: coverpoint cmd_wdata[29] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_ALL_HNVME_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_3_ALL_HNVME_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_ALL_HSEC_INT_DESC_COMPLETED: coverpoint cmd_wdata[28] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_ALL_HSEC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_3_ALL_HSEC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_ALL_HMBC_INT_DESC_COMPLETED: coverpoint cmd_wdata[27] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_ALL_HMBC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_3_ALL_HMBC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_CH_EVENT2  : coverpoint cmd_wdata[26] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_CH_EVENT2_0 = {0};
        bins    INTERRUPT_ENABLE_3_CH_EVENT2_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_ST_FIFO_2_NOT_EMPTY: coverpoint cmd_wdata[11] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_ST_FIFO_2_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_3_ST_FIFO_2_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_ST_FIFO_1_NOT_EMPTY: coverpoint cmd_wdata[10] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_ST_FIFO_1_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_3_ST_FIFO_1_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_DC_QUEUE_NOT_EMPTY: coverpoint cmd_wdata[9] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_DC_QUEUE_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_3_DC_QUEUE_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_ERR_RB_NOT_EMPTY: coverpoint cmd_wdata[8] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_ERR_RB_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_ENABLE_3_ERR_RB_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_DESC_COMPLETED_WITH_ERR: coverpoint cmd_wdata[7] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_DESC_COMPLETED_WITH_ERR_0 = {0};
        bins    INTERRUPT_ENABLE_3_DESC_COMPLETED_WITH_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_DESC_COMPLETED: coverpoint cmd_wdata[6] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_ENABLE_3_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_CH_EVENT   : coverpoint cmd_wdata[5] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_CH_EVENT_0 = {0};
        bins    INTERRUPT_ENABLE_3_CH_EVENT_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_WR_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[4] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_WR_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_3_WR_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_RD_CMD_CNT_REACHED_THR: coverpoint cmd_wdata[3] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_RD_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_3_RD_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_DU_WR_CNT_REACHED_THR: coverpoint cmd_wdata[2] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_DU_WR_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_3_DU_WR_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_DU_RD_CNT_REACHED_THR: coverpoint cmd_wdata[1] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_DU_RD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_ENABLE_3_DU_RD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_ENABLE_3_SVCI_ERR   : coverpoint cmd_wdata[0] iff(cmd_addr==32'h40)
    {
        bins    INTERRUPT_ENABLE_3_SVCI_ERR_0 = {0};
        bins    INTERRUPT_ENABLE_3_SVCI_ERR_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_0_IN_STOP_MODE: coverpoint cmd_wdata[0] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_0_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_0_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_1_IN_STOP_MODE: coverpoint cmd_wdata[1] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_1_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_1_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_2_IN_STOP_MODE: coverpoint cmd_wdata[2] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_2_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_2_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_3_IN_STOP_MODE: coverpoint cmd_wdata[3] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_3_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_3_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_4_IN_STOP_MODE: coverpoint cmd_wdata[4] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_4_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_4_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_5_IN_STOP_MODE: coverpoint cmd_wdata[5] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_5_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_5_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_6_IN_STOP_MODE: coverpoint cmd_wdata[6] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_6_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_6_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_7_IN_STOP_MODE: coverpoint cmd_wdata[7] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_7_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_7_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_8_IN_STOP_MODE: coverpoint cmd_wdata[8] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_8_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_8_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_9_IN_STOP_MODE: coverpoint cmd_wdata[9] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_9_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_9_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_10_IN_STOP_MODE: coverpoint cmd_wdata[10] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_10_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_10_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_11_IN_STOP_MODE: coverpoint cmd_wdata[11] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_11_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_11_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_12_IN_STOP_MODE: coverpoint cmd_wdata[12] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_12_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_12_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_13_IN_STOP_MODE: coverpoint cmd_wdata[13] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_13_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_13_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_14_IN_STOP_MODE: coverpoint cmd_wdata[14] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_14_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_14_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_0_CH_15_IN_STOP_MODE: coverpoint cmd_wdata[15] iff(cmd_addr==32'h88)
    {
        bins    CH_INTERRUPT_ENABLE_0_CH_15_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_0_CH_15_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_0_IN_STOP_MODE: coverpoint cmd_wdata[0] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_0_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_0_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_1_IN_STOP_MODE: coverpoint cmd_wdata[1] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_1_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_1_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_2_IN_STOP_MODE: coverpoint cmd_wdata[2] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_2_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_2_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_3_IN_STOP_MODE: coverpoint cmd_wdata[3] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_3_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_3_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_4_IN_STOP_MODE: coverpoint cmd_wdata[4] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_4_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_4_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_5_IN_STOP_MODE: coverpoint cmd_wdata[5] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_5_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_5_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_6_IN_STOP_MODE: coverpoint cmd_wdata[6] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_6_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_6_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_7_IN_STOP_MODE: coverpoint cmd_wdata[7] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_7_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_7_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_8_IN_STOP_MODE: coverpoint cmd_wdata[8] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_8_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_8_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_9_IN_STOP_MODE: coverpoint cmd_wdata[9] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_9_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_9_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_10_IN_STOP_MODE: coverpoint cmd_wdata[10] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_10_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_10_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_11_IN_STOP_MODE: coverpoint cmd_wdata[11] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_11_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_11_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_12_IN_STOP_MODE: coverpoint cmd_wdata[12] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_12_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_12_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_13_IN_STOP_MODE: coverpoint cmd_wdata[13] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_13_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_13_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_14_IN_STOP_MODE: coverpoint cmd_wdata[14] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_14_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_14_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_1_CH_15_IN_STOP_MODE: coverpoint cmd_wdata[15] iff(cmd_addr==32'h90)
    {
        bins    CH_INTERRUPT_ENABLE_1_CH_15_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_1_CH_15_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_0_IN_STOP_MODE: coverpoint cmd_wdata[0] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_0_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_0_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_1_IN_STOP_MODE: coverpoint cmd_wdata[1] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_1_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_1_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_2_IN_STOP_MODE: coverpoint cmd_wdata[2] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_2_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_2_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_3_IN_STOP_MODE: coverpoint cmd_wdata[3] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_3_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_3_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_4_IN_STOP_MODE: coverpoint cmd_wdata[4] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_4_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_4_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_5_IN_STOP_MODE: coverpoint cmd_wdata[5] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_5_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_5_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_6_IN_STOP_MODE: coverpoint cmd_wdata[6] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_6_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_6_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_7_IN_STOP_MODE: coverpoint cmd_wdata[7] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_7_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_7_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_8_IN_STOP_MODE: coverpoint cmd_wdata[8] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_8_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_8_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_9_IN_STOP_MODE: coverpoint cmd_wdata[9] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_9_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_9_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_10_IN_STOP_MODE: coverpoint cmd_wdata[10] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_10_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_10_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_11_IN_STOP_MODE: coverpoint cmd_wdata[11] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_11_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_11_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_12_IN_STOP_MODE: coverpoint cmd_wdata[12] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_12_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_12_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_13_IN_STOP_MODE: coverpoint cmd_wdata[13] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_13_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_13_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_14_IN_STOP_MODE: coverpoint cmd_wdata[14] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_14_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_14_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_2_CH_15_IN_STOP_MODE: coverpoint cmd_wdata[15] iff(cmd_addr==32'h98)
    {
        bins    CH_INTERRUPT_ENABLE_2_CH_15_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_2_CH_15_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_0_IN_STOP_MODE: coverpoint cmd_wdata[0] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_0_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_0_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_1_IN_STOP_MODE: coverpoint cmd_wdata[1] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_1_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_1_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_2_IN_STOP_MODE: coverpoint cmd_wdata[2] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_2_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_2_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_3_IN_STOP_MODE: coverpoint cmd_wdata[3] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_3_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_3_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_4_IN_STOP_MODE: coverpoint cmd_wdata[4] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_4_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_4_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_5_IN_STOP_MODE: coverpoint cmd_wdata[5] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_5_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_5_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_6_IN_STOP_MODE: coverpoint cmd_wdata[6] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_6_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_6_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_7_IN_STOP_MODE: coverpoint cmd_wdata[7] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_7_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_7_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_8_IN_STOP_MODE: coverpoint cmd_wdata[8] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_8_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_8_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_9_IN_STOP_MODE: coverpoint cmd_wdata[9] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_9_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_9_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_10_IN_STOP_MODE: coverpoint cmd_wdata[10] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_10_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_10_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_11_IN_STOP_MODE: coverpoint cmd_wdata[11] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_11_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_11_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_12_IN_STOP_MODE: coverpoint cmd_wdata[12] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_12_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_12_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_13_IN_STOP_MODE: coverpoint cmd_wdata[13] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_13_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_13_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_14_IN_STOP_MODE: coverpoint cmd_wdata[14] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_14_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_14_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_ENABLE_3_CH_15_IN_STOP_MODE: coverpoint cmd_wdata[15] iff(cmd_addr==32'ha0)
    {
        bins    CH_INTERRUPT_ENABLE_3_CH_15_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_ENABLE_3_CH_15_IN_STOP_MODE_1 = {1};
    }

    coverpoint_ST_FIFO_1_SIZE                : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'hd8)
    {
        bins    ST_FIFO_1_SIZE_0 = {1};
        bins    ST_FIFO_1_SIZE_1 = {[2:5]};
        bins    ST_FIFO_1_SIZE_2 = {[6:10]};
        bins    ST_FIFO_1_SIZE_3 = {[11:20]};
        bins    ST_FIFO_1_SIZE_4 = {[21:31]};
        bins    ST_FIFO_1_SIZE_5 = {32};
    }

    coverpoint_ST_FIFO_2_SIZE                : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'he0)
    {
        bins    ST_FIFO_2_SIZE_0 = {1};
        bins    ST_FIFO_2_SIZE_1 = {[2:5]};
        bins    ST_FIFO_2_SIZE_2 = {[6:10]};
        bins    ST_FIFO_2_SIZE_3 = {[11:20]};
        bins    ST_FIFO_2_SIZE_4 = {[21:31]};
        bins    ST_FIFO_2_SIZE_5 = {32};
    }

    coverpoint_ST_FIFO_1_RPTR_PTR            : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'he8)
    {
        bins    ST_FIFO_1_RPTR_PTR_0 = {1};
        bins    ST_FIFO_1_RPTR_PTR_1 = {[2:5]};
        bins    ST_FIFO_1_RPTR_PTR_2 = {[6:10]};
        bins    ST_FIFO_1_RPTR_PTR_3 = {[11:32]};
    }

    coverpoint_ST_FIFO_2_RPTR_PTR            : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'hf0)
    {
        bins    ST_FIFO_2_RPTR_PTR_0 = {1};
        bins    ST_FIFO_2_RPTR_PTR_1 = {[2:5]};
        bins    ST_FIFO_2_RPTR_PTR_2 = {[6:10]};
        bins    ST_FIFO_2_RPTR_PTR_3 = {[11:32]};
    }

    coverpoint_ERR_DESC_RB_SIZE              : coverpoint cmd_wdata[2:0] iff(cmd_addr==32'h110)
    {
        bins    ERR_DESC_RB_SIZE_0 = {1};
        bins    ERR_DESC_RB_SIZE_1 = {2};
        bins    ERR_DESC_RB_SIZE_2 = {3};
        bins    ERR_DESC_RB_SIZE_3 = {4};
    }

    coverpoint_ERR_DESC_RB_RPTR_PTR          : coverpoint cmd_wdata[2:0] iff(cmd_addr==32'h118)
    {
        bins    ERR_DESC_RB_RPTR_PTR_0 = {1};
        bins    ERR_DESC_RB_RPTR_PTR_1 = {2};
        bins    ERR_DESC_RB_RPTR_PTR_2 = {3};
        bins    ERR_DESC_RB_RPTR_PTR_3 = {4};
    }

    coverpoint_DESC_CMPL_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h130)
    {
        bins    DESC_CMPL_RB_SIZE_0 = {1};
        bins    DESC_CMPL_RB_SIZE_1 = {[2:5]};
        bins    DESC_CMPL_RB_SIZE_2 = {[6:10]};
        bins    DESC_CMPL_RB_SIZE_3 = {[11:20]};
        bins    DESC_CMPL_RB_SIZE_4 = {[21:31]};
        bins    DESC_CMPL_RB_SIZE_5 = {32};
    }

    coverpoint_DESC_CMPL_RB_RPTR_PTR         : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h138)
    {
        bins    DESC_CMPL_RB_RPTR_PTR_0 = {1};
        bins    DESC_CMPL_RB_RPTR_PTR_1 = {[2:5]};
        bins    DESC_CMPL_RB_RPTR_PTR_2 = {[6:10]};
        bins    DESC_CMPL_RB_RPTR_PTR_3 = {[11:32]};
    }

    coverpoint_DU_RD_CNT_TH                  : coverpoint cmd_wdata[31:0] iff(cmd_addr==32'h170)
    {
        bins    DU_RD_CNT_TH_0 = {[1:5]};
        bins    DU_RD_CNT_TH_1 = {[6:10]};
        bins    DU_RD_CNT_TH_2 = {[11:20]};
        bins    DU_RD_CNT_TH_3 = {[21:50]};
        bins    DU_RD_CNT_TH_4 = {[51:500]};
        bins    DU_RD_CNT_TH_5 = {[501:1000]};
        bins    DU_RD_CNT_TH_6 = {[1001:5000]};
        bins    DU_RD_CNT_TH_7 = {[5001:32'hffff_ffff]};
    }

    coverpoint_DU_WR_CNT_TH                  : coverpoint cmd_wdata[31:0] iff(cmd_addr==32'h178)
    {
        bins    DU_WR_CNT_TH_0 = {[1:5]};
        bins    DU_WR_CNT_TH_1 = {[6:10]};
        bins    DU_WR_CNT_TH_2 = {[11:20]};
        bins    DU_WR_CNT_TH_3 = {[21:50]};
        bins    DU_WR_CNT_TH_4 = {[51:500]};
        bins    DU_WR_CNT_TH_5 = {[501:1000]};
        bins    DU_WR_CNT_TH_6 = {[1001:5000]};
        bins    DU_WR_CNT_TH_7 = {[5001:32'hffff_ffff]};
    }

    coverpoint_HS_RD_CNT_TH                  : coverpoint cmd_wdata[31:0] iff(cmd_addr==32'h190)
    {
        bins    HS_RD_CNT_TH_0 = {[1:5]};
        bins    HS_RD_CNT_TH_1 = {[6:10]};
        bins    HS_RD_CNT_TH_2 = {[11:20]};
        bins    HS_RD_CNT_TH_3 = {[21:50]};
        bins    HS_RD_CNT_TH_4 = {[51:500]};
        bins    HS_RD_CNT_TH_5 = {[501:1000]};
        bins    HS_RD_CNT_TH_6 = {[1001:5000]};
        bins    HS_RD_CNT_TH_7 = {[5001:32'hffff_ffff]};
    }

    coverpoint_HS_WR_CNT_TH                  : coverpoint cmd_wdata[31:0] iff(cmd_addr==32'h198)
    {
        bins    HS_WR_CNT_TH_0 = {[1:5]};
        bins    HS_WR_CNT_TH_1 = {[6:10]};
        bins    HS_WR_CNT_TH_2 = {[11:20]};
        bins    HS_WR_CNT_TH_3 = {[21:50]};
        bins    HS_WR_CNT_TH_4 = {[51:500]};
        bins    HS_WR_CNT_TH_5 = {[501:1000]};
        bins    HS_WR_CNT_TH_6 = {[1001:5000]};
        bins    HS_WR_CNT_TH_7 = {[5001:32'hffff_ffff]};
    }

    coverpoint_ERRI_CFG2_0_ATTR              : coverpoint cmd_wdata[19:18] iff(cmd_addr==32'h290)
    {
        bins    ERRI_CFG2_0_ATTR_0 = {0};
        bins    ERRI_CFG2_0_ATTR_1 = {1};
        bins    ERRI_CFG2_0_ATTR_2 = {2};
    }

    coverpoint_ERRI_CFG2_0_TYPE              : coverpoint cmd_wdata[17:16] iff(cmd_addr==32'h290)
    {
        bins    ERRI_CFG2_0_TYPE_0 = {0};
        bins    ERRI_CFG2_0_TYPE_1 = {1};
        bins    ERRI_CFG2_0_TYPE_2 = {2};
        bins    ERRI_CFG2_0_TYPE_3 = {3};
    }

    coverpoint_ERRI_CFG2_1_ATTR              : coverpoint cmd_wdata[19:18] iff(cmd_addr==32'h298)
    {
        bins    ERRI_CFG2_1_ATTR_0 = {0};
        bins    ERRI_CFG2_1_ATTR_1 = {1};
        bins    ERRI_CFG2_1_ATTR_2 = {2};
    }

    coverpoint_ERRI_CFG2_1_TYPE              : coverpoint cmd_wdata[17:16] iff(cmd_addr==32'h298)
    {
        bins    ERRI_CFG2_1_TYPE_0 = {0};
        bins    ERRI_CFG2_1_TYPE_1 = {1};
        bins    ERRI_CFG2_1_TYPE_2 = {2};
        bins    ERRI_CFG2_1_TYPE_3 = {3};
    }

    coverpoint_ERRI_CFG2_2_ATTR              : coverpoint cmd_wdata[19:18] iff(cmd_addr==32'h2a0)
    {
        bins    ERRI_CFG2_2_ATTR_0 = {0};
        bins    ERRI_CFG2_2_ATTR_1 = {1};
        bins    ERRI_CFG2_2_ATTR_2 = {2};
    }

    coverpoint_ERRI_CFG2_2_TYPE              : coverpoint cmd_wdata[17:16] iff(cmd_addr==32'h2a0)
    {
        bins    ERRI_CFG2_2_TYPE_0 = {0};
        bins    ERRI_CFG2_2_TYPE_1 = {1};
        bins    ERRI_CFG2_2_TYPE_2 = {2};
        bins    ERRI_CFG2_2_TYPE_3 = {3};
    }

    coverpoint_ERRI_CFG2_3_ATTR              : coverpoint cmd_wdata[19:18] iff(cmd_addr==32'h2a8)
    {
        bins    ERRI_CFG2_3_ATTR_0 = {0};
        bins    ERRI_CFG2_3_ATTR_1 = {1};
        bins    ERRI_CFG2_3_ATTR_2 = {2};
    }

    coverpoint_ERRI_CFG2_3_TYPE              : coverpoint cmd_wdata[17:16] iff(cmd_addr==32'h2a8)
    {
        bins    ERRI_CFG2_3_TYPE_0 = {0};
        bins    ERRI_CFG2_3_TYPE_1 = {1};
        bins    ERRI_CFG2_3_TYPE_2 = {2};
        bins    ERRI_CFG2_3_TYPE_3 = {3};
    }

    coverpoint_CH_0_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h330)
    {
        bins    CH_0_DPTR_RB_SIZE_0 = {1};
        bins    CH_0_DPTR_RB_SIZE_1 = {2};
        bins    CH_0_DPTR_RB_SIZE_2 = {3};
        bins    CH_0_DPTR_RB_SIZE_3 = {4};
        bins    CH_0_DPTR_RB_SIZE_4 = {5};
        bins    CH_0_DPTR_RB_SIZE_5 = {6};
        bins    CH_0_DPTR_RB_SIZE_6 = {7};
        bins    CH_0_DPTR_RB_SIZE_7 = {8};
        bins    CH_0_DPTR_RB_SIZE_8 = {9};
        bins    CH_0_DPTR_RB_SIZE_9 = {10};
        bins    CH_0_DPTR_RB_SIZE_10 = {11};
        bins    CH_0_DPTR_RB_SIZE_11 = {12};
        bins    CH_0_DPTR_RB_SIZE_12 = {13};
        bins    CH_0_DPTR_RB_SIZE_13 = {14};
        bins    CH_0_DPTR_RB_SIZE_14 = {15};
        bins    CH_0_DPTR_RB_SIZE_15 = {16};
        bins    CH_0_DPTR_RB_SIZE_16 = {17};
        bins    CH_0_DPTR_RB_SIZE_17 = {18};
        bins    CH_0_DPTR_RB_SIZE_18 = {19};
        bins    CH_0_DPTR_RB_SIZE_19 = {20};
        bins    CH_0_DPTR_RB_SIZE_20 = {21};
        bins    CH_0_DPTR_RB_SIZE_21 = {22};
        bins    CH_0_DPTR_RB_SIZE_22 = {23};
        bins    CH_0_DPTR_RB_SIZE_23 = {24};
        bins    CH_0_DPTR_RB_SIZE_24 = {25};
        bins    CH_0_DPTR_RB_SIZE_25 = {26};
        bins    CH_0_DPTR_RB_SIZE_26 = {27};
        bins    CH_0_DPTR_RB_SIZE_27 = {28};
        bins    CH_0_DPTR_RB_SIZE_28 = {29};
        bins    CH_0_DPTR_RB_SIZE_29 = {30};
        bins    CH_0_DPTR_RB_SIZE_30 = {31};
        bins    CH_0_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_1_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h338)
    {
        bins    CH_1_DPTR_RB_SIZE_0 = {1};
        bins    CH_1_DPTR_RB_SIZE_1 = {2};
        bins    CH_1_DPTR_RB_SIZE_2 = {3};
        bins    CH_1_DPTR_RB_SIZE_3 = {4};
        bins    CH_1_DPTR_RB_SIZE_4 = {5};
        bins    CH_1_DPTR_RB_SIZE_5 = {6};
        bins    CH_1_DPTR_RB_SIZE_6 = {7};
        bins    CH_1_DPTR_RB_SIZE_7 = {8};
        bins    CH_1_DPTR_RB_SIZE_8 = {9};
        bins    CH_1_DPTR_RB_SIZE_9 = {10};
        bins    CH_1_DPTR_RB_SIZE_10 = {11};
        bins    CH_1_DPTR_RB_SIZE_11 = {12};
        bins    CH_1_DPTR_RB_SIZE_12 = {13};
        bins    CH_1_DPTR_RB_SIZE_13 = {14};
        bins    CH_1_DPTR_RB_SIZE_14 = {15};
        bins    CH_1_DPTR_RB_SIZE_15 = {16};
        bins    CH_1_DPTR_RB_SIZE_16 = {17};
        bins    CH_1_DPTR_RB_SIZE_17 = {18};
        bins    CH_1_DPTR_RB_SIZE_18 = {19};
        bins    CH_1_DPTR_RB_SIZE_19 = {20};
        bins    CH_1_DPTR_RB_SIZE_20 = {21};
        bins    CH_1_DPTR_RB_SIZE_21 = {22};
        bins    CH_1_DPTR_RB_SIZE_22 = {23};
        bins    CH_1_DPTR_RB_SIZE_23 = {24};
        bins    CH_1_DPTR_RB_SIZE_24 = {25};
        bins    CH_1_DPTR_RB_SIZE_25 = {26};
        bins    CH_1_DPTR_RB_SIZE_26 = {27};
        bins    CH_1_DPTR_RB_SIZE_27 = {28};
        bins    CH_1_DPTR_RB_SIZE_28 = {29};
        bins    CH_1_DPTR_RB_SIZE_29 = {30};
        bins    CH_1_DPTR_RB_SIZE_30 = {31};
        bins    CH_1_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_2_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h340)
    {
        bins    CH_2_DPTR_RB_SIZE_0 = {1};
        bins    CH_2_DPTR_RB_SIZE_1 = {2};
        bins    CH_2_DPTR_RB_SIZE_2 = {3};
        bins    CH_2_DPTR_RB_SIZE_3 = {4};
        bins    CH_2_DPTR_RB_SIZE_4 = {5};
        bins    CH_2_DPTR_RB_SIZE_5 = {6};
        bins    CH_2_DPTR_RB_SIZE_6 = {7};
        bins    CH_2_DPTR_RB_SIZE_7 = {8};
        bins    CH_2_DPTR_RB_SIZE_8 = {9};
        bins    CH_2_DPTR_RB_SIZE_9 = {10};
        bins    CH_2_DPTR_RB_SIZE_10 = {11};
        bins    CH_2_DPTR_RB_SIZE_11 = {12};
        bins    CH_2_DPTR_RB_SIZE_12 = {13};
        bins    CH_2_DPTR_RB_SIZE_13 = {14};
        bins    CH_2_DPTR_RB_SIZE_14 = {15};
        bins    CH_2_DPTR_RB_SIZE_15 = {16};
        bins    CH_2_DPTR_RB_SIZE_16 = {17};
        bins    CH_2_DPTR_RB_SIZE_17 = {18};
        bins    CH_2_DPTR_RB_SIZE_18 = {19};
        bins    CH_2_DPTR_RB_SIZE_19 = {20};
        bins    CH_2_DPTR_RB_SIZE_20 = {21};
        bins    CH_2_DPTR_RB_SIZE_21 = {22};
        bins    CH_2_DPTR_RB_SIZE_22 = {23};
        bins    CH_2_DPTR_RB_SIZE_23 = {24};
        bins    CH_2_DPTR_RB_SIZE_24 = {25};
        bins    CH_2_DPTR_RB_SIZE_25 = {26};
        bins    CH_2_DPTR_RB_SIZE_26 = {27};
        bins    CH_2_DPTR_RB_SIZE_27 = {28};
        bins    CH_2_DPTR_RB_SIZE_28 = {29};
        bins    CH_2_DPTR_RB_SIZE_29 = {30};
        bins    CH_2_DPTR_RB_SIZE_30 = {31};
        bins    CH_2_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_3_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h348)
    {
        bins    CH_3_DPTR_RB_SIZE_0 = {1};
        bins    CH_3_DPTR_RB_SIZE_1 = {2};
        bins    CH_3_DPTR_RB_SIZE_2 = {3};
        bins    CH_3_DPTR_RB_SIZE_3 = {4};
        bins    CH_3_DPTR_RB_SIZE_4 = {5};
        bins    CH_3_DPTR_RB_SIZE_5 = {6};
        bins    CH_3_DPTR_RB_SIZE_6 = {7};
        bins    CH_3_DPTR_RB_SIZE_7 = {8};
        bins    CH_3_DPTR_RB_SIZE_8 = {9};
        bins    CH_3_DPTR_RB_SIZE_9 = {10};
        bins    CH_3_DPTR_RB_SIZE_10 = {11};
        bins    CH_3_DPTR_RB_SIZE_11 = {12};
        bins    CH_3_DPTR_RB_SIZE_12 = {13};
        bins    CH_3_DPTR_RB_SIZE_13 = {14};
        bins    CH_3_DPTR_RB_SIZE_14 = {15};
        bins    CH_3_DPTR_RB_SIZE_15 = {16};
        bins    CH_3_DPTR_RB_SIZE_16 = {17};
        bins    CH_3_DPTR_RB_SIZE_17 = {18};
        bins    CH_3_DPTR_RB_SIZE_18 = {19};
        bins    CH_3_DPTR_RB_SIZE_19 = {20};
        bins    CH_3_DPTR_RB_SIZE_20 = {21};
        bins    CH_3_DPTR_RB_SIZE_21 = {22};
        bins    CH_3_DPTR_RB_SIZE_22 = {23};
        bins    CH_3_DPTR_RB_SIZE_23 = {24};
        bins    CH_3_DPTR_RB_SIZE_24 = {25};
        bins    CH_3_DPTR_RB_SIZE_25 = {26};
        bins    CH_3_DPTR_RB_SIZE_26 = {27};
        bins    CH_3_DPTR_RB_SIZE_27 = {28};
        bins    CH_3_DPTR_RB_SIZE_28 = {29};
        bins    CH_3_DPTR_RB_SIZE_29 = {30};
        bins    CH_3_DPTR_RB_SIZE_30 = {31};
        bins    CH_3_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_4_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h350)
    {
        bins    CH_4_DPTR_RB_SIZE_0 = {1};
        bins    CH_4_DPTR_RB_SIZE_1 = {2};
        bins    CH_4_DPTR_RB_SIZE_2 = {3};
        bins    CH_4_DPTR_RB_SIZE_3 = {4};
        bins    CH_4_DPTR_RB_SIZE_4 = {5};
        bins    CH_4_DPTR_RB_SIZE_5 = {6};
        bins    CH_4_DPTR_RB_SIZE_6 = {7};
        bins    CH_4_DPTR_RB_SIZE_7 = {8};
        bins    CH_4_DPTR_RB_SIZE_8 = {9};
        bins    CH_4_DPTR_RB_SIZE_9 = {10};
        bins    CH_4_DPTR_RB_SIZE_10 = {11};
        bins    CH_4_DPTR_RB_SIZE_11 = {12};
        bins    CH_4_DPTR_RB_SIZE_12 = {13};
        bins    CH_4_DPTR_RB_SIZE_13 = {14};
        bins    CH_4_DPTR_RB_SIZE_14 = {15};
        bins    CH_4_DPTR_RB_SIZE_15 = {16};
        bins    CH_4_DPTR_RB_SIZE_16 = {17};
        bins    CH_4_DPTR_RB_SIZE_17 = {18};
        bins    CH_4_DPTR_RB_SIZE_18 = {19};
        bins    CH_4_DPTR_RB_SIZE_19 = {20};
        bins    CH_4_DPTR_RB_SIZE_20 = {21};
        bins    CH_4_DPTR_RB_SIZE_21 = {22};
        bins    CH_4_DPTR_RB_SIZE_22 = {23};
        bins    CH_4_DPTR_RB_SIZE_23 = {24};
        bins    CH_4_DPTR_RB_SIZE_24 = {25};
        bins    CH_4_DPTR_RB_SIZE_25 = {26};
        bins    CH_4_DPTR_RB_SIZE_26 = {27};
        bins    CH_4_DPTR_RB_SIZE_27 = {28};
        bins    CH_4_DPTR_RB_SIZE_28 = {29};
        bins    CH_4_DPTR_RB_SIZE_29 = {30};
        bins    CH_4_DPTR_RB_SIZE_30 = {31};
        bins    CH_4_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_5_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h358)
    {
        bins    CH_5_DPTR_RB_SIZE_0 = {1};
        bins    CH_5_DPTR_RB_SIZE_1 = {2};
        bins    CH_5_DPTR_RB_SIZE_2 = {3};
        bins    CH_5_DPTR_RB_SIZE_3 = {4};
        bins    CH_5_DPTR_RB_SIZE_4 = {5};
        bins    CH_5_DPTR_RB_SIZE_5 = {6};
        bins    CH_5_DPTR_RB_SIZE_6 = {7};
        bins    CH_5_DPTR_RB_SIZE_7 = {8};
        bins    CH_5_DPTR_RB_SIZE_8 = {9};
        bins    CH_5_DPTR_RB_SIZE_9 = {10};
        bins    CH_5_DPTR_RB_SIZE_10 = {11};
        bins    CH_5_DPTR_RB_SIZE_11 = {12};
        bins    CH_5_DPTR_RB_SIZE_12 = {13};
        bins    CH_5_DPTR_RB_SIZE_13 = {14};
        bins    CH_5_DPTR_RB_SIZE_14 = {15};
        bins    CH_5_DPTR_RB_SIZE_15 = {16};
        bins    CH_5_DPTR_RB_SIZE_16 = {17};
        bins    CH_5_DPTR_RB_SIZE_17 = {18};
        bins    CH_5_DPTR_RB_SIZE_18 = {19};
        bins    CH_5_DPTR_RB_SIZE_19 = {20};
        bins    CH_5_DPTR_RB_SIZE_20 = {21};
        bins    CH_5_DPTR_RB_SIZE_21 = {22};
        bins    CH_5_DPTR_RB_SIZE_22 = {23};
        bins    CH_5_DPTR_RB_SIZE_23 = {24};
        bins    CH_5_DPTR_RB_SIZE_24 = {25};
        bins    CH_5_DPTR_RB_SIZE_25 = {26};
        bins    CH_5_DPTR_RB_SIZE_26 = {27};
        bins    CH_5_DPTR_RB_SIZE_27 = {28};
        bins    CH_5_DPTR_RB_SIZE_28 = {29};
        bins    CH_5_DPTR_RB_SIZE_29 = {30};
        bins    CH_5_DPTR_RB_SIZE_30 = {31};
        bins    CH_5_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_6_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h360)
    {
        bins    CH_6_DPTR_RB_SIZE_0 = {1};
        bins    CH_6_DPTR_RB_SIZE_1 = {2};
        bins    CH_6_DPTR_RB_SIZE_2 = {3};
        bins    CH_6_DPTR_RB_SIZE_3 = {4};
        bins    CH_6_DPTR_RB_SIZE_4 = {5};
        bins    CH_6_DPTR_RB_SIZE_5 = {6};
        bins    CH_6_DPTR_RB_SIZE_6 = {7};
        bins    CH_6_DPTR_RB_SIZE_7 = {8};
        bins    CH_6_DPTR_RB_SIZE_8 = {9};
        bins    CH_6_DPTR_RB_SIZE_9 = {10};
        bins    CH_6_DPTR_RB_SIZE_10 = {11};
        bins    CH_6_DPTR_RB_SIZE_11 = {12};
        bins    CH_6_DPTR_RB_SIZE_12 = {13};
        bins    CH_6_DPTR_RB_SIZE_13 = {14};
        bins    CH_6_DPTR_RB_SIZE_14 = {15};
        bins    CH_6_DPTR_RB_SIZE_15 = {16};
        bins    CH_6_DPTR_RB_SIZE_16 = {17};
        bins    CH_6_DPTR_RB_SIZE_17 = {18};
        bins    CH_6_DPTR_RB_SIZE_18 = {19};
        bins    CH_6_DPTR_RB_SIZE_19 = {20};
        bins    CH_6_DPTR_RB_SIZE_20 = {21};
        bins    CH_6_DPTR_RB_SIZE_21 = {22};
        bins    CH_6_DPTR_RB_SIZE_22 = {23};
        bins    CH_6_DPTR_RB_SIZE_23 = {24};
        bins    CH_6_DPTR_RB_SIZE_24 = {25};
        bins    CH_6_DPTR_RB_SIZE_25 = {26};
        bins    CH_6_DPTR_RB_SIZE_26 = {27};
        bins    CH_6_DPTR_RB_SIZE_27 = {28};
        bins    CH_6_DPTR_RB_SIZE_28 = {29};
        bins    CH_6_DPTR_RB_SIZE_29 = {30};
        bins    CH_6_DPTR_RB_SIZE_30 = {31};
        bins    CH_6_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_7_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h368)
    {
        bins    CH_7_DPTR_RB_SIZE_0 = {1};
        bins    CH_7_DPTR_RB_SIZE_1 = {2};
        bins    CH_7_DPTR_RB_SIZE_2 = {3};
        bins    CH_7_DPTR_RB_SIZE_3 = {4};
        bins    CH_7_DPTR_RB_SIZE_4 = {5};
        bins    CH_7_DPTR_RB_SIZE_5 = {6};
        bins    CH_7_DPTR_RB_SIZE_6 = {7};
        bins    CH_7_DPTR_RB_SIZE_7 = {8};
        bins    CH_7_DPTR_RB_SIZE_8 = {9};
        bins    CH_7_DPTR_RB_SIZE_9 = {10};
        bins    CH_7_DPTR_RB_SIZE_10 = {11};
        bins    CH_7_DPTR_RB_SIZE_11 = {12};
        bins    CH_7_DPTR_RB_SIZE_12 = {13};
        bins    CH_7_DPTR_RB_SIZE_13 = {14};
        bins    CH_7_DPTR_RB_SIZE_14 = {15};
        bins    CH_7_DPTR_RB_SIZE_15 = {16};
        bins    CH_7_DPTR_RB_SIZE_16 = {17};
        bins    CH_7_DPTR_RB_SIZE_17 = {18};
        bins    CH_7_DPTR_RB_SIZE_18 = {19};
        bins    CH_7_DPTR_RB_SIZE_19 = {20};
        bins    CH_7_DPTR_RB_SIZE_20 = {21};
        bins    CH_7_DPTR_RB_SIZE_21 = {22};
        bins    CH_7_DPTR_RB_SIZE_22 = {23};
        bins    CH_7_DPTR_RB_SIZE_23 = {24};
        bins    CH_7_DPTR_RB_SIZE_24 = {25};
        bins    CH_7_DPTR_RB_SIZE_25 = {26};
        bins    CH_7_DPTR_RB_SIZE_26 = {27};
        bins    CH_7_DPTR_RB_SIZE_27 = {28};
        bins    CH_7_DPTR_RB_SIZE_28 = {29};
        bins    CH_7_DPTR_RB_SIZE_29 = {30};
        bins    CH_7_DPTR_RB_SIZE_30 = {31};
        bins    CH_7_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_8_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h370)
    {
        bins    CH_8_DPTR_RB_SIZE_0 = {1};
        bins    CH_8_DPTR_RB_SIZE_1 = {2};
        bins    CH_8_DPTR_RB_SIZE_2 = {3};
        bins    CH_8_DPTR_RB_SIZE_3 = {4};
        bins    CH_8_DPTR_RB_SIZE_4 = {5};
        bins    CH_8_DPTR_RB_SIZE_5 = {6};
        bins    CH_8_DPTR_RB_SIZE_6 = {7};
        bins    CH_8_DPTR_RB_SIZE_7 = {8};
        bins    CH_8_DPTR_RB_SIZE_8 = {9};
        bins    CH_8_DPTR_RB_SIZE_9 = {10};
        bins    CH_8_DPTR_RB_SIZE_10 = {11};
        bins    CH_8_DPTR_RB_SIZE_11 = {12};
        bins    CH_8_DPTR_RB_SIZE_12 = {13};
        bins    CH_8_DPTR_RB_SIZE_13 = {14};
        bins    CH_8_DPTR_RB_SIZE_14 = {15};
        bins    CH_8_DPTR_RB_SIZE_15 = {16};
        bins    CH_8_DPTR_RB_SIZE_16 = {17};
        bins    CH_8_DPTR_RB_SIZE_17 = {18};
        bins    CH_8_DPTR_RB_SIZE_18 = {19};
        bins    CH_8_DPTR_RB_SIZE_19 = {20};
        bins    CH_8_DPTR_RB_SIZE_20 = {21};
        bins    CH_8_DPTR_RB_SIZE_21 = {22};
        bins    CH_8_DPTR_RB_SIZE_22 = {23};
        bins    CH_8_DPTR_RB_SIZE_23 = {24};
        bins    CH_8_DPTR_RB_SIZE_24 = {25};
        bins    CH_8_DPTR_RB_SIZE_25 = {26};
        bins    CH_8_DPTR_RB_SIZE_26 = {27};
        bins    CH_8_DPTR_RB_SIZE_27 = {28};
        bins    CH_8_DPTR_RB_SIZE_28 = {29};
        bins    CH_8_DPTR_RB_SIZE_29 = {30};
        bins    CH_8_DPTR_RB_SIZE_30 = {31};
        bins    CH_8_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_9_DPTR_RB_SIZE             : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h378)
    {
        bins    CH_9_DPTR_RB_SIZE_0 = {1};
        bins    CH_9_DPTR_RB_SIZE_1 = {2};
        bins    CH_9_DPTR_RB_SIZE_2 = {3};
        bins    CH_9_DPTR_RB_SIZE_3 = {4};
        bins    CH_9_DPTR_RB_SIZE_4 = {5};
        bins    CH_9_DPTR_RB_SIZE_5 = {6};
        bins    CH_9_DPTR_RB_SIZE_6 = {7};
        bins    CH_9_DPTR_RB_SIZE_7 = {8};
        bins    CH_9_DPTR_RB_SIZE_8 = {9};
        bins    CH_9_DPTR_RB_SIZE_9 = {10};
        bins    CH_9_DPTR_RB_SIZE_10 = {11};
        bins    CH_9_DPTR_RB_SIZE_11 = {12};
        bins    CH_9_DPTR_RB_SIZE_12 = {13};
        bins    CH_9_DPTR_RB_SIZE_13 = {14};
        bins    CH_9_DPTR_RB_SIZE_14 = {15};
        bins    CH_9_DPTR_RB_SIZE_15 = {16};
        bins    CH_9_DPTR_RB_SIZE_16 = {17};
        bins    CH_9_DPTR_RB_SIZE_17 = {18};
        bins    CH_9_DPTR_RB_SIZE_18 = {19};
        bins    CH_9_DPTR_RB_SIZE_19 = {20};
        bins    CH_9_DPTR_RB_SIZE_20 = {21};
        bins    CH_9_DPTR_RB_SIZE_21 = {22};
        bins    CH_9_DPTR_RB_SIZE_22 = {23};
        bins    CH_9_DPTR_RB_SIZE_23 = {24};
        bins    CH_9_DPTR_RB_SIZE_24 = {25};
        bins    CH_9_DPTR_RB_SIZE_25 = {26};
        bins    CH_9_DPTR_RB_SIZE_26 = {27};
        bins    CH_9_DPTR_RB_SIZE_27 = {28};
        bins    CH_9_DPTR_RB_SIZE_28 = {29};
        bins    CH_9_DPTR_RB_SIZE_29 = {30};
        bins    CH_9_DPTR_RB_SIZE_30 = {31};
        bins    CH_9_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_10_DPTR_RB_SIZE            : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h380)
    {
        bins    CH_10_DPTR_RB_SIZE_0 = {1};
        bins    CH_10_DPTR_RB_SIZE_1 = {2};
        bins    CH_10_DPTR_RB_SIZE_2 = {3};
        bins    CH_10_DPTR_RB_SIZE_3 = {4};
        bins    CH_10_DPTR_RB_SIZE_4 = {5};
        bins    CH_10_DPTR_RB_SIZE_5 = {6};
        bins    CH_10_DPTR_RB_SIZE_6 = {7};
        bins    CH_10_DPTR_RB_SIZE_7 = {8};
        bins    CH_10_DPTR_RB_SIZE_8 = {9};
        bins    CH_10_DPTR_RB_SIZE_9 = {10};
        bins    CH_10_DPTR_RB_SIZE_10 = {11};
        bins    CH_10_DPTR_RB_SIZE_11 = {12};
        bins    CH_10_DPTR_RB_SIZE_12 = {13};
        bins    CH_10_DPTR_RB_SIZE_13 = {14};
        bins    CH_10_DPTR_RB_SIZE_14 = {15};
        bins    CH_10_DPTR_RB_SIZE_15 = {16};
        bins    CH_10_DPTR_RB_SIZE_16 = {17};
        bins    CH_10_DPTR_RB_SIZE_17 = {18};
        bins    CH_10_DPTR_RB_SIZE_18 = {19};
        bins    CH_10_DPTR_RB_SIZE_19 = {20};
        bins    CH_10_DPTR_RB_SIZE_20 = {21};
        bins    CH_10_DPTR_RB_SIZE_21 = {22};
        bins    CH_10_DPTR_RB_SIZE_22 = {23};
        bins    CH_10_DPTR_RB_SIZE_23 = {24};
        bins    CH_10_DPTR_RB_SIZE_24 = {25};
        bins    CH_10_DPTR_RB_SIZE_25 = {26};
        bins    CH_10_DPTR_RB_SIZE_26 = {27};
        bins    CH_10_DPTR_RB_SIZE_27 = {28};
        bins    CH_10_DPTR_RB_SIZE_28 = {29};
        bins    CH_10_DPTR_RB_SIZE_29 = {30};
        bins    CH_10_DPTR_RB_SIZE_30 = {31};
        bins    CH_10_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_11_DPTR_RB_SIZE            : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h388)
    {
        bins    CH_11_DPTR_RB_SIZE_0 = {1};
        bins    CH_11_DPTR_RB_SIZE_1 = {2};
        bins    CH_11_DPTR_RB_SIZE_2 = {3};
        bins    CH_11_DPTR_RB_SIZE_3 = {4};
        bins    CH_11_DPTR_RB_SIZE_4 = {5};
        bins    CH_11_DPTR_RB_SIZE_5 = {6};
        bins    CH_11_DPTR_RB_SIZE_6 = {7};
        bins    CH_11_DPTR_RB_SIZE_7 = {8};
        bins    CH_11_DPTR_RB_SIZE_8 = {9};
        bins    CH_11_DPTR_RB_SIZE_9 = {10};
        bins    CH_11_DPTR_RB_SIZE_10 = {11};
        bins    CH_11_DPTR_RB_SIZE_11 = {12};
        bins    CH_11_DPTR_RB_SIZE_12 = {13};
        bins    CH_11_DPTR_RB_SIZE_13 = {14};
        bins    CH_11_DPTR_RB_SIZE_14 = {15};
        bins    CH_11_DPTR_RB_SIZE_15 = {16};
        bins    CH_11_DPTR_RB_SIZE_16 = {17};
        bins    CH_11_DPTR_RB_SIZE_17 = {18};
        bins    CH_11_DPTR_RB_SIZE_18 = {19};
        bins    CH_11_DPTR_RB_SIZE_19 = {20};
        bins    CH_11_DPTR_RB_SIZE_20 = {21};
        bins    CH_11_DPTR_RB_SIZE_21 = {22};
        bins    CH_11_DPTR_RB_SIZE_22 = {23};
        bins    CH_11_DPTR_RB_SIZE_23 = {24};
        bins    CH_11_DPTR_RB_SIZE_24 = {25};
        bins    CH_11_DPTR_RB_SIZE_25 = {26};
        bins    CH_11_DPTR_RB_SIZE_26 = {27};
        bins    CH_11_DPTR_RB_SIZE_27 = {28};
        bins    CH_11_DPTR_RB_SIZE_28 = {29};
        bins    CH_11_DPTR_RB_SIZE_29 = {30};
        bins    CH_11_DPTR_RB_SIZE_30 = {31};
        bins    CH_11_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_12_DPTR_RB_SIZE            : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h390)
    {
        bins    CH_12_DPTR_RB_SIZE_0 = {1};
        bins    CH_12_DPTR_RB_SIZE_1 = {2};
        bins    CH_12_DPTR_RB_SIZE_2 = {3};
        bins    CH_12_DPTR_RB_SIZE_3 = {4};
        bins    CH_12_DPTR_RB_SIZE_4 = {5};
        bins    CH_12_DPTR_RB_SIZE_5 = {6};
        bins    CH_12_DPTR_RB_SIZE_6 = {7};
        bins    CH_12_DPTR_RB_SIZE_7 = {8};
        bins    CH_12_DPTR_RB_SIZE_8 = {9};
        bins    CH_12_DPTR_RB_SIZE_9 = {10};
        bins    CH_12_DPTR_RB_SIZE_10 = {11};
        bins    CH_12_DPTR_RB_SIZE_11 = {12};
        bins    CH_12_DPTR_RB_SIZE_12 = {13};
        bins    CH_12_DPTR_RB_SIZE_13 = {14};
        bins    CH_12_DPTR_RB_SIZE_14 = {15};
        bins    CH_12_DPTR_RB_SIZE_15 = {16};
        bins    CH_12_DPTR_RB_SIZE_16 = {17};
        bins    CH_12_DPTR_RB_SIZE_17 = {18};
        bins    CH_12_DPTR_RB_SIZE_18 = {19};
        bins    CH_12_DPTR_RB_SIZE_19 = {20};
        bins    CH_12_DPTR_RB_SIZE_20 = {21};
        bins    CH_12_DPTR_RB_SIZE_21 = {22};
        bins    CH_12_DPTR_RB_SIZE_22 = {23};
        bins    CH_12_DPTR_RB_SIZE_23 = {24};
        bins    CH_12_DPTR_RB_SIZE_24 = {25};
        bins    CH_12_DPTR_RB_SIZE_25 = {26};
        bins    CH_12_DPTR_RB_SIZE_26 = {27};
        bins    CH_12_DPTR_RB_SIZE_27 = {28};
        bins    CH_12_DPTR_RB_SIZE_28 = {29};
        bins    CH_12_DPTR_RB_SIZE_29 = {30};
        bins    CH_12_DPTR_RB_SIZE_30 = {31};
        bins    CH_12_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_13_DPTR_RB_SIZE            : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h398)
    {
        bins    CH_13_DPTR_RB_SIZE_0 = {1};
        bins    CH_13_DPTR_RB_SIZE_1 = {2};
        bins    CH_13_DPTR_RB_SIZE_2 = {3};
        bins    CH_13_DPTR_RB_SIZE_3 = {4};
        bins    CH_13_DPTR_RB_SIZE_4 = {5};
        bins    CH_13_DPTR_RB_SIZE_5 = {6};
        bins    CH_13_DPTR_RB_SIZE_6 = {7};
        bins    CH_13_DPTR_RB_SIZE_7 = {8};
        bins    CH_13_DPTR_RB_SIZE_8 = {9};
        bins    CH_13_DPTR_RB_SIZE_9 = {10};
        bins    CH_13_DPTR_RB_SIZE_10 = {11};
        bins    CH_13_DPTR_RB_SIZE_11 = {12};
        bins    CH_13_DPTR_RB_SIZE_12 = {13};
        bins    CH_13_DPTR_RB_SIZE_13 = {14};
        bins    CH_13_DPTR_RB_SIZE_14 = {15};
        bins    CH_13_DPTR_RB_SIZE_15 = {16};
        bins    CH_13_DPTR_RB_SIZE_16 = {17};
        bins    CH_13_DPTR_RB_SIZE_17 = {18};
        bins    CH_13_DPTR_RB_SIZE_18 = {19};
        bins    CH_13_DPTR_RB_SIZE_19 = {20};
        bins    CH_13_DPTR_RB_SIZE_20 = {21};
        bins    CH_13_DPTR_RB_SIZE_21 = {22};
        bins    CH_13_DPTR_RB_SIZE_22 = {23};
        bins    CH_13_DPTR_RB_SIZE_23 = {24};
        bins    CH_13_DPTR_RB_SIZE_24 = {25};
        bins    CH_13_DPTR_RB_SIZE_25 = {26};
        bins    CH_13_DPTR_RB_SIZE_26 = {27};
        bins    CH_13_DPTR_RB_SIZE_27 = {28};
        bins    CH_13_DPTR_RB_SIZE_28 = {29};
        bins    CH_13_DPTR_RB_SIZE_29 = {30};
        bins    CH_13_DPTR_RB_SIZE_30 = {31};
        bins    CH_13_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_14_DPTR_RB_SIZE            : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h3A0)
    {
        bins    CH_14_DPTR_RB_SIZE_0 = {1};
        bins    CH_14_DPTR_RB_SIZE_1 = {2};
        bins    CH_14_DPTR_RB_SIZE_2 = {3};
        bins    CH_14_DPTR_RB_SIZE_3 = {4};
        bins    CH_14_DPTR_RB_SIZE_4 = {5};
        bins    CH_14_DPTR_RB_SIZE_5 = {6};
        bins    CH_14_DPTR_RB_SIZE_6 = {7};
        bins    CH_14_DPTR_RB_SIZE_7 = {8};
        bins    CH_14_DPTR_RB_SIZE_8 = {9};
        bins    CH_14_DPTR_RB_SIZE_9 = {10};
        bins    CH_14_DPTR_RB_SIZE_10 = {11};
        bins    CH_14_DPTR_RB_SIZE_11 = {12};
        bins    CH_14_DPTR_RB_SIZE_12 = {13};
        bins    CH_14_DPTR_RB_SIZE_13 = {14};
        bins    CH_14_DPTR_RB_SIZE_14 = {15};
        bins    CH_14_DPTR_RB_SIZE_15 = {16};
        bins    CH_14_DPTR_RB_SIZE_16 = {17};
        bins    CH_14_DPTR_RB_SIZE_17 = {18};
        bins    CH_14_DPTR_RB_SIZE_18 = {19};
        bins    CH_14_DPTR_RB_SIZE_19 = {20};
        bins    CH_14_DPTR_RB_SIZE_20 = {21};
        bins    CH_14_DPTR_RB_SIZE_21 = {22};
        bins    CH_14_DPTR_RB_SIZE_22 = {23};
        bins    CH_14_DPTR_RB_SIZE_23 = {24};
        bins    CH_14_DPTR_RB_SIZE_24 = {25};
        bins    CH_14_DPTR_RB_SIZE_25 = {26};
        bins    CH_14_DPTR_RB_SIZE_26 = {27};
        bins    CH_14_DPTR_RB_SIZE_27 = {28};
        bins    CH_14_DPTR_RB_SIZE_28 = {29};
        bins    CH_14_DPTR_RB_SIZE_29 = {30};
        bins    CH_14_DPTR_RB_SIZE_30 = {31};
        bins    CH_14_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_15_DPTR_RB_SIZE            : coverpoint cmd_wdata[5:0] iff(cmd_addr==32'h3A8)
    {
        bins    CH_15_DPTR_RB_SIZE_0 = {1};
        bins    CH_15_DPTR_RB_SIZE_1 = {2};
        bins    CH_15_DPTR_RB_SIZE_2 = {3};
        bins    CH_15_DPTR_RB_SIZE_3 = {4};
        bins    CH_15_DPTR_RB_SIZE_4 = {5};
        bins    CH_15_DPTR_RB_SIZE_5 = {6};
        bins    CH_15_DPTR_RB_SIZE_6 = {7};
        bins    CH_15_DPTR_RB_SIZE_7 = {8};
        bins    CH_15_DPTR_RB_SIZE_8 = {9};
        bins    CH_15_DPTR_RB_SIZE_9 = {10};
        bins    CH_15_DPTR_RB_SIZE_10 = {11};
        bins    CH_15_DPTR_RB_SIZE_11 = {12};
        bins    CH_15_DPTR_RB_SIZE_12 = {13};
        bins    CH_15_DPTR_RB_SIZE_13 = {14};
        bins    CH_15_DPTR_RB_SIZE_14 = {15};
        bins    CH_15_DPTR_RB_SIZE_15 = {16};
        bins    CH_15_DPTR_RB_SIZE_16 = {17};
        bins    CH_15_DPTR_RB_SIZE_17 = {18};
        bins    CH_15_DPTR_RB_SIZE_18 = {19};
        bins    CH_15_DPTR_RB_SIZE_19 = {20};
        bins    CH_15_DPTR_RB_SIZE_20 = {21};
        bins    CH_15_DPTR_RB_SIZE_21 = {22};
        bins    CH_15_DPTR_RB_SIZE_22 = {23};
        bins    CH_15_DPTR_RB_SIZE_23 = {24};
        bins    CH_15_DPTR_RB_SIZE_24 = {25};
        bins    CH_15_DPTR_RB_SIZE_25 = {26};
        bins    CH_15_DPTR_RB_SIZE_26 = {27};
        bins    CH_15_DPTR_RB_SIZE_27 = {28};
        bins    CH_15_DPTR_RB_SIZE_28 = {29};
        bins    CH_15_DPTR_RB_SIZE_29 = {30};
        bins    CH_15_DPTR_RB_SIZE_30 = {31};
        bins    CH_15_DPTR_RB_SIZE_31 = {32};
    }

    coverpoint_CH_CONTROL_0_15_addr          : coverpoint cmd_addr[31:0] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_0_15_addr_0 = {32'h3b0};
        bins    CH_CONTROL_0_15_addr_1 = {32'h3b8};
        bins    CH_CONTROL_0_15_addr_2 = {32'h3c0};
        bins    CH_CONTROL_0_15_addr_3 = {32'h3c8};
        bins    CH_CONTROL_0_15_addr_4 = {32'h3d0};
        bins    CH_CONTROL_0_15_addr_5 = {32'h3d8};
        bins    CH_CONTROL_0_15_addr_6 = {32'h3e0};
        bins    CH_CONTROL_0_15_addr_7 = {32'h3e8};
        bins    CH_CONTROL_0_15_addr_8 = {32'h3F0};
        bins    CH_CONTROL_0_15_addr_9 = {32'h3F8};
        bins    CH_CONTROL_0_15_addr_10 = {32'h400};
        bins    CH_CONTROL_0_15_addr_11 = {32'h408};
        bins    CH_CONTROL_0_15_addr_12 = {32'h410};
        bins    CH_CONTROL_0_15_addr_13 = {32'h418};
        bins    CH_CONTROL_0_15_addr_14 = {32'h420};
        bins    CH_CONTROL_0_15_addr_15 = {32'h428};
    }

    coverpoint_CH_CONTROL_STOP_ON_ERR        : coverpoint cmd_wdata[21] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_STOP_ON_ERR_0 = {0};
        bins    CH_CONTROL_STOP_ON_ERR_1 = {1};
    }

    coverpoint_CH_CONTROL_FW_WRITE_IPC       : coverpoint cmd_wdata[20] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_FW_WRITE_IPC_0 = {0};
        bins    CH_CONTROL_FW_WRITE_IPC_1 = {1};
    }

    coverpoint_CH_CONTROL_FW_RELEASE_MODE    : coverpoint cmd_wdata[12] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_FW_RELEASE_MODE_0 = {0};
        bins    CH_CONTROL_FW_RELEASE_MODE_1 = {1};
    }

    coverpoint_CH_CONTROL_IN_ORDER_COMMAND   : coverpoint cmd_wdata[11] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_IN_ORDER_COMMAND_0 = {0};
        bins    CH_CONTROL_IN_ORDER_COMMAND_1 = {1};
    }

    coverpoint_CH_CONTROL_DC_MESSAGE_GEN     : coverpoint cmd_wdata[8:6] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_DC_MESSAGE_GEN_0 = {0};
        bins    CH_CONTROL_DC_MESSAGE_GEN_1 = {1};
        bins    CH_CONTROL_DC_MESSAGE_GEN_2 = {2};
        bins    CH_CONTROL_DC_MESSAGE_GEN_3 = {3};
        bins    CH_CONTROL_DC_MESSAGE_GEN_4 = {4};
        bins    CH_CONTROL_DC_MESSAGE_GEN_5 = {5};
    }

    coverpoint_CH_CONTROL_HA_UPDATE_EN       : coverpoint cmd_wdata[5] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_HA_UPDATE_EN_0 = {0};
        bins    CH_CONTROL_HA_UPDATE_EN_1 = {1};
    }

    coverpoint_CH_CONTROL_HAWA_CHANNEL       : coverpoint cmd_wdata[4] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_HAWA_CHANNEL_0 = {0};
        bins    CH_CONTROL_HAWA_CHANNEL_1 = {1};
    }

    coverpoint_CH_CONTROL_CE                 : coverpoint cmd_wdata[3] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_CE_0 = {0};
        bins    CH_CONTROL_CE_1 = {1};
    }

    coverpoint_CH_CONTROL_ST_FIFO1_ASSOCIATED: coverpoint cmd_wdata[2] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_ST_FIFO1_ASSOCIATED_0 = {0};
        bins    CH_CONTROL_ST_FIFO1_ASSOCIATED_1 = {1};
    }

    coverpoint_CH_CONTROL_STOP_MODE          : coverpoint cmd_wdata[1] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_STOP_MODE_0 = {0};
        bins    CH_CONTROL_STOP_MODE_1 = {1};
    }

    coverpoint_CH_CONTROL_EXT_RPTR_WR_EN     : coverpoint cmd_wdata[0] iff((cmd_addr>=32'h3b0)&&(cmd_addr<=32'h428))
    {
        bins    CH_CONTROL_EXT_RPTR_WR_EN_0 = {0};
        bins    CH_CONTROL_EXT_RPTR_WR_EN_1 = {1};
    }

    coverpoint_CTRL2_REL_DI_ON_EXCEPTION     : coverpoint cmd_wdata[12] iff(cmd_addr==32'hab8)
    {
        bins    CTRL2_REL_DI_ON_EXCEPTION_0 = {0};
        bins    CTRL2_REL_DI_ON_EXCEPTION_1 = {1};
    }

    coverpoint_CTRL2_HAWA_REL_DESC_COMPLETION: coverpoint cmd_wdata[11] iff(cmd_addr==32'hab8)
    {
        bins    CTRL2_HAWA_REL_DESC_COMPLETION_0 = {0};
        bins    CTRL2_HAWA_REL_DESC_COMPLETION_1 = {1};
    }

    coverpoint_CTRL2_SET_EVT_DER_REL_EN      : coverpoint cmd_wdata[6] iff(cmd_addr==32'hab8)
    {
        bins    CTRL2_SET_EVT_DER_REL_EN_0 = {0};
        bins    CTRL2_SET_EVT_DER_REL_EN_1 = {1};
    }

    coverpoint_CTRL2_SET_EVT_RSR_REL_EN      : coverpoint cmd_wdata[5] iff(cmd_addr==32'hab8)
    {
        bins    CTRL2_SET_EVT_RSR_REL_EN_0 = {0};
        bins    CTRL2_SET_EVT_RSR_REL_EN_1 = {1};
    }

    coverpoint_CLEAR_FIFOS                   : coverpoint cmd_wdata[0] iff(cmd_addr==32'hb70)
    {
        bins    CLEAR_FIFOS_0 = {1};
        bins    CLEAR_FIFOS_1 = {1};
    }

    coverpoint_FLOW_PRTY_CMPLT_FLOW_PRTY     : coverpoint cmd_wdata[5:4] iff(cmd_addr==32'h5b8)
    {
        bins    FLOW_PRTY_CMPLT_FLOW_PRTY_0 = {0};
        bins    FLOW_PRTY_CMPLT_FLOW_PRTY_1 = {1};
        bins    FLOW_PRTY_CMPLT_FLOW_PRTY_2 = {2};
        bins    FLOW_PRTY_CMPLT_FLOW_PRTY_3 = {3};
    }

    coverpoint_FLOW_PRTY_PRP_FETCH_FLOW_PRTY : coverpoint cmd_wdata[3:2] iff(cmd_addr==32'h5b8)
    {
        bins    FLOW_PRTY_PRP_FETCH_FLOW_PRTY_0 = {0};
        bins    FLOW_PRTY_PRP_FETCH_FLOW_PRTY_1 = {1};
        bins    FLOW_PRTY_PRP_FETCH_FLOW_PRTY_2 = {2};
        bins    FLOW_PRTY_PRP_FETCH_FLOW_PRTY_3 = {3};
    }

    coverpoint_FLOW_PRTY_DATA_XFER_FLOW_PRTY : coverpoint cmd_wdata[1:0] iff(cmd_addr==32'h5b8)
    {
        bins    FLOW_PRTY_DATA_XFER_FLOW_PRTY_0 = {0};
        bins    FLOW_PRTY_DATA_XFER_FLOW_PRTY_1 = {1};
        bins    FLOW_PRTY_DATA_XFER_FLOW_PRTY_2 = {2};
        bins    FLOW_PRTY_DATA_XFER_FLOW_PRTY_3 = {3};
    }

    coverpoint_EXCEPTION_MASK_PRP_ERR        : coverpoint cmd_wdata[15:13] iff(cmd_addr==32'hcc0)
    {
        bins    EXCEPTION_MASK_PRP_ERR_0 = {0};
        bins    EXCEPTION_MASK_PRP_ERR_1 = {1};
        bins    EXCEPTION_MASK_PRP_ERR_2 = {2};
        bins    EXCEPTION_MASK_PRP_ERR_3 = {3};
        bins    EXCEPTION_MASK_PRP_ERR_4 = {4};
        bins    EXCEPTION_MASK_PRP_ERR_5 = {5};
        bins    EXCEPTION_MASK_PRP_ERR_6 = {6};
        bins    EXCEPTION_MASK_PRP_ERR_7 = {7};
    }

    coverpoint_EXCEPTION_MASK_SERR           : coverpoint cmd_wdata[12:9] iff(cmd_addr==32'hcc0)
    {
        bins    EXCEPTION_MASK_SERR_0 = {0};
        bins    EXCEPTION_MASK_SERR_1 = {1};
        bins    EXCEPTION_MASK_SERR_2 = {2};
        bins    EXCEPTION_MASK_SERR_3 = {3};
        bins    EXCEPTION_MASK_SERR_4 = {4};
        bins    EXCEPTION_MASK_SERR_5 = {5};
        bins    EXCEPTION_MASK_SERR_6 = {6};
        bins    EXCEPTION_MASK_SERR_7 = {7};
        bins    EXCEPTION_MASK_SERR_8 = {8};
        bins    EXCEPTION_MASK_SERR_9 = {9};
        bins    EXCEPTION_MASK_SERR_10 = {10};
        bins    EXCEPTION_MASK_SERR_11 = {11};
        bins    EXCEPTION_MASK_SERR_12 = {12};
        bins    EXCEPTION_MASK_SERR_13 = {13};
        bins    EXCEPTION_MASK_SERR_14 = {14};
        bins    EXCEPTION_MASK_SERR_15 = {15};
    }

    coverpoint_EXCEPTION_MASK_HERR           : coverpoint cmd_wdata[8:1] iff(cmd_addr==32'hcc0)
    {
        bins    EXCEPTION_MASK_HERR_0 = {0};
        bins    EXCEPTION_MASK_HERR_1 = {[1:254]};
        bins    EXCEPTION_MASK_HERR_2 = {255};
    }

    coverpoint_EXCEPTION_MASK_ERR            : coverpoint cmd_wdata[0] iff(cmd_addr==32'hcc0)
    {
        bins    EXCEPTION_MASK_ERR_0 = {0};
        bins    EXCEPTION_MASK_ERR_1 = {1};
    }

    coverpoint_RD_CMD_CNT_OC                 : coverpoint cmd_wdata[7:0] iff(cmd_addr==32'hcc8)
    {
        bins    RD_CMD_CNT_OC_0 = {0};
        bins    RD_CMD_CNT_OC_1 = {2};
    }

    coverpoint_WR_CMD_CNT_OC                 : coverpoint cmd_wdata[7:0] iff(cmd_addr==32'hcd0)
    {
        bins    WR_CMD_CNT_OC_0 = {0};
        bins    WR_CMD_CNT_OC_1 = {4};
    }

    coverpoint_RD_DU_CNT_OC                  : coverpoint cmd_wdata[7:0] iff(cmd_addr==32'hcd8)
    {
        bins    RD_DU_CNT_OC_0 = {0};
        bins    RD_DU_CNT_OC_1 = {2};
    }

    coverpoint_WR_DU_CNT_OC                  : coverpoint cmd_wdata[7:0] iff(cmd_addr==32'hce0)
    {
        bins    WR_DU_CNT_OC_0 = {0};
        bins    WR_DU_CNT_OC_1 = {4};
    }

    CH_CONTROL_0_15_addr_X_CH_CONTROL_STOP_ON_ERR: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_STOP_ON_ERR;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_FW_WRITE_IPC: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_FW_WRITE_IPC;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_FW_RELEASE_MODE: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_FW_RELEASE_MODE;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_IN_ORDER_COMMAND: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_IN_ORDER_COMMAND;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_DC_MESSAGE_GEN: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_DC_MESSAGE_GEN;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_HA_UPDATE_EN: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_HA_UPDATE_EN;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_HAWA_CHANNEL: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_HAWA_CHANNEL;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_CE: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_CE;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_ST_FIFO1_ASSOCIATED: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_ST_FIFO1_ASSOCIATED;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_STOP_MODE: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_STOP_MODE;

    CH_CONTROL_0_15_addr_X_CH_CONTROL_EXT_RPTR_WR_EN: cross
        coverpoint_CH_CONTROL_0_15_addr,
        coverpoint_CH_CONTROL_EXT_RPTR_WR_EN;

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  1190292185527714447462857683027574595609245404695879383476785107805298515811855912974158915901756157215113216  Expexted:

endgroup


//==================================================
// covergroup : read_regs
//==================================================

// 

covergroup cg_read_regs with function sample(bit [31:0] cmd_addr, bit [31:0] rsp_rdata);
    option.per_instance = 1;
    option.name = "cg_read_regs";

    coverpoint_HABM_CTRL_SW_RST_DONE         : coverpoint rsp_rdata[31] iff(cmd_addr==32'h0)
    {
        bins    HABM_CTRL_SW_RST_DONE_0 = {0};
        bins    HABM_CTRL_SW_RST_DONE_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_0_3_addr     : coverpoint cmd_addr[31:0] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_0_3_addr_0 = {32'h8};
        bins    INTERRUPT_STATUS_0_3_addr_1 = {32'h10};
        bins    INTERRUPT_STATUS_0_3_addr_2 = {32'h18};
        bins    INTERRUPT_STATUS_0_3_addr_3 = {32'h20};
    }

    coverpoint_INTERRUPT_STATUS_DC_FSM_E2E_ERROR_CLR_PENDING: coverpoint rsp_rdata[31] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_DC_FSM_E2E_ERROR_CLR_PENDING_0 = {0};
        bins    INTERRUPT_STATUS_DC_FSM_E2E_ERROR_CLR_PENDING_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_ALL_HNVME_INT_DESC_COMPLETED: coverpoint rsp_rdata[29] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_ALL_HNVME_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_ALL_HNVME_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_ALL_HSEC_INT_DESC_COMPLETED: coverpoint rsp_rdata[28] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_ALL_HSEC_INT_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_ALL_HSEC_INT_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_CH_EVENT2    : coverpoint rsp_rdata[26] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_CH_EVENT2_0 = {0};
        bins    INTERRUPT_STATUS_CH_EVENT2_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_ST_FIFO_2_NOT_EMPTY: coverpoint rsp_rdata[11] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_ST_FIFO_2_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_STATUS_ST_FIFO_2_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_ST_FIFO_1_NOT_EMPTY: coverpoint rsp_rdata[10] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_ST_FIFO_1_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_STATUS_ST_FIFO_1_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_DC_QUEUE_NOT_EMPTY: coverpoint rsp_rdata[9] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_DC_QUEUE_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_STATUS_DC_QUEUE_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_ERR_RB_NOT_EMPTY: coverpoint rsp_rdata[8] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_ERR_RB_NOT_EMPTY_0 = {0};
        bins    INTERRUPT_STATUS_ERR_RB_NOT_EMPTY_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_DESC_COMPLETED_WITH_ERR: coverpoint rsp_rdata[7] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_DESC_COMPLETED_WITH_ERR_0 = {0};
        bins    INTERRUPT_STATUS_DESC_COMPLETED_WITH_ERR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_DESC_COMPLETED: coverpoint rsp_rdata[6] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_DESC_COMPLETED_0 = {0};
        bins    INTERRUPT_STATUS_DESC_COMPLETED_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_CH_EVENT     : coverpoint rsp_rdata[5] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_CH_EVENT_0 = {0};
        bins    INTERRUPT_STATUS_CH_EVENT_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_WR_CMD_CNT_REACHED_THR: coverpoint rsp_rdata[4] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_WR_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_WR_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_RD_CMD_CNT_REACHED_THR: coverpoint rsp_rdata[3] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_RD_CMD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_RD_CMD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_DU_WR_CNT_REACHED_THR: coverpoint rsp_rdata[2] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_DU_WR_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_DU_WR_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_INTERRUPT_STATUS_DU_RD_CNT_REACHED_THR: coverpoint rsp_rdata[1] iff((cmd_addr>=32'h8)&&(cmd_addr<=32'h20))
    {
        bins    INTERRUPT_STATUS_DU_RD_CNT_REACHED_THR_0 = {0};
        bins    INTERRUPT_STATUS_DU_RD_CNT_REACHED_THR_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_0_3_addr : coverpoint cmd_addr[31:0] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_0_3_addr_0 = {32'h68};
        bins    CH_INTERRUPT_STATUS2_0_3_addr_1 = {32'h70};
        bins    CH_INTERRUPT_STATUS2_0_3_addr_2 = {32'h78};
        bins    CH_INTERRUPT_STATUS2_0_3_addr_3 = {32'h80};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_0_IN_DEBUG_MODE: coverpoint rsp_rdata[0] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_0_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_0_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_1_IN_DEBUG_MODE: coverpoint rsp_rdata[1] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_1_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_1_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_2_IN_DEBUG_MODE: coverpoint rsp_rdata[2] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_2_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_2_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_3_IN_DEBUG_MODE: coverpoint rsp_rdata[3] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_3_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_3_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_4_IN_DEBUG_MODE: coverpoint rsp_rdata[4] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_4_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_4_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_5_IN_DEBUG_MODE: coverpoint rsp_rdata[5] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_5_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_5_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_6_IN_DEBUG_MODE: coverpoint rsp_rdata[6] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_6_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_6_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_7_IN_DEBUG_MODE: coverpoint rsp_rdata[7] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_7_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_7_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_8_IN_DEBUG_MODE: coverpoint rsp_rdata[8] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_8_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_8_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_9_IN_DEBUG_MODE: coverpoint rsp_rdata[9] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_9_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_9_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_10_IN_DEBUG_MODE: coverpoint rsp_rdata[10] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_10_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_10_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_11_IN_DEBUG_MODE: coverpoint rsp_rdata[11] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_11_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_11_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_12_IN_DEBUG_MODE: coverpoint rsp_rdata[12] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_12_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_12_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_13_IN_DEBUG_MODE: coverpoint rsp_rdata[13] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_13_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_13_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_14_IN_DEBUG_MODE: coverpoint rsp_rdata[14] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_14_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_14_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS2_CH_15_IN_DEBUG_MODE: coverpoint rsp_rdata[15] iff((cmd_addr>=32'h68)&&(cmd_addr<=32'h80))
    {
        bins    CH_INTERRUPT_STATUS2_CH_15_IN_DEBUG_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS2_CH_15_IN_DEBUG_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_0_3_addr  : coverpoint cmd_addr[31:0] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_0_3_addr_0 = {32'h48};
        bins    CH_INTERRUPT_STATUS_0_3_addr_1 = {32'h50};
        bins    CH_INTERRUPT_STATUS_0_3_addr_2 = {32'h58};
        bins    CH_INTERRUPT_STATUS_0_3_addr_3 = {32'h60};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_0_IN_STOP_MODE: coverpoint rsp_rdata[0] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_0_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_0_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_1_IN_STOP_MODE: coverpoint rsp_rdata[1] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_1_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_1_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_2_IN_STOP_MODE: coverpoint rsp_rdata[2] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_2_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_2_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_3_IN_STOP_MODE: coverpoint rsp_rdata[3] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_3_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_3_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_4_IN_STOP_MODE: coverpoint rsp_rdata[4] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_4_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_4_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_5_IN_STOP_MODE: coverpoint rsp_rdata[5] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_5_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_5_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_6_IN_STOP_MODE: coverpoint rsp_rdata[6] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_6_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_6_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_7_IN_STOP_MODE: coverpoint rsp_rdata[7] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_7_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_7_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_8_IN_STOP_MODE: coverpoint rsp_rdata[8] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_8_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_8_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_9_IN_STOP_MODE: coverpoint rsp_rdata[9] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_9_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_9_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_10_IN_STOP_MODE: coverpoint rsp_rdata[10] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_10_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_10_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_11_IN_STOP_MODE: coverpoint rsp_rdata[11] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_11_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_11_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_12_IN_STOP_MODE: coverpoint rsp_rdata[12] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_12_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_12_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_13_IN_STOP_MODE: coverpoint rsp_rdata[13] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_13_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_13_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_14_IN_STOP_MODE: coverpoint rsp_rdata[14] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_14_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_14_IN_STOP_MODE_1 = {1};
    }

    coverpoint_CH_INTERRUPT_STATUS_CH_15_IN_STOP_MODE: coverpoint rsp_rdata[15] iff((cmd_addr>=32'h48)&&(cmd_addr<=32'h60))
    {
        bins    CH_INTERRUPT_STATUS_CH_15_IN_STOP_MODE_0 = {0};
        bins    CH_INTERRUPT_STATUS_CH_15_IN_STOP_MODE_1 = {1};
    }

    coverpoint_ST_FIFO_1_RPTR_PTR_bit_5      : coverpoint rsp_rdata[5] iff(cmd_addr==32'he8)
    {
        bins    ST_FIFO_1_RPTR_PTR_bit_5_0 = {0};
        bins    ST_FIFO_1_RPTR_PTR_bit_5_1 = {1};
    }

    coverpoint_ST_FIFO_1_RPTR_PTR_bit_4_0    : coverpoint rsp_rdata[4:0] iff(cmd_addr==32'he8)
    {
        bins    ST_FIFO_1_RPTR_PTR_bit_4_0_0 = {0};
        bins    ST_FIFO_1_RPTR_PTR_bit_4_0_1 = {[2:5]};
        bins    ST_FIFO_1_RPTR_PTR_bit_4_0_2 = {[6:10]};
        bins    ST_FIFO_1_RPTR_PTR_bit_4_0_3 = {[11:20]};
        bins    ST_FIFO_1_RPTR_PTR_bit_4_0_4 = {[21:30]};
        bins    ST_FIFO_1_RPTR_PTR_bit_4_0_5 = {31};
    }

    coverpoint_ST_FIFO_2_RPTR_PTR_bit_5      : coverpoint rsp_rdata[5] iff(cmd_addr==32'hf0)
    {
        bins    ST_FIFO_2_RPTR_PTR_bit_5_0 = {0};
        bins    ST_FIFO_2_RPTR_PTR_bit_5_1 = {1};
    }

    coverpoint_ST_FIFO_2_RPTR_PTR_bit_4_0    : coverpoint rsp_rdata[4:0] iff(cmd_addr==32'hf0)
    {
        bins    ST_FIFO_2_RPTR_PTR_bit_4_0_0 = {0};
        bins    ST_FIFO_2_RPTR_PTR_bit_4_0_1 = {[2:5]};
        bins    ST_FIFO_2_RPTR_PTR_bit_4_0_2 = {[6:10]};
        bins    ST_FIFO_2_RPTR_PTR_bit_4_0_3 = {[11:20]};
        bins    ST_FIFO_2_RPTR_PTR_bit_4_0_4 = {[21:30]};
        bins    ST_FIFO_2_RPTR_PTR_bit_4_0_5 = {31};
    }

    coverpoint_ERR_DESC_RB_RPTR_PTR_bit_2    : coverpoint rsp_rdata[2] iff(cmd_addr==32'h118)
    {
        bins    ERR_DESC_RB_RPTR_PTR_bit_2_0 = {0};
        bins    ERR_DESC_RB_RPTR_PTR_bit_2_1 = {1};
    }

    coverpoint_ERR_DESC_RB_RPTR_PTR_bit_1_0  : coverpoint rsp_rdata[1:0] iff(cmd_addr==32'h118)
    {
        bins    ERR_DESC_RB_RPTR_PTR_bit_1_0_0 = {0};
        bins    ERR_DESC_RB_RPTR_PTR_bit_1_0_1 = {1};
        bins    ERR_DESC_RB_RPTR_PTR_bit_1_0_2 = {2};
        bins    ERR_DESC_RB_RPTR_PTR_bit_1_0_3 = {3};
    }

    coverpoint_DESC_CMPL_RB_RPTR_PTR_bit_5   : coverpoint rsp_rdata[5] iff(cmd_addr==32'h138)
    {
        bins    DESC_CMPL_RB_RPTR_PTR_bit_5_0 = {0};
        bins    DESC_CMPL_RB_RPTR_PTR_bit_5_1 = {1};
    }

    coverpoint_DESC_CMPL_RB_RPTR_PTR_bit_4_0 : coverpoint rsp_rdata[4:0] iff(cmd_addr==32'h138)
    {
        bins    DESC_CMPL_RB_RPTR_PTR_bit_4_0_0 = {0};
        bins    DESC_CMPL_RB_RPTR_PTR_bit_4_0_1 = {[2:5]};
        bins    DESC_CMPL_RB_RPTR_PTR_bit_4_0_2 = {[6:10]};
        bins    DESC_CMPL_RB_RPTR_PTR_bit_4_0_3 = {[11:20]};
        bins    DESC_CMPL_RB_RPTR_PTR_bit_4_0_4 = {[21:30]};
        bins    DESC_CMPL_RB_RPTR_PTR_bit_4_0_5 = {31};
    }

    coverpoint_CH_0_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h530)
    {
        bins    CH_0_RB_STATUS_0 = {0};
        bins    CH_0_RB_STATUS_1 = {[1:5]};
        bins    CH_0_RB_STATUS_2 = {[6:10]};
        bins    CH_0_RB_STATUS_3 = {[11:20]};
        bins    CH_0_RB_STATUS_4 = {[21:31]};
        bins    CH_0_RB_STATUS_5 = {32};
    }

    coverpoint_CH_1_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h538)
    {
        bins    CH_1_RB_STATUS_0 = {0};
        bins    CH_1_RB_STATUS_1 = {[1:5]};
        bins    CH_1_RB_STATUS_2 = {[6:10]};
        bins    CH_1_RB_STATUS_3 = {[11:20]};
        bins    CH_1_RB_STATUS_4 = {[21:31]};
        bins    CH_1_RB_STATUS_5 = {32};
    }

    coverpoint_CH_2_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h540)
    {
        bins    CH_2_RB_STATUS_0 = {0};
        bins    CH_2_RB_STATUS_1 = {[1:5]};
        bins    CH_2_RB_STATUS_2 = {[6:10]};
        bins    CH_2_RB_STATUS_3 = {[11:20]};
        bins    CH_2_RB_STATUS_4 = {[21:31]};
        bins    CH_2_RB_STATUS_5 = {32};
    }

    coverpoint_CH_3_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h548)
    {
        bins    CH_3_RB_STATUS_0 = {0};
        bins    CH_3_RB_STATUS_1 = {[1:5]};
        bins    CH_3_RB_STATUS_2 = {[6:10]};
        bins    CH_3_RB_STATUS_3 = {[11:20]};
        bins    CH_3_RB_STATUS_4 = {[21:31]};
        bins    CH_3_RB_STATUS_5 = {32};
    }

    coverpoint_CH_4_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h550)
    {
        bins    CH_4_RB_STATUS_0 = {0};
        bins    CH_4_RB_STATUS_1 = {[1:5]};
        bins    CH_4_RB_STATUS_2 = {[6:10]};
        bins    CH_4_RB_STATUS_3 = {[11:20]};
        bins    CH_4_RB_STATUS_4 = {[21:31]};
        bins    CH_4_RB_STATUS_5 = {32};
    }

    coverpoint_CH_5_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h558)
    {
        bins    CH_5_RB_STATUS_0 = {0};
        bins    CH_5_RB_STATUS_1 = {[1:5]};
        bins    CH_5_RB_STATUS_2 = {[6:10]};
        bins    CH_5_RB_STATUS_3 = {[11:20]};
        bins    CH_5_RB_STATUS_4 = {[21:31]};
        bins    CH_5_RB_STATUS_5 = {32};
    }

    coverpoint_CH_6_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h560)
    {
        bins    CH_6_RB_STATUS_0 = {0};
        bins    CH_6_RB_STATUS_1 = {[1:5]};
        bins    CH_6_RB_STATUS_2 = {[6:10]};
        bins    CH_6_RB_STATUS_3 = {[11:20]};
        bins    CH_6_RB_STATUS_4 = {[21:31]};
        bins    CH_6_RB_STATUS_5 = {32};
    }

    coverpoint_CH_7_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h568)
    {
        bins    CH_7_RB_STATUS_0 = {0};
        bins    CH_7_RB_STATUS_1 = {[1:5]};
        bins    CH_7_RB_STATUS_2 = {[6:10]};
        bins    CH_7_RB_STATUS_3 = {[11:20]};
        bins    CH_7_RB_STATUS_4 = {[21:31]};
        bins    CH_7_RB_STATUS_5 = {32};
    }

    coverpoint_CH_8_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h570)
    {
        bins    CH_8_RB_STATUS_0 = {0};
        bins    CH_8_RB_STATUS_1 = {[1:5]};
        bins    CH_8_RB_STATUS_2 = {[6:10]};
        bins    CH_8_RB_STATUS_3 = {[11:20]};
        bins    CH_8_RB_STATUS_4 = {[21:31]};
        bins    CH_8_RB_STATUS_5 = {32};
    }

    coverpoint_CH_9_RB_STATUS                : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h578)
    {
        bins    CH_9_RB_STATUS_0 = {0};
        bins    CH_9_RB_STATUS_1 = {[1:5]};
        bins    CH_9_RB_STATUS_2 = {[6:10]};
        bins    CH_9_RB_STATUS_3 = {[11:20]};
        bins    CH_9_RB_STATUS_4 = {[21:31]};
        bins    CH_9_RB_STATUS_5 = {32};
    }

    coverpoint_CH_10_RB_STATUS               : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h580)
    {
        bins    CH_10_RB_STATUS_0 = {0};
        bins    CH_10_RB_STATUS_1 = {[1:5]};
        bins    CH_10_RB_STATUS_2 = {[6:10]};
        bins    CH_10_RB_STATUS_3 = {[11:20]};
        bins    CH_10_RB_STATUS_4 = {[21:31]};
        bins    CH_10_RB_STATUS_5 = {32};
    }

    coverpoint_CH_11_RB_STATUS               : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h588)
    {
        bins    CH_11_RB_STATUS_0 = {0};
        bins    CH_11_RB_STATUS_1 = {[1:5]};
        bins    CH_11_RB_STATUS_2 = {[6:10]};
        bins    CH_11_RB_STATUS_3 = {[11:20]};
        bins    CH_11_RB_STATUS_4 = {[21:31]};
        bins    CH_11_RB_STATUS_5 = {32};
    }

    coverpoint_CH_12_RB_STATUS               : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h590)
    {
        bins    CH_12_RB_STATUS_0 = {0};
        bins    CH_12_RB_STATUS_1 = {[1:5]};
        bins    CH_12_RB_STATUS_2 = {[6:10]};
        bins    CH_12_RB_STATUS_3 = {[11:20]};
        bins    CH_12_RB_STATUS_4 = {[21:31]};
        bins    CH_12_RB_STATUS_5 = {32};
    }

    coverpoint_CH_13_RB_STATUS               : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h598)
    {
        bins    CH_13_RB_STATUS_0 = {0};
        bins    CH_13_RB_STATUS_1 = {[1:5]};
        bins    CH_13_RB_STATUS_2 = {[6:10]};
        bins    CH_13_RB_STATUS_3 = {[11:20]};
        bins    CH_13_RB_STATUS_4 = {[21:31]};
        bins    CH_13_RB_STATUS_5 = {32};
    }

    coverpoint_CH_14_RB_STATUS               : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h5A0)
    {
        bins    CH_14_RB_STATUS_0 = {0};
        bins    CH_14_RB_STATUS_1 = {[1:5]};
        bins    CH_14_RB_STATUS_2 = {[6:10]};
        bins    CH_14_RB_STATUS_3 = {[11:20]};
        bins    CH_14_RB_STATUS_4 = {[21:31]};
        bins    CH_14_RB_STATUS_5 = {32};
    }

    coverpoint_CH_15_RB_STATUS               : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h5A8)
    {
        bins    CH_15_RB_STATUS_0 = {0};
        bins    CH_15_RB_STATUS_1 = {[1:5]};
        bins    CH_15_RB_STATUS_2 = {[6:10]};
        bins    CH_15_RB_STATUS_3 = {[11:20]};
        bins    CH_15_RB_STATUS_4 = {[21:31]};
        bins    CH_15_RB_STATUS_5 = {32};
    }

    coverpoint_CH_0_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h800)
    {
        bins    CH_0_DPTR_RB_WPTR_0 = {0};
        bins    CH_0_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_1_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h808)
    {
        bins    CH_1_DPTR_RB_WPTR_0 = {0};
        bins    CH_1_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_2_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h810)
    {
        bins    CH_2_DPTR_RB_WPTR_0 = {0};
        bins    CH_2_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_3_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h818)
    {
        bins    CH_3_DPTR_RB_WPTR_0 = {0};
        bins    CH_3_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_4_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h820)
    {
        bins    CH_4_DPTR_RB_WPTR_0 = {0};
        bins    CH_4_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_5_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h828)
    {
        bins    CH_5_DPTR_RB_WPTR_0 = {0};
        bins    CH_5_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_6_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h830)
    {
        bins    CH_6_DPTR_RB_WPTR_0 = {0};
        bins    CH_6_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_7_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h838)
    {
        bins    CH_7_DPTR_RB_WPTR_0 = {0};
        bins    CH_7_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_8_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h840)
    {
        bins    CH_8_DPTR_RB_WPTR_0 = {0};
        bins    CH_8_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_9_DPTR_RB_WPTR             : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h848)
    {
        bins    CH_9_DPTR_RB_WPTR_0 = {0};
        bins    CH_9_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_10_DPTR_RB_WPTR            : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h850)
    {
        bins    CH_10_DPTR_RB_WPTR_0 = {0};
        bins    CH_10_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_11_DPTR_RB_WPTR            : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h858)
    {
        bins    CH_11_DPTR_RB_WPTR_0 = {0};
        bins    CH_11_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_12_DPTR_RB_WPTR            : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h860)
    {
        bins    CH_12_DPTR_RB_WPTR_0 = {0};
        bins    CH_12_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_13_DPTR_RB_WPTR            : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h868)
    {
        bins    CH_13_DPTR_RB_WPTR_0 = {0};
        bins    CH_13_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_14_DPTR_RB_WPTR            : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h870)
    {
        bins    CH_14_DPTR_RB_WPTR_0 = {0};
        bins    CH_14_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_CH_15_DPTR_RB_WPTR            : coverpoint rsp_rdata[5:0] iff(cmd_addr==32'h878)
    {
        bins    CH_15_DPTR_RB_WPTR_0 = {0};
        bins    CH_15_DPTR_RB_WPTR_1 = {[1:63]};
    }

    coverpoint_HIM_HABM_SVCI_ERR_RSP         : coverpoint rsp_rdata[1:0] iff(cmd_addr==32'h168)
    {
        bins    HIM_HABM_SVCI_ERR_RSP_0 = {1};
        bins    HIM_HABM_SVCI_ERR_RSP_1 = {2};
        bins    HIM_HABM_SVCI_ERR_RSP_2 = {3};
    }

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_DC_FSM_E2E_ERROR_CLR_PENDING: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_DC_FSM_E2E_ERROR_CLR_PENDING;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_ALL_HNVME_INT_DESC_COMPLETED: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_ALL_HNVME_INT_DESC_COMPLETED;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_ALL_HSEC_INT_DESC_COMPLETED: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_ALL_HSEC_INT_DESC_COMPLETED;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_CH_EVENT2: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_CH_EVENT2;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_ST_FIFO_2_NOT_EMPTY: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_ST_FIFO_2_NOT_EMPTY;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_ST_FIFO_1_NOT_EMPTY: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_ST_FIFO_1_NOT_EMPTY;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_DC_QUEUE_NOT_EMPTY: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_DC_QUEUE_NOT_EMPTY;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_ERR_RB_NOT_EMPTY: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_ERR_RB_NOT_EMPTY;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_DESC_COMPLETED_WITH_ERR: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_DESC_COMPLETED_WITH_ERR;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_DESC_COMPLETED: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_DESC_COMPLETED;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_CH_EVENT: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_CH_EVENT;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_WR_CMD_CNT_REACHED_THR: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_WR_CMD_CNT_REACHED_THR;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_RD_CMD_CNT_REACHED_THR: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_RD_CMD_CNT_REACHED_THR;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_DU_WR_CNT_REACHED_THR: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_DU_WR_CNT_REACHED_THR;

    INTERRUPT_STATUS_0_3_addr_X_INTERRUPT_STATUS_DU_RD_CNT_REACHED_THR: cross
        coverpoint_INTERRUPT_STATUS_0_3_addr,
        coverpoint_INTERRUPT_STATUS_DU_RD_CNT_REACHED_THR;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_0_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_0_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_1_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_1_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_2_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_2_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_3_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_3_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_4_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_4_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_5_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_5_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_6_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_6_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_7_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_7_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_8_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_8_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_9_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_9_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_10_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_10_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_11_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_11_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_12_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_12_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_13_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_13_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_14_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_14_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS2_0_3_addr_X_CH_INTERRUPT_STATUS2_CH_15_IN_DEBUG_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS2_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS2_CH_15_IN_DEBUG_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_0_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_0_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_1_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_1_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_2_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_2_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_3_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_3_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_4_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_4_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_5_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_5_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_6_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_6_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_7_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_7_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_8_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_8_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_9_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_9_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_10_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_10_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_11_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_11_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_12_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_12_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_13_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_13_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_14_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_14_IN_STOP_MODE;

    CH_INTERRUPT_STATUS_0_3_addr_X_CH_INTERRUPT_STATUS_CH_15_IN_STOP_MODE: cross
        coverpoint_CH_INTERRUPT_STATUS_0_3_addr,
        coverpoint_CH_INTERRUPT_STATUS_CH_15_IN_STOP_MODE;

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  138125760587314916155883462169741754368  Expexted:

endgroup


//==================================================
// covergroup : st_fifo_1
//==================================================

// 

covergroup cg_st_fifo_1 with function sample(bit [1:0] fifo_type, bit [3:0] reason, bit [5:0] ch_index, bit [3:0] dt, bit [1:0] cfi, bit [13:0] tag, bit [15:0] idi);
    option.per_instance = 1;
    option.name = "cg_st_fifo_1";

    coverpoint_fifo_type                     : coverpoint fifo_type
    {
        bins    fifo_type_0 = {2};
    }

    coverpoint_reason                        : coverpoint reason
    {
        bins    reason_0 = {1};
        bins    reason_1 = {2};
        bins    reason_2 = {3};
        bins    reason_3 = {5};
        bins    reason_4 = {6};
        bins    reason_5 = {9};
        bins    reason_6 = {10};
        bins    reason_7 = {11};
    }

    coverpoint_ch_index                      : coverpoint ch_index
    {
        bins    ch_index_0 = {0};
        bins    ch_index_1 = {1};
        bins    ch_index_2 = {2};
        bins    ch_index_3 = {3};
        bins    ch_index_4 = {4};
        bins    ch_index_5 = {5};
        bins    ch_index_6 = {6};
        bins    ch_index_7 = {7};
        bins    ch_index_8 = {8};
        bins    ch_index_9 = {9};
    }

    coverpoint_dt                            : coverpoint dt
    {
        bins    dt_0 = {0};
        bins    dt_1 = {1};
        bins    dt_2 = {8};
        bins    dt_3 = {9};
    }

    coverpoint_cfi                           : coverpoint cfi
    {
        bins    cfi_0 = {0};
        bins    cfi_1 = {1};
        bins    cfi_2 = {2};
    }

    coverpoint_tag                           : coverpoint tag
    {
        bins    tag_0 = {[0:547]};
        bins    tag_1 = {[548:1047]};
        bins    tag_2 = {[1048:1547]};
        bins    tag_3 = {[1548:2047]};
    }

    coverpoint_idi                           : coverpoint idi
    {
        bins    idi_0 = {0};
        bins    idi_1 = {1};
        bins    idi_2 = {2};
        bins    idi_3 = {3};
        bins    idi_4 = {4};
        bins    idi_5 = {5};
        bins    idi_6 = {6};
        bins    idi_7 = {7};
        bins    idi_8 = {8};
        bins    idi_9 = {9};
        bins    idi_10 = {10};
        bins    idi_11 = {11};
        bins    idi_12 = {12};
        bins    idi_13 = {13};
        bins    idi_14 = {14};
        bins    idi_15 = {15};
        bins    idi_16 = {16};
        bins    idi_17 = {17};
        bins    idi_18 = {18};
        bins    idi_19 = {19};
        bins    idi_20 = {20};
        bins    idi_21 = {21};
        bins    idi_22 = {22};
        bins    idi_23 = {23};
        bins    idi_24 = {24};
        bins    idi_25 = {25};
        bins    idi_26 = {26};
        bins    idi_27 = {27};
        bins    idi_28 = {28};
        bins    idi_29 = {29};
        bins    idi_30 = {30};
        bins    idi_31 = {31};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  62  Expexted:

endgroup


//==================================================
// covergroup : st_fifo_2
//==================================================

// 

covergroup cg_st_fifo_2 with function sample(bit [1:0] fifo_type, bit [3:0] reason, bit [5:0] ch_index, bit [3:0] dt, bit [1:0] cfi, bit [13:0] tag, bit [15:0] idi);
    option.per_instance = 1;
    option.name = "cg_st_fifo_2";

    coverpoint_fifo_type                     : coverpoint fifo_type
    {
        bins    fifo_type_0 = {2};
    }

    coverpoint_reason                        : coverpoint reason
    {
        bins    reason_0 = {1};
        bins    reason_1 = {2};
        bins    reason_2 = {3};
        bins    reason_3 = {5};
        bins    reason_4 = {6};
        bins    reason_5 = {9};
        bins    reason_6 = {10};
        bins    reason_7 = {11};
    }

    coverpoint_ch_index                      : coverpoint ch_index
    {
        bins    ch_index_0 = {0};
        bins    ch_index_1 = {1};
        bins    ch_index_2 = {2};
        bins    ch_index_3 = {3};
        bins    ch_index_4 = {4};
        bins    ch_index_5 = {5};
        bins    ch_index_6 = {6};
        bins    ch_index_7 = {7};
        bins    ch_index_8 = {8};
        bins    ch_index_9 = {9};
    }

    coverpoint_dt                            : coverpoint dt
    {
        bins    dt_0 = {0};
        bins    dt_1 = {1};
        bins    dt_2 = {8};
        bins    dt_3 = {9};
    }

    coverpoint_cfi                           : coverpoint cfi
    {
        bins    cfi_0 = {0};
        bins    cfi_1 = {1};
        bins    cfi_2 = {2};
    }

    coverpoint_tag                           : coverpoint tag
    {
        bins    tag_0 = {[0:547]};
        bins    tag_1 = {[548:1047]};
        bins    tag_2 = {[1048:1547]};
        bins    tag_3 = {[1548:2047]};
    }

    coverpoint_idi                           : coverpoint idi
    {
        bins    idi_0 = {0};
        bins    idi_1 = {1};
        bins    idi_2 = {2};
        bins    idi_3 = {3};
        bins    idi_4 = {4};
        bins    idi_5 = {5};
        bins    idi_6 = {6};
        bins    idi_7 = {7};
        bins    idi_8 = {8};
        bins    idi_9 = {9};
        bins    idi_10 = {10};
        bins    idi_11 = {11};
        bins    idi_12 = {12};
        bins    idi_13 = {13};
        bins    idi_14 = {14};
        bins    idi_15 = {15};
        bins    idi_16 = {16};
        bins    idi_17 = {17};
        bins    idi_18 = {18};
        bins    idi_19 = {19};
        bins    idi_20 = {20};
        bins    idi_21 = {21};
        bins    idi_22 = {22};
        bins    idi_23 = {23};
        bins    idi_24 = {24};
        bins    idi_25 = {25};
        bins    idi_26 = {26};
        bins    idi_27 = {27};
        bins    idi_28 = {28};
        bins    idi_29 = {29};
        bins    idi_30 = {30};
        bins    idi_31 = {31};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  62  Expexted:

endgroup


//==================================================
// covergroup : cmd_ctxt
//==================================================

// 

covergroup cg_cmd_ctxt with function sample(bit exp, bit hpe, bit be, bit te, bit ms, bit tr, bit [1:0] sts, bit d, bit [4:0] oc, bit [1:0] ct, bit fua, bit [2:0] sn, bit hot, bit [1:0] subop, bit ab, bit [1:0] lbs, bit bpt, bit [4:0] ovp, bit [15:0] wr_stid, bit [3:0] ste);
    option.per_instance = 1;
    option.name = "cg_cmd_ctxt";

    coverpoint_exp                           : coverpoint exp
    {
        bins    exp_0 = {0};
        bins    exp_1 = {1};
    }

    coverpoint_hpe                           : coverpoint hpe
    {
        bins    hpe_0 = {0};
        bins    hpe_1 = {1};
    }

    coverpoint_be                            : coverpoint be
    {
        bins    be_0 = {0};
        bins    be_1 = {1};
    }

    coverpoint_te                            : coverpoint te
    {
        bins    te_0 = {0};
        bins    te_1 = {1};
    }

    coverpoint_ms                            : coverpoint ms
    {
        bins    ms_0 = {0};
        bins    ms_1 = {1};
    }

    coverpoint_tr                            : coverpoint tr
    {
        bins    tr_0 = {0};
        bins    tr_1 = {1};
    }

    coverpoint_sts                           : coverpoint sts
    {
        bins    sts_0 = {0};
        bins    sts_1 = {1};
        bins    sts_2 = {2};
        bins    sts_3 = {3};
    }

    coverpoint_d                             : coverpoint d
    {
        bins    d_0 = {0};
        bins    d_1 = {1};
    }

    coverpoint_oc                            : coverpoint oc
    {
        bins    oc_0 = {0};
        bins    oc_1 = {1};
        bins    oc_2 = {2};
        bins    oc_3 = {3};
        bins    oc_4 = {4};
        bins    oc_5 = {5};
        bins    oc_6 = {6};
        bins    oc_7 = {7};
        bins    oc_8 = {8};
        bins    oc_9 = {9};
        bins    oc_10 = {10};
        bins    oc_11 = {11};
        bins    oc_12 = {12};
        bins    oc_13 = {13};
        bins    oc_14 = {14};
        bins    oc_15 = {15};
        bins    oc_16 = {16};
        bins    oc_17 = {17};
        bins    oc_18 = {18};
        bins    oc_19 = {19};
        bins    oc_20 = {20};
        bins    oc_21 = {21};
        bins    oc_22 = {22};
        bins    oc_23 = {23};
        bins    oc_24 = {24};
        bins    oc_25 = {25};
        bins    oc_26 = {26};
        bins    oc_27 = {27};
        bins    oc_28 = {28};
        bins    oc_29 = {29};
        bins    oc_30 = {30};
        bins    oc_31 = {31};
    }

    coverpoint_ct                            : coverpoint ct
    {
        bins    ct_0 = {0};
        bins    ct_1 = {1};
        bins    ct_2 = {2};
        bins    ct_3 = {3};
    }

    coverpoint_fua                           : coverpoint fua
    {
        bins    fua_0 = {0};
        bins    fua_1 = {1};
    }

    coverpoint_sn                            : coverpoint sn
    {
        bins    sn_0 = {0};
        bins    sn_1 = {1};
        bins    sn_2 = {2};
        bins    sn_3 = {3};
        bins    sn_4 = {4};
        bins    sn_5 = {5};
        bins    sn_6 = {6};
        bins    sn_7 = {7};
    }

    coverpoint_hot                           : coverpoint hot
    {
        bins    hot_0 = {0};
        bins    hot_1 = {1};
    }

    coverpoint_subop                         : coverpoint subop
    {
        bins    subop_0 = {0};
        bins    subop_1 = {1};
        bins    subop_2 = {2};
        bins    subop_3 = {3};
    }

    coverpoint_ab                            : coverpoint ab
    {
        bins    ab_0 = {0};
        bins    ab_1 = {1};
    }

    coverpoint_lbs                           : coverpoint lbs
    {
        bins    lbs_0 = {0};
        bins    lbs_1 = {1};
    }

    coverpoint_bpt                           : coverpoint bpt
    {
        bins    bpt_0 = {0};
        bins    bpt_1 = {1};
    }

    coverpoint_ste                           : coverpoint ste
    {
        bins    ste_0 = {0};
        bins    ste_1 = {1};
        bins    ste_2 = {2};
        bins    ste_3 = {3};
        bins    ste_4 = {4};
        bins    ste_5 = {5};
        bins    ste_6 = {6};
        bins    ste_7 = {7};
        bins    ste_8 = {8};
        bins    ste_9 = {9};
        bins    ste_10 = {10};
        bins    ste_11 = {11};
        bins    ste_12 = {12};
        bins    ste_13 = {13};
        bins    ste_14 = {14};
        bins    ste_15 = {15};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  92  Expexted:

endgroup


//==================================================
// covergroup : hbp_desc
//==================================================

// 

covergroup cg_hbp_desc with function sample(bit [7:0] hbp_desc_type, bit [1:0] ftyp, bit [1:0] ltag, bit hbp_int, bit [5:0] prp1_cnt, bit [5:0] prp2_cnt);
    option.per_instance = 1;
    option.name = "cg_hbp_desc";

    coverpoint_hbp_desc_type                 : coverpoint hbp_desc_type
    {
        bins    hbp_desc_type_0 = {8'h3};
    }

    coverpoint_ftyp                          : coverpoint ftyp
    {
        bins    ftyp_0 = {0};
        bins    ftyp_1 = {1};
        bins    ftyp_2 = {2};
        bins    ftyp_3 = {3};
    }

    coverpoint_ltag                          : coverpoint ltag
    {
        bins    ltag_0 = {0};
        bins    ltag_1 = {1};
        bins    ltag_2 = {2};
        bins    ltag_3 = {3};
    }

    coverpoint_hbp_int                       : coverpoint hbp_int
    {
        bins    hbp_int_0 = {0};
        bins    hbp_int_1 = {1};
    }

    coverpoint_prp1_cnt                      : coverpoint prp1_cnt
    {
        bins    prp1_cnt_0 = {[0:20]};
        bins    prp1_cnt_1 = {[21:30]};
        bins    prp1_cnt_2 = {[31:50]};
        bins    prp1_cnt_3 = {[51:63]};
    }

    coverpoint_prp2_cnt                      : coverpoint prp2_cnt
    {
        bins    prp2_cnt_0 = {[0:20]};
        bins    prp2_cnt_1 = {[21:30]};
        bins    prp2_cnt_2 = {[31:50]};
        bins    prp2_cnt_3 = {[51:63]};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  19  Expexted:

endgroup


//==================================================
// covergroup : auto_trans_desc
//==================================================

// 

covergroup cg_auto_trans_desc with function sample(bit [7:0] at_desc_type, bit [1:0] at_esec, bit [2:0] at_tsize, bit fp, bit ce, bit at_int, bit [2:0] at_soff, bit at_mdd, bit [1:0] at_eac, bit [1:0] erri);
    option.per_instance = 1;
    option.name = "cg_auto_trans_desc";

    coverpoint_at_desc_type                  : coverpoint at_desc_type
    {
        bins    at_desc_type_0 = {8'h0};
        bins    at_desc_type_1 = {8'h1};
        bins    at_desc_type_2 = {8'h8};
        bins    at_desc_type_3 = {8'h9};
    }

    coverpoint_at_esec                       : coverpoint at_esec
    {
        bins    at_esec_0 = {0};
        bins    at_esec_1 = {1};
        bins    at_esec_2 = {2};
        bins    at_esec_3 = {3};
    }

    coverpoint_at_tsize                      : coverpoint at_tsize
    {
        bins    at_tsize_0 = {0};
        bins    at_tsize_1 = {1};
        bins    at_tsize_2 = {2};
        bins    at_tsize_3 = {3};
        bins    at_tsize_4 = {4};
        bins    at_tsize_5 = {5};
        bins    at_tsize_6 = {6};
        bins    at_tsize_7 = {7};
    }

    coverpoint_fp                            : coverpoint fp
    {
        bins    fp_0 = {1'b0};
        bins    fp_1 = {1'b1};
    }

    coverpoint_ce                            : coverpoint ce
    {
        bins    ce_0 = {1'b0};
        bins    ce_1 = {1'b1};
    }

    coverpoint_at_int                        : coverpoint at_int
    {
        bins    at_int_0 = {1'b0};
        bins    at_int_1 = {1'b1};
    }

    coverpoint_at_soff                       : coverpoint at_soff
    {
        bins    at_soff_0 = {0};
        bins    at_soff_1 = {1};
        bins    at_soff_2 = {2};
        bins    at_soff_3 = {3};
        bins    at_soff_4 = {4};
        bins    at_soff_5 = {5};
        bins    at_soff_6 = {6};
        bins    at_soff_7 = {7};
    }

    coverpoint_at_mdd                        : coverpoint at_mdd
    {
        bins    at_mdd_0 = {1'b0};
        bins    at_mdd_1 = {1'b1};
    }

    coverpoint_at_eac                        : coverpoint at_eac
    {
        bins    at_eac_0 = {0};
        bins    at_eac_1 = {1};
        bins    at_eac_2 = {2};
        bins    at_eac_3 = {3};
    }

    coverpoint_erri                          : coverpoint erri
    {
        bins    erri_0 = {0};
        bins    erri_1 = {1};
        bins    erri_2 = {2};
        bins    erri_3 = {3};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  40  Expexted:

endgroup


//==================================================
// covergroup : seq_desc
//==================================================

// 

covergroup cg_seq_desc with function sample(bit [7:0] sd_desc_type, bit sd_int);
    option.per_instance = 1;
    option.name = "cg_seq_desc";

    coverpoint_sd_desc_type                  : coverpoint sd_desc_type
    {
        bins    sd_desc_type_0 = {8'hf4};
        bins    sd_desc_type_1 = {8'hf5};
        bins    sd_desc_type_2 = {8'hf6};
    }

    coverpoint_sd_int                        : coverpoint sd_int
    {
        bins    sd_int_0 = {1'b0};
        bins    sd_int_1 = {1'b1};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  5  Expexted:

endgroup


//==================================================
// covergroup : desc_idx_slot
//==================================================

// 

covergroup cg_desc_idx_slot with function sample(bit [1:0] ec, bit [7:0] herr, bit [3:0] serr);
    option.per_instance = 1;
    option.name = "cg_desc_idx_slot";

    coverpoint_ec                            : coverpoint ec
    {
        bins    ec_0 = {0};
        bins    ec_1 = {1};
        bins    ec_2 = {2};
        bins    ec_3 = {3};
    }

    coverpoint_herr                          : coverpoint herr
    {
        bins    herr_0 = {[0:100]};
        bins    herr_1 = {[101:150]};
        bins    herr_2 = {[151:200]};
        bins    herr_3 = {[201:255]};
    }

    coverpoint_serr                          : coverpoint serr
    {
        bins    serr_0 = {0};
        bins    serr_1 = {1};
        bins    serr_2 = {2};
        bins    serr_3 = {3};
        bins    serr_4 = {4};
        bins    serr_5 = {5};
        bins    serr_6 = {6};
        bins    serr_7 = {7};
        bins    serr_8 = {8};
        bins    serr_9 = {9};
        bins    serr_10 = {10};
        bins    serr_11 = {11};
        bins    serr_12 = {12};
        bins    serr_13 = {13};
        bins    serr_14 = {14};
        bins    serr_15 = {15};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  24  Expexted:

endgroup


//==================================================
// covergroup : rx_desc_avail
//==================================================

// 

covergroup cg_rx_desc_avail with function sample(bit [7:0] di, bit [3:0] rx_desc_type, bit byp, bit fp);
    option.per_instance = 1;
    option.name = "cg_rx_desc_avail";

    coverpoint_di                            : coverpoint di
    {
        bins    di_0 = {[0:100]};
        bins    di_1 = {[101:150]};
        bins    di_2 = {[151:200]};
        bins    di_3 = {[201:255]};
    }

    coverpoint_rx_desc_type                  : coverpoint rx_desc_type
    {
        bins    rx_desc_type_0 = {4'b1000};
        bins    rx_desc_type_1 = {4'b1001};
        bins    rx_desc_type_2 = {4'b1010};
        bins    rx_desc_type_3 = {4'b1011};
        bins    rx_desc_type_4 = {4'b1100};
        bins    rx_desc_type_5 = {4'b1101};
        bins    rx_desc_type_6 = {4'b1110};
    }

    coverpoint_byp                           : coverpoint byp
    {
        bins    byp_0 = {0};
        bins    byp_1 = {1};
    }

    coverpoint_fp                            : coverpoint fp
    {
        bins    fp_0 = {0};
        bins    fp_1 = {1};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  15  Expexted:

endgroup


//==================================================
// covergroup : tx_desc_avail
//==================================================

// 

covergroup cg_tx_desc_avail with function sample(bit [7:0] di, bit [4:0] ch, bit [3:0] tx_desc_type, bit byp);
    option.per_instance = 1;
    option.name = "cg_tx_desc_avail";

    coverpoint_di                            : coverpoint di
    {
        bins    di_0 = {[0:100]};
        bins    di_1 = {[101:150]};
        bins    di_2 = {[151:200]};
        bins    di_3 = {[201:255]};
    }

    coverpoint_ch                            : coverpoint ch
    {
        bins    ch_0 = {0};
        bins    ch_1 = {1};
        bins    ch_2 = {2};
        bins    ch_3 = {3};
        bins    ch_4 = {4};
        bins    ch_5 = {5};
        bins    ch_6 = {6};
        bins    ch_7 = {7};
        bins    ch_8 = {8};
        bins    ch_9 = {9};
        bins    ch_10 = {10};
        bins    ch_11 = {11};
        bins    ch_12 = {12};
        bins    ch_13 = {13};
        bins    ch_14 = {14};
        bins    ch_15 = {15};
    }

    coverpoint_tx_desc_type                  : coverpoint tx_desc_type
    {
        bins    tx_desc_type_0 = {4'b1000};
        bins    tx_desc_type_1 = {4'b1001};
        bins    tx_desc_type_2 = {4'b1010};
        bins    tx_desc_type_3 = {4'b1011};
        bins    tx_desc_type_4 = {4'b1100};
        bins    tx_desc_type_5 = {4'b1101};
        bins    tx_desc_type_6 = {4'b1110};
    }

    coverpoint_byp                           : coverpoint byp
    {
        bins    byp_0 = {0};
        bins    byp_1 = {1};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  29  Expexted:

endgroup


//==================================================
// covergroup : seq_start_q
//==================================================

// 

covergroup cg_seq_start_q with function sample(bit [7:0] di, bit [3:0] ch);
    option.per_instance = 1;
    option.name = "cg_seq_start_q";

    coverpoint_di                            : coverpoint di
    {
        bins    di_0 = {[0:100]};
        bins    di_1 = {[101:150]};
        bins    di_2 = {[151:200]};
        bins    di_3 = {[201:255]};
    }

    coverpoint_ch                            : coverpoint ch
    {
        bins    ch_0 = {0};
        bins    ch_1 = {1};
        bins    ch_2 = {2};
        bins    ch_3 = {3};
        bins    ch_4 = {4};
        bins    ch_5 = {5};
        bins    ch_6 = {6};
        bins    ch_7 = {7};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  12  Expexted:

endgroup


//==================================================
// covergroup : prp_prefetch_st
//==================================================

// 

covergroup cg_prp_prefetch_st with function sample(bit [1:0] ptag, bit pze, bit pae, bit be);
    option.per_instance = 1;
    option.name = "cg_prp_prefetch_st";

    coverpoint_ptag                          : coverpoint ptag
    {
        bins    ptag_0 = {0};
        bins    ptag_1 = {1};
        bins    ptag_2 = {2};
        bins    ptag_3 = {3};
    }

    coverpoint_pze                           : coverpoint pze
    {
        bins    pze_0 = {0};
        bins    pze_1 = {1};
    }

    coverpoint_pae                           : coverpoint pae
    {
        bins    pae_0 = {0};
        bins    pae_1 = {1};
    }

    coverpoint_be                            : coverpoint be
    {
        bins    be_0 = {0};
        bins    be_1 = {1};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  10  Expexted:

endgroup


//==================================================
// covergroup : internal_desc_cmp
//==================================================

// 

covergroup cg_internal_desc_cmp with function sample(bit [7:0] di, bit [5:0] ch, bit [3:0] id_desc_type, bit [1:0] ec, bit err, bit byp, bit [7:0] herr, bit [3:0] serr, bit [1:0] cfi, bit [4:0] prpn, bit [1:0] dw2val);
    option.per_instance = 1;
    option.name = "cg_internal_desc_cmp";

    coverpoint_di                            : coverpoint di
    {
        bins    di_0 = {[0:100]};
        bins    di_1 = {[101:150]};
        bins    di_2 = {[151:200]};
        bins    di_3 = {[201:255]};
    }

    coverpoint_ch                            : coverpoint ch
    {
        bins    ch_0 = {0};
        bins    ch_1 = {1};
        bins    ch_2 = {2};
        bins    ch_3 = {3};
        bins    ch_4 = {4};
        bins    ch_5 = {5};
        bins    ch_6 = {6};
        bins    ch_7 = {7};
        bins    ch_8 = {8};
        bins    ch_9 = {9};
        bins    ch_10 = {10};
        bins    ch_11 = {11};
        bins    ch_12 = {12};
        bins    ch_13 = {13};
        bins    ch_14 = {14};
        bins    ch_15 = {15};
        bins    ch_16 = {16};
        bins    ch_17 = {17};
        bins    ch_18 = {18};
        bins    ch_19 = {19};
        bins    ch_20 = {20};
        bins    ch_21 = {21};
        bins    ch_22 = {22};
        bins    ch_23 = {23};
        bins    ch_24 = {24};
        bins    ch_25 = {25};
        bins    ch_26 = {26};
        bins    ch_27 = {27};
        bins    ch_28 = {28};
        bins    ch_29 = {29};
        bins    ch_30 = {30};
        bins    ch_31 = {31};
    }

    coverpoint_id_desc_type                  : coverpoint id_desc_type
    {
        bins    id_desc_type_0 = {4'b0000};
        bins    id_desc_type_1 = {4'b0001};
        bins    id_desc_type_2 = {4'b0010};
        bins    id_desc_type_3 = {4'b0011};
        bins    id_desc_type_4 = {4'b0100};
        bins    id_desc_type_5 = {4'b0101};
        bins    id_desc_type_6 = {4'b0110};
        bins    id_desc_type_7 = {4'b1000};
        bins    id_desc_type_8 = {4'b1001};
        bins    id_desc_type_9 = {4'b1010};
        bins    id_desc_type_10 = {4'b1011};
        bins    id_desc_type_11 = {4'b1100};
        bins    id_desc_type_12 = {4'b1101};
        bins    id_desc_type_13 = {4'b1110};
    }

    coverpoint_ec                            : coverpoint ec
    {
        bins    ec_0 = {0};
        bins    ec_1 = {1};
        bins    ec_2 = {2};
        bins    ec_3 = {3};
    }

    coverpoint_err                           : coverpoint err
    {
        bins    err_0 = {0};
        bins    err_1 = {1};
    }

    coverpoint_byp                           : coverpoint byp
    {
        bins    byp_0 = {0};
        bins    byp_1 = {1};
    }

    coverpoint_herr                          : coverpoint herr
    {
        bins    herr_0 = {[0:100]};
        bins    herr_1 = {[101:150]};
        bins    herr_2 = {[151:200]};
        bins    herr_3 = {[201:255]};
    }

    coverpoint_serr                          : coverpoint serr
    {
        bins    serr_0 = {0};
        bins    serr_1 = {1};
        bins    serr_2 = {2};
        bins    serr_3 = {3};
        bins    serr_4 = {4};
        bins    serr_5 = {5};
        bins    serr_6 = {6};
        bins    serr_7 = {7};
        bins    serr_8 = {8};
        bins    serr_9 = {9};
        bins    serr_10 = {10};
        bins    serr_11 = {11};
        bins    serr_12 = {12};
        bins    serr_13 = {13};
        bins    serr_14 = {14};
        bins    serr_15 = {15};
    }

    coverpoint_cfi                           : coverpoint cfi
    {
        bins    cfi_0 = {0};
        bins    cfi_1 = {1};
        bins    cfi_2 = {2};
        bins    cfi_3 = {3};
    }

    coverpoint_prpn                          : coverpoint prpn
    {
        bins    prpn_0 = {0};
        bins    prpn_1 = {1};
        bins    prpn_2 = {2};
        bins    prpn_3 = {3};
        bins    prpn_4 = {4};
        bins    prpn_5 = {5};
        bins    prpn_6 = {6};
        bins    prpn_7 = {7};
        bins    prpn_8 = {8};
        bins    prpn_9 = {9};
        bins    prpn_10 = {10};
        bins    prpn_11 = {11};
        bins    prpn_12 = {12};
        bins    prpn_13 = {13};
        bins    prpn_14 = {14};
        bins    prpn_15 = {15};
        bins    prpn_16 = {16};
        bins    prpn_17 = {17};
        bins    prpn_18 = {18};
        bins    prpn_19 = {19};
        bins    prpn_20 = {20};
        bins    prpn_21 = {21};
        bins    prpn_22 = {22};
        bins    prpn_23 = {23};
        bins    prpn_24 = {24};
        bins    prpn_25 = {25};
        bins    prpn_26 = {26};
        bins    prpn_27 = {27};
        bins    prpn_28 = {28};
        bins    prpn_29 = {29};
        bins    prpn_30 = {30};
        bins    prpn_31 = {31};
    }

    coverpoint_dw2val                        : coverpoint dw2val
    {
        bins    dw2val_0 = {0};
        bins    dw2val_1 = {1};
        bins    dw2val_2 = {2};
        bins    dw2val_3 = {3};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  118  Expexted:

endgroup


//==================================================
// covergroup : set_events
//==================================================

// 

covergroup cg_set_events with function sample(bit [7:0] set_ev_id);
    option.per_instance = 1;
    option.name = "cg_set_events";

    coverpoint_set_ev_id                     : coverpoint set_ev_id
    {
        bins    set_ev_id_0 = {8'h03};
        bins    set_ev_id_1 = {8'h03};
        bins    set_ev_id_2 = {8'h04};
        bins    set_ev_id_3 = {8'h0b};
        bins    set_ev_id_4 = {8'h09};
        bins    set_ev_id_5 = {8'h06};
        bins    set_ev_id_6 = {8'h07};
        bins    set_ev_id_7 = {8'h39};
        bins    set_ev_id_8 = {8'h3A};
        bins    set_ev_id_9 = {8'h3B};
        bins    set_ev_id_10 = {8'h0A};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  11  Expexted:

endgroup


//==================================================
// covergroup : intr_intf
//==================================================

// 

covergroup cg_intr_intf with function sample(bit intr1, bit intr2, bit intr3, bit intr4);
    option.per_instance = 1;
    option.name = "cg_intr_intf";

    coverpoint_intr1                         : coverpoint intr1
    {
        bins    intr1_0 = {1'b0};
        bins    intr1_1 = {1'b1};
    }

    coverpoint_intr2                         : coverpoint intr2
    {
        bins    intr2_0 = {1'b0};
        bins    intr2_1 = {1'b1};
    }

    coverpoint_intr3                         : coverpoint intr3
    {
        bins    intr3_0 = {1'b0};
        bins    intr3_1 = {1'b1};
    }

    coverpoint_intr4                         : coverpoint intr4
    {
        bins    intr4_0 = {1'b0};
        bins    intr4_1 = {1'b1};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  8  Expexted:

endgroup


//==================================================
// covergroup : svci_err
//==================================================

// 

covergroup cg_svci_err with function sample(bit [1:0] resp_op);
    option.per_instance = 1;
    option.name = "cg_svci_err";

    coverpoint_resp_op                       : coverpoint resp_op
    {
        bins    resp_op_0 = {1};
        bins    resp_op_1 = {2};
        bins    resp_op_2 = {3};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  3  Expexted:

endgroup


//==================================================
// covergroup : stat_cnt
//==================================================

// 

covergroup cg_stat_cnt with function sample(bit [31:0] du_rd_cnt, bit [31:0] du_wr_cnt, bit [31:0] hs_rd_cnt, bit [31:0] hs_wr_cnt, bit [31:0] wl_rd_cnt, bit [31:0] wl_wr_cnt);
    option.per_instance = 1;
    option.name = "cg_stat_cnt";

    coverpoint_du_rd_cnt                     : coverpoint du_rd_cnt
    {
        bins    du_rd_cnt_0 = {[32'h0:32'h33333332]};
        bins    du_rd_cnt_1 = {[32'h33333333:32'h66666665]};
        bins    du_rd_cnt_2 = {[32'h66666666:32'h99999998]};
        bins    du_rd_cnt_3 = {[32'h99999999:32'hcccccccb]};
        bins    du_rd_cnt_4 = {[32'hcccccccc:32'hffffffff]};
    }

    coverpoint_du_wr_cnt                     : coverpoint du_wr_cnt
    {
        bins    du_wr_cnt_0 = {[32'h0:32'h33333332]};
        bins    du_wr_cnt_1 = {[32'h33333333:32'h66666665]};
        bins    du_wr_cnt_2 = {[32'h66666666:32'h99999998]};
        bins    du_wr_cnt_3 = {[32'h99999999:32'hcccccccb]};
        bins    du_wr_cnt_4 = {[32'hcccccccc:32'hffffffff]};
    }

    coverpoint_hs_rd_cnt                     : coverpoint hs_rd_cnt
    {
        bins    hs_rd_cnt_0 = {[32'h0:32'h33333332]};
        bins    hs_rd_cnt_1 = {[32'h33333333:32'h66666665]};
        bins    hs_rd_cnt_2 = {[32'h66666666:32'h99999998]};
        bins    hs_rd_cnt_3 = {[32'h99999999:32'hcccccccb]};
        bins    hs_rd_cnt_4 = {[32'hcccccccc:32'hffffffff]};
    }

    coverpoint_hs_wr_cnt                     : coverpoint hs_wr_cnt
    {
        bins    hs_wr_cnt_0 = {[32'h0:32'h33333332]};
        bins    hs_wr_cnt_1 = {[32'h33333333:32'h66666665]};
        bins    hs_wr_cnt_2 = {[32'h66666666:32'h99999998]};
        bins    hs_wr_cnt_3 = {[32'h99999999:32'hcccccccb]};
        bins    hs_wr_cnt_4 = {[32'hcccccccc:32'hffffffff]};
    }

    coverpoint_wl_rd_cnt                     : coverpoint wl_rd_cnt
    {
        bins    wl_rd_cnt_0 = {[32'h0:32'h33333332]};
        bins    wl_rd_cnt_1 = {[32'h33333333:32'h66666665]};
        bins    wl_rd_cnt_2 = {[32'h66666666:32'h99999998]};
        bins    wl_rd_cnt_3 = {[32'h99999999:32'hcccccccb]};
        bins    wl_rd_cnt_4 = {[32'hcccccccc:32'hffffffff]};
    }

    coverpoint_wl_wr_cnt                     : coverpoint wl_wr_cnt
    {
        bins    wl_wr_cnt_0 = {[32'h0:32'h33333332]};
        bins    wl_wr_cnt_1 = {[32'h33333333:32'h66666665]};
        bins    wl_wr_cnt_2 = {[32'h66666666:32'h99999998]};
        bins    wl_wr_cnt_3 = {[32'h99999999:32'hcccccccb]};
        bins    wl_wr_cnt_4 = {[32'hcccccccc:32'hffffffff]};
    }

// WARNING: Excel cases does not match actual cases for this covergroup:  // Real:  30  Expexted:

endgroup

`endif // ifdef TEST_COV
`endif // ifdef COVERAGE_EN
`endif // ifndef GATE_LEVEL
`endif // ifndef COV_HABM_COV_CHECKER_SV
/*

function habm_cov_checker_cov_sample();

`ifdef TEST_COV

    cg_adp_desc.sample();
    cg_adp_sec_desc.sample();
    cg_adp_fw_desc.sample();
    cg_nvme_cmpl_entry.sample();
    cg_hsec_cmpl_entry.sample();
    cg_write_regs.sample();
    cg_read_regs.sample();
    cg_st_fifo_1.sample();
    cg_st_fifo_2.sample();
    cg_cmd_ctxt.sample();
    cg_hbp_desc.sample();
    cg_auto_trans_desc.sample();
    cg_seq_desc.sample();
    cg_desc_idx_slot.sample();
    cg_rx_desc_avail.sample();
    cg_tx_desc_avail.sample();
    cg_seq_start_q.sample();
    cg_prp_prefetch_st.sample();
    cg_internal_desc_cmp.sample();
    cg_set_events.sample();
    cg_intr_intf.sample();
    cg_svci_err.sample();
    cg_stat_cnt.sample();

`endif // ifdef TEST_COV
endfunction

*/




