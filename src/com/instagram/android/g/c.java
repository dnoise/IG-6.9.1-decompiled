// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.g;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.android.g:
//            d

public final class c
{

    public static String a = "com.instagram.android.model.Hashtag.BROADCAST_HASHTAG_UPDATED";
    private String b;
    private int c;

    private c()
    {
    }

    public c(String s)
    {
        b = s;
    }

    static int a(c c1, int i)
    {
        c1.c = i;
        return i;
    }

    public static c a(l l1)
    {
        c c1 = null;
        do
        {
            if (l1.nextToken() == r.c)
            {
                break;
            }
            String s = l1.getCurrentName();
            if (s != null && c1 == null)
            {
                c1 = new c();
            }
            if ("media_count".equals(s))
            {
                l1.nextToken();
                c1.c = l1.getIntValue();
            } else
            if ("name".equals(s))
            {
                l1.nextToken();
                c1.b = l1.getText();
            } else
            if (s != null)
            {
                l1.skipChildren();
            }
        } while (true);
        return c1;
    }

    static String a(c c1)
    {
        return c1.b;
    }

    static String a(c c1, String s)
    {
        c1.b = s;
        return s;
    }

    public static String a(String s)
    {
        return (new StringBuilder()).append(a).append("|").append(s).toString();
    }

    public final String a()
    {
        return b;
    }

    public final void a(Context context, an an)
    {
        (new d(this, context, an)).g();
    }

    public final int b()
    {
        return c;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            c c1 = (c)obj;
            if (b == null ? c1.b != null : !b.equals(c1.b))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        if (b != null)
        {
            return b.hashCode();
        } else
        {
            return 0;
        }
    }

}
