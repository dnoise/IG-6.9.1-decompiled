// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;

public class AppleDataReferenceBox extends AbstractFullBox
{

    public static final String TYPE = "rdrf";
    private String dataReference;
    private int dataReferenceSize;
    private String dataReferenceType;

    public AppleDataReferenceBox()
    {
        super("rdrf");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        dataReferenceType = e.l(bytebuffer);
        dataReferenceSize = b.a(e.b(bytebuffer));
        dataReference = e.a(bytebuffer, dataReferenceSize);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(IsoFile.fourCCtoBytes(dataReferenceType));
        g.b(bytebuffer, dataReferenceSize);
        bytebuffer.put(k.a(dataReference));
    }

    protected long getContentSize()
    {
        return (long)(12 + dataReferenceSize);
    }

    public String getDataReference()
    {
        return dataReference;
    }

    public long getDataReferenceSize()
    {
        return (long)dataReferenceSize;
    }

    public String getDataReferenceType()
    {
        return dataReferenceType;
    }
}
