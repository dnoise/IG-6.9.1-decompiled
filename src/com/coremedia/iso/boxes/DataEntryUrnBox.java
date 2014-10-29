// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class DataEntryUrnBox extends AbstractFullBox
{

    public static final String TYPE = "urn ";
    private String location;
    private String name;

    public DataEntryUrnBox()
    {
        super("urn ");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        name = e.g(bytebuffer);
        location = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        bytebuffer.put(k.a(name));
        bytebuffer.put((byte)0);
        bytebuffer.put(k.a(location));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(1 + (1 + k.b(name) + k.b(location)));
    }

    public String getLocation()
    {
        return location;
    }

    public String getName()
    {
        return name;
    }

    public String toString()
    {
        return (new StringBuilder("DataEntryUrlBox[name=")).append(getName()).append(";location=").append(getLocation()).append("]").toString();
    }
}
