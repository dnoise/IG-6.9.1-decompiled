// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            b, d

public final class c extends com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
{

    private short a;
    private short b;
    private List c;
    private int d;
    private int e;
    private short f;

    public c()
    {
        c = new LinkedList();
    }

    public final ByteBuffer a()
    {
        int i;
        ByteBuffer bytebuffer;
        if (a == 1)
        {
            i = 13;
        } else
        {
            i = 11 + 6 * a;
        }
        bytebuffer = ByteBuffer.allocate(i);
        bytebuffer.putShort(a);
        if (a == 1)
        {
            bytebuffer.putShort(b);
        } else
        {
            Iterator iterator = c.iterator();
            while (iterator.hasNext()) 
            {
                d d1 = (d)iterator.next();
                bytebuffer.putInt(d1.a());
                bytebuffer.putShort(d1.b());
            }
        }
        bytebuffer.putInt(d);
        bytebuffer.putInt(e);
        g.d(bytebuffer, f);
        bytebuffer.rewind();
        return bytebuffer;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = bytebuffer.getShort();
        if (a != 1) goto _L2; else goto _L1
_L1:
        b = bytebuffer.getShort();
_L4:
        d = com.googlecode.mp4parser.c.b.a(com.coremedia.iso.e.b(bytebuffer));
        e = com.googlecode.mp4parser.c.b.a(com.coremedia.iso.e.b(bytebuffer));
        f = (short)com.coremedia.iso.e.f(bytebuffer);
        return;
_L2:
        int i = a;
        do
        {
            int j = i - 1;
            if (i <= 0)
            {
                continue;
            }
            c.add(new d(com.googlecode.mp4parser.c.b.a(com.coremedia.iso.e.b(bytebuffer)), bytebuffer.getShort()));
            i = j;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            c c1 = (c)obj;
            if (f != c1.f)
            {
                return false;
            }
            if (d != c1.d)
            {
                return false;
            }
            if (e != c1.e)
            {
                return false;
            }
            if (a != c1.a)
            {
                return false;
            }
            if (b != c1.b)
            {
                return false;
            }
            if (c == null ? c1.c != null : !c.equals(c1.c))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        int i = 31 * (31 * a + b);
        int j;
        if (c != null)
        {
            j = c.hashCode();
        } else
        {
            j = 0;
        }
        return 31 * (31 * (31 * (j + i) + d) + e) + f;
    }
}
