// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.b;
import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.c.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class SampleEntry extends AbstractBox
    implements ContainerBox
{

    private b boxParser;
    protected List boxes;
    private int dataReferenceIndex;

    protected SampleEntry(String s)
    {
        super(s);
        dataReferenceIndex = 1;
        boxes = new LinkedList();
    }

    public void _parseChildBoxes(ByteBuffer bytebuffer)
    {
        while (bytebuffer.remaining() > 8) 
        {
            try
            {
                boxes.add(boxParser.a(new a(bytebuffer), this));
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException(ioexception);
            }
        }
        setDeadBytes(bytebuffer.slice());
    }

    public void _parseReservedAndDataReferenceIndex(ByteBuffer bytebuffer)
    {
        bytebuffer.get(new byte[6]);
        dataReferenceIndex = e.d(bytebuffer);
    }

    public void _writeChildBoxes(ByteBuffer bytebuffer)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        WritableByteChannel writablebytechannel;
        bytearrayoutputstream = new ByteArrayOutputStream();
        writablebytechannel = Channels.newChannel(bytearrayoutputstream);
        try
        {
            for (Iterator iterator = boxes.iterator(); iterator.hasNext(); ((com.coremedia.iso.boxes.a)iterator.next()).getBox(writablebytechannel)) { }
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Cannot happen. Everything should be in memory and therefore no exceptions.");
        }
        writablebytechannel.close();
        bytebuffer.put(bytearrayoutputstream.toByteArray());
        return;
    }

    public void _writeReservedAndDataReferenceIndex(ByteBuffer bytebuffer)
    {
        bytebuffer.put(new byte[6]);
        g.b(bytebuffer, dataReferenceIndex);
    }

    public void addBox(com.coremedia.iso.boxes.a a1)
    {
        a1.setParent(this);
        boxes.add(a1);
    }

    public List getBoxes()
    {
        return boxes;
    }

    public List getBoxes(Class class1)
    {
        return getBoxes(class1, false);
    }

    public List getBoxes(Class class1, boolean flag)
    {
        ArrayList arraylist = new ArrayList(2);
        Iterator iterator = boxes.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.coremedia.iso.boxes.a a1 = (com.coremedia.iso.boxes.a)iterator.next();
            if (class1 == a1.getClass())
            {
                arraylist.add(a1);
            }
            if (flag && (a1 instanceof ContainerBox))
            {
                arraylist.addAll(((ContainerBox)a1).getBoxes(class1, flag));
            }
        } while (true);
        return arraylist;
    }

    public int getDataReferenceIndex()
    {
        return dataReferenceIndex;
    }

    public long getNumOfBytesToFirstChild()
    {
        Iterator iterator = boxes.iterator();
        long l;
        for (l = 0L; iterator.hasNext(); l += ((com.coremedia.iso.boxes.a)iterator.next()).getSize()) { }
        return getSize() - l;
    }

    public void parse(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, long l, b b1)
    {
        boxParser = b1;
        super.parse(readablebytechannel, bytebuffer, l, b1);
    }

    public boolean removeBox(com.coremedia.iso.boxes.a a1)
    {
        a1.setParent(this);
        return boxes.remove(a1);
    }

    public void setBoxes(List list)
    {
        boxes = new LinkedList(list);
    }

    public void setDataReferenceIndex(int i)
    {
        dataReferenceIndex = i;
    }

    public void setType(String s)
    {
        type = s;
    }
}
