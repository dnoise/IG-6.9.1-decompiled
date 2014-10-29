// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.a;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;

// Referenced classes of package com.instagram.filterkit.a:
//            e, d

public final class c
{

    private final e a;
    private final SurfaceTexture b;
    private final SurfaceHolder c;

    public c()
    {
        b = null;
        c = null;
        a = e.c;
    }

    public c(SurfaceTexture surfacetexture)
    {
        b = surfacetexture;
        c = null;
        a = e.a;
    }

    public c(SurfaceHolder surfaceholder)
    {
        b = null;
        c = surfaceholder;
        a = e.b;
    }

    public final Object a()
    {
        switch (d.a[a.ordinal()])
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("SURFACE_TYPE ")).append(a).append(" not handled").toString());

        case 1: // '\001'
            return c;

        case 2: // '\002'
            return b;

        case 3: // '\003'
            return null;
        }
    }
}
