// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.a.c;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.api.j:
//            h, a, o, g

public final class n extends h
{

    private final g a;

    public n(Context context, g g, a a1)
    {
        super(context, g, a1);
        a = g;
    }

    static g a(n n1)
    {
        return n1.a;
    }

    static String a(l l1)
    {
        return b(l1);
    }

    private static String b(l l1)
    {
        if (l1.getCurrentToken() == r.b)
        {
            StringBuilder stringbuilder = new StringBuilder();
            do
            {
                if (l1.nextToken() == r.c)
                {
                    break;
                }
                String s = l1.getCurrentName();
                if (s.equals("errors"))
                {
                    l1.nextToken();
                    if (l1.getCurrentToken() != r.m)
                    {
                        while (l1.nextToken() != r.e) 
                        {
                            if (stringbuilder.length() > 0)
                            {
                                stringbuilder.append('\n');
                            }
                            stringbuilder.append(l1.getText());
                        }
                    }
                } else
                if (s != null)
                {
                    l1.skipChildren();
                }
            } while (true);
            return stringbuilder.toString();
        } else
        {
            return l1.getText();
        }
    }

    public final c a(Bundle bundle)
    {
        if (a() != null)
        {
            a().a();
        }
        return new o(this, b());
    }
}
