// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            TiltShiftBlurFilter, TiltShiftFogFilter, l

public final class m
{

    public static TiltShiftBlurFilter a(IgFilterGroup igfiltergroup)
    {
        return (TiltShiftBlurFilter)igfiltergroup.a(11);
    }

    public static void a(IgFilterGroup igfiltergroup, l l1)
    {
        boolean flag = true;
        a(igfiltergroup).a(l1);
        b(igfiltergroup).a(l1);
        c(igfiltergroup).a(l1);
        boolean flag1;
        boolean flag2;
        if (l1 != l.a)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        igfiltergroup.a(11, flag1);
        if (l1 != l.a)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        igfiltergroup.a(12, flag2);
        if (l1 == l.a)
        {
            flag = false;
        }
        igfiltergroup.a(15, flag);
        if (l1 == l.a)
        {
            c(igfiltergroup).c(0.0F);
        }
    }

    public static void a(IgFilterGroup igfiltergroup, boolean flag)
    {
        igfiltergroup.a(11, flag);
        igfiltergroup.a(12, flag);
    }

    public static TiltShiftBlurFilter b(IgFilterGroup igfiltergroup)
    {
        return (TiltShiftBlurFilter)igfiltergroup.a(12);
    }

    public static TiltShiftFogFilter c(IgFilterGroup igfiltergroup)
    {
        return (TiltShiftFogFilter)igfiltergroup.a(15);
    }
}
