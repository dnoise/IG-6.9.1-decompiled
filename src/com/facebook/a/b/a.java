// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.b;

import android.net.Uri;
import com.facebook.a.a.b;
import com.facebook.a.c.e;
import com.facebook.a.d;
import com.facebook.a.r;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.facebook.a.b:
//            b, c

public final class a
    implements com.facebook.a.b.b
{

    private Uri a;

    public a(String s)
    {
        a = null;
        a = Uri.parse(s);
    }

    private static Map a(Map map)
    {
        HashMap hashmap = new HashMap(map.size());
        r ar[] = b;
        int i = ar.length;
        for (int j = 0; j < i; j++)
        {
            r r1 = ar[j];
            hashmap.put(r1.toString(), map.get(r1));
        }

        return hashmap;
    }

    public final void a(d d)
    {
        try
        {
            Map map = a(((Map) (d)));
            URL url = new URL(a.toString());
            String _tmp = com.facebook.a.a.a;
            (new StringBuilder("Connect to ")).append(url.toString());
            e.a(map, url, com.facebook.a.a.a().c());
            return;
        }
        catch (Exception exception)
        {
            throw new c("Error while sending report to Http Post Form.", exception);
        }
    }
}
