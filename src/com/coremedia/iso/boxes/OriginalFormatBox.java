// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.e;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;

public class OriginalFormatBox extends AbstractBox
{

    static final boolean $assertionsDisabled = false;
    public static final String TYPE = "frma";
    private String dataFormat;

    public OriginalFormatBox()
    {
        super("frma");
        dataFormat = "    ";
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        dataFormat = e.l(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        bytebuffer.put(IsoFile.fourCCtoBytes(dataFormat));
    }

    protected long getContentSize()
    {
        return 4L;
    }

    public String getDataFormat()
    {
        return dataFormat;
    }

    public void setDataFormat(String s)
    {
        if (!$assertionsDisabled && s.length() != 4)
        {
            throw new AssertionError();
        } else
        {
            dataFormat = s;
            return;
        }
    }

    public String toString()
    {
        return (new StringBuilder("OriginalFormatBox[dataFormat=")).append(getDataFormat()).append("]").toString();
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/OriginalFormatBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
