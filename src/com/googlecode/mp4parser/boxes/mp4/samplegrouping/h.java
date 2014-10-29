// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.coremedia.iso.d;
import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            b

public final class h extends b
{

    private ByteBuffer a;

    public h()
    {
    }

    public final ByteBuffer a()
    {
        return a.duplicate();
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = (ByteBuffer)bytebuffer.duplicate().rewind();
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            h h1 = (h)obj;
            if (a == null ? h1.a != null : !a.equals(h1.a))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        if (a != null)
        {
            return a.hashCode();
        } else
        {
            return 0;
        }
    }

    public final String toString()
    {
        ByteBuffer bytebuffer = a.duplicate();
        bytebuffer.rewind();
        byte abyte0[] = new byte[bytebuffer.limit()];
        bytebuffer.get(abyte0);
        return (new StringBuilder("UnknownEntry{content=")).append(d.a(abyte0)).append('}').toString();
    }
}
