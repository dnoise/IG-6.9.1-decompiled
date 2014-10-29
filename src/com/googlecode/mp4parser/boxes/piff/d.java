// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            b

public final class d extends b
{

    ByteBuffer b;

    public d()
    {
        super(3);
    }

    public final ByteBuffer a()
    {
        return b;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        b = bytebuffer.duplicate();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("EmeddedLicenseStore");
        stringbuilder.append("{length=").append(a().limit());
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
