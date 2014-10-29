// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.threegpp26245;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes.threegpp26245:
//            a

public class FontTableBox extends AbstractBox
{

    List entries;

    public FontTableBox()
    {
        super("ftab");
        entries = new LinkedList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        int i = e.d(bytebuffer);
        for (int j = 0; j < i; j++)
        {
            a a1 = new a();
            a1.a(bytebuffer);
            entries.add(a1);
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        g.b(bytebuffer, entries.size());
        for (Iterator iterator = entries.iterator(); iterator.hasNext(); ((a)iterator.next()).b(bytebuffer)) { }
    }

    protected long getContentSize()
    {
        Iterator iterator = entries.iterator();
        int i;
        for (i = 2; iterator.hasNext(); i += ((a)iterator.next()).a()) { }
        return (long)i;
    }

    public List getEntries()
    {
        return entries;
    }

    public void setEntries(List list)
    {
        entries = list;
    }
}
