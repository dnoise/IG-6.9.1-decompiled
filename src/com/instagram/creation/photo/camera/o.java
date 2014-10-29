// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.net.Uri;
import com.instagram.camera.h;
import com.instagram.creation.photo.c.g;
import com.instagram.creation.photo.gallery.ImageManager;
import com.instagram.l.b.a;
import java.util.ArrayList;

// Referenced classes of package com.instagram.creation.photo.camera:
//            t, c

final class o extends Thread
{

    final c a;
    private ArrayList b;
    private boolean c;

    public o(c c1)
    {
        a = c1;
        super();
        b = new ArrayList();
        start();
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
_L3:
        boolean flag = b.isEmpty();
        if (flag) goto _L2; else goto _L1
_L1:
        Exception exception;
        try
        {
            wait();
        }
        catch (InterruptedException interruptedexception) { }
        finally
        {
            this;
        }
        if (true) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        throw exception;
    }

    public final String a(byte abyte0[], int i, int j, int k)
    {
        t t1;
        t1 = new t((byte)0);
        t1.a = abyte0;
        t1.b = null;
        t1.c = i;
        t1.d = j;
        t1.e = System.currentTimeMillis();
        t1.f = h.a(t1.e);
        t1.g = k;
        this;
        JVM INSTR monitorenter ;
_L3:
        int l = b.size();
        if (l < 3) goto _L2; else goto _L1
_L1:
        Exception exception;
        try
        {
            wait();
        }
        catch (InterruptedException interruptedexception) { }
        finally
        {
            this;
        }
        if (true) goto _L3; else goto _L2
_L2:
        b.add(t1);
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return t1.f;
        throw exception;
    }

    public final void a()
    {
        b();
        this;
        JVM INSTR monitorenter ;
        c = true;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        Exception exception;
        try
        {
            join();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
        exception;
        throw exception;
    }

    public final void run()
    {
_L2:
        this;
        JVM INSTR monitorenter ;
        if (!b.isEmpty())
        {
            break MISSING_BLOCK_LABEL_40;
        }
        notifyAll();
        if (!c)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        t t1;
        try
        {
            wait();
        }
        catch (InterruptedException interruptedexception) { }
        this;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        exception;
        throw exception;
        t1 = (t)b.get(0);
        this;
        JVM INSTR monitorexit ;
        int ai[] = new int[1];
        boolean flag = com.instagram.l.b.a.a().x();
        String s = g.c();
        String s1;
        java.io.File file;
        Exception exception1;
        if (flag)
        {
            s1 = g.b(t1.f, ".jpg");
        } else
        {
            s1 = "temp.jpg";
        }
        file = ImageManager.a(s, s1, t1.a, ai);
        if (file == null)
        {
            com.instagram.creation.photo.camera.c.a(a, null);
        } else
        if (com.instagram.l.b.a.a().x())
        {
            com.instagram.creation.photo.camera.c.a(a, ImageManager.a(com.instagram.creation.photo.camera.c.E(a), t1.f, t1.e, t1.b, g.c(), g.b(t1.f, ".jpg"), ai));
        } else
        {
            com.instagram.creation.photo.camera.c.a(a, Uri.fromFile(file));
        }
        this;
        JVM INSTR monitorenter ;
        b.remove(0);
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        if (true) goto _L2; else goto _L1
_L1:
        exception1;
        throw exception1;
    }
}
