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
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            i, j

public class SubSampleInformationBox extends AbstractFullBox
{

    public static final String TYPE = "subs";
    private List entries;
    private long entryCount;

    public SubSampleInformationBox()
    {
        super("subs");
        entries = new ArrayList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        entryCount = e.b(bytebuffer);
        for (int k = 0; (long)k < entryCount; k++)
        {
            i l = new i();
            l.a(e.b(bytebuffer));
            int i1 = e.d(bytebuffer);
            int j1 = 0;
            while (j1 < i1) 
            {
                j j2 = new j();
                long l1;
                if (getVersion() == 1)
                {
                    l1 = e.b(bytebuffer);
                } else
                {
                    l1 = e.d(bytebuffer);
                }
                j2.a(l1);
                j2.a(e.f(bytebuffer));
                j2.b(e.f(bytebuffer));
                j2.b(e.b(bytebuffer));
                l.a(j2);
                j1++;
            }
            entries.add(l);
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, entries.size());
        for (Iterator iterator = entries.iterator(); iterator.hasNext();)
        {
            i k = (i)iterator.next();
            g.b(bytebuffer, k.a());
            g.b(bytebuffer, k.b());
            Iterator iterator1 = k.c().iterator();
            while (iterator1.hasNext()) 
            {
                j j1 = (j)iterator1.next();
                if (getVersion() == 1)
                {
                    g.b(bytebuffer, j1.a());
                } else
                {
                    g.b(bytebuffer, b.a(j1.a()));
                }
                g.d(bytebuffer, j1.b());
                g.d(bytebuffer, j1.c());
                g.b(bytebuffer, j1.d());
            }
        }

    }

    protected long getContentSize()
    {
        long l = 8L + 6L * entryCount;
        Iterator iterator = entries.iterator();
        int k = 0;
        while (iterator.hasNext()) 
        {
            int i1 = ((i)iterator.next()).b();
            byte byte0;
            if (getVersion() == 1)
            {
                byte0 = 4;
            } else
            {
                byte0 = 2;
            }
            k += i1 * (4 + (1 + (byte0 + 1)));
        }
        return l + (long)k;
    }

    public List getEntries()
    {
        return entries;
    }

    public void setEntries(List list)
    {
        entries = list;
        entryCount = list.size();
    }

    public String toString()
    {
        return (new StringBuilder("SubSampleInformationBox{entryCount=")).append(entryCount).append(", entries=").append(entries).append('}').toString();
    }
}
