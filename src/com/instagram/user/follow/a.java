// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.j.f;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.a.c.b;
import com.instagram.user.c.i;
import com.instagram.user.c.j;
import java.util.Iterator;

// Referenced classes of package com.instagram.user.follow:
//            n

public class a extends g
{

    private Iterable a;

    public a(Context context, an an, int k, f f)
    {
        super(context, an, k, f);
    }

    protected final void a(b b1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); stringbuilder.append(","))
        {
            stringbuilder.append(((com.instagram.user.c.a)iterator.next()).g());
        }

        if (stringbuilder.length() > 0)
        {
            stringbuilder.deleteCharAt(-1 + stringbuilder.length());
        }
        b1.a("user_ids", stringbuilder.toString());
    }

    public final void a(Iterable iterable)
    {
        a = iterable;
        g();
    }

    public final boolean a(String s, l l1, p p)
    {
        if ("friendship_statuses".equals(s))
        {
            l1.nextToken();
            do
            {
                if (l1.nextToken() == r.c)
                {
                    break;
                }
                String s1 = l1.getCurrentName();
                if (s1 != null)
                {
                    l1.nextToken();
                    com.instagram.user.c.a a1 = j.a().a(s1);
                    n.a().a(a1, l1, this);
                }
            } while (true);
            return true;
        } else
        {
            return false;
        }
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    public final boolean c(com.instagram.api.j.j j1)
    {
        return false;
    }

    protected String c_()
    {
        return "friendships/show_many/";
    }
}
