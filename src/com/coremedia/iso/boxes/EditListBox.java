// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            c

public class EditListBox extends AbstractFullBox
{

    public static final String TYPE = "elst";
    private List entries;

    public EditListBox()
    {
        super("elst");
        entries = new LinkedList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i = b.a(e.b(bytebuffer));
        entries = new LinkedList();
        for (int j = 0; j < i; j++)
        {
            entries.add(new c(this, bytebuffer));
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, entries.size());
        for (Iterator iterator = entries.iterator(); iterator.hasNext(); ((c)iterator.next()).a(bytebuffer)) { }
    }

    protected long getContentSize()
    {
        if (getVersion() == 1)
        {
            return 8L + (long)(20 * entries.size());
        } else
        {
            return 8L + (long)(12 * entries.size());
        }
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
        return (new StringBuilder("EditListBox{entries=")).append(entries).append('}').toString();
    }
}
