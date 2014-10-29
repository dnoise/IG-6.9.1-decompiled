// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.a;

import com.coremedia.iso.e;
import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.a:
//            b

public class m extends b
{

    int a;

    public m()
    {
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = e.f(bytebuffer);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            m m1 = (m)obj;
            if (a != m1.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return a;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ProfileLevelIndicationDescriptor");
        stringbuilder.append("{profileLevelIndicationIndex=").append(Integer.toHexString(a));
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
