// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.notifications.a;

import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.common.n.a;
import java.io.StringWriter;

// Referenced classes of package com.instagram.notifications.a:
//            b

public final class c
{

    private static b a(l l1)
    {
        b b1 = new b();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            b1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(b1, s, l1);
                l1.skipChildren();
            }
        }
        return b1;
    }

    public static b a(String s)
    {
        l l1 = a.a.createParser(s);
        l1.nextToken();
        return a(l1);
    }

    public static String a(b b1)
    {
        StringWriter stringwriter = new StringWriter();
        h h1 = a.a.createGenerator(stringwriter);
        a(h1, b1);
        h1.close();
        return stringwriter.toString();
    }

    private static void a(h h1, b b1)
    {
        h1.writeStartObject();
        if (b1.i != null)
        {
            h1.writeStringField("pi", b1.i);
        }
        if (b1.e != null)
        {
            h1.writeStringField("collapse_key", b1.e);
        }
        if (b1.c != null)
        {
            h1.writeStringField("tt", b1.c);
        }
        if (b1.b != null)
        {
            h1.writeStringField("m", b1.b);
        }
        if (b1.a != null)
        {
            h1.writeStringField("t", b1.a);
        }
        if (b1.k != null)
        {
            h1.writeStringField("igo", b1.k);
        }
        if (b1.d != null)
        {
            h1.writeStringField("ig", b1.d);
        }
        if (b1.g != null)
        {
            h1.writeStringField("a", b1.g);
        }
        if (b1.j != null)
        {
            h1.writeStringField("u", b1.j);
        }
        if (b1.h != null)
        {
            h1.writeStringField("sound", b1.h);
        }
        if (b1.f != null)
        {
            h1.writeStringField("i", b1.f);
        }
        h1.writeEndObject();
    }

    private static boolean a(b b1, String s, l l1)
    {
        if ("pi".equals(s))
        {
            r r21 = l1.getCurrentToken();
            r r22 = r.h;
            String s11 = null;
            if (r21 == r22)
            {
                s11 = l1.getText();
            }
            b1.i = s11;
            return true;
        }
        if ("collapse_key".equals(s))
        {
            r r19 = l1.getCurrentToken();
            r r20 = r.m;
            String s10 = null;
            if (r19 != r20)
            {
                s10 = l1.getText();
            }
            b1.e = s10;
            return true;
        }
        if ("tt".equals(s))
        {
            r r17 = l1.getCurrentToken();
            r r18 = r.m;
            String s9 = null;
            if (r17 != r18)
            {
                s9 = l1.getText();
            }
            b1.c = s9;
            return true;
        }
        if ("m".equals(s))
        {
            r r15 = l1.getCurrentToken();
            r r16 = r.m;
            String s8 = null;
            if (r15 != r16)
            {
                s8 = l1.getText();
            }
            b1.b = s8;
            return true;
        }
        if ("t".equals(s))
        {
            r r13 = l1.getCurrentToken();
            r r14 = r.m;
            String s7 = null;
            if (r13 != r14)
            {
                s7 = l1.getText();
            }
            b1.a = s7;
            return true;
        }
        if ("igo".equals(s))
        {
            r r11 = l1.getCurrentToken();
            r r12 = r.m;
            String s6 = null;
            if (r11 != r12)
            {
                s6 = l1.getText();
            }
            b1.k = s6;
            return true;
        }
        if ("ig".equals(s))
        {
            r r9 = l1.getCurrentToken();
            r r10 = r.m;
            String s5 = null;
            if (r9 != r10)
            {
                s5 = l1.getText();
            }
            b1.d = s5;
            return true;
        }
        if ("a".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s4 = null;
            if (r7 != r8)
            {
                s4 = l1.getText();
            }
            b1.g = s4;
            return true;
        }
        if ("u".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s3 = null;
            if (r5 != r6)
            {
                s3 = l1.getText();
            }
            b1.j = s3;
            return true;
        }
        if ("sound".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            b1.h = s2;
            return true;
        }
        if ("i".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            b1.f = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
