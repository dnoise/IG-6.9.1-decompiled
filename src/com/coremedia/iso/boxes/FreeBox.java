// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.c;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            a, ContainerBox

public class FreeBox
    implements a
{

    static final boolean $assertionsDisabled = false;
    public static final String TYPE = "free";
    ByteBuffer data;
    private ContainerBox parent;
    List replacers;

    public FreeBox()
    {
        replacers = new LinkedList();
    }

    public FreeBox(int i)
    {
        replacers = new LinkedList();
        data = ByteBuffer.allocate(i);
    }

    public void addAndReplace(a a1)
    {
        data.position(b.a(a1.getSize()));
        data = data.slice();
        replacers.add(a1);
    }

    public void getBox(WritableByteChannel writablebytechannel)
    {
        for (Iterator iterator = replacers.iterator(); iterator.hasNext(); ((a)iterator.next()).getBox(writablebytechannel)) { }
        ByteBuffer bytebuffer = ByteBuffer.allocate(8);
        g.b(bytebuffer, 8 + data.limit());
        bytebuffer.put("free".getBytes());
        bytebuffer.rewind();
        writablebytechannel.write(bytebuffer);
        data.rewind();
        writablebytechannel.write(data);
    }

    public ByteBuffer getData()
    {
        return data;
    }

    public ContainerBox getParent()
    {
        return parent;
    }

    public long getSize()
    {
        Iterator iterator = replacers.iterator();
        long l;
        for (l = 8L; iterator.hasNext(); l += ((a)iterator.next()).getSize()) { }
        return l + (long)data.limit();
    }

    public String getType()
    {
        return "free";
    }

    public void parse(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, long l, com.coremedia.iso.b b1)
    {
        if ((readablebytechannel instanceof FileChannel) && l > 0x100000L)
        {
            data = ((FileChannel)readablebytechannel).map(java.nio.channels.FileChannel.MapMode.READ_ONLY, ((FileChannel)readablebytechannel).position(), l);
            ((FileChannel)readablebytechannel).position(l + ((FileChannel)readablebytechannel).position());
            return;
        }
        if (!$assertionsDisabled && l >= 0x7fffffffL)
        {
            throw new AssertionError();
        } else
        {
            data = c.a(readablebytechannel, l);
            return;
        }
    }

    public void setData(ByteBuffer bytebuffer)
    {
        data = bytebuffer;
    }

    public void setParent(ContainerBox containerbox)
    {
        parent = containerbox;
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/FreeBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
