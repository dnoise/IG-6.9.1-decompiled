// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.c;

import com.facebook.a.a;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

// Referenced classes of package com.facebook.a.c:
//            d, j, a

public final class e
{

    private static String a(Map map)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Object obj;
        Object obj1;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); stringbuilder.append(URLEncoder.encode(obj.toString(), "UTF-8")).append('=').append(URLEncoder.encode(obj1.toString(), "UTF-8")))
        {
            obj = iterator.next();
            if (stringbuilder.length() != 0)
            {
                stringbuilder.append('&');
            }
            obj1 = map.get(obj);
            if (obj1 == null)
            {
                obj1 = "";
            }
        }

        return stringbuilder.toString();
    }

    public static void a(Map map, URL url, String s)
    {
        String s1;
        if (s == "application/json")
        {
            s1 = b(map);
        } else
        {
            s1 = a(map);
        }
        com.facebook.a.a.a();
        (new d(new j())).a(url, s1, new com.facebook.a.c.a(), s);
    }

    private static String b(Map map)
    {
        return (new JSONObject(map)).toString();
    }
}
