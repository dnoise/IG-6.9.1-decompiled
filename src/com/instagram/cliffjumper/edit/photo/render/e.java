// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.render;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.render:
//            c, f, RenderBridge

final class e
    implements Runnable
{

    final c a;

    e(c c1)
    {
        a = c1;
        super();
    }

    public final void run()
    {
        f f1;
        for (Iterator iterator = c.b(a).iterator(); iterator.hasNext(); c.a(a, f.b(f1)))
        {
            f1 = (f)iterator.next();
            RenderBridge.a(f.a(f1), f.b(f1));
        }

    }
}
