// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b.a;

import java.util.Arrays;

// Referenced classes of package com.googlecode.mp4parser.b.a:
//            g

public final class h
{

    public g a[];
    public g b[];

    public h()
    {
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("ScalingMatrix{ScalingList4x4=");
        java.util.List list;
        StringBuilder stringbuilder1;
        g ag[];
        java.util.List list1;
        if (a == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(a);
        }
        stringbuilder1 = stringbuilder.append(list).append("\n, ScalingList8x8=");
        ag = b;
        list1 = null;
        if (ag != null)
        {
            list1 = Arrays.asList(b);
        }
        return stringbuilder1.append(list1).append("\n}").toString();
    }
}
