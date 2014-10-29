// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b.a;


// Referenced classes of package com.googlecode.mp4parser.b.a:
//            h

public final class f
{

    public boolean a;
    public h b;
    public int c;
    public boolean d[];

    public f()
    {
        b = new h();
    }

    public final String toString()
    {
        return (new StringBuilder("PPSExt{transform_8x8_mode_flag=")).append(a).append(", scalindMatrix=").append(b).append(", second_chroma_qp_index_offset=").append(c).append(", pic_scaling_list_present_flag=").append(d).append('}').toString();
    }
}
