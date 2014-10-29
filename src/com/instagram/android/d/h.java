// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.os.Bundle;
import android.os.Handler;
import com.facebook.b.e;
import com.facebook.b.i;
import com.instagram.share.b.a;

// Referenced classes of package com.instagram.android.d:
//            f, i

final class h
    implements e
{

    final f a;

    private h(f f1)
    {
        a = f1;
        super();
    }

    h(f f1, byte byte0)
    {
        this(f1);
    }

    public final void a()
    {
    }

    public final void a(Bundle bundle)
    {
        com.instagram.share.b.a.b();
        f.c(a).post(new com.instagram.android.d.i(this));
    }

    public final void a(com.facebook.b.a a1)
    {
    }

    public final void a(i j)
    {
    }
}
