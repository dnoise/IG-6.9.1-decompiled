// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.realtimeclient.RealtimePatchRange;
import com.instagram.realtimeclient.RealtimePatchTuple;
import java.util.HashMap;
import java.util.Map;

final class d
{

    private Map a;
    private RealtimePatchRange b;

    d()
    {
    }

    static d a(l l1)
    {
        d d1 = new d();
        do
        {
            if (l1.nextToken() == r.c)
            {
                break;
            }
            String s = l1.getCurrentName();
            if ("range".equals(s))
            {
                if (l1.nextToken() == r.d)
                {
                    d1.b = d(l1);
                } else
                {
                    l1.skipChildren();
                }
            } else
            if ("items".equals(s))
            {
                l1.nextToken();
                d1.a = b(l1);
            }
        } while (true);
        return d1;
    }

    static Map a(d d1)
    {
        return d1.a;
    }

    static RealtimePatchRange b(d d1)
    {
        return d1.b;
    }

    private static Map b(l l1)
    {
        HashMap hashmap = new HashMap();
        if (l1.getCurrentToken() == r.b)
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                if (l1.nextToken() == r.d)
                {
                    hashmap.put(s, c(l1));
                } else
                {
                    l1.skipChildren();
                }
            }
        }
        return hashmap;
    }

    private static RealtimePatchTuple c(l l1)
    {
        l1.nextToken();
        Boolean boolean1 = Boolean.valueOf(l1.getBooleanValue());
        l1.nextToken();
        String s = l1.getValueAsString();
        l1.nextToken();
        return new RealtimePatchTuple(boolean1.booleanValue(), s);
    }

    private static RealtimePatchRange d(l l1)
    {
        l1.nextToken();
        String s = l1.getValueAsString();
        l1.nextToken();
        String s1 = l1.getValueAsString();
        l1.nextToken();
        return new RealtimePatchRange(s, s1);
    }
}
