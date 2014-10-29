// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.os.Handler;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.android.g.b;
import com.instagram.android.maps.e.f;
import com.instagram.api.j.a;
import com.instagram.common.y.d;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.maps.c:
//            c

final class j extends a
{

    final c a;

    j(c c1)
    {
        a = c1;
        super();
    }

    protected final void a(com.instagram.api.j.j j1)
    {
        com.instagram.android.maps.c.c.b(a).sendEmptyMessageDelayed(0, 1000L);
    }

    protected final void a(Object obj)
    {
        com.instagram.android.maps.c.c.b(a).removeMessages(0);
        Iterator iterator = com.instagram.android.maps.e.a.a().k().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b1 = (b)iterator.next();
            l l1 = ad.a().b(b1.f());
            if (l1 != null)
            {
                l1.U();
            }
        } while (true);
        com.instagram.android.maps.e.a.a().i();
        d.a("com.instagram.android.maps.manager.MapReviewed");
        com.instagram.android.maps.c.c.a(a, true);
        if (c.c(a) == f.b)
        {
            Toast.makeText(com.instagram.android.maps.c.c.d(a), az.your_map_is_now_ready, 1).show();
            return;
        } else
        {
            Toast.makeText(com.instagram.android.maps.c.c.d(a), az.changes_saved, 1).show();
            return;
        }
    }
}
