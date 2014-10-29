// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.tumblr;

import android.text.TextUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.instagram.share.tumblr:
//            f, g

public final class e
{

    private final g a;

    private e(g g1)
    {
        a = g1;
    }

    e(g g1, byte byte0)
    {
        this(g1);
    }

    private static e a(String s)
    {
        int i;
        HashMap hashmap;
        String as[];
        f f1;
        i = 0;
        if (s == null)
        {
            return null;
        }
        hashmap = new HashMap(2);
        as = TextUtils.split(s, "&");
        f1 = new f();
        int j = as.length;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        String as1[] = as[i].split("=", 2);
        hashmap.put(as1[0], as1[1]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        try
        {
            f1.a((String)hashmap.get("oauth_token")).b((String)hashmap.get("oauth_token_secret"));
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            f1.c(s);
        }
        return f1.a();
    }

    static e a(HttpResponse httpresponse)
    {
        String s1 = EntityUtils.toString(httpresponse.getEntity());
        String s = s1;
_L2:
        return a(s);
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        s = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final String a()
    {
        return g.a(a);
    }

    public final String b()
    {
        return g.b(a);
    }

    public final boolean c()
    {
        return g.c(a) == null;
    }
}
