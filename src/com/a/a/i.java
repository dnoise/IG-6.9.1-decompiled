// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;

// Referenced classes of package com.a.a:
//            f, k

final class i
    implements Runnable
{

    final byte a[];
    final f b;

    i(f f1, byte abyte0[])
    {
        b = f1;
        a = abyte0;
        super();
    }

    public final void run()
    {
label0:
        {
            synchronized (f.a(b))
            {
                if (f.d(b) != null)
                {
                    break label0;
                }
            }
            return;
        }
        obj;
        JVM INSTR monitorexit ;
        OutputStream outputstream = f.d(b).getOutputStream();
        outputstream.write(a);
        outputstream.flush();
        return;
        IOException ioexception;
        ioexception;
        f.f(b).onError(ioexception);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
