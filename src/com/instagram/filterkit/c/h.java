// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.c;

import com.facebook.e.a.a;
import com.instagram.common.i.c;
import com.instagram.filterkit.a.b;
import java.util.List;
import java.util.Queue;

// Referenced classes of package com.instagram.filterkit.c:
//            e, d, b

final class h extends Thread
{

    final e a;
    private volatile boolean b;

    public h(e e1)
    {
        a = e1;
        super("RenderThread");
        b = false;
    }

    private void a()
    {
_L6:
        this;
        JVM INSTR monitorenter ;
_L4:
        if (b) goto _L2; else goto _L1
_L1:
        boolean flag = e.g(a).isEmpty();
        if (!flag) goto _L2; else goto _L3
_L3:
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
        if (true) goto _L4; else goto _L2
_L2:
        b = false;
        this;
        JVM INSTR monitorexit ;
        if (!e.h(a))
        {
            while (!e.g(a).isEmpty()) 
            {
                ((d)e.g(a).poll()).a();
            }
        } else
        {
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
        JVM INSTR monitorexit ;
        throw exception;
    }

    static boolean a(h h1)
    {
        h1.b = true;
        return true;
    }

    public final void run()
    {
        e.e();
        if (com.instagram.filterkit.c.e.a(a).a()) goto _L2; else goto _L1
_L1:
        e.e();
        com.instagram.filterkit.c.e.a(a).a(com.instagram.filterkit.c.e.b(a));
_L3:
        if (com.instagram.filterkit.c.e.c(a) == null)
        {
            com.instagram.filterkit.c.e.a(a, e.d(a).a());
        }
        a();
        e.d(a).c();
        com.instagram.filterkit.c.e.a(a).c();
_L4:
        try
        {
            e.e(a).clear();
            e.e();
            return;
        }
        catch (Exception exception)
        {
            c.b(exception.getMessage(), "Error in render thread", exception);
            com.facebook.e.a.a.a(e.e(), "Error in the render thread", exception);
            com.instagram.filterkit.c.e.a(a).e();
            e.f(a);
            e.d(a).a(exception);
            return;
        }
_L2:
        com.instagram.filterkit.c.e.a(a).d();
          goto _L3
        Exception exception1;
        exception1;
        c.b(exception1.getMessage(), "Error while destroying callback", exception1);
        com.facebook.e.a.a.a(e.e(), "Error while destroying callback", exception1);
          goto _L4
    }
}
