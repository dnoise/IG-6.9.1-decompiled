// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.a;

import com.coremedia.iso.e;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.a:
//            f, n, b, i, 
//            k, m, a, j, 
//            h, e, g, o

public class l
{

    protected static Logger a = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/a/l.getName());
    protected static Map b;

    public l()
    {
    }

    public static b a(int i1, ByteBuffer bytebuffer)
    {
        int j1;
        Class class1;
        j1 = e.f(bytebuffer);
        Map map = (Map)b.get(Integer.valueOf(i1));
        if (map == null)
        {
            map = (Map)b.get(Integer.valueOf(-1));
        }
        class1 = (Class)map.get(Integer.valueOf(j1));
        if (class1 != null && !class1.isInterface() && !Modifier.isAbstract(class1.getModifiers())) goto _L2; else goto _L1
_L1:
        Object obj;
        a.warning((new StringBuilder("No ObjectDescriptor found for objectTypeIndication ")).append(Integer.toHexString(i1)).append(" and tag ").append(Integer.toHexString(j1)).append(" found: ").append(class1).toString());
        obj = new o();
_L4:
        ((b) (obj)).a(j1, bytebuffer);
        return ((b) (obj));
_L2:
        try
        {
            obj = (b)class1.newInstance();
        }
        catch (Exception exception)
        {
            a.log(Level.SEVERE, (new StringBuilder("Couldn't instantiate BaseDescriptor class ")).append(class1).append(" for objectTypeIndication ").append(i1).append(" and tag ").append(j1).toString(), exception);
            throw new RuntimeException(exception);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        b = new HashMap();
        HashSet hashset = new HashSet();
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/f);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/n);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/b);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/i);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/k);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/m);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/a);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/j);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/h);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/a/e);
        int i1;
        Object obj;
        for (Iterator iterator = hashset.iterator(); iterator.hasNext(); b.put(Integer.valueOf(i1), obj))
        {
            Class class1 = (Class)iterator.next();
            g g1 = (g)class1.getAnnotation(com/googlecode/mp4parser/boxes/mp4/a/g);
            int ai[] = g1.a();
            i1 = g1.b();
            obj = (Map)b.get(Integer.valueOf(i1));
            if (obj == null)
            {
                obj = new HashMap();
            }
            int j1 = ai.length;
            for (int k1 = 0; k1 < j1; k1++)
            {
                ((Map) (obj)).put(Integer.valueOf(ai[k1]), class1);
            }

        }

    }
}
