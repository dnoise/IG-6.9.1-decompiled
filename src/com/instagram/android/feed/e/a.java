// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.e;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.d;
import com.instagram.creation.b.d.c;
import com.instagram.feed.d.ad;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.android.feed.e:
//            b, c, e, d

public final class a
{

    private Map a;
    private e b;
    private int c;
    private com.instagram.android.feed.e.d d;
    private h e;
    private Handler f;

    public a(Context context, int i, e e1, com.instagram.android.feed.e.d d1)
    {
        f = new com.instagram.android.feed.e.b(this);
        a = new HashMap();
        c = i;
        b = e1;
        d = d1;
        e = (new j(context)).a().a("PendingMediaStore.INTENT_ACTION_PENDING_MEDIA_CHANGED", new com.instagram.android.feed.e.c(this, (byte)0)).a();
    }

    static Map a(a a1)
    {
        return a1.a;
    }

    static void a(a a1, b b1)
    {
        a1.b(b1);
    }

    private void a(b b1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("pending_media_key", b1.a());
        Message message = f.obtainMessage(0);
        message.setData(bundle);
        f.sendMessageDelayed(message, 1000L);
        com.instagram.creation.b.d.a.a().b(b1.a());
        com.instagram.creation.b.d.c.a().b();
        a.put(b1.a(), b1);
    }

    static com.instagram.android.feed.e.d b(a a1)
    {
        return a1.d;
    }

    private void b(b b1)
    {
        com.instagram.feed.d.l l = ad.a().b(b1.B());
        b.a(l, true);
        if (a.containsKey(b1.a()))
        {
            a.remove(b1.a());
        }
        d();
        if (c == com.instagram.creation.b.d.b.b)
        {
            com.instagram.creation.b.c.a.a();
        }
    }

    private void d()
    {
        List list = com.instagram.creation.b.d.a.a().a(c);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b2 = (b)iterator.next();
            if (b2.z() == d.c)
            {
                a(b2);
            }
        } while (true);
        Iterator iterator1 = a.entrySet().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            b b1 = (b)((java.util.Map.Entry)iterator1.next()).getValue();
            if (b1 != null)
            {
                list.add(b1);
            }
        } while (true);
        b.a(list);
    }

    public final void a()
    {
        e.c();
        if (a.size() > 0)
        {
            HashMap hashmap = new HashMap(a);
            a.clear();
            for (Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); b((b)((java.util.Map.Entry)iterator.next()).getValue())) { }
        }
        f.removeMessages(0);
    }

    public final void b()
    {
        e.b();
        d();
    }

    public final void c()
    {
        d();
    }
}
