// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.a.a;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.a;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.a.c;
import com.googlecode.mp4parser.a.e;
import java.nio.ByteBuffer;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.googlecode.mp4parser.a.a:
//            a

final class b
    implements a
{

    List a;
    List b;
    ContainerBox c;
    long d;
    final com.googlecode.mp4parser.a.a.a e;

    private b(com.googlecode.mp4parser.a.a.a a1, c c1)
    {
        e = a1;
        super();
        b = new ArrayList();
        d = 0L;
        a = c1.a();
        HashMap hashmap = new HashMap();
        e e2;
        for (Iterator iterator = c1.a().iterator(); iterator.hasNext(); hashmap.put(e2, a1.a(e2, c1)))
        {
            e2 = (e)iterator.next();
        }

        for (int i = 0; i < ((int[])hashmap.values().iterator().next()).length; i++)
        {
            for (Iterator iterator1 = a.iterator(); iterator1.hasNext();)
            {
                e e1 = (e)iterator1.next();
                int ai[] = (int[])hashmap.get(e1);
                long l = 0L;
                for (int j = 0; j < i; j++)
                {
                    l += ai[j];
                }

                int k = com.googlecode.mp4parser.c.b.a(l);
                while ((long)k < l + (long)ai[i]) 
                {
                    ByteBuffer bytebuffer = (ByteBuffer)((List)a1.c.get(e1)).get(k);
                    d = d + (long)bytebuffer.limit();
                    b.add((ByteBuffer)bytebuffer.rewind());
                    k++;
                }
            }

        }

    }

    b(com.googlecode.mp4parser.a.a.a a1, c c1, byte byte0)
    {
        this(a1, c1);
    }

    private static boolean a(long l)
    {
        return 8L + l < 0x100000000L;
    }

    public final long a()
    {
        long l;
        long l1;
        for (l = 16L; getParent() != null; l = l1)
        {
            Iterator iterator = getParent().getBoxes().iterator();
            l1 = l;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                a a1 = (a)iterator.next();
                if (this == a1)
                {
                    break;
                }
                l1 += a1.getSize();
            } while (true);
            this = getParent();
        }

        return l;
    }

    public final void getBox(WritableByteChannel writablebytechannel)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(16);
        long l = getSize();
        if (a(l))
        {
            g.b(bytebuffer, l);
        } else
        {
            g.b(bytebuffer, 1L);
        }
        bytebuffer.put(IsoFile.fourCCtoBytes("mdat"));
        if (a(l))
        {
            bytebuffer.put(new byte[8]);
        } else
        {
            g.a(bytebuffer, l);
        }
        bytebuffer.rewind();
        writablebytechannel.write(bytebuffer);
        if (writablebytechannel instanceof GatheringByteChannel)
        {
            com.googlecode.mp4parser.a.a.a _tmp = e;
            List list = com.googlecode.mp4parser.a.a.a.a(b);
            int i = 0;
            while ((double)i < Math.ceil((double)list.size() / (double)e.a)) 
            {
                int j = i * e.a;
                int k;
                List list1;
                ByteBuffer abytebuffer[];
                if ((i + 1) * e.a < list.size())
                {
                    k = (i + 1) * e.a;
                } else
                {
                    k = list.size();
                }
                list1 = list.subList(j, k);
                abytebuffer = (ByteBuffer[])list1.toArray(new ByteBuffer[list1.size()]);
                do
                {
                    ((GatheringByteChannel)writablebytechannel).write(abytebuffer);
                } while (abytebuffer[-1 + abytebuffer.length].remaining() > 0);
                i++;
            }
        } else
        {
            ByteBuffer bytebuffer1;
            for (Iterator iterator = b.iterator(); iterator.hasNext(); writablebytechannel.write(bytebuffer1))
            {
                bytebuffer1 = (ByteBuffer)iterator.next();
                bytebuffer1.rewind();
            }

        }
    }

    public final ContainerBox getParent()
    {
        return c;
    }

    public final long getSize()
    {
        return 16L + d;
    }

    public final String getType()
    {
        return "mdat";
    }

    public final void parse(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, long l, com.coremedia.iso.b b1)
    {
    }

    public final void setParent(ContainerBox containerbox)
    {
        c = containerbox;
    }
}
