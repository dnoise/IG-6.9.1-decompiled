// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import java.util.HashMap;
import java.util.Map;

public class EventRouter
{

    public EventRouter()
    {
    }

    public static String fill(String s, Map map)
    {
        String as[] = s.split("/");
        StringBuilder stringbuilder = new StringBuilder();
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String s2 = as[j];
            if (s2.startsWith(":"))
            {
                stringbuilder.append((String)map.get(s2.substring(1)));
            } else
            {
                stringbuilder.append(s2);
            }
            stringbuilder.append("/");
            j++;
        }
        String s1 = stringbuilder.toString();
        return s1.substring(0, -1 + s1.length());
    }

    public static Map match(String s, String s1)
    {
        String as[];
        String as1[];
        HashMap hashmap;
        int i;
        as = s.split("/");
        as1 = s1.split("/");
        if (as.length > as1.length || as.length < as1.length && !as[-1 + as.length].equals("*"))
        {
            return null;
        }
        hashmap = new HashMap();
        i = 0;
_L2:
        if (i >= as.length)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        if (!as[i].equals("*"))
        {
            if (!as[i].startsWith(":"))
            {
                break; /* Loop/switch isn't completed */
            }
            hashmap.put(as[i].substring(1), as1[i]);
        }
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (as[i].equals(as1[i])) goto _L4; else goto _L3
_L3:
        return null;
        return hashmap;
    }
}
