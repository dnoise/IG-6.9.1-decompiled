// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b.a;

import com.googlecode.mp4parser.b.b.b;
import java.io.InputStream;

// Referenced classes of package com.googlecode.mp4parser.b.a:
//            b, c, j, a, 
//            k, h, g, d

public final class i extends com.googlecode.mp4parser.b.a.b
{

    public int A;
    public boolean B;
    public boolean C;
    public boolean D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I[];
    public j J;
    public h K;
    public int L;
    public int a;
    public boolean b;
    public boolean c;
    public boolean d;
    public int e;
    public boolean f;
    public boolean g;
    public boolean h;
    public c i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public int q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public int w;
    public boolean x;
    public int y;
    public int z;

    public i()
    {
    }

    public static i a(InputStream inputstream)
    {
        b b1;
        i i1;
        b1 = new b(inputstream);
        i1 = new i();
        i1.q = (int)b1.a(8, "SPS: profile_idc");
        i1.r = b1.c("SPS: constraint_set_0_flag");
        i1.s = b1.c("SPS: constraint_set_1_flag");
        i1.t = b1.c("SPS: constraint_set_2_flag");
        i1.u = b1.c("SPS: constraint_set_3_flag");
        b1.a(4, "SPS: reserved_zero_4bits");
        i1.v = (int)b1.a(8, "SPS: level_idc");
        i1.w = b1.a("SPS: seq_parameter_set_id");
        if (i1.q == 100 || i1.q == 110 || i1.q == 122 || i1.q == 144)
        {
            i1.i = com.googlecode.mp4parser.b.a.c.a(b1.a("SPS: chroma_format_idc"));
            if (i1.i == c.d)
            {
                i1.x = b1.c("SPS: residual_color_transform_flag");
            }
            i1.n = b1.a("SPS: bit_depth_luma_minus8");
            i1.o = b1.a("SPS: bit_depth_chroma_minus8");
            i1.p = b1.c("SPS: qpprime_y_zero_transform_bypass_flag");
            if (b1.c("SPS: seq_scaling_matrix_present_lag"))
            {
                a(b1, i1);
            }
        } else
        {
            i1.i = com.googlecode.mp4parser.b.a.c.b;
        }
        i1.j = b1.a("SPS: log2_max_frame_num_minus4");
        i1.a = b1.a("SPS: pic_order_cnt_type");
        if (i1.a != 0) goto _L2; else goto _L1
_L1:
        i1.k = b1.a("SPS: log2_max_pic_order_cnt_lsb_minus4");
_L4:
        i1.A = b1.a("SPS: num_ref_frames");
        i1.B = b1.c("SPS: gaps_in_frame_num_value_allowed_flag");
        i1.m = b1.a("SPS: pic_width_in_mbs_minus1");
        i1.l = b1.a("SPS: pic_height_in_map_units_minus1");
        i1.C = b1.c("SPS: frame_mbs_only_flag");
        if (!i1.C)
        {
            i1.g = b1.c("SPS: mb_adaptive_frame_field_flag");
        }
        i1.h = b1.c("SPS: direct_8x8_inference_flag");
        i1.D = b1.c("SPS: frame_cropping_flag");
        if (i1.D)
        {
            i1.E = b1.a("SPS: frame_crop_left_offset");
            i1.F = b1.a("SPS: frame_crop_right_offset");
            i1.G = b1.a("SPS: frame_crop_top_offset");
            i1.H = b1.a("SPS: frame_crop_bottom_offset");
        }
        if (b1.c("SPS: vui_parameters_present_flag"))
        {
            i1.J = a(b1);
        }
        b1.d();
        return i1;
_L2:
        if (i1.a == 1)
        {
            i1.c = b1.c("SPS: delta_pic_order_always_zero_flag");
            i1.y = b1.b("SPS: offset_for_non_ref_pic");
            i1.z = b1.b("SPS: offset_for_top_to_bottom_field");
            i1.L = b1.a("SPS: num_ref_frames_in_pic_order_cnt_cycle");
            i1.I = new int[i1.L];
            int j1 = 0;
            while (j1 < i1.L) 
            {
                i1.I[j1] = b1.b((new StringBuilder("SPS: offsetForRefFrame [")).append(j1).append("]").toString());
                j1++;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static j a(b b1)
    {
        j j1 = new j();
        j1.a = b1.c("VUI: aspect_ratio_info_present_flag");
        if (j1.a)
        {
            j1.y = com.googlecode.mp4parser.b.a.a.a((int)b1.a(8, "VUI: aspect_ratio"));
            if (j1.y == a.a)
            {
                j1.b = (int)b1.a(16, "VUI: sar_width");
                j1.c = (int)b1.a(16, "VUI: sar_height");
            }
        }
        j1.d = b1.c("VUI: overscan_info_present_flag");
        if (j1.d)
        {
            j1.e = b1.c("VUI: overscan_appropriate_flag");
        }
        j1.f = b1.c("VUI: video_signal_type_present_flag");
        if (j1.f)
        {
            j1.g = (int)b1.a(3, "VUI: video_format");
            j1.h = b1.c("VUI: video_full_range_flag");
            j1.i = b1.c("VUI: colour_description_present_flag");
            if (j1.i)
            {
                j1.j = (int)b1.a(8, "VUI: colour_primaries");
                j1.k = (int)b1.a(8, "VUI: transfer_characteristics");
                j1.l = (int)b1.a(8, "VUI: matrix_coefficients");
            }
        }
        j1.m = b1.c("VUI: chroma_loc_info_present_flag");
        if (j1.m)
        {
            j1.n = b1.a("VUI chroma_sample_loc_type_top_field");
            j1.o = b1.a("VUI chroma_sample_loc_type_bottom_field");
        }
        j1.p = b1.c("VUI: timing_info_present_flag");
        if (j1.p)
        {
            j1.q = (int)b1.a(32, "VUI: num_units_in_tick");
            j1.r = (int)b1.a(32, "VUI: time_scale");
            j1.s = b1.c("VUI: fixed_frame_rate_flag");
        }
        boolean flag = b1.c("VUI: nal_hrd_parameters_present_flag");
        if (flag)
        {
            j1.v = b(b1);
        }
        boolean flag1 = b1.c("VUI: vcl_hrd_parameters_present_flag");
        if (flag1)
        {
            j1.w = b(b1);
        }
        if (flag || flag1)
        {
            j1.t = b1.c("VUI: low_delay_hrd_flag");
        }
        j1.u = b1.c("VUI: pic_struct_present_flag");
        if (b1.c("VUI: bitstream_restriction_flag"))
        {
            j1.x = new k();
            j1.x.a = b1.c("VUI: motion_vectors_over_pic_boundaries_flag");
            j1.x.b = b1.a("VUI max_bytes_per_pic_denom");
            j1.x.c = b1.a("VUI max_bits_per_mb_denom");
            j1.x.d = b1.a("VUI log2_max_mv_length_horizontal");
            j1.x.e = b1.a("VUI log2_max_mv_length_vertical");
            j1.x.f = b1.a("VUI num_reorder_frames");
            j1.x.g = b1.a("VUI max_dec_frame_buffering");
        }
        return j1;
    }

    private static void a(b b1, i i1)
    {
        i1.K = new h();
        int j1 = 0;
        while (j1 < 8) 
        {
            if (b1.c("SPS: seqScalingListPresentFlag"))
            {
                i1.K.a = new g[8];
                i1.K.b = new g[8];
                if (j1 < 6)
                {
                    i1.K.a[j1] = com.googlecode.mp4parser.b.a.g.a(b1, 16);
                } else
                {
                    i1.K.b[j1 - 6] = com.googlecode.mp4parser.b.a.g.a(b1, 64);
                }
            }
            j1++;
        }
    }

    private static d b(b b1)
    {
        d d1 = new d();
        d1.a = b1.a("SPS: cpb_cnt_minus1");
        d1.b = (int)b1.a(4, "HRD: bit_rate_scale");
        d1.c = (int)b1.a(4, "HRD: cpb_size_scale");
        d1.d = new int[1 + d1.a];
        d1.e = new int[1 + d1.a];
        d1.f = new boolean[1 + d1.a];
        for (int i1 = 0; i1 <= d1.a; i1++)
        {
            d1.d[i1] = b1.a("HRD: bit_rate_value_minus1");
            d1.e[i1] = b1.a("HRD: cpb_size_value_minus1");
            d1.f[i1] = b1.c("HRD: cbr_flag");
        }

        d1.g = (int)b1.a(5, "HRD: initial_cpb_removal_delay_length_minus1");
        d1.h = (int)b1.a(5, "HRD: cpb_removal_delay_length_minus1");
        d1.i = (int)b1.a(5, "HRD: dpb_output_delay_length_minus1");
        d1.j = (int)b1.a(5, "HRD: time_offset_length");
        return d1;
    }

    public final String toString()
    {
        return (new StringBuilder("SeqParameterSet{ \n        pic_order_cnt_type=")).append(a).append(", \n        field_pic_flag=").append(b).append(", \n        delta_pic_order_always_zero_flag=").append(c).append(", \n        weighted_pred_flag=").append(d).append(", \n        weighted_bipred_idc=").append(e).append(", \n        entropy_coding_mode_flag=").append(f).append(", \n        mb_adaptive_frame_field_flag=").append(g).append(", \n        direct_8x8_inference_flag=").append(h).append(", \n        chroma_format_idc=").append(i).append(", \n        log2_max_frame_num_minus4=").append(j).append(", \n        log2_max_pic_order_cnt_lsb_minus4=").append(k).append(", \n        pic_height_in_map_units_minus1=").append(l).append(", \n        pic_width_in_mbs_minus1=").append(m).append(", \n        bit_depth_luma_minus8=").append(n).append(", \n        bit_depth_chroma_minus8=").append(o).append(", \n        qpprime_y_zero_transform_bypass_flag=").append(p).append(", \n        profile_idc=").append(q).append(", \n        constraint_set_0_flag=").append(r).append(", \n        constraint_set_1_flag=").append(s).append(", \n        constraint_set_2_flag=").append(t).append(", \n        constraint_set_3_flag=").append(u).append(", \n        level_idc=").append(v).append(", \n        seq_parameter_set_id=").append(w).append(", \n        residual_color_transform_flag=").append(x).append(", \n        offset_for_non_ref_pic=").append(y).append(", \n        offset_for_top_to_bottom_field=").append(z).append(", \n        num_ref_frames=").append(A).append(", \n        gaps_in_frame_num_value_allowed_flag=").append(B).append(", \n        frame_mbs_only_flag=").append(C).append(", \n        frame_cropping_flag=").append(D).append(", \n        frame_crop_left_offset=").append(E).append(", \n        frame_crop_right_offset=").append(F).append(", \n        frame_crop_top_offset=").append(G).append(", \n        frame_crop_bottom_offset=").append(H).append(", \n        offsetForRefFrame=").append(I).append(", \n        vuiParams=").append(J).append(", \n        scalingMatrix=").append(K).append(", \n        num_ref_frames_in_pic_order_cnt_cycle=").append(L).append('}').toString();
    }
}
