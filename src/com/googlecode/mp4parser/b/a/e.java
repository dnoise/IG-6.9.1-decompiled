// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b.a;

import com.googlecode.mp4parser.b.b.b;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Arrays;

// Referenced classes of package com.googlecode.mp4parser.b.a:
//            b, f, g, h

public final class e extends com.googlecode.mp4parser.b.a.b
{

    public boolean a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public int h;
    public int i;
    public boolean j;
    public int k;
    public int l;
    public int m;
    public int n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r[];
    public int s[];
    public int t[];
    public boolean u;
    public int v[];
    public f w;

    public e()
    {
    }

    private static e a(InputStream inputstream)
    {
        byte byte0 = 3;
        b b1 = new b(inputstream);
        e e1 = new e();
        e1.e = b1.a("PPS: pic_parameter_set_id");
        e1.f = b1.a("PPS: seq_parameter_set_id");
        e1.a = b1.c("PPS: entropy_coding_mode_flag");
        e1.g = b1.c("PPS: pic_order_present_flag");
        e1.h = b1.a("PPS: num_slice_groups_minus1");
        if (e1.h > 0)
        {
            e1.i = b1.a("PPS: slice_group_map_type");
            e1.r = new int[1 + e1.h];
            e1.s = new int[1 + e1.h];
            e1.t = new int[1 + e1.h];
            if (e1.i == 0)
            {
                for (int j2 = 0; j2 <= e1.h; j2++)
                {
                    e1.t[j2] = b1.a("PPS: run_length_minus1");
                }

            } else
            if (e1.i == 2)
            {
                for (int i2 = 0; i2 < e1.h; i2++)
                {
                    e1.r[i2] = b1.a("PPS: top_left");
                    e1.s[i2] = b1.a("PPS: bottom_right");
                }

            } else
            if (e1.i == byte0 || e1.i == 4 || e1.i == 5)
            {
                e1.u = b1.c("PPS: slice_group_change_direction_flag");
                e1.d = b1.a("PPS: slice_group_change_rate_minus1");
            } else
            if (e1.i == 6)
            {
                int k1;
                int l1;
                if (1 + e1.h <= 4)
                {
                    if (1 + e1.h > 2)
                    {
                        byte0 = 2;
                    } else
                    {
                        byte0 = 1;
                    }
                }
                k1 = b1.a("PPS: pic_size_in_map_units_minus1");
                e1.v = new int[k1 + 1];
                l1 = 0;
                while (l1 <= k1) 
                {
                    e1.v[l1] = b1.b(byte0, (new StringBuilder("PPS: slice_group_id [")).append(l1).append("]f").toString());
                    l1++;
                }
            }
        }
        e1.b = b1.a("PPS: num_ref_idx_l0_active_minus1");
        e1.c = b1.a("PPS: num_ref_idx_l1_active_minus1");
        e1.j = b1.c("PPS: weighted_pred_flag");
        e1.k = (int)b1.a(2, "PPS: weighted_bipred_idc");
        e1.l = b1.b("PPS: pic_init_qp_minus26");
        e1.m = b1.b("PPS: pic_init_qs_minus26");
        e1.n = b1.b("PPS: chroma_qp_index_offset");
        e1.o = b1.c("PPS: deblocking_filter_control_present_flag");
        e1.p = b1.c("PPS: constrained_intra_pred_flag");
        e1.q = b1.c("PPS: redundant_pic_cnt_present_flag");
        if (b1.b())
        {
            e1.w = new f();
            e1.w.a = b1.c("PPS: transform_8x8_mode_flag");
            if (b1.c("PPS: pic_scaling_matrix_present_flag"))
            {
                int i1 = 0;
                do
                {
                    int j1;
                    if (e1.w.a)
                    {
                        j1 = 1;
                    } else
                    {
                        j1 = 0;
                    }
                    if (i1 >= 6 + j1 * 2)
                    {
                        break;
                    }
                    if (b1.c("PPS: pic_scaling_list_present_flag"))
                    {
                        e1.w.b.a = new g[8];
                        e1.w.b.b = new g[8];
                        if (i1 < 6)
                        {
                            e1.w.b.a[i1] = com.googlecode.mp4parser.b.a.g.a(b1, 16);
                        } else
                        {
                            e1.w.b.b[i1 - 6] = com.googlecode.mp4parser.b.a.g.a(b1, 64);
                        }
                    }
                    i1++;
                } while (true);
            }
            e1.w.c = b1.b("PPS: second_chroma_qp_index_offset");
        }
        b1.d();
        return e1;
    }

