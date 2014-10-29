// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import java.util.ArrayDeque;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.instagram.creation.video.gl:
//            GLRootView, r

final class u
    implements Runnable
{

    final GLRootView a;
    private boolean b;

    private u(GLRootView glrootview)
    {
        a = glrootview;
        super();
        b = false;
    }

    u(GLRootView glrootview, byte byte0)
    {
        this(glrootview);
    }

    public final void a()
    {
        if (b)
        {
            return;
        } else
        {
            b = true;
            a.queueEvent(this);
            return;
        }
    }

    public final void run()
    {
label0:
        {
            synchronized (GLRootView.b(a))
            {
                b = false;
                if (!GLRootView.b(a).isEmpty())
                {
                    break label0;
                }
            }
            return;
        }
        r r1 = (r)GLRootView.b(a).removeFirst();
        arraydeque;
        JVM INSTR monitorexit ;
        GLRootView.c(a).lock();
        boolean flag;
        GLRootView.d(a);
        GLRootView.e(a);
        flag = r1.a();
        GLRootView.c(a).unlock();
        ArrayDeque arraydeque1 = GLRootView.b(a);
        arraydeque1;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        GLRootView.b(a).addLast(r1);
        if (!GLRootView.e(a) && !GLRootView.b(a).isEmpty())
        {
            a();
        }
        arraydeque1;
        JVM INSTR monitorexit ;
        return;
        Exception exception2;
        exception2;
        arraydeque1;
        JVM INSTR monitorexit ;
        throw exception2;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        GLRootView.c(a).unlock();
        throw exception1;
    }
}
