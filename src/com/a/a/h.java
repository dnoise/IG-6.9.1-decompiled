// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;

import android.os.HandlerThread;
import java.io.IOException;
import java.net.Socket;

// Referenced classes of package com.a.a:
//            f, k

final class h
    implements Runnable
{

    final f a;

    h(f f1)
    {
        a = f1;
        super();
    }

    public final void run()
    {
        Object obj = f.a(a);
        obj;
        JVM INSTR monitorenter ;
        Socket socket = f.d(a);
        if (socket == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        Exception exception;
        IOException ioexception;
        Exception exception1;
        UnsupportedOperationException unsupportedoperationexception;
        Exception exception2;
        try
        {
            f.d(a).shutdownOutput();
        }
        catch (IOException ioexception1) { }
        try
        {
            f.d(a).shutdownInput();
        }
        catch (IOException ioexception2) { }
        f.d(a).close();
        f.a(a, null);
        obj;
        JVM INSTR monitorexit ;
        f.h(a).quit();
        return;
        exception2;
        f.d(a).close();
        f.a(a, null);
        throw exception2;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        ioexception;
        f.f(a).onError(ioexception);
        f.h(a).quit();
        return;
        exception;
        f.h(a).quit();
        throw exception;
        unsupportedoperationexception;
        break MISSING_BLOCK_LABEL_46;
    }
}
