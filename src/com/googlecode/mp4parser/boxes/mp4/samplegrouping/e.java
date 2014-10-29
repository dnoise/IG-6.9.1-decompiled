// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            b

public final class e extends b
{

    private short a;

    public e()
    {
    }

    public final ByteBuffer a()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(2);
        bytebuffer.putShort(a);
        bytebuffer.rewind();
        return bytebuffer;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = bytebuffer.getShort();
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
            if (a != e1.a)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return a;
    }
}
