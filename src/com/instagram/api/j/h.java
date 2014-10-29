// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.a.c;
import android.support.v4.app.an;

// Referenced classes of package com.instagram.api.j:
//            l, a, i, c, 
//            j

public class h extends l
{

    private final com.instagram.api.j.c a;

    public h(Context context, com.instagram.api.j.c c1, a a1)
    {
        super(context, c1, a1);
        a = c1;
    }

    static com.instagram.api.j.c a(h h1)
    {
        return h1.a;
    }

    public c a(Bundle bundle)
    {
        if (a() != null)
        {
            a().a();
        }
        return new i(this, b());
    }

    public final void a(c c1, j j1)
    {
        super.a(c1, j1);
        a.j().a(a.i());
    }

    public final volatile void a(c c1, Object obj)
    {
        a(c1, (j)obj);
    }
}
