// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.graphics.Rect;
import com.instagram.creation.video.gl.c;

// Referenced classes of package com.instagram.creation.video.ui:
//            h, j, f, k

final class i
    implements h
{

    final f a;
    private int b;
    private k c;
    private j d;

    public i(f f1)
    {
        a = f1;
        super();
        d = new j();
    }

    private void c()
    {
        b = f.a(a);
        if (c != null)
        {
            d.a = c.a();
            d.b = c.b();
            int l = d.a;
            int i1 = d.b;
            d.a = f.a(b, l, i1);
            d.b = f.a(b, i1, l);
        }
    }

    public final void a()
    {
        c();
    }

    public final void a(c c1, Rect rect)
    {
        if (c == null)
        {
            f _tmp = a;
            f.a(c1, rect);
            return;
        }
        int l = a.b();
        int i1 = a.c();
        if (rect.left >= l || rect.right <= 0 || rect.top >= i1 || rect.bottom <= 0)
        {
            c.f();
            return;
        }
        int j1 = rect.centerX();
        int k1 = rect.centerY();
        c1.a(3);
        c1.a(j1, k1);
        if (b != 0)
        {
            c1.b(b);
        }
        int l1 = f.a(b, rect.width(), rect.height());
        int i2 = f.a(b, rect.height(), rect.width());
        c.b(c1, -l1 / 2, -i2 / 2, l1, i2);
        Math.min(l1, i2);
        c1.c();
    }

    public final void a(k k1)
    {
        c = k1;
    }

    public final j b()
    {
        return d;
    }
}
