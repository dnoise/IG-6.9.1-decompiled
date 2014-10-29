// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.params;


// Referenced classes of package ch.boye.httpclientandroidlib.params:
//            AbstractHttpParams, HttpParams

public final class DefaultedHttpParams extends AbstractHttpParams
{

    private final HttpParams defaults;
    private final HttpParams local;

    public DefaultedHttpParams(HttpParams httpparams, HttpParams httpparams1)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            local = httpparams;
            defaults = httpparams1;
            return;
        }
    }

    public final HttpParams copy()
    {
        return new DefaultedHttpParams(local.copy(), defaults);
    }

    public final HttpParams getDefaults()
    {
        return defaults;
    }

    public final Object getParameter(String s)
    {
        Object obj = local.getParameter(s);
        if (obj == null && defaults != null)
        {
            obj = defaults.getParameter(s);
        }
        return obj;
    }

    public final boolean removeParameter(String s)
    {
        return local.removeParameter(s);
    }

    public final HttpParams setParameter(String s, Object obj)
    {
        return local.setParameter(s, obj);
    }
}
