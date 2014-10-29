// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import com.instagram.cliffjumper.edit.common.ui.b;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            e

final class f
    implements Runnable
{

    final b a;
    final e b;

    f(e e1, b b1)
    {
        b = e1;
        a = b1;
        super();
    }

    public final void run()
    {
        b.b(a);
    }
}
