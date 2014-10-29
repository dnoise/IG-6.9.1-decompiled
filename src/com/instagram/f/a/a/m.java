// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.y.e.a;
import java.util.ArrayList;
import java.util.List;

public final class m extends g
{

    public m(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("pending_users".equals(s))
        {
            ArrayList arraylist = new ArrayList();
            l1.nextToken();
            for (; l1.nextToken() != r.e; arraylist.add(com.instagram.f.c.a.a(l1))) { }
            p1.a(arraylist);
            return true;
        } else
        {
            return false;
        }
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    protected final String c_()
    {
        return "direct_share/pending/";
    }

    public final boolean e_()
    {
        return true;
    }
}
