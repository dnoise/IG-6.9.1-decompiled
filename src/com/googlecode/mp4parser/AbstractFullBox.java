// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.coremedia.iso.boxes.FullBox;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser:
//            AbstractBox

public abstract class AbstractFullBox extends AbstractBox
    implements FullBox
{

    private int flags;
    private int version;

    protected AbstractFullBox(String s)
    {
        super(s);
    }

    protected AbstractFullBox(String s, byte abyte0[])
    {
        super(s, abyte0);
    }

    public int getFlags()
    {
        return flags;
    }

    public int getVersion()
    {
        return version;
    }

    protected final long parseVersionAndFlags(ByteBuffer bytebuffer)
    {
        version = e.f(bytebuffer);
        flags = e.c(bytebuffer);
        return 4L;
    }

    public void setFlags(int i)
    {
        flags = i;
    }

    public void setVersion(int i)
    {
        version = i;
    }

    protected final void writeVersionAndFlags(ByteBuffer bytebuffer)
    {
        g.d(bytebuffer, version);
        g.a(bytebuffer, flags);
    }
}
