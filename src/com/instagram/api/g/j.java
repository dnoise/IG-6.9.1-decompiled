// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;

import android.content.Context;
import android.net.ConnectivityManager;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpClientConnection;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpMessage;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.impl.client.RequestWrapper;
import ch.boye.httpclientandroidlib.impl.conn.AbstractClientConnAdapter;
import ch.boye.httpclientandroidlib.params.HttpParams;
import com.instagram.common.y.b.a;
import java.net.InetAddress;
import java.util.WeakHashMap;

// Referenced classes of package com.instagram.api.g:
//            n, i, b, k

public class j
{

    public static j a;
    private static final Class b = com/instagram/api/g/j;
    private final a c;
    private final ConnectivityManager d;
    private final n e;
    private final WeakHashMap f = new WeakHashMap();

    private j(a a1, ConnectivityManager connectivitymanager, n n1)
    {
        c = a1;
        d = connectivitymanager;
        e = n1;
    }

    public static j a(Context context)
    {
        com/instagram/api/g/j;
        JVM INSTR monitorenter ;
        j j1;
        if (a == null)
        {
            a = new j(com.instagram.common.y.b.a.a(), (ConnectivityManager)context.getSystemService("connectivity"), com.instagram.api.g.n.a());
        }
        j1 = a;
        com/instagram/api/g/j;
        JVM INSTR monitorexit ;
        return j1;
        Exception exception;
        exception;
        throw exception;
    }

    static a a(j j1)
    {
        return j1.c;
    }

    private static void a(HttpMessage httpmessage, i l)
    {
        if (httpmessage.containsHeader("X-Instagram-Trace-Token"))
        {
            l.a(httpmessage.getFirstHeader("X-Instagram-Trace-Token").getValue());
        }
        if (httpmessage.containsHeader("X-Instagram-Trace-Enabled"))
        {
            l.a(Boolean.valueOf(httpmessage.getFirstHeader("X-Instagram-Trace-Enabled").getValue()).booleanValue());
        }
        com.instagram.api.g.a a1 = l.k();
        if (a1 != null)
        {
            com.instagram.api.g.b.a(httpmessage, a1);
        }
    }

    private static void a(HttpRequest httprequest, i l)
    {
        HttpParams httpparams = httprequest.getParams();
        if (httpparams.getParameter("InstagramTraceToken") != null)
        {
            l.a((String)httpparams.getParameter("InstagramTraceToken"));
        }
        if (httpparams.getParameter("InstagramTraceEnabled") != null)
        {
            l.a(httpparams.getBooleanParameter("InstagramTraceEnabled", false));
        }
        com.instagram.api.g.b.a(httpparams, l);
    }

    public static void a(HttpGet httpget, String s)
    {
        HttpParams httpparams = httpget.getParams();
        httpparams.setParameter("InstagramTraceEnabled", Boolean.valueOf(true));
        httpparams.setParameter("InstagramTraceToken", s);
    }

    static n b(j j1)
    {
        return j1.e;
    }

    private static String b(HttpRequest httprequest)
    {
        if (httprequest == null || httprequest.getRequestLine() == null)
        {
            return null;
        } else
        {
            return httprequest.getRequestLine().getUri();
        }
    }

    public final i a(HttpRequest httprequest, HttpResponse httpresponse, HttpClientConnection httpclientconnection)
    {
        this;
        JVM INSTR monitorenter ;
        i l = (i)f.get(httprequest);
        if (l == null) goto _L2; else goto _L1
_L1:
        HttpEntity httpentity;
        f.remove(httprequest);
        l.c(httprequest.getRequestLine().getMethod());
        l.b(((AbstractClientConnAdapter)httpclientconnection).getRemoteAddress().getHostAddress());
        l.a(httpresponse.getStatusLine().getStatusCode());
        a(((HttpMessage) (httpresponse)), l);
        httpentity = httpresponse.getEntity();
        boolean flag;
        flag = false;
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        boolean flag1;
        l.g(httpentity.getContentLength());
        flag1 = httpentity.isStreaming();
        flag = false;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        flag = true;
        httpresponse.setEntity(new k(this, httpentity, l));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        c;
        l.e(com.instagram.common.y.b.a.c());
        e.a(l);
_L4:
        this;
        JVM INSTR monitorexit ;
        return l;
_L2:
        b;
        b(httprequest);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final i a(HttpRequest httprequest, Exception exception)
    {
        this;
        JVM INSTR monitorenter ;
        if (httprequest != null) goto _L2; else goto _L1
_L1:
        b;
        i l = null;
_L3:
        this;
        JVM INSTR monitorexit ;
        return l;
_L2:
        l = (i)f.get(httprequest);
        if (l == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        e.a(l, exception);
          goto _L3
        Exception exception1;
        exception1;
        throw exception1;
        b;
        b(httprequest);
          goto _L3
    }

    public final void a(HttpRequest httprequest)
    {
        this;
        JVM INSTR monitorenter ;
        i l = (i)f.get(httprequest);
        if (l != null) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        s = httprequest.getRequestLine().getUri();
        if (!(httprequest instanceof RequestWrapper))
        {
            break MISSING_BLOCK_LABEL_158;
        }
        s1 = ((RequestWrapper)httprequest).getOriginal().getRequestLine().getUri();
_L6:
        l = new i(s1, com.instagram.common.y.g.a.a(d.getActiveNetworkInfo()));
        f.put(httprequest, l);
_L2:
        c;
        l.a(com.instagram.common.y.b.a.d());
        c;
        l.b(com.instagram.common.y.b.a.c());
        a(httprequest, l);
        if (!(httprequest instanceof HttpEntityEnclosingRequest)) goto _L4; else goto _L3
_L3:
        HttpEntity httpentity = ((HttpEntityEnclosingRequest)httprequest).getEntity();
        if (httpentity == null) goto _L4; else goto _L5
_L5:
        l.f(httpentity.getContentLength());
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
        s1 = s;
          goto _L6
    }

    public final void a(HttpRequest httprequest, int l)
    {
        this;
        JVM INSTR monitorenter ;
        i i1 = (i)f.get(httprequest);
        if (i1 == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        if (1 != l) goto _L2; else goto _L1
_L1:
        c;
        i1.c(com.instagram.common.y.b.a.c());
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (2 != l) goto _L4; else goto _L3
_L3:
        c;
        i1.d(com.instagram.common.y.b.a.c());
          goto _L4
        Exception exception;
        exception;
        throw exception;
        b;
        b(httprequest);
          goto _L4
    }

}
