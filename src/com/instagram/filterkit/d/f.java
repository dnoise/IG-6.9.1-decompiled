// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.d;

import android.content.Context;
import android.util.SparseArray;
import com.instagram.filterkit.e.a;
import com.instagram.filterkit.e.b;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.filterkit.d:
//            b, g, a, e

class f
{

    private static final Class a = com/instagram/filterkit/d/f;
    private final Context b;
    private final com.instagram.filterkit.d.b c = new com.instagram.filterkit.d.b();
    private final Map d = new HashMap();
    private final Map e = new HashMap();
    private final SparseArray f = new SparseArray();

    f(Context context)
    {
        b = context.getApplicationContext();
    }

    private void a(g g1)
    {
        g1.c = -1 + g1.c;
        if (g1.c == 0)
        {
            g1.b.e();
            d.remove(g1.a);
        }
    }

    final a a(e e1, String s)
    {
        if (e.containsKey(e1)) goto _L2; else goto _L1
_L1:
        HashSet hashset;
        hashset = new HashSet();
        e.put(e1, hashset);
        Object obj = hashset;
_L7:
        this;
        JVM INSTR monitorenter ;
        if (d.containsKey(s)) goto _L4; else goto _L3
_L3:
        g g1;
        g1 = new g(s, c.a(b, s), (byte)0);
        c;
        com.instagram.filterkit.d.b.a("TextureManager.loadTexture");
        d.put(s, g1);
_L5:
        if (((Set) (obj)).add(g1))
        {
            g1.c = 1 + g1.c;
        }
        this;
        JVM INSTR monitorexit ;
        return g1.b;
_L2:
        obj = (Set)e.get(e1);
        continue; /* Loop/switch isn't completed */
_L4:
        g1 = (g)d.get(s);
          goto _L5
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final b a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        if (f.get(i) == null)
        {
            f.put(i, new LinkedList());
        }
        if (!((List)f.get(i)).isEmpty()) goto _L2; else goto _L1
_L1:
        Object obj;
        a;
        Integer.valueOf(i);
        obj = new com.instagram.filterkit.d.a(c, i);
_L4:
        this;
        JVM INSTR monitorexit ;
        return ((b) (obj));
_L2:
        obj = (b)((List)f.get(i)).remove(0);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(int i, int j)
    {
        List list = (List)f.get(i);
        do
        {
            if (list.size() <= 0)
            {
                break;
            }
            int k = j - 1;
            if (j <= 0)
            {
                break;
            }
            ((b)list.remove(0)).e();
            j = k;
        } while (true);
    }

    final void a(e e1)
    {
        if (!e.containsKey(e1))
        {
            return;
        }
        this;
        JVM INSTR monitorenter ;
        for (Iterator iterator = ((Set)e.get(e1)).iterator(); iterator.hasNext(); a((g)iterator.next())) { }
        break MISSING_BLOCK_LABEL_65;
        Exception exception;
        exception;
        throw exception;
        ((Set)e.remove(e1)).clear();
        this;
        JVM INSTR monitorexit ;
    }

    public final void a(b b1)
    {
        this;
        JVM INSTR monitorenter ;
        ((List)f.get(b1.c())).add(b1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
