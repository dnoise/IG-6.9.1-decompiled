// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.h;

import android.content.Context;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.p.b.a;
import com.instagram.common.p.b.b;
import com.instagram.realtimeclient.RealtimeClient;
import com.instagram.realtimeclient.RealtimeEventHandler;
import com.instagram.realtimeclient.RealtimeOperationManager;
import com.instagram.realtimeclient.RealtimePatchEvent;
import com.instagram.realtimeclient.RealtimePatchRange;
import com.instagram.realtimeclient.RealtimeSubscription;
import java.util.Map;

// Referenced classes of package com.instagram.android.h:
//            g, i, d, h, 
//            a

public class f
    implements a, RealtimeEventHandler
{

    private static final String a = com/instagram/android/h/f.getSimpleName();
    private RealtimeClient b;
    private d c;
    private com.instagram.realtimeclient.RealtimeEventHandler.Status d;
    private com.instagram.android.h.a e;
    private final RealtimeOperationManager f;

    private f()
    {
        f = new RealtimeOperationManager(new com.instagram.android.h.g(this));
    }

    f(byte byte0)
    {
        this();
    }

    static RealtimeClient a(f f1)
    {
        return f1.b;
    }

    static RealtimeOperationManager b(f f1)
    {
        return f1.f;
    }

    static d c(f f1)
    {
        return f1.c;
    }

    public static f c()
    {
        return com.instagram.android.h.i.a;
    }

    public final void a()
    {
        getClass();
        b.unsubscribe();
    }

    public final void a(Context context, j j1, com.instagram.android.h.a a1)
    {
        c = new d();
        j1.a().a("AuthHelper.BROADCAST_USER_CHANGED", new com.instagram.android.h.h(this, (byte)0)).a().b();
        b = new RealtimeClient(context);
        b.setEventHandler(this);
        com.instagram.common.p.b.b.a().a(this);
        d = com.instagram.realtimeclient.RealtimeEventHandler.Status.NOT_CONNECTED;
        e = a1;
    }

    public final void a(RealtimePatchRange realtimepatchrange)
    {
        f.setPatchRange(realtimepatchrange);
    }

    public final void a(RealtimeSubscription realtimesubscription)
    {
        if (!com.instagram.common.s.b.b() || !com.instagram.l.a.a.a().i())
        {
            com.instagram.service.a.a.a();
            b b1 = com.instagram.common.p.b.b.a();
            if (com.instagram.service.a.a.d() && !b1.b())
            {
                b.setSubscription(realtimesubscription);
                b.subscribe();
                return;
            }
        }
    }

    public final void a(Map map)
    {
        f.handlePatches(map);
    }

    public final void b()
    {
        getClass();
        b.subscribe();
    }

    public final RealtimePatchRange d()
    {
        return f.getPatchRange();
    }

    public final com.instagram.realtimeclient.RealtimeEventHandler.Status e()
    {
        return d;
    }

    public void onConnectionStatusChanged(com.instagram.realtimeclient.RealtimeEventHandler.Status status)
    {
        d = status;
        if (com.instagram.common.s.b.b())
        {
            String _tmp = a;
            e.a(status);
        }
    }

    public void onFeedRefreshRequested()
    {
        d _tmp = c;
        com.instagram.android.h.d.a();
    }

    public void onPatchEvent(RealtimePatchEvent realtimepatchevent)
    {
        f.handlePatchEvent(realtimepatchevent);
    }

}
