// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            b

public final class g extends b
{

    private boolean a;
    private short b;

    public g()
    {
    }

    public final ByteBuffer a()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(1);
        char c;
        if (a)
        {
            c = '\200';
        } else
        {
            c = '\0';
        }
        bytebuffer.put((byte)c);
        bytebuffer.rewind();
        return bytebuffer;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        boolean flag;
        if ((0x80 & bytebuffer.get()) == 128)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            g g1 = (g)obj;
            if (a != g1.a)
            {
                return false;
            }
            if (b != g1.b)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        int i;
        if (a)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        return i * 31 + b;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TemporalLevelEntry");
        stringbuilder.append("{levelIndependentlyDecodable=").append(a);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
