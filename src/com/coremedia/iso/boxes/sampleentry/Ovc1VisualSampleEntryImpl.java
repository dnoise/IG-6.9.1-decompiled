// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.boxes.a;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            SampleEntry

public class Ovc1VisualSampleEntryImpl extends SampleEntry
{

    public static final String TYPE = "ovc1";
    private byte vc1Content[];

    protected Ovc1VisualSampleEntryImpl()
    {
        super("ovc1");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        _parseReservedAndDataReferenceIndex(bytebuffer);
        vc1Content = new byte[bytebuffer.remaining()];
        bytebuffer.get(vc1Content);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        bytebuffer.put(new byte[6]);
        g.b(bytebuffer, getDataReferenceIndex());
        bytebuffer.put(vc1Content);
    }

    protected long getContentSize()
    {
        Iterator iterator = boxes.iterator();
        long l;
        for (l = 8L; iterator.hasNext(); l += ((a)iterator.next()).getSize()) { }
        return l + (long)vc1Content.length;
    }
}
