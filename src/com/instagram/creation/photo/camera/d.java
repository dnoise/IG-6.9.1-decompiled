// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import com.instagram.creation.photo.c.g;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class d
    implements android.os.MessageQueue.IdleHandler
{

    final c a;

    d(c c)
    {
        a = c;
        super();
    }

    public final boolean queueIdle()
    {
        g.b();
        return false;
    }
}
