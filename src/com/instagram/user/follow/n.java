// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.user.c.a;
import com.instagram.user.c.c;
import com.instagram.user.c.f;
import com.instagram.user.c.h;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.instagram.user.follow:
//            o, k

public final class n
{

    private static n a;
    private Map b;

    private n()
    {
        b = new HashMap();
    }

    public static n a()
    {
        if (a == null)
        {
            b();
        }
        return a;
    }

    public static void a(a a1)
    {
        c c1 = a1.t();
        switch (com.instagram.user.follow.o.a[c1.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            break;
        }
        c c2;
        if (a1.s() == f.c || a1.s() == f.a)
        {
            c2 = c.e;
        } else
        {
            c2 = c.d;
        }
        a(a1, c2, 0);
    }

    public static void a(a a1, c c1, int i)
    {
        a1.b(a1.t());
        a1.a(c1);
        if (a1.l() == null || a1.u() == null || a1.u() == c.b || c1 == a1.u()) goto _L2; else goto _L1
_L1:
        if (!c1.equals(c.d)) goto _L4; else goto _L3
_L3:
        a1.m();
        a1.G();
_L2:
        if (c1 != c.a)
        {
            a1.H();
        }
        return;
_L4:
        if (c1.equals(c.c) && i != h.c)
        {
            a1.n();
            a1.G();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private static void b()
    {
        com/instagram/user/follow/n;
        JVM INSTR monitorenter ;
        n n1 = a;
        if (n1 == null) goto _L2; else goto _L1
_L1:
        com/instagram/user/follow/n;
        JVM INSTR monitorexit ;
        return;
_L2:
        a = new n();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(a a1)
    {
        if (a1.u() != null)
        {
            a(a1, a1.u(), 0);
        }
        a1.b(null);
    }

    public final void a(a a1, Context context, an an)
    {
        c c1 = a1.t();
        com.instagram.user.follow.o.a[c1.ordinal()];
        JVM INSTR tableswitch 1 3: default 40
    //                   1 115
    //                   2 41
    //                   3 156;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        int i;
        c c2;
        i = h.b;
        c2 = c.c;
_L6:
        a(a1, c2, i);
        synchronized (b)
        {
            k k1 = new k(context, an, i, a1);
            b.put(a1.g(), k1);
            k1.g();
        }
        return;
_L2:
        i = h.a;
        if (a1.s() == f.c || a1.s() == f.a)
        {
            c2 = c.e;
        } else
        {
            c2 = c.d;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        i = h.c;
        c2 = c.c;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void a(a a1, l l1, b b1)
    {
        boolean flag = false;
        a1.a(f.b);
        boolean flag1 = false;
        do
        {
            if (l1.nextToken() == r.c)
            {
                break;
            }
            String s = l1.getCurrentName();
            if ("following".equals(s))
            {
                l1.nextToken();
                flag1 = l1.getValueAsBoolean();
            } else
            if ("outgoing_request".equals(s))
            {
                l1.nextToken();
                flag = l1.getValueAsBoolean();
            } else
            if ("incoming_request".equals(s))
            {
                l1.nextToken();
                a1.a(Boolean.valueOf(l1.getValueAsBoolean()));
            } else
            if ("is_private".equals(s))
            {
                l1.nextToken();
                if (l1.getValueAsBoolean())
                {
                    a1.a(f.c);
                }
            } else
            if ("blocking".equals(s))
            {
                l1.nextToken();
                a1.c(l1.getValueAsBoolean());
            }
        } while (true);
        a(a1, flag1, flag, b1);
    }

    public final void a(a a1, JsonNode jsonnode, b b1)
    {
        boolean flag = true;
        boolean flag1 = jsonnode.get("following").asBoolean();
        boolean flag2;
        if (jsonnode.get("outgoing_request") != null && jsonnode.get("outgoing_request").asBoolean())
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (jsonnode.get("incoming_request") == null || !jsonnode.get("incoming_request").asBoolean())
        {
            flag = false;
        }
        a1.a(Boolean.valueOf(flag));
        if (jsonnode.get("is_private").asBoolean())
        {
            a1.a(f.c);
        } else
        {
            a1.a(f.b);
        }
        if (jsonnode.get("blocking") != null)
        {
            a1.c(jsonnode.get("blocking").asBoolean());
        }
        if (jsonnode.get("direct_share_blocking") != null)
        {
            a1.d(jsonnode.get("direct_share_blocking").asBoolean());
        }
        a(a1, flag1, flag2, b1);
    }

    public final void a(a a1, boolean flag, boolean flag1, b b1)
    {
        c c1;
        Map map;
        k k1;
        if (flag1)
        {
            c1 = c.e;
        } else
        if (flag)
        {
            c1 = c.d;
        } else
        {
            c1 = c.c;
        }
        map = b;
        map;
        JVM INSTR monitorenter ;
        k1 = (k)b.get(a1.g());
        if (k1 != null && k1 != b1)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        b.remove(a1.g());
        a(a1, c1, 0);
_L1:
        map;
        JVM INSTR monitorexit ;
        return;
        a1.b(c1);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }
}
