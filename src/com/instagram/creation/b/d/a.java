// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.d;

import android.content.Context;
import com.instagram.creation.b.a.d;
import com.instagram.creation.video.c.b;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.instagram.creation.b.d:
//            b

public final class a
{

    private static a b;
    final Map a = new ConcurrentHashMap();

    private a()
    {
    }

    public static a a()
    {
        if (b == null)
        {
            e();
        }
        return b;
    }

    public static void a(Context context)
    {
        a(((Collection) (a().f())), com.instagram.creation.video.c.b.b(context));
        a(((Collection) (a().g())), com.instagram.creation.video.c.b.d(context));
        List list = a().h();
        a(((Collection) (list)), com.instagram.creation.video.c.b.c(context));
        File afile[] = context.getFilesDir().listFiles();
        if (afile != null)
        {
            int i = afile.length;
            for (int j = 0; j < i; j++)
            {
                File file = afile[j];
                if (file.getName().startsWith("pending_media_") && file.getName().endsWith(".jpg") && !list.contains(file.getName()))
                {
                    file.delete();
                }
            }

        }
    }

    private static void a(Collection collection, File file)
    {
        File afile[] = file.listFiles();
        if (file.exists() && afile != null)
        {
            int i = afile.length;
            int j = 0;
            while (j < i) 
            {
                File file1 = afile[j];
                if (!collection.contains(file1.getName()))
                {
                    file1.getAbsolutePath();
                    com.instagram.common.y.a.b(file1.getPath());
                }
                j++;
            }
        }
    }

    private static void e()
    {
        com/instagram/creation/b/d/a;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new a();
        }
        com/instagram/creation/b/d/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private Set f()
    {
        HashSet hashset = new HashSet();
        Iterator iterator = a.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.instagram.creation.b.a.b b1 = (com.instagram.creation.b.a.b)iterator.next();
            if (b1.n() == com.instagram.model.a.a.b)
            {
                hashset.add(b1.L());
            }
        } while (true);
        return hashset;
    }

    private List g()
    {
        ArrayList arraylist = new ArrayList(a.size());
        Iterator iterator = a.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = ((com.instagram.creation.b.a.b)iterator.next()).l();
            if (s != null)
            {
                arraylist.add((new File(s)).getName());
            }
        } while (true);
        return arraylist;
    }

    private List h()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = a.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = ((com.instagram.creation.b.a.b)iterator.next()).k();
            if (s != null)
            {
                arraylist.add((new File(s)).getName());
            }
        } while (true);
        return arraylist;
    }

    public final com.instagram.creation.b.a.b a(String s)
    {
        return (com.instagram.creation.b.a.b)a.get(s);
    }

    public final List a(int i)
    {
        ArrayList arraylist = new ArrayList(a.size());
        Iterator iterator = a.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.instagram.creation.b.a.b b1 = (com.instagram.creation.b.a.b)iterator.next();
            if (b1.A() == d.c && (i == b.a && b1.P() || i == com.instagram.creation.b.d.b.b && !b1.P()))
            {
                arraylist.add(b1);
            }
        } while (true);
        return arraylist;
    }

    public final void a(String s, com.instagram.creation.b.a.b b1)
    {
        a.put(s, b1);
        d();
    }

    final void a(List list)
    {
        if (!list.isEmpty())
        {
            com.instagram.creation.b.a.b b1;
            for (Iterator iterator = list.iterator(); iterator.hasNext(); a.put(b1.a(), b1))
            {
                b1 = (com.instagram.creation.b.a.b)iterator.next();
            }

            d();
        }
    }

    public final void b()
    {
        Iterator iterator = a.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (((com.instagram.creation.b.a.b)entry.getValue()).A() != d.c)
            {
                (new StringBuilder("Deleting media")).append(entry.getValue());
                iterator.remove();
            }
        } while (true);
    }

    public final void b(String s)
    {
        if ((com.instagram.creation.b.a.b)a.remove(s) != null)
        {
            d();
        }
    }

    public final com.instagram.creation.b.a.b c()
    {
        com.instagram.creation.b.a.b b1 = null;
        Iterator iterator = a.values().iterator();
        while (iterator.hasNext()) 
        {
            com.instagram.creation.b.a.b b2 = (com.instagram.creation.b.a.b)iterator.next();
            if (!b2.O() || b2.A() == d.c)
            {
                b2 = b1;
            }
            b1 = b2;
        }
        return b1;
    }

    public final void d()
    {
        com.instagram.common.y.d.a("PendingMediaStore.INTENT_ACTION_PENDING_MEDIA_CHANGED");
        if (com.instagram.common.s.b.b())
        {
            Integer.valueOf(a.size());
            for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); ((com.instagram.creation.b.a.b)((java.util.Map.Entry)iterator.next()).getValue()).toString()) { }
        }
    }
}
