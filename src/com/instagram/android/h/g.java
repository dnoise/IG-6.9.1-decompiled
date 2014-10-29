// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.h;

import com.instagram.realtimeclient.RealtimeOperation;

// Referenced classes of package com.instagram.android.h:
//            f, d

final class g
    implements com.instagram.realtimeclient.RealtimeOperationManager.Listener
{

    final f a;

    g(f f1)
    {
        a = f1;
        super();
    }

    public final void onOperation(RealtimeOperation realtimeoperation)
    {
        f.c(a).a(realtimeoperation);
    }
}
