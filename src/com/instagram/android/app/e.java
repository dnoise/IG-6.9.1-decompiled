// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.app;

import com.instagram.strings.StringBridge;

// Referenced classes of package com.instagram.android.app:
//            InstagramApplicationForMainProcess

final class e
    implements Runnable
{

    final InstagramApplicationForMainProcess a;

    e(InstagramApplicationForMainProcess instagramapplicationformainprocess)
    {
        a = instagramapplicationformainprocess;
        super();
    }

    public final void run()
    {
        if (!StringBridge.a())
        {
            InstagramApplicationForMainProcess.access$400(a);
        }
    }
}
