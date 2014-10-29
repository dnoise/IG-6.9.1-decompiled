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
//            b

public class CompositionTimeToSample extends AbstractFullBox
{

    static final boolean $assertionsDisabled = false;
    public static final String TYPE = "ctts";
    List entries;

    public CompositionTimeToSample()
    {
        super("ctts");
        entries = Collections.emptyList();
    }

    public static int[] blowupCompositionTimes(List list)
    {
        Iterator iterator = list.iterator();
        long l;
        for (l = 0L; iterator.hasNext(); l += ((com.coremedia.iso.boxes.b)iterator.next()).a()) { }
        if (!$assertionsDisabled && l > 0x7fffffffL)
        {
            throw new AssertionError();
        }
        int ai[] = new int[(int)l];
        Iterator iterator1 = list.iterator();
        int i = 0;
        while (iterator1.hasNext()) 
        {
            com.coremedia.iso.boxes.b b1 = (com.coremedia.iso.boxes.b)iterator1.next();
            int j = 0;
            while (j < b1.a()) 
            {
                int k = i + 1;
                ai[i] = b1.b();
                j++;
                i = k;
            }
        }
        return ai;
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i = b.a(e.b(bytebuffer));
        entries = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            com.coremedia.iso.boxes.b b1 = new com.coremedia.iso.boxes.b(b.a(e.b(bytebuffer)), bytebuffer.getInt());
            entries.add(b1);
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, entries.size());
        com.coremedia.iso.boxes.b b1;
        for (Iterator iterator = entries.iterator(); iterator.hasNext(); bytebuffer.putInt(b1.b()))
        {
            b1 = (com.coremedia.iso.boxes.b)iterator.next();
            g.b(bytebuffer, b1.a());
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

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/CompositionTimeToSample.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
