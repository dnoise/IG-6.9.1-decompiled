// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            f

public class ProgressiveDownloadInformationBox extends AbstractFullBox
{

    List entries;

    public ProgressiveDownloadInformationBox()
    {
        super("pdin");
        entries = Collections.emptyList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        entries = new LinkedList();
        f f1;
        for (; bytebuffer.remaining() >= 8; entries.add(f1))
        {
            f1 = new f(e.b(bytebuffer), e.b(bytebuffer));
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        f f1;
        for (Iterator iterator = entries.iterator(); iterator.hasNext(); g.b(bytebuffer, f1.b()))
        {
            f1 = (f)iterator.next();
            g.b(bytebuffer, f1.a());
        }

    }

    protected long getContentSize()
    {
        return (long)(4 + 8 * entries.size());
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
        return (new StringBuilder("ProgressiveDownloadInfoBox{entries=")).append(entries).append('}').toString();
    }
}
