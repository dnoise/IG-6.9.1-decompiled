// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.systrace;

import android.os.Build;
import android.os.Process;
import com.facebook.c.a.a.a;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

// Referenced classes of package com.facebook.systrace:
//            d, e, a, c, 
//            TraceDirect

public final class b
{

    private static volatile WeakHashMap a;

    public static void a()
    {
    }

    public static void b()
    {
        if (com.facebook.systrace.e.a())
        {
            int i1 = Process.myTid();
            Thread thread = Thread.currentThread();
            com.facebook.systrace.a.a("thread_name", thread.getName(), i1);
            if (a != null)
            {
                a.put(thread, Integer.valueOf(i1));
                return;
            }
        }
    }

    static void c()
    {
        h();
    }

    static void d()
    {
    }

    static void e()
    {
        j();
    }

    static boolean f()
    {
        return i();
    }

    static void g()
    {
        l();
    }

    private static void h()
    {
        (new Thread(new c(), "fbsystrace-thread-name-tracer")).start();
    }

    private static boolean i()
    {
        return a != null;
    }

    private static void j()
    {
        if (!com.facebook.systrace.e.a())
        {
            return;
        } else
        {
            com.facebook.systrace.a.a("process_name", TraceDirect.b(), 0);
            com.facebook.systrace.a.a("process_labels", k(), 0);
            return;
        }
    }

    private static String k()
    {
        String s = com.facebook.c.a.a.a.a("dalvik.vm.heapgrowthlimit");
        String s1 = com.facebook.c.a.a.a.a("dalvik.vm.heapmaxfree");
        String s2 = com.facebook.c.a.a.a.a("dalvik.vm.heapminfree");
        String s3 = com.facebook.c.a.a.a.a("dalvik.vm.heapstartsize");
        String s4 = com.facebook.c.a.a.a.a("dalvik.vm.heaptargetutilization");
        return String.format("device=%s,heapgrowthlimit=%s,heapstartsize=%s,heapminfree=%s,heapmaxfree=%s,heaptargetutilization=%s", new Object[] {
            Build.MODEL, s, s3, s1, s2, s4
        });
    }

    private static void l()
    {
        if (!com.facebook.systrace.e.a())
        {
            return;
        }
        com.facebook.systrace.a.a("TraceExistingThreadsMetadata");
        java.util.Map.Entry entry;
        for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); com.facebook.systrace.a.a("thread_name", ((Thread)entry.getKey()).getName(), ((Integer)entry.getValue()).intValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        break MISSING_BLOCK_LABEL_81;
        Exception exception;
        exception;
        com.facebook.systrace.a.a();
        throw exception;
        com.facebook.systrace.a.a();
        return;
    }

    static 
    {
        com.facebook.systrace.e.a(new d((byte)0));
    }
}
