// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.io;

import ch.boye.httpclientandroidlib.util.CharArrayBuffer;

// Referenced classes of package ch.boye.httpclientandroidlib.io:
//            HttpTransportMetrics

public interface SessionOutputBuffer
{

    public abstract void flush();

    public abstract HttpTransportMetrics getMetrics();

    public abstract void write(int i);

    public abstract void write(byte abyte0[]);

    public abstract void write(byte abyte0[], int i, int j);

    public abstract void writeLine(CharArrayBuffer chararraybuffer);

    public abstract void writeLine(String s);
}
