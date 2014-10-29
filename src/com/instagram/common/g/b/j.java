// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import android.os.Message;

// Referenced classes of package com.instagram.common.g.b:
//            i

final class j
    implements Runnable
{

    final Message a;
    final i b;

    j(i i, Message message)
    {
        b = i;
        a = message;
        super();
    }

    public final void run()
    {
        throw new IllegalArgumentException((new StringBuilder("Unknown message what = ")).append(a.what).toString());
    }
}
