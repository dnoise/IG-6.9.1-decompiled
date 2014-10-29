// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import android.content.Context;
import com.facebook.ak;
import com.facebook.cj;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.g:
//            e, t, m, n, 
//            d, k, j, h, 
//            c, i

public final class b
{

    static final String a = com/facebook/g/b.getSimpleName();
    private static final AtomicLong b = new AtomicLong();
    private final String c;
    private final j d;
    private final File e;
    private boolean f;
    private final Object g = new Object();

    public b(Context context, String s, j j1)
    {
        c = s;
        d = j1;
        e = new File(context.getCacheDir(), s);
        e.mkdirs();
        com.facebook.g.e.a(e);
    }

    static AtomicLong a()
    {
        return b;
    }

    static void a(b b1)
    {
        b1.c();
    }

    static void a(b b1, String s, File file)
    {
        b1.a(s, file);
    }

    private void a(String s, File file)
    {
        if (!file.renameTo(new File(e, t.b(s))))
        {
            file.delete();
        }
        b();
    }

    private InputStream b(String s)
    {
        File file = new File(e, t.b(s));
        FileInputStream fileinputstream;
        BufferedInputStream bufferedinputstream;
        Exception exception;
        JSONObject jsonobject;
        String s1;
        boolean flag;
        String s2;
        long l;
        try
        {
            fileinputstream = new FileInputStream(file);
        }
        catch (IOException ioexception)
        {
            return null;
        }
        bufferedinputstream = new BufferedInputStream(fileinputstream, 8192);
        jsonobject = m.a(bufferedinputstream);
        if (jsonobject == null)
        {
            bufferedinputstream.close();
            return null;
        }
        s1 = jsonobject.optString("key");
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        flag = s1.equals(s);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        bufferedinputstream.close();
        return null;
        s2 = jsonobject.optString("tag", null);
        if (s2 != null)
        {
            bufferedinputstream.close();
            return null;
        }
        l = (new Date()).getTime();
        n.a(ak.d, a, (new StringBuilder("Setting lastModified to ")).append(Long.valueOf(l)).append(" for ").append(file.getName()).toString());
        file.setLastModified(l);
        return bufferedinputstream;
        exception;
        bufferedinputstream.close();
        throw exception;
    }

    private void b()
    {
        synchronized (g)
        {
            if (!f)
            {
                f = true;
                cj.a().execute(new d(this));
            }
        }
    }

    private OutputStream c(String s)
    {
        return d(s);
    }

    private void c()
    {
        PriorityQueue priorityqueue;
        File afile[];
        int l;
        n.a(ak.d, a, "trim started");
        priorityqueue = new PriorityQueue();
        afile = e.listFiles(com.facebook.g.e.a());
        l = afile.length;
        long l1;
        long l2;
        int i1;
        l1 = 0L;
        l2 = 0L;
        i1 = 0;
_L2:
        if (i1 >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        long l3;
        File file = afile[i1];
        k k1 = new k(file);
        priorityqueue.add(k1);
        n.a(ak.d, a, (new StringBuilder("  trim considering time=")).append(Long.valueOf(k1.b())).append(" name=").append(k1.a().getName()).toString());
        l3 = l2 + file.length();
        long l4 = l1 + 1L;
        i1++;
        l1 = l4;
        l2 = l3;
        if (true) goto _L2; else goto _L1
_L4:
        long l6;
        long l7;
        File file1;
        if (l6 <= (long)d.a() && l7 <= (long)d.b())
        {
            break MISSING_BLOCK_LABEL_256;
        }
        file1 = ((k)priorityqueue.remove()).a();
        n.a(ak.d, a, (new StringBuilder("  trim removing ")).append(file1.getName()).toString());
        l6 -= file1.length();
        long l8 = l7 - 1L;
        file1.delete();
        l7 = l8;
        continue; /* Loop/switch isn't completed */
        synchronized (g)
        {
            f = false;
            g.notifyAll();
        }
        return;
        Exception exception;
        exception;
        synchronized (g)
        {
            f = false;
            g.notifyAll();
        }
        throw exception;
_L1:
        long l5 = l1;
        l6 = l2;
        l7 = l5;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private OutputStream d(String s)
    {
        BufferedOutputStream bufferedoutputstream;
        File file = com.facebook.g.e.b(e);
        file.delete();
        if (!file.createNewFile())
        {
            throw new IOException((new StringBuilder("Could not create file at ")).append(file.getAbsolutePath()).toString());
        }
        FileOutputStream fileoutputstream;
        JSONObject jsonobject;
        try
        {
            fileoutputstream = new FileOutputStream(file);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            n.a(ak.d, 5, a, (new StringBuilder("Error creating buffer output stream: ")).append(filenotfoundexception).toString());
            throw new IOException(filenotfoundexception.getMessage());
        }
        bufferedoutputstream = new BufferedOutputStream(new h(fileoutputstream, new c(this, s, file)), 8192);
        jsonobject = new JSONObject();
        jsonobject.put("key", s);
        if (!t.a(null))
        {
            jsonobject.put("tag", null);
        }
        m.a(bufferedoutputstream, jsonobject);
        return bufferedoutputstream;
        JSONException jsonexception;
        jsonexception;
        n.a(ak.d, 5, a, (new StringBuilder("Error creating JSON header for cache file: ")).append(jsonexception).toString());
        throw new IOException(jsonexception.getMessage());
        Exception exception;
        exception;
        bufferedoutputstream.close();
        throw exception;
    }

    public final InputStream a(String s)
    {
        return b(s);
    }

    public final InputStream a(String s, InputStream inputstream)
    {
        return new i(inputstream, c(s));
    }

    public final String toString()
    {
        return (new StringBuilder("{FileLruCache: tag:")).append(c).append(" file:").append(e.getName()).append("}").toString();
    }

}
