// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            k

public class TimeToSampleBox extends AbstractFullBox
{

    static final boolean $assertionsDisabled = false;
    public static final String TYPE = "stts";
    List entries;

    public TimeToSampleBox()
    {
        super("stts");
        entries = Collections.emptyList();
    }

    public static long[] blowupTimeToSamples(List list)
    {
        Iterator iterator = list.iterator();
        long l;
        for (l = 0L; iterator.hasNext(); l += ((k)iterator.next()).a()) { }
        if (!$assertionsDisabled && l > 0x7fffffffL)
        {
            throw new AssertionError();
        }
        long al[] = new long[(int)l];
        Iterator iterator1 = list.iterator();
        int i = 0;
        while (iterator1.hasNext()) 
        {
            k k1 = (k)iterator1.next();
            int j = 0;
            while ((long)j < k1.a()) 
            {
                int i1 = i + 1;
                al[i] = k1.b();
                j++;
                i = i1;
            }
        }
        return al;
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i = b.a(e.b(bytebuffer));
        entries = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            entries.add(new k(e.b(bytebuffer), e.b(bytebuffer)));
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, entries.size());
        k k1;
        for (Iterator iterator = entries.iterator(); iterator.hasNext(); g.b(bytebuffer, k1.b()))
        {
            k1 = (k)iterator.next();
            g.b(bytebuffer, k1.a());
        }

    }

    protected long getContentSize()
    {
        return (long)(8 + 8 * entries.size());
    }

    public List getEntries()
    {
        return entries;
    }

    public void setEntries(List list)
    {
        entries = list;
    }

    public String toString()
    {
        return (new StringBuilder("TimeToSampleBox[entryCount=")).append(entries.size()).append("]").toString();
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/TimeToSampleBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
