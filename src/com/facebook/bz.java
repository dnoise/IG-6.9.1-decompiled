// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;

// Referenced classes of package com.facebook:
//            bo, cm

public final class bz
{

    private final Context a;
    private String b;
    private cm c;

    public bz(Context context)
    {
        a = context;
    }

    public final bo a()
    {
        return new bo(a, b, c);
    }

    public final bz a(String s)
    {
        b = s;
        return this;
    }
}
