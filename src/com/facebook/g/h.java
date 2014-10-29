// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import java.io.OutputStream;

// Referenced classes of package com.facebook.g:
//            l

final class h extends OutputStream
{

    final OutputStream a;
    final l b;

    h(OutputStream outputstream, l l1)
    {
        a = outputstream;
        b = l1;
    }

    public final void close()
    {
        a.close();
        b.a();
        return;
        Exception exception;
        exception;
        b.a();
        throw exception;
    }

    public final void flush()
    {
        a.flush();
    }

    public final void write(int i)
    {
        a.write(i);
    }

    public final void write(byte abyte0[])
    {
        a.write(abyte0);
    }

    public final void write(byte abyte0[], int i, int j)
    {
        a.write(abyte0, i, j);
    }
}
