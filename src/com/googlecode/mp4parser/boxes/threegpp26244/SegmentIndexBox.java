// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.threegpp26244;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.boxes.mp4.a.c;
import com.googlecode.mp4parser.boxes.mp4.a.d;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes.threegpp26244:
//            a

public class SegmentIndexBox extends AbstractFullBox
{

    public static final String TYPE = "sidx";
    long earliestPresentationTime;
    List entries;
    long firstOffset;
    long referenceId;
    int reserved;
    long timeScale;

    public SegmentIndexBox()
    {
        super("sidx");
        entries = new ArrayList();
    }

    protected void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        referenceId = e.b(bytebuffer);
        timeScale = e.b(bytebuffer);
        int i;
        if (getVersion() == 0)
        {
            earliestPresentationTime = e.b(bytebuffer);
            firstOffset = e.b(bytebuffer);
        } else
        {
            earliestPresentationTime = e.h(bytebuffer);
            firstOffset = e.h(bytebuffer);
        }
        reserved = e.d(bytebuffer);
        i = e.d(bytebuffer);
        for (int j = 0; j < i; j++)
        {
            c c1 = new c(bytebuffer);
            a a1 = new a();
            a1.a((byte)c1.a(1));
            a1.a(c1.a(31));
            a1.a(e.b(bytebuffer));
            c c2 = new c(bytebuffer);
            a1.b((byte)c2.a(1));
            a1.c((byte)c2.a(3));
            a1.b(c2.a(28));
            entries.add(a1);
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, referenceId);
        g.b(bytebuffer, timeScale);
        if (getVersion() == 0)
        {
            g.b(bytebuffer, earliestPresentationTime);
            g.b(bytebuffer, firstOffset);
        } else
        {
            g.a(bytebuffer, earliestPresentationTime);
            g.a(bytebuffer, firstOffset);
        }
        g.b(bytebuffer, reserved);
        g.b(bytebuffer, entries.size());
        a a1;
        d d2;
        for (Iterator iterator = entries.iterator(); iterator.hasNext(); d2.a(a1.f(), 28))
        {
            a1 = (a)iterator.next();
            d d1 = new d(bytebuffer);
            d1.a(a1.a(), 1);
            d1.a(a1.b(), 31);
            g.b(bytebuffer, a1.c());
            d2 = new d(bytebuffer);
            d2.a(a1.d(), 1);
            d2.a(a1.e(), 3);
        }

    }

    protected long getContentSize()
    {
        long l;
        if (getVersion() == 0)
        {
            l = 8L;
        } else
        {
            l = 16L;
        }
        return 2L + (2L + (l + 12L)) + (long)(12 * entries.size());
    }

    public long getEarliestPresentationTime()
    {
        return earliestPresentationTime;
    }

    public List getEntries()
    {
        return entries;
    }

    public long getFirstOffset()
    {
        return firstOffset;
    }

    public long getReferenceId()
    {
        return referenceId;
    }

    public int getReserved()
    {
        return reserved;
    }

    public long getTimeScale()
    {
        return timeScale;
    }

    public void setEarliestPresentationTime(long l)
    {
        earliestPresentationTime = l;
    }

    public void setEntries(List list)
    {
        entries = list;
    }

    public void setFirstOffset(long l)
    {
        firstOffset = l;
    }

    public void setReferenceId(long l)
    {
        referenceId = l;
    }

    public void setReserved(int i)
    {
        reserved = i;
    }

    public void setTimeScale(long l)
    {
        timeScale = l;
    }
}
