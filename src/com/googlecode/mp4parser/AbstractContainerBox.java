// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.coremedia.iso.b;
import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser:
//            AbstractBox

public abstract class AbstractContainerBox extends AbstractBox
    implements ContainerBox
{

    private static Logger LOG = Logger.getLogger(com/googlecode/mp4parser/AbstractContainerBox.getName());
    protected b boxParser;
    protected List boxes;

    public AbstractContainerBox(String s)
    {
        super(s);
        boxes = new LinkedList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseChildBoxes(bytebuffer);
    }

    public void addBox(a a1)
    {
        a1.setParent(this);
        boxes.add(a1);
    }

    public List getBoxes()
    {
        return Collections.unmodifiableList(boxes);
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
            a a1 = (a)iterator.next();
            if (class1.isInstance(a1))
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

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeChildBoxes(bytebuffer);
    }

    protected long getContentSize()
    {
        Iterator iterator = boxes.iterator();
        long l;
        for (l = 0L; iterator.hasNext(); l += ((a)iterator.next()).getSize()) { }
        return l;
    }

    public long getNumOfBytesToFirstChild()
    {
        return 8L;
    }

    public void parse(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, long l, b b1)
    {
        boxParser = b1;
        super.parse(readablebytechannel, bytebuffer, l, b1);
    }

    protected final void parseChildBoxes(ByteBuffer bytebuffer)
    {
        try
        {
            for (; bytebuffer.remaining() >= 8; boxes.add(boxParser.a(new com.googlecode.mp4parser.c.a(bytebuffer), this))) { }
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        if (bytebuffer.remaining() != 0)
        {
            setDeadBytes(bytebuffer.slice());
            LOG.warning("Something's wrong with the sizes. There are dead bytes in a container box.");
        }
        return;
    }

    public void removeBox(a a1)
    {
        a1.setParent(this);
        boxes.remove(a1);
    }

    public void setBoxes(List list)
    {
        boxes = new LinkedList(list);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(getClass().getSimpleName()).append("[");
        for (int i = 0; i < boxes.size(); i++)
        {
            if (i > 0)
            {
                stringbuilder.append(";");
            }
            stringbuilder.append(((a)boxes.get(i)).toString());
        }

        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    protected final void writeChildBoxes(ByteBuffer bytebuffer)
    {
        com.googlecode.mp4parser.c.a a1 = new com.googlecode.mp4parser.c.a(bytebuffer);
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a2 = (a)iterator.next();
            try
            {
                a2.getBox(a1);
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException("Cannot happen to me", ioexception);
            }
        }

    }

}
