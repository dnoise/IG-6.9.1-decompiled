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
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            h

public class SampleToChunkBox extends AbstractFullBox
{

    public static final String TYPE = "stsc";
    List entries;

    public SampleToChunkBox()
    {
        super("stsc");
        entries = Collections.emptyList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i = b.a(e.b(bytebuffer));
        entries = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            entries.add(new h(e.b(bytebuffer), e.b(bytebuffer), e.b(bytebuffer)));
        }

    }

    public long[] blowup(int i)
    {
        long al[] = new long[i];
        LinkedList linkedlist = new LinkedList(entries);
        Collections.reverse(linkedlist);
        Iterator iterator = linkedlist.iterator();
        h h1 = (h)iterator.next();
        for (; i > 1; i--)
        {
            al[i - 1] = h1.b();
            if ((long)i == h1.a())
            {
                h1 = (h)iterator.next();
            }
        }

        al[0] = h1.b();
        return al;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, entries.size());
        h h1;
        for (Iterator iterator = entries.iterator(); iterator.hasNext(); g.b(bytebuffer, h1.c()))
        {
            h1 = (h)iterator.next();
            g.b(bytebuffer, h1.a());
            g.b(bytebuffer, h1.b());
        }

    }

    protected long getContentSize()
    {
        return (long)(8 + 12 * entries.size());
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
        return (new StringBuilder("SampleToChunkBox[entryCount=")).append(entries.size()).append("]").toString();
    }
}
