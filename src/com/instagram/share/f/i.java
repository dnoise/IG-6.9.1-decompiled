// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.f;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.NameValuePair;

// Referenced classes of package com.instagram.share.f:
//            j, k

public final class i
{

    static Map a(List list)
    {
        return b(list);
    }

    public static void a(Context context, String s, String s1, k k)
    {
        (new j(context, s, s1, k)).execute(new Void[0]);
    }

    private static Map b(List list)
    {
        HashMap hashmap = new HashMap();
        NameValuePair namevaluepair;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); hashmap.put(namevaluepair.getName(), namevaluepair.getValue()))
        {
            namevaluepair = (NameValuePair)iterator.next();
        }

        return hashmap;
    }
}
