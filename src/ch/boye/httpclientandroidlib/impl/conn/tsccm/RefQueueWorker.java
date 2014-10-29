// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn.tsccm;

import java.lang.ref.ReferenceQueue;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.conn.tsccm:
//            RefQueueHandler

public class RefQueueWorker
    implements Runnable
{

    protected final RefQueueHandler refHandler;
    protected final ReferenceQueue refQueue;
    protected volatile Thread workerThread;

    public RefQueueWorker(ReferenceQueue referencequeue, RefQueueHandler refqueuehandler)
    {
        if (referencequeue == null)
        {
            throw new IllegalArgumentException("Queue must not be null.");
        }
        if (refqueuehandler == null)
        {
            throw new IllegalArgumentException("Handler must not be null.");
        } else
        {
            refQueue = referencequeue;
            refHandler = refqueuehandler;
            return;
        }
    }

    public void run()
    {
        if (workerThread == null)
        {
            workerThread = Thread.currentThread();
        }
        while (workerThread == Thread.currentThread()) 
        {
            try
            {
                java.lang.ref.Reference reference = refQueue.remove();
                refHandler.handleReference(reference);
            }
            catch (InterruptedException interruptedexception) { }
        }
    }

    public void shutdown()
    {
        Thread thread = workerThread;
        if (thread != null)
        {
            workerThread = null;
            thread.interrupt();
        }
    }

    public String toString()
    {
        return (new StringBuilder("RefQueueWorker::")).append(workerThread).toString();
    }
}
