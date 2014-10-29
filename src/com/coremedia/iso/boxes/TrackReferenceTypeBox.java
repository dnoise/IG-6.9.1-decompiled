// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;

public class TrackReferenceTypeBox extends AbstractBox
{

    public static final String TYPE1 = "hint";
    public static final String TYPE2 = "cdsc";
    private long trackIds[];

    public TrackReferenceTypeBox(String s)
    {
        super(s);
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        int i = bytebuffer.remaining() / 4;
        trackIds = new long[i];
        for (int j = 0; j < i; j++)
        {
            trackIds[j] = e.b(bytebuffer);
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        long al[] = trackIds;
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            g.b(bytebuffer, al[j]);
        }

    }

    protected long getContentSize()
    {
        return (long)(4 * trackIds.length);
    }

    public long[] getTrackIds()
    {
        return trackIds;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TrackReferenceTypeBox[type=").append(getType());
        for (int i = 0; i < trackIds.length; i++)
        {
            stringbuilder.append(";trackId");
            stringbuilder.append(i);
            stringbuilder.append("=");
            stringbuilder.append(trackIds[i]);
        }

        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
