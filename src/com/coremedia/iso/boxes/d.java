// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.f;
import com.coremedia.iso.h;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes:
//            ItemLocationBox

public final class d
{

    public long a;
    public long b;
    public long c;
    final ItemLocationBox d;

    public d(ItemLocationBox itemlocationbox, long l, long l1, long l2)
    {
        d = itemlocationbox;
        super();
        a = l;
        b = l1;
        c = l2;
    }

    public d(ItemLocationBox itemlocationbox, ByteBuffer bytebuffer)
    {
        d = itemlocationbox;
        super();
        if (itemlocationbox.getVersion() == 1 && itemlocationbox.indexSize > 0)
        {
            c = f.a(bytebuffer, itemlocationbox.indexSize);
        }
        a = f.a(bytebuffer, itemlocationbox.offsetSize);
        b = f.a(bytebuffer, itemlocationbox.lengthSize);
    }

    public final int a()
    {
        int i;
        if (d.indexSize > 0)
        {
            i = d.indexSize;
        } else
        {
            i = 0;
        }
        return i + d.offsetSize + d.lengthSize;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        if (d.getVersion() == 1 && d.indexSize > 0)
        {
            h.a(c, bytebuffer, d.indexSize);
        }
        h.a(a, bytebuffer, d.offsetSize);
        h.a(b, bytebuffer, d.lengthSize);
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            d d1 = (d)obj;
            if (c != d1.c)
            {
                return false;
            }
            if (b != d1.b)
            {
                return false;
            }
            if (a != d1.a)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return 31 * (31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32)) + (int)(c ^ c >>> 32);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Extent");
        stringbuilder.append("{extentOffset=").append(a);
        stringbuilder.append(", extentLength=").append(b);
        stringbuilder.append(", extentIndex=").append(c);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
