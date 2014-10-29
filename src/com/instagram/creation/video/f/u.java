// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import com.instagram.common.c.a;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.l.g;
import com.instagram.creation.video.ui.VideoShutterButton;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class u extends a
{

    final com.instagram.creation.video.f.a a;

    private u(com.instagram.creation.video.f.a a1)
    {
        a = a1;
        super();
    }

    u(com.instagram.creation.video.f.a a1, byte byte0)
    {
        this(a1);
    }

    private void a(Boolean boolean1)
    {
        if (!boolean1.booleanValue())
        {
            com.instagram.creation.video.f.a.r(a);
        }
        if (com.instagram.creation.video.f.a.s(a))
        {
            com.instagram.creation.video.f.a.t(a);
            g.a(a.p(), com.instagram.creation.video.f.a.q(a).a(), com.instagram.creation.video.f.a.u(a), true, com.instagram.creation.video.f.a.v(a));
        }
        if (com.instagram.creation.video.f.a.w(a) != null && !com.instagram.creation.video.f.a.b(a).m())
        {
            com.instagram.creation.video.f.a.w(a).setEnabled(true);
        }
    }

    private transient Boolean c()
    {
label0:
        {
            if (!com.instagram.creation.video.f.a.b(a).d())
            {
                b b1 = com.instagram.creation.b.d.a.a().c();
                List list = com.instagram.creation.video.c.b.a(b1, a.n());
                if (list.size() <= 0)
                {
                    break label0;
                }
                (new StringBuilder()).append(list.size()).append(" clips available. Trying to recover.");
                try
                {
                    a.a(list);
                    com.instagram.creation.video.f.a.a(a, b1);
                }
                catch (Exception exception)
                {
                    com.facebook.e.a.a.a("CamcorderFragment", "Failed to recover clips :(", exception);
                    return Boolean.valueOf(false);
                }
            }
            return Boolean.valueOf(true);
        }
        return Boolean.valueOf(false);
    }

    protected final Object a(Object aobj[])
    {
        return c();
    }

    protected final volatile void a(Object obj)
    {
        a((Boolean)obj);
    }
}
