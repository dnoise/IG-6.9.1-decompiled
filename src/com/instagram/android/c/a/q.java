// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.j.f;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.a.c.b;
import com.instagram.user.d.a;
import java.util.ArrayList;

public final class q extends g
{

    private boolean a;
    private boolean d;

    public q(Context context, an an, boolean flag, boolean flag1, f f)
    {
        super(context, an, 0, f);
        a = flag;
        d = flag1;
    }

    protected final void a(b b1)
    {
        if (a)
        {
            b1.a("in_signup", "true");
        }
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("groups".equals(s))
        {
            l1.nextToken();
            do
            {
                if (l1.nextToken() == r.e)
                {
                    break;
                }
                if (!"items".equals(l1.getCurrentName()))
                {
                    continue;
                }
                l1.nextToken();
                ArrayList arraylist = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    a a1 = com.instagram.user.d.a.a(l1);
                    if (a1 == null)
                    {
                        break;
                    }
                    arraylist.add(a1);
                } while (true);
                p1.a(arraylist);
                break;
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

    protected final String c_()
    {
        if (d)
        {
            return "discover/ayml/";
        } else
        {
            return "friendships/suggested/";
        }
    }
}
