// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public final class OmaDrmAccessUnitFormatBox extends AbstractFullBox
{

    public static final String TYPE = "odaf";
    private byte allBits;
    private int initVectorLength;
    private int keyIndicatorLength;
    private boolean selectiveEncryption;

    public OmaDrmAccessUnitFormatBox()
    {
        super("odaf");
    }

    public final void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        allBits = (byte)e.f(bytebuffer);
        boolean flag;
        if ((0x80 & allBits) == 128)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        selectiveEncryption = flag;
        keyIndicatorLength = e.f(bytebuffer);
        initVectorLength = e.f(bytebuffer);
    }

    protected final void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.d(bytebuffer, allBits);
        g.d(bytebuffer, keyIndicatorLength);
        g.d(bytebuffer, initVectorLength);
    }

    protected final long getContentSize()
    {
        return 7L;
    }

    public final int getInitVectorLength()
    {
        return initVectorLength;
    }

    public final int getKeyIndicatorLength()
    {
        return keyIndicatorLength;
    }

    public final boolean isSelectiveEncryption()
    {
        return selectiveEncryption;
    }

    public final void setAllBits(byte byte0)
    {
        allBits = byte0;
        boolean flag;
        if ((byte0 & 0x80) == 128)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        selectiveEncryption = flag;
    }

    public final void setInitVectorLength(int i)
    {
        initVectorLength = i;
    }

    public final void setKeyIndicatorLength(int i)
    {
        keyIndicatorLength = i;
    }
}
