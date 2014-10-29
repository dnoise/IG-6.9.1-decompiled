// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import com.instagram.creation.photo.c.f;

// Referenced classes of package com.instagram.creation.photo.crop:
//            s

final class t
    implements Runnable
{

    final f a;
    final boolean b;
    final s c;

    t(s s1, f f, boolean flag)
    {
        c = s1;
        a = f;
        b = flag;
        super();
    }

    public final void run()
    {
        c.a(a, b);
    }
}
