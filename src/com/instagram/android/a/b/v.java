// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import com.instagram.creation.b.a.b;

// Referenced classes of package com.instagram.android.a.b:
//            q, u

final class v
    implements Runnable
{

    final b a;
    final u b;

    v(u u, b b1)
    {
        b = u;
        a = b1;
        super();
    }

    public final void run()
    {
        q.a(b, a);
    }
}
