// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.j;

import com.instagram.l.b.a;
import com.instagram.user.b.b;
import com.instagram.user.c.i;
import com.instagram.user.c.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class f
{

    public static List a()
    {
        String s;
        i k;
        Object obj;
        s = com.instagram.l.b.a.a().d();
        k = j.a();
        obj = null;
        if (s == null) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = new ArrayList();
        Iterator iterator = b.b(s).iterator();
_L4:
        com.instagram.user.c.a a1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_144;
        }
        a1 = (com.instagram.user.c.a)iterator.next();
        if (k.a(a1.g()) != null)
        {
            break; /* Loop/switch isn't completed */
        }
        k.a(a1.g(), a1);
_L5:
        arraylist.add(a1);
        if (true) goto _L4; else goto _L3
        Exception exception;
        exception;
        obj = arraylist;
_L6:
        com.facebook.e.a.a.a("UserSearchUtil", "Error reading from recent users. Clearing results");
        com.instagram.l.b.a.a().e();
_L2:
        return ((List) (obj));
_L3:
        com.instagram.user.c.a a2 = k.a(a1.g());
        a1 = a2;
          goto _L5
        Exception exception1;
        exception1;
        obj = null;
          goto _L6
        return arraylist;
          goto _L5
    }

    public static void a(com.instagram.user.c.a a1)
    {
        Object obj;
        String s = com.instagram.l.b.a.a().d();
        if (s != null)
        {
            try
            {
                for (obj = b.b(s); ((List) (obj)).size() > 5; ((List) (obj)).remove(-1 + ((List) (obj)).size())) { }
            }
            catch (Exception exception)
            {
                com.instagram.l.b.a.a().h();
                return;
            }
            break MISSING_BLOCK_LABEL_62;
        }
        obj = new ArrayList(5);
        ((List) (obj)).remove(a1);
        ((List) (obj)).add(0, a1);
        com.instagram.l.b.a.a().a(b.a(((List) (obj))));
        return;
    }
}
