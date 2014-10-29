// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            f, b

public class a extends f
{

    private long c;
    private List d;

    public a()
    {
    }

    public final ByteBuffer a()
    {
        Iterator iterator = d.iterator();
        int i;
        b b2;
        for (i = 6; iterator.hasNext(); i = i + 4 + b2.a().rewind().limit())
        {
            b2 = (b)iterator.next();
        }

        ByteBuffer bytebuffer = ByteBuffer.allocate(i);
        g.c(bytebuffer, i);
        g.c(bytebuffer, d.size());
        b b1;
        for (Iterator iterator1 = d.iterator(); iterator1.hasNext(); bytebuffer.put(b1.a()))
        {
            b1 = (b)iterator1.next();
            g.c(bytebuffer, b1.a);
            g.c(bytebuffer, b1.a().limit());
        }

        return bytebuffer;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        c = e.a(bytebuffer);
        d = b.a(bytebuffer, e.e(bytebuffer));
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("PlayReadyHeader");
        stringbuilder.append("{length=").append(c);
        stringbuilder.append(", recordCount=").append(d.size());
        stringbuilder.append(", records=").append(d);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
