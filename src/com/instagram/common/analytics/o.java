// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.instagram.common.p.b.a;
import com.instagram.common.p.b.b;

// Referenced classes of package com.instagram.common.analytics:
//            g, a, b, d, 
//            p

public final class o
    implements g, a
{

    private final Context a;
    private final d b = com.instagram.common.analytics.a.a();
    private NetworkInfo c;
    private BroadcastReceiver d;
    private boolean e;
    private IntentFilter f;

    public o(Context context)
    {
        a = context;
        com.instagram.common.p.b.b.a().a(this);
    }

    private static NetworkInfo a(Context context)
    {
        return ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    private com.instagram.common.analytics.b a(NetworkInfo networkinfo)
    {
        com.instagram.common.analytics.b b1 = new com.instagram.common.analytics.b("connection_change", this);
        if (networkinfo != null)
        {
            b1.a("state", networkinfo.getState().toString()).a("connection", networkinfo.getTypeName()).a("connection_subtype", networkinfo.getSubtypeName());
        }
        if (c != null)
        {
            b1.a("previous_connection", c.getTypeName());
            b1.a("previous_connection_subtype", c.getSubtypeName());
        }
        c = networkinfo;
        return b1;
    }

    static void a(o o1, Context context)
    {
        o1.b(context);
    }

    private static boolean a(NetworkInfo networkinfo, NetworkInfo networkinfo1)
    {
        if (networkinfo != null) goto _L2; else goto _L1
_L1:
        if (networkinfo1 != null) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (networkinfo1 == null)
        {
            return false;
        }
        if (networkinfo.getType() != networkinfo1.getType() || networkinfo.getSubtype() != networkinfo1.getSubtype())
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    private void b(Context context)
    {
        NetworkInfo networkinfo = a(context);
        if (networkinfo != null && networkinfo.getState() == android.net.NetworkInfo.State.DISCONNECTED)
        {
            e = true;
        }
        if (!a(c, networkinfo) || e)
        {
            com.instagram.common.analytics.b b1 = a(networkinfo);
            b.a(b1);
            e = false;
        }
    }

    private void c()
    {
        if (d == null)
        {
            d = new p(this);
        }
    }

    private void d()
    {
        if (f == null)
        {
            f = new IntentFilter();
            f.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
    }

    public final void a()
    {
        if (d != null)
        {
            a.unregisterReceiver(d);
        }
    }

    public final void b()
    {
        b(a);
        c();
        d();
        a.registerReceiver(d, f);
    }

    public final String j_()
    {
        return "device";
    }
}
