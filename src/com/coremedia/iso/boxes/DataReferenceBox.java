// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.g;
import com.googlecode.mp4parser.FullContainerBox;
import java.nio.ByteBuffer;
import java.util.List;

public class DataReferenceBox extends FullContainerBox
{

    public static final String TYPE = "dref";

    public DataReferenceBox()
    {
        super("dref");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        bytebuffer.get(new byte[4]);
        parseChildBoxes(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, getBoxes().size());
        writeChildBoxes(bytebuffer);
    }

    protected long getContentSize()
    {
        return 4L + super.getContentSize();
    }
}
