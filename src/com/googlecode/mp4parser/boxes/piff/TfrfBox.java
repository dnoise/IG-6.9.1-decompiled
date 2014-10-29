// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            g

public class TfrfBox extends AbstractFullBox
{

    public List entries;

    public TfrfBox()
    {
        super("uuid");
        entries = new ArrayList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i = e.f(bytebuffer);
        int j = 0;
        while (j < i) 
        {
            com.googlecode.mp4parser.boxes.piff.g g1 = new com.googlecode.mp4parser.boxes.piff.g(this);
            if (getVersion() == 1)
            {
                g1.a = e.h(bytebuffer);
                g1.b = e.h(bytebuffer);
            } else
            {
                g1.a = e.b(bytebuffer);
                g1.b = e.b(bytebuffer);
            }
            entries.add(g1);
            j++;
        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.d(bytebuffer, entries.size());
        for (Iterator iterator = entries.iterator(); iterator.hasNext();)
        {
            com.googlecode.mp4parser.boxes.piff.g g1 = (com.googlecode.mp4parser.boxes.piff.g)iterator.next();
            if (getVersion() == 1)
            {
                g.a(bytebuffer, g1.a);
                g.a(bytebuffer, g1.b);
            } else
            {
                g.b(bytebuffer, g1.a);
                g.b(bytebuffer, g1.b);
            }
        }

    }

    protected long getContentSize()
    {
        int i = entries.size();
        byte byte0;
        if (getVersion() == 1)
        {
            byte0 = 16;
        } else
        {
            byte0 = 8;
        }
        return (long)(5 + byte0 * i);
    }

    public List getEntries()
    {
        return entries;
    }

    public long getFragmentCount()
    {
        return (long)entries.size();
    }

    public byte[] getUserType()
    {
        return (new byte[] {
            -44, -128, 126, -14, -54, 57, 70, -107, -114, 84, 
            38, -53, -98, 70, -89, -97
        });
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TfrfBox");
        stringbuilder.append("{entries=").append(entries);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
