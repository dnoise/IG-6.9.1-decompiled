// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.adobe;

import com.coremedia.iso.boxes.a;
import com.coremedia.iso.boxes.sampleentry.SampleEntry;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public class ActionMessageFormat0SampleEntryBox extends SampleEntry
{

    public ActionMessageFormat0SampleEntryBox()
    {
        super("amf0");
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
}
