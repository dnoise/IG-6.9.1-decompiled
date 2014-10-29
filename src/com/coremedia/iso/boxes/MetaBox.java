// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.b;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractContainerBox;
import com.googlecode.mp4parser.c.a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;

public class MetaBox extends AbstractContainerBox
{

    public static final String TYPE = "meta";
    private int flags;
    private int version;

    public MetaBox()
    {
        super("meta");
        version = 0;
        flags = 0;
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        int i = bytebuffer.position();
        bytebuffer.get(new byte[4]);
        if ("hdlr".equals(e.l(bytebuffer)))
        {
            bytebuffer.position(i);
            version = -1;
            flags = -1;
        } else
        {
            bytebuffer.position(i);
            version = e.f(bytebuffer);
            flags = e.c(bytebuffer);
        }
        while (bytebuffer.remaining() >= 8) 
        {
            try
            {
                boxes.add(boxParser.a(new a(bytebuffer), this));
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException("Sebastian needs to fix 7518765283");
            }
        }
        if (bytebuffer.remaining() > 0)
        {
            throw new RuntimeException("Sebastian needs to fix it 90732r26537");
        } else
        {
            return;
        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        if (isMp4Box())
        {
            g.d(bytebuffer, version);
            g.a(bytebuffer, flags);
        }
        writeChildBoxes(bytebuffer);
    }

    public long getContentSize()
    {
        if (isMp4Box())
        {
            return 4L + super.getContentSize();
        } else
        {
            return super.getContentSize();
        }
    }

    public long getNumOfBytesToFirstChild()
    {
        return !isMp4Box() ? 8L : 12L;
    }

    public boolean isMp4Box()
    {
        return version != -1 && flags != -1;
    }

    public void setMp4Box(boolean flag)
    {
        if (flag)
        {
            version = 0;
            flags = 0;
            return;
        } else
        {
            version = -1;
            flags = -1;
            return;
        }
    }
}
