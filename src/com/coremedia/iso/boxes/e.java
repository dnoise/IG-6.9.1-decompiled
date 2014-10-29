// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.f;
import com.coremedia.iso.g;
import com.coremedia.iso.h;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            ItemLocationBox, d

public final class e
{

    public int a;
    public int b;
    public int c;
    public long d;
    public List e;
    final ItemLocationBox f;

    public e(ItemLocationBox itemlocationbox, int i, int j, int k, long l, List list)
    {
        f = itemlocationbox;
        super();
        e = new LinkedList();
        a = i;
        b = j;
        c = k;
        d = l;
        e = list;
    }

    public e(ItemLocationBox itemlocationbox, ByteBuffer bytebuffer)
    {
        f = itemlocationbox;
        super();
        e = new LinkedList();
        a = com.coremedia.iso.e.d(bytebuffer);
        if (itemlocationbox.getVersion() == 1)
        {
            b = 0xf & com.coremedia.iso.e.d(bytebuffer);
        }
        c = com.coremedia.iso.e.d(bytebuffer);
        int i;
        if (itemlocationbox.baseOffsetSize > 0)
        {
            d = com.coremedia.iso.f.a(bytebuffer, itemlocationbox.baseOffsetSize);
        } else
        {
            d = 0L;
        }
        i = com.coremedia.iso.e.d(bytebuffer);
        for (int j = 0; j < i; j++)
        {
            e.add(new d(itemlocationbox, bytebuffer));
        }

    }

    public final int a()
    {
        byte byte0 = 2;
        if (f.getVersion() == 1)
        {
            byte0 = 4;
        }
        int i = 2 + (byte0 + 2 + f.baseOffsetSize);
        Iterator iterator = e.iterator();
        int j;
        for (j = i; iterator.hasNext(); j += ((d)iterator.next()).a()) { }
        return j;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        g.b(bytebuffer, a);
        if (f.getVersion() == 1)
        {
            g.b(bytebuffer, b);
        }
        g.b(bytebuffer, c);
        if (f.baseOffsetSize > 0)
        {
            h.a(d, bytebuffer, f.baseOffsetSize);
        }
        g.b(bytebuffer, e.size());
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((d)iterator.next()).a(bytebuffer)) { }
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            e e1 = (e)obj;
            if (d != e1.d)
            {
                return false;
            }
            if (b != e1.b)
            {
                return false;
            }
            if (c != e1.c)
            {
                return false;
            }
            if (a != e1.a)
            {
                return false;
            }
            if (e == null ? e1.e != null : !e.equals(e1.e))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        int i = 31 * (31 * (31 * (31 * a + b) + c) + (int)(d ^ d >>> 32));
        int j;
        if (e != null)
        {
            j = e.hashCode();
        } else
        {
            j = 0;
        }
        return j + i;
    }

    public final String toString()
    {
        return (new StringBuilder("Item{baseOffset=")).append(d).append(", itemId=").append(a).append(", constructionMethod=").append(b).append(", dataReferenceIndex=").append(c).append(", extents=").append(e).append('}').toString();
    }
}
