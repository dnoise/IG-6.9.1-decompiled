// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.b;
import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.a;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            SampleEntry

public class MpegSampleEntry extends SampleEntry
    implements ContainerBox
{

    private b boxParser;

    public MpegSampleEntry(String s)
    {
        super(s);
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        _parseReservedAndDataReferenceIndex(bytebuffer);
        _parseChildBoxes(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        _writeReservedAndDataReferenceIndex(bytebuffer);
        _writeChildBoxes(bytebuffer);
    }

    protected long getContentSize()
    {
        Iterator iterator = boxes.iterator();
        long l;
        for (l = 8L; iterator.hasNext(); l += ((a)iterator.next()).getSize()) { }
        return l;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("MpegSampleEntry");
        List alist[] = new List[1];
        alist[0] = getBoxes();
        return stringbuilder.append(Arrays.asList(alist)).toString();
    }
}
