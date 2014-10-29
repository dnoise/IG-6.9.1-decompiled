// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.a;

import android.content.Context;
import android.support.v4.app.an;

// Referenced classes of package com.instagram.common.a.a:
//            k, h, a

public final class g
    implements k
{

    private final Context a;
    private final an b;

    public g(Context context, an an)
    {
        a = context.getApplicationContext();
        b = an;
    }

    static Context a(g g1)
    {
        return g1.a;
    }

    static an b(g g1)
    {
        return g1.b;
    }

    public final void a(a a1)
    {
        h.a(new h(this, a1, (byte)0), b);
    }
}
