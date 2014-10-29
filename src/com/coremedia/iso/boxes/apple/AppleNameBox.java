// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.e;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public final class AppleNameBox extends AbstractFullBox
{

    public static final String TYPE = "name";
    private String name;

    public AppleNameBox()
    {
        super("name");
    }

    public final void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        name = e.a(bytebuffer, bytebuffer.remaining());
    }

    protected final void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(k.a(name));
    }

    protected final long getContentSize()
    {
        return (long)(4 + k.a(name).length);
    }

    public final String getName()
    {
        return name;
    }

    public final void setName(String s)
    {
        name = s;
    }
}
