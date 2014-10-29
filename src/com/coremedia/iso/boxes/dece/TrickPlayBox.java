// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.dece;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.dece:
//            a

public class TrickPlayBox extends AbstractFullBox
{

    public static final String TYPE = "trik";
    private List entries;

    public TrickPlayBox()
    {
        super("trik");
        entries = new ArrayList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        for (; bytebuffer.remaining() > 0; entries.add(new a(e.f(bytebuffer)))) { }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        for (Iterator iterator = entries.iterator(); iterator.hasNext(); g.d(bytebuffer, a.a((a)iterator.next()))) { }
    }

    protected long getContentSize()
    {
        return (long)(4 + entries.size());
    }

    public List getEntries()
    {
        return entries;
    }

    public void setEntries(List list)
    {
        entries = list;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TrickPlayBox");
        stringbuilder.append("{entries=").append(entries);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
