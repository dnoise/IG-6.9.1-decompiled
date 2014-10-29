// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.k;

import android.view.Choreographer;

// Referenced classes of package com.instagram.common.k:
//            a

final class b
    implements android.view.Choreographer.FrameCallback
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void doFrame(long l)
    {
        com.instagram.common.k.a.a(a);
        Choreographer.getInstance().postFrameCallback(this);
    }
}
