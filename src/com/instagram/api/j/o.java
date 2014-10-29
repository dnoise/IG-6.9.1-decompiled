// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import android.content.Context;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import com.facebook.az;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.b.b;
import com.instagram.common.i.c;
import com.instagram.common.q.a;
import java.io.InputStream;

// Referenced classes of package com.instagram.api.j:
//            e, p, n, g, 
//            j

final class o extends a
{

    final n n;

    o(n n1, Context context)
    {
        n = n1;
        super(context);
    }

    private void a(j j1)
    {
        super.a(j1);
    }

    private p u()
    {
        p p1;
        com.instagram.api.d.a.a();
        p1 = new p(f());
        com.instagram.api.j.n.a(n).f();
_L6:
        com.instagram.common.a.b.a a1 = com.instagram.common.a.b.a.a();
        HttpResponse httpresponse = null;
        InputStream inputstream;
        l l1;
        httpresponse = a1.a(com.instagram.api.j.n.a(n));
        inputstream = httpresponse.getEntity().getContent();
        l1 = com.instagram.common.n.a.a.createParser(inputstream);
_L5:
        if (l1.nextToken() == r.c) goto _L2; else goto _L1
_L1:
        String s = l1.getCurrentName();
        if (!"status".equals(s)) goto _L4; else goto _L3
_L3:
        l1.nextToken();
        p1.e(l1.getText());
          goto _L5
        Exception exception1;
        exception1;
        com.facebook.e.a.a.a("StreamingApiRequestLoaderCallbacks", "Caught exception performing/parsing streaming request", exception1);
        p1 = p.d(f().getString(az.network_error));
_L10:
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        p1.a(httpresponse.getStatusLine());
        if (!p1.g() || p1.i() != null)
        {
            break MISSING_BLOCK_LABEL_446;
        }
        n;
_L11:
        p1.a(true);
        return p1;
        com.instagram.api.j.e e1;
        e1;
        Exception exception;
        p.d(f().getString(az.unknown_error_occured));
          goto _L6
_L4:
label0:
        {
            if (!"message".equals(s))
            {
                break label0;
            }
            n;
            p1.a(com.instagram.api.j.n.a(l1));
        }
          goto _L5
label1:
        {
            if (!"_messages".equals(s))
            {
                break label1;
            }
            l1.nextToken();
            p1.a(b.a(l1));
        }
          goto _L5
label2:
        {
            if (!"checkpoint_url".equals(s))
            {
                break label2;
            }
            l1.nextToken();
            p1.f(l1.getText());
        }
          goto _L5
        if (!"lock".equals(s)) goto _L8; else goto _L7
_L7:
        l1.nextToken();
        boolean flag;
        if (!l1.getBooleanValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        p1.b(flag);
          goto _L5
_L8:
        if (com.instagram.api.j.n.a(n).a(s, l1, p1) || s == null) goto _L5; else goto _L9
_L9:
label3:
        {
            r r1 = l1.nextToken();
            if (r1 != r.d && r1 != r.b)
            {
                break label3;
            }
            l1.skipChildren();
        }
          goto _L5
        p1.a(s, l1.getText());
          goto _L5
_L2:
        l1.close();
        inputstream.close();
        com.instagram.api.j.n.a(n).m();
          goto _L10
        try
        {
            com.instagram.api.j.n.a(n).n();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("StreamingApiRequestLoaderCallbacks", "Caught unhandled exception in streaming request", exception);
            c.b("StreamingApiRequestLoaderCallbacks", "Unexpected networking exception");
            p1 = p.d(f().getString(az.error));
        }
          goto _L11
    }

    public final volatile void a(Object obj)
    {
        a((j)obj);
    }

    public final Object d()
    {
        return u();
    }

    protected final void l()
    {
        super.l();
    }
}
