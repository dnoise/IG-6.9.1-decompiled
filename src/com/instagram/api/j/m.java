// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import android.content.Context;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import com.facebook.az;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.b.b;
import com.instagram.service.b.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.api.j:
//            j

public final class m extends j
{

    Object b;
    JsonNode c;
    private String d;
    private a e;
    private boolean f;
    private Collection g;

    private m(String s)
    {
        d = s;
    }

    private m(String s, byte byte0)
    {
        e = com.instagram.service.b.a.a();
        c = (JsonNode)e.readValue(s, com/fasterxml/jackson/databind/JsonNode);
    }

    private static b a(JsonNode jsonnode)
    {
        return com.instagram.api.b.b.a(jsonnode.get("key").textValue(), Float.valueOf(Float.parseFloat(jsonnode.get("time").asText())));
    }

    public static m a(HttpResponse httpresponse)
    {
        m m1;
        String s;
        String s1;
        ch.boye.httpclientandroidlib.HttpEntity httpentity = httpresponse.getEntity();
        m1 = new m(EntityUtils.toString(httpentity), (byte)0);
        EntityUtils.consume(httpentity);
        m1.a(httpresponse.getStatusLine());
        m1.a(true);
        StatusLine statusline = httpresponse.getStatusLine();
        if (m1.g() && statusline.getStatusCode() < 300)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        s = m1.o();
        s1 = com.instagram.common.h.a.a().getString(az.unknown_error_occured);
        if (s != null)
        {
            s1 = s;
        }
        try
        {
            m1.a(s1);
        }
        catch (Exception exception)
        {
            return d(com.instagram.common.h.a.a().getString(az.network_error));
        }
        return m1;
    }

    private static Collection a(Iterator iterator)
    {
        ArrayList arraylist = new ArrayList();
        for (; iterator.hasNext(); arraylist.add(a((JsonNode)iterator.next()))) { }
        return arraylist;
    }

    public static m d(String s)
    {
        if (s == null)
        {
            s = com.instagram.common.h.a.a().getString(az.network_error);
        }
        return new m(s);
    }

    private String o()
    {
        JsonNode jsonnode = l().get("message");
        if (jsonnode != null)
        {
            return jsonnode.asText();
        }
        if (b("error"))
        {
            JsonNode jsonnode1 = l().get("error");
            if (jsonnode1.has("message"))
            {
                return jsonnode1.get("message").asText();
            }
        }
        return null;
    }

    private a p()
    {
        return e;
    }

    public final Object a(String s, Class class1)
    {
        JsonNode jsonnode = l();
        return p().treeToValue(jsonnode.get(s), class1);
    }

    public final String a()
    {
        JsonNode jsonnode;
        String s;
        if (l() != null)
        {
            jsonnode = l().get("status");
        } else
        {
            jsonnode = null;
        }
        if (jsonnode != null)
        {
            s = jsonnode.asText();
        } else
        {
            JsonNode jsonnode1 = l();
            s = null;
            if (jsonnode1 != null)
            {
                return "ok";
            }
        }
        return s;
    }

    public final void a(Object obj)
    {
        b = obj;
    }

    public final void a(String s)
    {
        d = s;
    }

    public final void a(boolean flag)
    {
        f = flag;
    }

    public final String b()
    {
        if (l() != null)
        {
            JsonNode jsonnode = l().get("error_title");
            if (jsonnode != null)
            {
                return jsonnode.asText();
            }
        }
        return com.instagram.common.h.a.a().getString(az.error);
    }

    public final boolean b(String s)
    {
        JsonNode jsonnode = l();
        return jsonnode != null && jsonnode.has(s);
    }

    public final String c(String s)
    {
        if (l() != null && b(s))
        {
            return l().get(s).asText();
        } else
        {
            return null;
        }
    }

    public final boolean g()
    {
        return d == null && a() != null && a().equalsIgnoreCase("ok");
    }

    public final Object h()
    {
        return b;
    }

    public final String i()
    {
        return d;
    }

    public final boolean j()
    {
        return f;
    }

    public final Collection k()
    {
        if (l() != null)
        {
            if (g == null)
            {
                JsonNode jsonnode = l().get("_messages");
                if (jsonnode != null)
                {
                    g = a(jsonnode.elements());
                }
            }
            return g;
        } else
        {
            return null;
        }
    }

    public final JsonNode l()
    {
        return c;
    }

    public final String m()
    {
        JsonNode jsonnode = l();
        String s = null;
        if (jsonnode != null)
        {
            boolean flag = b("checkpoint_url");
            s = null;
            if (flag)
            {
                s = l().get("checkpoint_url").asText();
            }
        }
        return s;
    }

    public final boolean n()
    {
        return l() == null || !b("lock") || !l().get("lock").asBoolean();
    }
}
