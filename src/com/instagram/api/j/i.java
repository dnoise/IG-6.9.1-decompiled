// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import android.content.Context;
import android.net.Uri;
import com.facebook.az;
import com.fasterxml.jackson.a.p;
import com.instagram.common.i.c;
import com.instagram.common.q.a;

// Referenced classes of package com.instagram.api.j:
//            e, h, c, m, 
//            j

final class i extends a
{

    final h n;

    i(h h1, Context context)
    {
        n = h1;
        super(context);
    }

    private j u()
    {
        m m2;
        com.instagram.api.d.a.a();
        ch.boye.httpclientandroidlib.HttpResponse httpresponse;
        String s;
        try
        {
            com.instagram.api.j.h.a(n).f();
        }
        catch (e e1)
        {
            m m1 = m.d(f().getString(az.unknown_error_occured));
            m1.a(true);
            return m1;
        }
        httpresponse = com.instagram.common.a.b.a.a().a(com.instagram.api.j.h.a(n));
        f();
        m2 = com.instagram.api.j.m.a(httpresponse);
        if (!m2.g())
        {
            break MISSING_BLOCK_LABEL_183;
        }
        s = m2.i();
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        m2.a(com.instagram.api.j.h.a(n).b(m2));
_L1:
        m2.a(true);
        return m2;
        p p1;
        p1;
        try
        {
            com.facebook.e.a.a.a("ApiRequestLoaderCallbacks", "Error processing json", p1);
            com.instagram.api.j.h.a(n).a(m2);
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("ApiRequestLoaderCallbacks", "Unhandled exception in API request", exception);
            c.a("network_request", Uri.parse(com.instagram.api.j.h.a(n).g_()).getPath(), exception);
            m2 = m.d(f().getString(az.network_error));
        }
          goto _L1
        com.instagram.api.j.h.a(n).a(m2);
          goto _L1
    }

    public final Object d()
    {
        return u();
    }
}
