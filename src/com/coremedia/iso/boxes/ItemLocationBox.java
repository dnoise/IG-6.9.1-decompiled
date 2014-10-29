// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            e, d

public class ItemLocationBox extends AbstractFullBox
{

    public static final String TYPE = "iloc";
    public int baseOffsetSize;
    public int indexSize;
    public List items;
    public int lengthSize;
    public int offsetSize;

    public ItemLocationBox()
    {
        super("iloc");
        offsetSize = 8;
        lengthSize = 8;
        baseOffsetSize = 8;
        indexSize = 0;
        items = new LinkedList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i = e.f(bytebuffer);
        offsetSize = i >>> 4;
        lengthSize = i & 0xf;
        int j = e.f(bytebuffer);
        baseOffsetSize = j >>> 4;
        if (getVersion() == 1)
        {
            indexSize = j & 0xf;
        }
        int k = e.d(bytebuffer);
        for (int l = 0; l < k; l++)
        {
            items.add(new com.coremedia.iso.boxes.e(this, bytebuffer));
        }

    }

    public d createExtent(long l, long l1, long l2)
    {
        return new d(this, l, l1, l2);
    }

    d createExtent(ByteBuffer bytebuffer)
    {
        return new d(this, bytebuffer);
    }

    public com.coremedia.iso.boxes.e createItem(int i, int j, int k, long l, List list)
    {
        return new com.coremedia.iso.boxes.e(this, i, j, k, l, list);
    }

    com.coremedia.iso.boxes.e createItem(ByteBuffer bytebuffer)
    {
        return new com.coremedia.iso.boxes.e(this, bytebuffer);
    }

    public int getBaseOffsetSize()
    {
        return baseOffsetSize;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.d(bytebuffer, offsetSize << 4 | lengthSize);
        if (getVersion() == 1)
        {
            g.d(bytebuffer, baseOffsetSize << 4 | indexSize);
        } else
        {
            g.d(bytebuffer, baseOffsetSize << 4);
        }
        g.b(bytebuffer, items.size());
        for (Iterator iterator = items.iterator(); iterator.hasNext(); ((com.coremedia.iso.boxes.e)iterator.next()).a(bytebuffer)) { }
    }

    protected long getContentSize()
    {
        Iterator iterator = items.iterator();
        long l;
        for (l = 8L; iterator.hasNext(); l += ((com.coremedia.iso.boxes.e)iterator.next()).a()) { }
        return l;
    }

    public int getIndexSize()
    {
        return indexSize;
    }

    public List getItems()
    {
        return items;
    }

    public int getLengthSize()
    {
        return lengthSize;
    }

    public int getOffsetSize()
    {
        return offsetSize;
    }

    public void setBaseOffsetSize(int i)
    {
        baseOffsetSize = i;
    }

    public void setIndexSize(int i)
    {
        indexSize = i;
    }

    public void setItems(List list)
    {
        items = list;
    }

    public void setLengthSize(int i)
    {
        lengthSize = i;
    }

    public void setOffsetSize(int i)
    {
        offsetSize = i;
    }
}
