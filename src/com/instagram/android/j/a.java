// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.j;

import android.content.Context;
import android.content.res.Resources;
import com.instagram.common.y.e;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.instagram.android.j:
//            b

public final class a
{

    private static Map a;

    public static String a(Context context, String s)
    {
        if (a == null)
        {
            a(context);
        }
        String s1 = s.toLowerCase();
        b b1 = (b)a.get(s1);
        return a(context.getResources(), b1);
    }

    private static String a(Resources resources, b b1)
    {
        if (b1 != null)
        {
            String as[] = resources.getStringArray(b1.d);
            String s = resources.getString(b1.e);
            StringBuilder stringbuilder = new StringBuilder();
            int i = -1 + as.length;
            for (int j = 0; j < i; j++)
            {
                stringbuilder.append(as[j]);
                stringbuilder.append("\n\n");
            }

            stringbuilder.append(e.a(as[i], new Object[] {
                s
            }));
            return stringbuilder.toString();
        } else
        {
            return null;
        }
    }

    private static void a(Context context)
    {
        a = new HashMap();
        b ab[] = b.values();
        int i = ab.length;
        for (int j = 0; j < i; j++)
        {
            b b1 = ab[j];
            String as[] = context.getResources().getStringArray(b1.f);
            int k = as.length;
            for (int l = 0; l < k; l++)
            {
                String s = as[l];
                a.put(s, b1);
            }

        }

    }
}
