// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            CjFilter, BorderFilter

public final class i
{

    public static CjFilter a(IgFilterGroup igfiltergroup)
    {
        return (CjFilter)igfiltergroup.a(5);
    }

    public static void a(IgFilterGroup igfiltergroup, BorderFilter borderfilter)
    {
        igfiltergroup.a(20, borderfilter);
    }

    public static void a(IgFilterGroup igfiltergroup, CjFilter cjfilter)
    {
        igfiltergroup.a(5, cjfilter);
    }

    public static BorderFilter b(IgFilterGroup igfiltergroup)
    {
        return (BorderFilter)igfiltergroup.a(20);
    }
}
