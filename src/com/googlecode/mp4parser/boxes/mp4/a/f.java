// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.a;

import com.coremedia.iso.d;
import java.nio.ByteBuffer;
import java.util.Arrays;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.a:
//            b

public class f extends b
{

    byte a[];

    public f()
    {
    }

    public final void a(ByteBuffer bytebuffer)
    {
        if (U > 0)
        {
            a = new byte[U];
            bytebuffer.get(a);
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            f f1 = (f)obj;
            if (!Arrays.equals(a, f1.a))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        if (a != null)
        {
            return Arrays.hashCode(a);
        } else
        {
            return 0;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("DecoderSpecificInfo");
        StringBuilder stringbuilder1 = stringbuilder.append("{bytes=");
        String s;
        if (a == null)
        {
            s = "null";
        } else
        {
            s = d.a(a);
        }
        stringbuilder1.append(s);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
