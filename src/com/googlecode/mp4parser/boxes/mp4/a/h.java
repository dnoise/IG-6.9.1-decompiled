// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.a;

import com.coremedia.iso.e;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.a:
//            b, l, e, n

public class h extends b
{

    private static Logger n = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/a/h.getName());
    int a;
    int b;
    int c;
    int d;
    int e;
    int f;
    String g;
    int h;
    int i;
    int j;
    com.googlecode.mp4parser.boxes.mp4.a.e k;
    n l;
    List m;

    public h()
    {
        f = 0;
        m = new ArrayList();
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = com.coremedia.iso.e.d(bytebuffer);
        int i1 = com.coremedia.iso.e.f(bytebuffer);
        b = i1 >>> 7;
        c = 1 & i1 >>> 6;
        d = 1 & i1 >>> 5;
        e = i1 & 0x1f;
        if (b == 1)
        {
            i = com.coremedia.iso.e.d(bytebuffer);
        }
        if (c == 1)
        {
            f = com.coremedia.iso.e.f(bytebuffer);
            g = com.coremedia.iso.e.a(bytebuffer, f);
        }
        if (d == 1)
        {
            j = com.coremedia.iso.e.d(bytebuffer);
        }
        int j1 = 1 + (2 + (1 + c()));
        byte byte0;
        int k1;
        int l1;
        int i2;
        int j2;
        byte byte1;
        int k2;
        int l2;
        int i3;
        if (b == 1)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        k1 = j1 + byte0;
        if (c == 1)
        {
            l1 = 1 + f;
        } else
        {
            l1 = 0;
        }
        i2 = l1 + k1;
        j2 = d;
        byte1 = 0;
        if (j2 == 1)
        {
            byte1 = 2;
        }
        k2 = i2 + byte1;
        l2 = bytebuffer.position();
        if (a() > k2 + 2)
        {
            b b3 = com.googlecode.mp4parser.boxes.mp4.a.l.a(-1, bytebuffer);
            long l5 = bytebuffer.position() - l2;
            Logger logger2 = n;
            StringBuilder stringbuilder2 = (new StringBuilder()).append(b3).append(" - ESDescriptor1 read: ").append(l5).append(", size: ");
            int j3;
            int k3;
            b b1;
            Logger logger;
            StringBuilder stringbuilder;
            int i4;
            b b2;
            Logger logger1;
            StringBuilder stringbuilder1;
            int j4;
            Integer integer2;
            if (b3 != null)
            {
                integer2 = Integer.valueOf(b3.a());
            } else
            {
                integer2 = null;
            }
            logger2.finer(stringbuilder2.append(integer2).toString());
            if (b3 != null)
            {
                int k4 = b3.a();
                bytebuffer.position(l2 + k4);
                i3 = k4 + k2;
            } else
            {
                i3 = (int)(l5 + (long)k2);
            }
            if (b3 instanceof com.googlecode.mp4parser.boxes.mp4.a.e)
            {
                k = (com.googlecode.mp4parser.boxes.mp4.a.e)b3;
            }
        } else
        {
            i3 = k2;
        }
        j3 = bytebuffer.position();
        if (a() > i3 + 2)
        {
            b2 = com.googlecode.mp4parser.boxes.mp4.a.l.a(-1, bytebuffer);
            long l4 = bytebuffer.position() - j3;
            logger1 = n;
            stringbuilder1 = (new StringBuilder()).append(b2).append(" - ESDescriptor2 read: ").append(l4).append(", size: ");
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
                j4 = b2.a();
                bytebuffer.position(j3 + j4);
                i3 += j4;
            } else
            {
                i3 = (int)(l4 + (long)i3);
            }
            if (b2 instanceof n)
            {
                l = (n)b2;
            }
        } else
        {
            n.warning("SLConfigDescriptor is missing!");
        }
        while (a() - i3 > 2) 
        {
            k3 = bytebuffer.position();
            b1 = com.googlecode.mp4parser.boxes.mp4.a.l.a(-1, bytebuffer);
            long l3 = bytebuffer.position() - k3;
            logger = n;
            stringbuilder = (new StringBuilder()).append(b1).append(" - ESDescriptor3 read: ").append(l3).append(", size: ");
            Integer integer;
            if (b1 != null)
            {
                integer = Integer.valueOf(b1.a());
            } else
            {
                integer = null;
            }
            logger.finer(stringbuilder.append(integer).toString());
            if (b1 != null)
            {
                i4 = b1.a();
                bytebuffer.position(k3 + i4);
                i3 += i4;
            } else
            {
                i3 = (int)(l3 + (long)i3);
            }
            m.add(b1);
        }
    }

    public final com.googlecode.mp4parser.boxes.mp4.a.e d()
    {
        return k;
    }

    public final n e()
    {
        return l;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            h h1 = (h)obj;
            if (c != h1.c)
            {
                return false;
            }
            if (f != h1.f)
            {
                return false;
            }
            if (i != h1.i)
            {
                return false;
            }
            if (a != h1.a)
            {
                return false;
            }
            if (j != h1.j)
            {
                return false;
            }
            if (d != h1.d)
            {
                return false;
            }
            if (h != h1.h)
            {
                return false;
            }
            if (b != h1.b)
            {
                return false;
            }
            if (e != h1.e)
            {
                return false;
            }
            if (g == null ? h1.g != null : !g.equals(h1.g))
            {
                return false;
            }
            if (k == null ? h1.k != null : !k.equals(h1.k))
            {
                return false;
            }
            if (m == null ? h1.m != null : !m.equals(h1.m))
            {
                return false;
            }
            if (l == null ? h1.l != null : !l.equals(h1.l))
            {
                return false;
            }
        }
        return true;
    }

    public final List f()
    {
        return m;
    }

    public final int g()
    {
        return j;
    }

    public final int h()
    {
        return a;
    }

    public int hashCode()
    {
        int i1 = 31 * (31 * (31 * (31 * (31 * (31 * a + b) + c) + d) + e) + f);
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        List list;
        int l2;
        if (g != null)
        {
            j1 = g.hashCode();
        } else
        {
            j1 = 0;
        }
        k1 = 31 * (31 * (31 * (31 * (j1 + i1) + h) + i) + j);
        if (k != null)
        {
            l1 = k.hashCode();
        } else
        {
            l1 = 0;
        }
        i2 = 31 * (l1 + k1);
        if (l != null)
        {
            j2 = l.hashCode();
        } else
        {
            j2 = 0;
        }
        k2 = 31 * (j2 + i2);
        list = m;
        l2 = 0;
        if (list != null)
        {
            l2 = m.hashCode();
        }
        return k2 + l2;
    }

    public final int i()
    {
        return b;
    }

    public final int j()
    {
        return c;
    }

    public final int k()
    {
        return d;
    }

    public final int l()
    {
        return e;
    }

    public final int m()
    {
        return f;
    }

    public final String n()
    {
        return g;
    }

    public final int o()
    {
        return h;
    }

    public final int p()
    {
        return i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ESDescriptor");
        stringbuilder.append("{esId=").append(a);
        stringbuilder.append(", streamDependenceFlag=").append(b);
        stringbuilder.append(", URLFlag=").append(c);
        stringbuilder.append(", oCRstreamFlag=").append(d);
        stringbuilder.append(", streamPriority=").append(e);
        stringbuilder.append(", URLLength=").append(f);
        stringbuilder.append(", URLString='").append(g).append('\'');
        stringbuilder.append(", remoteODFlag=").append(h);
        stringbuilder.append(", dependsOnEsId=").append(i);
        stringbuilder.append(", oCREsId=").append(j);
        stringbuilder.append(", decoderConfigDescriptor=").append(k);
        stringbuilder.append(", slConfigDescriptor=").append(l);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
