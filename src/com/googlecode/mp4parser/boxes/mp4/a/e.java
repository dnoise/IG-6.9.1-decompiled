// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.a;

import com.coremedia.iso.d;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.a:
//            b, l, f, a, 
//            m

public class e extends b
{

    private static Logger k = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/a/e.getName());
    int a;
    int b;
    int c;
    int d;
    long e;
    long f;
    f g;
    a h;
    List i;
    byte j[];

    public e()
    {
        i = new ArrayList();
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = com.coremedia.iso.e.f(bytebuffer);
        int i1 = com.coremedia.iso.e.f(bytebuffer);
        b = i1 >>> 2;
        c = 1 & i1 >> 1;
        d = com.coremedia.iso.e.c(bytebuffer);
        e = com.coremedia.iso.e.b(bytebuffer);
        f = com.coremedia.iso.e.b(bytebuffer);
        if (bytebuffer.remaining() > 2)
        {
            int j1 = bytebuffer.position();
            b b2 = com.googlecode.mp4parser.boxes.mp4.a.l.a(a, bytebuffer);
            int k1 = bytebuffer.position() - j1;
            Logger logger1 = k;
            StringBuilder stringbuilder1 = (new StringBuilder()).append(b2).append(" - DecoderConfigDescr1 read: ").append(k1).append(", size: ");
            long l1;
            b b1;
            long l2;
            Logger logger;
            StringBuilder stringbuilder;
            Integer integer1;
            if (b2 != null)
            {
                integer1 = Integer.valueOf(b2.a());
            } else
            {
                integer1 = null;
            }
            logger1.finer(stringbuilder1.append(integer1).toString());
            if (b2 != null)
            {
                int i2 = b2.a();
                if (k1 < i2)
                {
                    j = new byte[i2 - k1];
                    bytebuffer.get(j);
                }
            }
            if (b2 instanceof f)
            {
                g = (f)b2;
            }
            if (b2 instanceof a)
            {
                h = (a)b2;
            }
        }
        do
        {
            if (bytebuffer.remaining() <= 2)
            {
                break;
            }
            l1 = bytebuffer.position();
            b1 = com.googlecode.mp4parser.boxes.mp4.a.l.a(a, bytebuffer);
            l2 = (long)bytebuffer.position() - l1;
            logger = k;
            stringbuilder = (new StringBuilder()).append(b1).append(" - DecoderConfigDescr2 read: ").append(l2).append(", size: ");
            Integer integer;
            if (b1 != null)
            {
                integer = Integer.valueOf(b1.a());
            } else
            {
                integer = null;
            }
            logger.finer(stringbuilder.append(integer).toString());
            if (b1 instanceof m)
            {
                i.add((m)b1);
            }
        } while (true);
    }

    public final f d()
    {
        return g;
    }

    public final a e()
    {
        return h;
    }

    public final List f()
    {
        return i;
    }

    public final int g()
    {
        return a;
    }

    public final int h()
    {
        return b;
    }

    public final int i()
    {
        return c;
    }

    public final int j()
    {
        return d;
    }

    public final long k()
    {
        return e;
    }

    public final long l()
    {
        return f;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("DecoderConfigDescriptor");
        stringbuilder.append("{objectTypeIndication=").append(a);
        stringbuilder.append(", streamType=").append(b);
        stringbuilder.append(", upStream=").append(c);
        stringbuilder.append(", bufferSizeDB=").append(d);
        stringbuilder.append(", maxBitRate=").append(e);
        stringbuilder.append(", avgBitRate=").append(f);
        stringbuilder.append(", decoderSpecificInfo=").append(g);
        stringbuilder.append(", audioSpecificInfo=").append(h);
        StringBuilder stringbuilder1 = stringbuilder.append(", configDescriptorDeadBytes=");
        byte abyte0[];
        StringBuilder stringbuilder2;
        String s;
        if (j != null)
        {
            abyte0 = j;
        } else
        {
            abyte0 = new byte[0];
        }
        stringbuilder1.append(com.coremedia.iso.d.a(abyte0));
        stringbuilder2 = stringbuilder.append(", profileLevelIndicationDescriptors=");
        if (i == null)
        {
            s = "null";
        } else
        {
            List alist[] = new List[1];
            alist[0] = i;
            s = Arrays.asList(alist).toString();
        }
        stringbuilder2.append(s);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
