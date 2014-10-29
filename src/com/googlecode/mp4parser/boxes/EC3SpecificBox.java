// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.boxes.mp4.a.c;
import com.googlecode.mp4parser.boxes.mp4.a.d;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes:
//            c

public class EC3SpecificBox extends AbstractBox
{

    int dataRate;
    List entries;
    int numIndSub;

    public EC3SpecificBox()
    {
        super("dec3");
        entries = new LinkedList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        c c1 = new c(bytebuffer);
        dataRate = c1.a(13);
        numIndSub = 1 + c1.a(3);
        int i = 0;
        while (i < numIndSub) 
        {
            com.googlecode.mp4parser.boxes.c c2 = new com.googlecode.mp4parser.boxes.c();
            c2.a = c1.a(2);
            c2.b = c1.a(5);
            c2.c = c1.a(5);
            c2.d = c1.a(3);
            c2.e = c1.a(1);
            c2.f = c1.a(3);
            c2.g = c1.a(4);
            if (c2.g > 0)
            {
                c2.h = c1.a(9);
            } else
            {
                c2.i = c1.a(1);
            }
            entries.add(c2);
            i++;
        }
    }

    public void addEntry(com.googlecode.mp4parser.boxes.c c1)
    {
        entries.add(c1);
    }

    public void getContent(ByteBuffer bytebuffer)
    {
        d d1 = new d(bytebuffer);
        d1.a(dataRate, 13);
        d1.a(-1 + entries.size(), 3);
        for (Iterator iterator = entries.iterator(); iterator.hasNext();)
        {
            com.googlecode.mp4parser.boxes.c c1 = (com.googlecode.mp4parser.boxes.c)iterator.next();
            d1.a(c1.a, 2);
            d1.a(c1.b, 5);
            d1.a(c1.c, 5);
            d1.a(c1.d, 3);
            d1.a(c1.e, 1);
            d1.a(c1.f, 3);
            d1.a(c1.g, 4);
            if (c1.g > 0)
            {
                d1.a(c1.h, 9);
            } else
            {
                d1.a(c1.i, 1);
            }
        }

    }

    public long getContentSize()
    {
        Iterator iterator = entries.iterator();
        long l = 2L;
        while (iterator.hasNext()) 
        {
            if (((com.googlecode.mp4parser.boxes.c)iterator.next()).g > 0)
            {
                l += 4L;
            } else
            {
                l += 3L;
            }
        }
        return l;
    }

    public int getDataRate()
    {
        return dataRate;
    }

    public List getEntries()
    {
        return entries;
    }

    public int getNumIndSub()
    {
        return numIndSub;
    }

    public void setDataRate(int i)
    {
        dataRate = i;
    }

    public void setEntries(List list)
    {
        entries = list;
    }

    public void setNumIndSub(int i)
    {
        numIndSub = i;
    }
}
