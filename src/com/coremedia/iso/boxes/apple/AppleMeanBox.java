// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.e;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public final class AppleMeanBox extends AbstractFullBox
{

    public static final String TYPE = "mean";
    private String meaning;

    public AppleMeanBox()
    {
        super("mean");
    }

    public final void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        meaning = e.a(bytebuffer, bytebuffer.remaining());
    }

    protected final void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(k.a(meaning));
    }

    protected final long getContentSize()
    {
        return (long)(4 + k.b(meaning));
    }

    public final String getMeaning()
    {
        return meaning;
    }

    public final void setMeaning(String s)
    {
        meaning = s;
    }
}
