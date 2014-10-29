// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.k.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.common.a.a.b;
import java.util.ArrayList;
import java.util.List;

public class d extends b
{

    List f;
    String g;
    List h;
    String i;
    String j;
    String k;
    boolean l;
    boolean m;
    String n;
    String o;
    String p;
    String q;
    String r;

    public d()
    {
    }

    private String b()
    {
        return k;
    }

    final void a(l l1)
    {
        if (l1.getCurrentToken() == r.b)
        {
            ArrayList arraylist = new ArrayList();
            do
            {
                if (l1.nextToken() == r.c)
                {
                    break;
                }
                if (l1.getCurrentName().equals("errors"))
                {
                    l1.nextToken();
                    if (l1.getCurrentToken() == r.d)
                    {
                        while (l1.nextToken() != r.e) 
                        {
                            arraylist.add(l1.getText());
                        }
                    }
                } else
                {
                    l1.skipChildren();
                }
            } while (true);
            h = arraylist;
            return;
        }
        if (l1.getCurrentToken() == r.d)
        {
            l1.skipChildren();
            return;
        } else
        {
            g = l1.getText();
            return;
        }
    }

    public boolean f_()
    {
        return "ok".equals(b());
    }

    public final List g()
    {
        return f;
    }

    public final String h()
    {
        return j;
    }

    public final boolean i()
    {
        return l;
    }

    public final String j()
    {
        return i;
    }

    public final String k()
    {
        return g;
    }

    public final List l()
    {
        return h;
    }

    public final boolean m()
    {
        return m;
    }

    public final String n()
    {
        return n;
    }

    public final String o()
    {
        return o;
    }

    public final String p()
    {
        return p;
    }

    public final String q()
    {
        return q;
    }

    public final String r()
    {
        return r;
    }
}
