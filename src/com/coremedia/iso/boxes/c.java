// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes:
//            EditListBox

public final class c
{

    EditListBox a;
    private long b;
    private long c;
    private double d;

    public c(EditListBox editlistbox, ByteBuffer bytebuffer)
    {
        if (editlistbox.getVersion() == 1)
        {
            b = e.h(bytebuffer);
            c = e.h(bytebuffer);
            d = e.i(bytebuffer);
        } else
        {
            b = e.b(bytebuffer);
            c = e.b(bytebuffer);
            d = e.i(bytebuffer);
        }
        a = editlistbox;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        if (a.getVersion() == 1)
        {
            g.a(bytebuffer, b);
            g.a(bytebuffer, c);
        } else
        {
            g.b(bytebuffer, com.googlecode.mp4parser.c.b.a(b));
            bytebuffer.putInt(com.googlecode.mp4parser.c.b.a(c));
        }
        g.a(bytebuffer, d);
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
            if (c != c1.c)
            {
                return false;
            }
            if (b != c1.b)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return 31 * (int)(b ^ b >>> 32) + (int)(c ^ c >>> 32);
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{segmentDuration=")).append(b).append(", mediaTime=").append(c).append(", mediaRate=").append(d).append('}').toString();
    }
}
