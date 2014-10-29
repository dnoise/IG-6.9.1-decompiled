// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4;

import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.boxes.mp4.a.b;
import com.googlecode.mp4parser.boxes.mp4.a.l;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AbstractDescriptorBox extends AbstractFullBox
{

    private static Logger log = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox.getName());
    public ByteBuffer data;
    public b descriptor;

    public AbstractDescriptorBox(String s)
    {
        super(s);
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        data = bytebuffer.slice();
        bytebuffer.position(bytebuffer.position() + bytebuffer.remaining());
        try
        {
            data.rewind();
            descriptor = l.a(-1, data);
            return;
        }
        catch (IOException ioexception)
        {
            log.log(Level.WARNING, "Error parsing ObjectDescriptor", ioexception);
            return;
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            log.log(Level.WARNING, "Error parsing ObjectDescriptor", indexoutofboundsexception);
        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        data.rewind();
        bytebuffer.put(data);
    }

    protected long getContentSize()
    {
        return (long)(4 + data.limit());
    }

    public b getDescriptor()
    {
        return descriptor;
    }

    public String getDescriptorAsString()
    {
        return descriptor.toString();
    }

    public void setData(ByteBuffer bytebuffer)
    {
        data = bytebuffer;
    }

}
