// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.coremedia.iso.d;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;
import java.util.Arrays;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            b

public class a extends b
{

    static final boolean a;
    private int b;
    private byte c;
    private byte d[];

    public a()
    {
        d = new byte[16];
    }

    public final ByteBuffer a()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(20);
        g.a(bytebuffer, b);
        g.d(bytebuffer, c);
        bytebuffer.put(d);
        bytebuffer.rewind();
        return bytebuffer;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        b = e.c(bytebuffer);
        c = (byte)e.f(bytebuffer);
        d = new byte[16];
        bytebuffer.get(d);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            a a1 = (a)obj;
            if (b != a1.b)
            {
                return false;
            }
            if (c != a1.c)
            {
                return false;
            }
            if (!Arrays.equals(d, a1.d))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 31 * (31 * b + c);
        int j;
        if (d != null)
        {
            j = Arrays.hashCode(d);
        } else
        {
            j = 0;
        }
        return j + i;
    }

    public String toString()
    {
        return (new StringBuilder("CencSampleEncryptionInformationGroupEntry{isEncrypted=")).append(b).append(", ivSize=").append(c).append(", kid=").append(com.coremedia.iso.d.a(d)).append('}').toString();
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/boxes/mp4/samplegrouping/a.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