    public static e a(byte abyte0[])
    {
        return a(((InputStream) (new ByteArrayInputStream(abyte0))));
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            e e1 = (e)obj;
            if (!Arrays.equals(s, e1.s))
            {
                return false;
            }
            if (n != e1.n)
            {
                return false;
            }
            if (p != e1.p)
            {
                return false;
            }
            if (o != e1.o)
            {
                return false;
            }
            if (a != e1.a)
            {
                return false;
            }
            if (w == null)
            {
                if (e1.w != null)
                {
                    return false;
                }
            } else
            if (!w.equals(e1.w))
            {
                return false;
            }
            if (b != e1.b)
            {
                return false;
            }
            if (c != e1.c)
            {
                return false;
            }
            if (h != e1.h)
            {
                return false;
            }
            if (l != e1.l)
            {
                return false;
            }
            if (m != e1.m)
            {
                return false;
            }
            if (g != e1.g)
            {
                return false;
            }
            if (e != e1.e)
            {
                return false;
            }
            if (q != e1.q)
            {
                return false;
            }
            if (!Arrays.equals(t, e1.t))
            {
                return false;
            }
            if (f != e1.f)
            {
                return false;
            }
            if (u != e1.u)
            {
                return false;
            }
            if (d != e1.d)
            {
                return false;
            }
            if (!Arrays.equals(v, e1.v))
            {
                return false;
            }
            if (i != e1.i)
            {
                return false;
            }
            if (!Arrays.equals(r, e1.r))
            {
                return false;
            }
            if (k != e1.k)
            {
                return false;
            }
            if (j != e1.j)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        char c1 = '\u04CF';
        int i1 = 31 * (31 * (31 + Arrays.hashCode(s)) + n);
        char c2;
        int j1;
        char c3;
        int k1;
        char c4;
        int l1;
        int i2;
        int j2;
        char c5;
        int k2;
        char c6;
        int l2;
        char c7;
        int i3;
        if (p)
        {
            c2 = c1;
        } else
        {
            c2 = '\u04D5';
        }
        j1 = 31 * (c2 + i1);
        if (o)
        {
            c3 = c1;
        } else
        {
            c3 = '\u04D5';
        }
        k1 = 31 * (c3 + j1);
        if (a)
        {
            c4 = c1;
        } else
        {
            c4 = '\u04D5';
        }
        l1 = 31 * (c4 + k1);
        if (w == null)
        {
            i2 = 0;
        } else
        {
            i2 = w.hashCode();
        }
        j2 = 31 * (31 * (31 * (31 * (31 * (31 * (i2 + l1) + b) + c) + h) + l) + m);
        if (g)
        {
            c5 = c1;
        } else
        {
            c5 = '\u04D5';
        }
        k2 = 31 * (31 * (c5 + j2) + e);
        if (q)
        {
            c6 = c1;
        } else
        {
            c6 = '\u04D5';
        }
        l2 = 31 * (31 * (31 * (c6 + k2) + Arrays.hashCode(t)) + f);
        if (u)
        {
            c7 = c1;
        } else
        {
            c7 = '\u04D5';
        }
        i3 = 31 * (31 * (31 * (31 * (31 * (31 * (c7 + l2) + d) + Arrays.hashCode(v)) + i) + Arrays.hashCode(r)) + k);
        if (!j)
        {
            c1 = '\u04D5';
        }
        return i3 + c1;
    }

    public final String toString()
    {
        return (new StringBuilder("PictureParameterSet{\n       entropy_coding_mode_flag=")).append(a).append(",\n       num_ref_idx_l0_active_minus1=").append(b).append(",\n       num_ref_idx_l1_active_minus1=").append(c).append(",\n       slice_group_change_rate_minus1=").append(d).append(",\n       pic_parameter_set_id=").append(e).append(",\n       seq_parameter_set_id=").append(f).append(",\n       pic_order_present_flag=").append(g).append(",\n       num_slice_groups_minus1=").append(h).append(",\n       slice_group_map_type=").append(i).append(",\n       weighted_pred_flag=").append(j).append(",\n       weighted_bipred_idc=").append(k).append(",\n       pic_init_qp_minus26=").append(l).append(",\n       pic_init_qs_minus26=").append(m).append(",\n       chroma_qp_index_offset=").append(n).append(",\n       deblocking_filter_control_present_flag=").append(o).append(",\n       constrained_intra_pred_flag=").append(p).append(",\n       redundant_pic_cnt_present_flag=").append(q).append(",\n       top_left=").append(r).append(",\n       bottom_right=").append(s).append(",\n       run_length_minus1=").append(t).append(",\n       slice_group_change_direction_flag=").append(u).append(",\n       slice_group_id=").append(v).append(",\n       extended=").append(w).append('}').toString();
    }
}
