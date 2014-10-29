// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.e;
import com.coremedia.iso.f;
import com.coremedia.iso.g;
import com.coremedia.iso.h;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            b

public class TrackFragmentRandomAccessBox extends AbstractFullBox
{

    public static final String TYPE = "tfra";
    private List entries;
    private int lengthSizeOfSampleNum;
    private int lengthSizeOfTrafNum;
    private int lengthSizeOfTrunNum;
    private int reserved;
    private long trackId;

    public TrackFragmentRandomAccessBox()
    {
        super("tfra");
        lengthSizeOfTrafNum = 2;
        lengthSizeOfTrunNum = 2;
        lengthSizeOfSampleNum = 2;
        entries = Collections.emptyList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        trackId = e.b(bytebuffer);
        long l = e.b(bytebuffer);
        reserved = (int)(l >> 6);
        lengthSizeOfTrafNum = 1 + ((int)(63L & l) >> 4);
        lengthSizeOfTrunNum = 1 + ((int)(12L & l) >> 2);
        lengthSizeOfSampleNum = 1 + (int)(l & 3L);
        long l1 = e.b(bytebuffer);
        entries = new ArrayList();
        int i = 0;
        while ((long)i < l1) 
        {
            b b1 = new b();
            if (getVersion() == 1)
            {
                b.a(b1, e.h(bytebuffer));
                b.b(b1, e.h(bytebuffer));
            } else
            {
                b.a(b1, e.b(bytebuffer));
                b.b(b1, e.b(bytebuffer));
            }
            b.c(b1, f.a(bytebuffer, lengthSizeOfTrafNum));
            b.d(b1, f.a(bytebuffer, lengthSizeOfTrunNum));
            com.coremedia.iso.boxes.fragment.b.e(b1, f.a(bytebuffer, lengthSizeOfSampleNum));
            entries.add(b1);
            i++;
        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, trackId);
        g.b(bytebuffer, (long)(reserved << 6) | (long)((3 & -1 + lengthSizeOfTrafNum) << 4) | (long)((3 & -1 + lengthSizeOfTrunNum) << 2) | (long)(3 & -1 + lengthSizeOfSampleNum));
        g.b(bytebuffer, entries.size());
        Iterator iterator = entries.iterator();
        while (iterator.hasNext()) 
        {
            b b1 = (b)iterator.next();
            if (getVersion() == 1)
            {
                g.a(bytebuffer, b.a(b1));
                g.a(bytebuffer, b.b(b1));
            } else
            {
                g.b(bytebuffer, b.a(b1));
                g.b(bytebuffer, b.b(b1));
            }
            h.a(b.c(b1), bytebuffer, lengthSizeOfTrafNum);
            h.a(b.d(b1), bytebuffer, lengthSizeOfTrunNum);
            h.a(com.coremedia.iso.boxes.fragment.b.e(b1), bytebuffer, lengthSizeOfSampleNum);
        }
    }

    protected long getContentSize()
    {
        long l;
        if (getVersion() == 1)
        {
            l = 16L + (long)(16 * entries.size());
        } else
        {
            l = 16L + (long)(8 * entries.size());
        }
        return l + (long)(lengthSizeOfTrafNum * entries.size()) + (long)(lengthSizeOfTrunNum * entries.size()) + (long)(lengthSizeOfSampleNum * entries.size());
    }

    public List getEntries()
    {
        return Collections.unmodifiableList(entries);
    }

    public int getLengthSizeOfSampleNum()
    {
        return lengthSizeOfSampleNum;
    }

    public int getLengthSizeOfTrafNum()
    {
        return lengthSizeOfTrafNum;
    }

    public int getLengthSizeOfTrunNum()
    {
        return lengthSizeOfTrunNum;
    }

    public long getNumberOfEntries()
    {
        return (long)entries.size();
    }

    public int getReserved()
    {
        return reserved;
    }

    public long getTrackId()
    {
        return trackId;
    }

    public void setEntries(List list)
    {
        entries = list;
    }

    public void setLengthSizeOfSampleNum(int i)
    {
        lengthSizeOfSampleNum = i;
    }

    public void setLengthSizeOfTrafNum(int i)
    {
        lengthSizeOfTrafNum = i;
    }

    public void setLengthSizeOfTrunNum(int i)
    {
        lengthSizeOfTrunNum = i;
    }

    public void setTrackId(long l)
    {
        trackId = l;
    }

    public String toString()
    {
        return (new StringBuilder("TrackFragmentRandomAccessBox{trackId=")).append(trackId).append(", entries=").append(entries).append('}').toString();
    }
}
