// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            b

public final class e extends b
{

    String b;

    public e()
    {
        super(1);
    }

    public final ByteBuffer a()
    {
        byte abyte0[];
        try
        {
            abyte0 = b.getBytes("UTF-16LE");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException(unsupportedencodingexception);
        }
        return ByteBuffer.wrap(abyte0);
    }

    public final void a(ByteBuffer bytebuffer)
    {
        try
        {
            byte abyte0[] = new byte[bytebuffer.slice().limit()];
            bytebuffer.get(abyte0);
            b = new String(abyte0, "UTF-16LE");
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException(unsupportedencodingexception);
        }
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("RMHeader");
        stringbuilder.append("{length=").append(a().limit());
        stringbuilder.append(", header='").append(b).append('\'');
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
