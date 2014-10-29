// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import com.instagram.o.a.a;

// Referenced classes of package com.instagram.android.activity:
//            ab

final class ae
    implements Runnable
{

    final String a;
    final ab b;

    ae(ab ab, String s)
    {
        b = ab;
        a = s;
        super();
    }

    public final void run()
    {
        com.instagram.o.a.a.a(b, null, a, null);
    }
}
