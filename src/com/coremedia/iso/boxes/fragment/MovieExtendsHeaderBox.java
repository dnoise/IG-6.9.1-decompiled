// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class MovieExtendsHeaderBox extends AbstractFullBox
{

    public static final String TYPE = "mehd";
    private long fragmentDuration;

    public MovieExtendsHeaderBox()
    {
        super("mehd");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        long l;
        if (getVersion() == 1)
        {
            l = e.h(bytebuffer);
        } else
        {
            l = e.b(bytebuffer);
        }
        fragmentDuration = l;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            g.a(bytebuffer, fragmentDuration);
            return;
        } else
        {
            g.b(bytebuffer, fragmentDuration);
            return;
        }
    }

    protected long getContentSize()
    {
        return getVersion() != 1 ? 8L : 12L;
    }

    public long getFragmentDuration()
    {
        return fragmentDuration;
    }

    public void setFragmentDuration(long l)
    {
        fragmentDuration = l;
    }
}
