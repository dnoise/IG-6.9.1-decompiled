// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;

import android.os.Handler;

// Referenced classes of package com.a.a:
//            j, l, p, q, 
//            m, n, o, f

final class k
    implements j
{

    final f a;
    private Handler b;
    private j c;

    public k(f f, Handler handler)
    {
        a = f;
        super();
        b = handler;
    }

    static j a(k k1)
    {
        return k1.c;
    }

    public final void a(j j1)
    {
        c = j1;
    }

    public final void onConnect()
    {
        b.post(new l(this));
    }

    public final void onDisconnect(int i, String s)
    {
        b.post(new p(this, i, s));
    }

    public final void onError(Exception exception)
    {
        b.post(new q(this, exception));
    }

    public final void onMessage(String s)
    {
        b.post(new m(this, s));
    }

    public final void onMessage(byte abyte0[])
    {
        b.post(new n(this, abyte0));
    }

    public final void onPing()
    {
        b.post(new o(this));
    }
}
