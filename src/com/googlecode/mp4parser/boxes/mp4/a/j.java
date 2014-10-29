// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.a;

import com.coremedia.iso.d;
import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.a:
//            b

public class j extends b
{

    byte a[];

    public j()
    {
    }

    public final void a(ByteBuffer bytebuffer)
    {
        if (a() > 0)
        {
            a = new byte[a()];
            bytebuffer.get(a);
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ExtensionDescriptor");
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
