// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

public final class q
{

    public String a;
    public String b;

    protected q()
    {
    }

    public static q a(l l1)
    {
        q q1;
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            q1 = null;
        } else
        {
            q1 = new q();
            l1.nextToken();
            q1.a = l1.getCurrentName();
            l1.nextToken();
            q1.b = l1.getText();
            l1.nextToken();
            if (l1.getCurrentToken() != r.c)
            {
                throw new IllegalStateException("END_OBJECT expected");
            }
        }
        return q1;
    }
}
