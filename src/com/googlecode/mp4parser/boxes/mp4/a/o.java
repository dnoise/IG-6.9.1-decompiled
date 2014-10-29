// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.a;

import java.nio.ByteBuffer;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.a:
//            b

public class o extends b
{

    private static Logger b = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/a/o.getName());
    private ByteBuffer a;

    public o()
    {
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = (ByteBuffer)bytebuffer.slice().limit(b());
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("UnknownDescriptor");
        stringbuilder.append("{tag=").append(T);
        stringbuilder.append(", sizeOfInstance=").append(U);
        stringbuilder.append(", data=").append(a);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
