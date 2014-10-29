// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.e;

import android.content.Context;
import com.instagram.creation.video.g.a.e;
import com.instagram.creation.video.g.b.g;
import com.instagram.creation.video.g.c.d;
import com.instagram.creation.video.g.f.c;
import com.instagram.creation.video.g.f.f;
import com.instagram.creation.video.gl.j;
import com.instagram.creation.video.j.b;
import java.io.File;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.instagram.creation.video.g.e:
//            b

public class a
    implements e, b
{

    private static final Class a = com/instagram/creation/video/g/e/a;
    private final com.instagram.creation.b.a.b b;
    private c c;
    private final CountDownLatch d = new CountDownLatch(1);

    public a(com.instagram.creation.b.a.b b1)
    {
        b = b1;
    }

    public final void G_()
    {
        try
        {
            d.await();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            throw new RuntimeException(interruptedexception);
        }
    }

    public final int a(Context context, com.instagram.creation.video.e.c c1)
    {
        String s;
        com.instagram.creation.video.g.f.e e1;
        g g1 = new g();
        c = new c(context, new com.instagram.creation.video.g.c.a(context), new d(g1, com.instagram.common.i.c.a()), new com.instagram.creation.video.g.d.c(), new com.instagram.creation.video.g.f.g(g1), com.instagram.common.x.a.a(), com.instagram.common.i.c.a());
        com.instagram.creation.b.a.a a1 = b.K();
        s = com.instagram.creation.video.c.b.a(context, b, "mp4");
        e1 = com.instagram.creation.video.g.f.e.a().a(new File(a1.b())).a(c1).b(new File(s)).a(a1.f()).b(a1.g()).a(b).a(this).i();
        c.a(e1);
        if (!c.b()) goto _L2; else goto _L1
_L1:
        int k;
        boolean flag = (new File(s)).delete();
        a;
        Boolean.valueOf(flag);
        k = com.instagram.creation.video.g.e.b.b;
_L4:
        d.countDown();
        return k;
_L2:
        b.f(s);
        k = b.a;
        if (true) goto _L4; else goto _L3
_L3:
        com.instagram.creation.video.g.f.a a2;
        a2;
        int j;
        a;
        j = com.instagram.creation.video.g.e.b.d;
        d.countDown();
        return j;
        com.instagram.creation.video.g.f.b b1;
        b1;
        int i;
        a;
        i = com.instagram.creation.video.g.e.b.c;
        d.countDown();
        return i;
        Exception exception;
        exception;
        d.countDown();
        throw exception;
    }

    public final void a()
    {
        b.c(45);
    }

    public final void a(double d1)
    {
        int i = (int)(45D * d1);
        b.c(i);
    }

    public final boolean b()
    {
        if (c == null)
        {
            return false;
        } else
        {
            return c.b();
        }
    }

    public final void c()
    {
        if (c != null)
        {
            c.a();
        }
    }

    public final j l()
    {
        throw new UnsupportedOperationException();
    }

}
