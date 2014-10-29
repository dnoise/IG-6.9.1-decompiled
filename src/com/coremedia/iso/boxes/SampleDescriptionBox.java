// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.boxes.sampleentry.SampleEntry;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.FullContainerBox;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            a

public class SampleDescriptionBox extends FullContainerBox
{

    public static final String TYPE = "stsd";

    public SampleDescriptionBox()
    {
        super("stsd");
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
        g.b(bytebuffer, boxes.size());
        writeChildBoxes(bytebuffer);
    }

    protected long getContentSize()
    {
        return 4L + super.getContentSize();
    }

    public SampleEntry getSampleEntry()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof SampleEntry)
            {
                return (SampleEntry)a1;
            }
        }

        return null;
    }
}
