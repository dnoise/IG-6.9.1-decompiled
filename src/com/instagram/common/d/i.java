// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.common.i.c;
import com.instagram.common.l.a.e;
import com.instagram.common.l.a.f;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.instagram.common.d:
//            a

public abstract class i extends BroadcastReceiver
{

    private final Map a;

    public i(Map map)
    {
        f.a(map);
        boolean flag;
        if (!map.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f.b(flag, "Must include an entry for at least one action");
        a = new HashMap(map);
    }

    private e a(Intent intent)
    {
        String s = intent.getAction();
        a a1 = null;
        if (s != null)
        {
            a1 = (a)a.get(s);
        }
        return e.b(a1);
    }

    private void b(Intent intent)
    {
        String s = c();
        com.instagram.common.i.c.b(s, (new StringBuilder("Rejected the intent for the receiver because it was not registered: ")).append(intent.getAction()).append(":").append(s).toString());
    }

    private String c()
    {
        return getClass().getName();
    }

    protected abstract boolean a();

    public final Iterable b()
    {
        return a.keySet();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (!a())
        {
            return;
        }
        e e1 = a(intent);
        if (e1.a())
        {
            ((a)e1.b()).a(intent);
            return;
        } else
        {
            b(intent);
            return;
        }
    }
}
