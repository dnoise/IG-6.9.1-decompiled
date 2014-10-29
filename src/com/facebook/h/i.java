// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.h;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.h:
//            j

final class i
{

    static void a(JSONObject jsonobject)
    {
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); iterator.remove())
        {
            iterator.next();
        }

    }

    static void a(JSONObject jsonobject, Map map)
    {
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            try
            {
                jsonobject.putOpt((String)entry.getKey(), entry.getValue());
            }
            catch (JSONException jsonexception)
            {
                throw new IllegalArgumentException(jsonexception);
            }
        }

    }

    static boolean a(JSONObject jsonobject, Object obj)
    {
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext();)
        {
            Object obj1 = jsonobject.opt((String)iterator.next());
            if (obj1 != null && obj1.equals(obj))
            {
                return true;
            }
        }

        return false;
    }

    static Set b(JSONObject jsonobject)
    {
        HashSet hashset = new HashSet();
        String s;
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); hashset.add(new j(s, jsonobject.opt(s))))
        {
            s = (String)iterator.next();
        }

        return hashset;
    }

    static Set c(JSONObject jsonobject)
    {
        HashSet hashset = new HashSet();
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); hashset.add(iterator.next())) { }
        return hashset;
    }

    static Collection d(JSONObject jsonobject)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); arraylist.add(jsonobject.opt((String)iterator.next()))) { }
        return arraylist;
    }
}
