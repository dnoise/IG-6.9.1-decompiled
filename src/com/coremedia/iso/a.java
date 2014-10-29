// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import com.coremedia.iso.boxes.ContainerBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.logging.Logger;

// Referenced classes of package com.coremedia.iso:
//            b, c, e, g, 
//            IsoFile

public abstract class a
    implements com.coremedia.iso.b
{

    static final boolean a;
    private static Logger b = Logger.getLogger(com/coremedia/iso/a.getName());

    public a()
    {
    }

    public abstract com.coremedia.iso.boxes.a a(String s, byte abyte0[], String s1);

    public final com.coremedia.iso.boxes.a a(ReadableByteChannel readablebytechannel, ContainerBox containerbox)
    {
        ByteBuffer bytebuffer = c.a(readablebytechannel, 8L);
        long l = com.coremedia.iso.e.b(bytebuffer);
        com.coremedia.iso.boxes.a a1;
        if (l < 8L && l > 1L)
        {
            b.severe((new StringBuilder("Plausibility check failed: size < 8 (size = ")).append(l).append("). Stop parsing!").toString());
            a1 = null;
        } else
        {
            String s = e.l(bytebuffer);
            long l1;
            long l2;
            long l3;
            byte abyte0[];
            ByteBuffer bytebuffer1;
            if (l == 1L)
            {
                ByteBuffer bytebuffer3 = ByteBuffer.allocate(8);
                readablebytechannel.read(bytebuffer3);
                bytebuffer3.rewind();
                long l5 = e.h(bytebuffer3);
                l1 = l5 - 16L;
                l2 = l5;
            } else
            if (l == 0L)
            {
                if (readablebytechannel instanceof FileChannel)
                {
                    long l4 = ((FileChannel)readablebytechannel).size() - ((FileChannel)readablebytechannel).position() - 8L;
                    l1 = l4 - 8L;
                    l2 = l4;
                } else
                {
                    throw new RuntimeException("Only FileChannel inputs may use size == 0 (box reaches to the end of file)");
                }
            } else
            {
                l1 = l - 8L;
                l2 = l;
            }
            if ("uuid".equals(s))
            {
                ByteBuffer bytebuffer2 = ByteBuffer.allocate(16);
                readablebytechannel.read(bytebuffer2);
                bytebuffer2.rewind();
                byte abyte1[] = bytebuffer2.array();
                l3 = l1 - 16L;
                abyte0 = abyte1;
            } else
            {
                l3 = l1;
                abyte0 = null;
            }
            a1 = a(s, abyte0, containerbox.getType());
            a1.setParent(containerbox);
            b.finest((new StringBuilder("Parsing ")).append(a1.getType()).toString());
            if (com.googlecode.mp4parser.c.b.a(l2 - l3) == 8)
            {
                bytebuffer.rewind();
                bytebuffer1 = bytebuffer;
            } else
            if (com.googlecode.mp4parser.c.b.a(l2 - l3) == 16)
            {
                bytebuffer1 = ByteBuffer.allocate(16);
                com.coremedia.iso.g.b(bytebuffer1, 1L);
                bytebuffer1.put(IsoFile.fourCCtoBytes(s));
                g.a(bytebuffer1, l2);
            } else
            if (com.googlecode.mp4parser.c.b.a(l2 - l3) == 24)
            {
                bytebuffer1 = ByteBuffer.allocate(24);
                com.coremedia.iso.g.b(bytebuffer1, l2);
                bytebuffer1.put(IsoFile.fourCCtoBytes(s));
                bytebuffer1.put(abyte0);
            } else
            if (com.googlecode.mp4parser.c.b.a(l2 - l3) == 32)
            {
                bytebuffer1 = ByteBuffer.allocate(32);
                com.coremedia.iso.g.b(bytebuffer1, l2);
                bytebuffer1.put(IsoFile.fourCCtoBytes(s));
                g.a(bytebuffer1, l2);
                bytebuffer1.put(abyte0);
            } else
            {
                throw new RuntimeException("I didn't expect that");
            }
            a1.parse(readablebytechannel, bytebuffer1, l3, this);
            if (!a && l2 != a1.getSize())
            {
                throw new AssertionError((new StringBuilder("Reconstructed Size is not x to the number of parsed bytes! (")).append(a1.getType()).append(") Actual Box size: ").append(l2).append(" Calculated size: ").append(a1.getSize()).toString());
            }
        }
        return a1;
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/a.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
