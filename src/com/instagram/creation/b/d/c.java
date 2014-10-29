// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.d;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.instagram.common.h.a;
import com.instagram.common.y.c.d;
import com.instagram.common.y.c.e;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.b.j;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.instagram.creation.b.d:
//            d, e, f, a, 
//            g

public class c
{

    private static final Class a = com/instagram/creation/b/d/c;
    private static c b;
    private final Context c = com.instagram.common.h.a.a();
    private final Handler d = new Handler(Looper.getMainLooper());
    private final d e = com.instagram.common.y.c.e.a().a("PendingMediaStoreSerializer").c();
    private final Runnable f = new com.instagram.creation.b.d.d(this);
    private final Object g = new Object();
    private final List h = new LinkedList();
    private Boolean i;
    private ObjectMapper j;

    private c()
    {
        i = Boolean.valueOf(false);
        e.execute(new com.instagram.creation.b.d.e(this));
    }

    public static c a()
    {
        if (b == null)
        {
            d();
        }
        return b;
    }

    static Boolean a(c c1, Boolean boolean1)
    {
        c1.i = boolean1;
        return boolean1;
    }

    static void a(c c1)
    {
        c1.f();
    }

    static Object b(c c1)
    {
        return c1.g;
    }

    static List c(c c1)
    {
        return c1.h;
    }

    private static void d()
    {
        com/instagram/creation/b/d/c;
        JVM INSTR monitorenter ;
        c c1 = b;
        if (c1 == null) goto _L2; else goto _L1
_L1:
        com/instagram/creation/b/d/c;
        JVM INSTR monitorexit ;
        return;
_L2:
        b = new c();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void e()
    {
        File file = new File(c.getFilesDir(), "pending_media.json.tmp");
        File file1 = new File(c.getFilesDir(), "pending_media.json");
        if (file.exists() && !file.renameTo(file1) && file1.exists() && file1.delete() && !file.renameTo(file1))
        {
            com.facebook.e.a.a.a(a, "Unable to rename %s to %s", new Object[] {
                "pending_media.json.tmp", "pending_media.json"
            });
        }
    }

    private void f()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist = new ArrayList();
        java.io.FileInputStream fileinputstream = c.openFileInput("pending_media.json");
        Object obj1 = fileinputstream;
        List list;
        f f1 = new f(this);
        list = (List)g().readValue(((java.io.InputStream) (obj1)), f1);
        if (list == null) goto _L2; else goto _L1
_L1:
        a;
        (new StringBuilder("Loading serialized pending media list, size: ")).append(list.size());
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b1 = (b)iterator.next();
            if (!b1.A().equals(com.instagram.creation.b.a.d.c) || (new File(b1.k())).exists())
            {
                arraylist.add(b1);
            }
        } while (true);
          goto _L2
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        Object obj = obj1;
_L10:
        a;
        com.instagram.common.l.c.a.a(((java.io.Closeable) (obj)));
_L3:
        com.instagram.creation.b.d.a.a().a(arraylist);
        d.post(new g(this));
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        com.instagram.common.l.c.a.a(((java.io.Closeable) (obj1)));
          goto _L3
        Exception exception2;
        exception2;
        throw exception2;
        IOException ioexception;
        ioexception;
        IOException ioexception1;
        obj1 = null;
        ioexception1 = ioexception;
_L8:
        com.instagram.common.i.c.b("PendingMediaStoreSerializer", ioexception1.getMessage());
        c.deleteFile("pending_media.json");
        com.instagram.common.l.c.a.a(((java.io.Closeable) (obj1)));
          goto _L3
        RuntimeException runtimeexception;
        runtimeexception;
        RuntimeException runtimeexception1;
        obj1 = null;
        runtimeexception1 = runtimeexception;
_L7:
        c.deleteFile("pending_media.json");
        throw runtimeexception1;
        Exception exception1;
        exception1;
_L5:
        com.instagram.common.l.c.a.a(((java.io.Closeable) (obj1)));
        throw exception1;
        Exception exception3;
        exception3;
        exception1 = exception3;
        obj1 = null;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        obj1 = obj;
        exception1 = exception;
        if (true) goto _L5; else goto _L4
_L4:
        runtimeexception1;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception1;
          goto _L8
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        obj = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private ObjectMapper g()
    {
        if (j == null)
        {
            j = com.instagram.creation.b.b.j.a();
        }
        return j;
    }

    public final void a(Runnable runnable)
    {
        Object obj = g;
        obj;
        JVM INSTR monitorenter ;
        if (!i.booleanValue())
        {
            break MISSING_BLOCK_LABEL_26;
        }
        runnable.run();
_L2:
        return;
        h.add(runnable);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        e.execute(f);
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        Exception exception;
        arraylist = new ArrayList();
        Iterator iterator = com.instagram.creation.b.d.a.a().a.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b2 = (b)iterator.next();
            if (b2.z() != com.instagram.creation.b.a.d.c)
            {
                arraylist.add(b2);
            }
        } while (true);
        if (true)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        JVM INSTR monitorexit ;
        throw exception;
        if (arraylist.size() != 0) goto _L2; else goto _L1
_L1:
        c.deleteFile("pending_media.json");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        FileOutputStream fileoutputstream1 = c.openFileOutput("pending_media.json.tmp", 0);
        FileOutputStream fileoutputstream = fileoutputstream1;
_L4:
        if (fileoutputstream != null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        com.facebook.e.a.a.a(a, "Failed to acquire output stream for pending_media.json.tmp");
          goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        com.facebook.e.a.a.a(a, "File not found while getting output stream for pending_media.json.tmp", filenotfoundexception);
        fileoutputstream = null;
          goto _L4
        a;
        (new StringBuilder("Serializing ")).append(arraylist.size()).append(" entries: ");
        if (com.instagram.common.s.b.b())
        {
            b b1;
            for (Iterator iterator1 = arraylist.iterator(); iterator1.hasNext(); b1.toString())
            {
                b1 = (b)iterator1.next();
                a;
            }

        }
        break MISSING_BLOCK_LABEL_245;
        IOException ioexception1;
        ioexception1;
        com.facebook.e.a.a.a(a, "Exception while writing out pending_media.json.tmp", ioexception1);
        Exception exception1;
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception2) { }
        e();
          goto _L3
        g().writeValue(fileoutputstream, arraylist);
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception3) { }
        finally
        {
            this;
        }
        break MISSING_BLOCK_LABEL_238;
        exception1;
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception) { }
        throw exception1;
    }

}
