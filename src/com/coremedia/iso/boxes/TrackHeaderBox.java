// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class TrackHeaderBox extends AbstractFullBox
{

    public static final String TYPE = "tkhd";
    private int alternateGroup;
    private long creationTime;
    private long duration;
    private double height;
    private int layer;
    private long matrix[] = {
        0x10000L, 0L, 0L, 0L, 0x10000L, 0L, 0L, 0L, 0x40000000L
    };
    private long modificationTime;
    private long trackId;
    private float volume;
    private double width;

    public TrackHeaderBox()
    {
        super("tkhd");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            creationTime = e.h(bytebuffer);
            modificationTime = e.h(bytebuffer);
            trackId = e.b(bytebuffer);
            e.b(bytebuffer);
            duration = e.h(bytebuffer);
        } else
        {
            creationTime = e.b(bytebuffer);
            modificationTime = e.b(bytebuffer);
            trackId = e.b(bytebuffer);
            e.b(bytebuffer);
            duration = e.b(bytebuffer);
        }
        e.b(bytebuffer);
        e.b(bytebuffer);
        layer = e.d(bytebuffer);
        alternateGroup = e.d(bytebuffer);
        volume = e.j(bytebuffer);
        e.d(bytebuffer);
        matrix = new long[9];
        for (int i = 0; i < 9; i++)
        {
            matrix[i] = e.b(bytebuffer);
        }

        width = e.i(bytebuffer);
        height = e.i(bytebuffer);
    }

    public int getAlternateGroup()
    {
        return alternateGroup;
    }

    public void getContent(ByteBuffer bytebuffer)
    {
        int i = 0;
        writeVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            g.a(bytebuffer, creationTime);
            g.a(bytebuffer, modificationTime);
            g.b(bytebuffer, trackId);
            g.b(bytebuffer, 0L);
            g.a(bytebuffer, duration);
        } else
        {
            g.b(bytebuffer, creationTime);
            g.b(bytebuffer, modificationTime);
            g.b(bytebuffer, trackId);
            g.b(bytebuffer, 0L);
            g.b(bytebuffer, duration);
        }
        g.b(bytebuffer, 0L);
        g.b(bytebuffer, 0L);
        g.b(bytebuffer, layer);
        g.b(bytebuffer, alternateGroup);
        g.b(bytebuffer, volume);
        g.b(bytebuffer, 0);
        for (; i < 9; i++)
        {
            g.b(bytebuffer, matrix[i]);
        }

        g.a(bytebuffer, width);
        g.a(bytebuffer, height);
    }

    protected long getContentSize()
    {
        long l;
        if (getVersion() == 1)
        {
            l = 36L;
        } else
        {
            l = 24L;
        }
        return l + 60L;
    }

    public long getCreationTime()
    {
        return creationTime;
    }

    public long getDuration()
    {
        return duration;
    }

    public double getHeight()
    {
        return height;
    }

    public int getLayer()
    {
        return layer;
    }

    public long[] getMatrix()
    {
        return matrix;
    }

    public long getModificationTime()
    {
        return modificationTime;
    }

    public long getTrackId()
    {
        return trackId;
    }

    public float getVolume()
    {
        return volume;
    }

    public double getWidth()
    {
        return width;
    }

    public boolean isEnabled()
    {
        return (1 & getFlags()) > 0;
    }

    public boolean isInMovie()
    {
        return (2 & getFlags()) > 0;
    }

    public boolean isInPoster()
    {
        return (8 & getFlags()) > 0;
    }

    public boolean isInPreview()
    {
        return (4 & getFlags()) > 0;
    }

    public void setAlternateGroup(int i)
    {
        alternateGroup = i;
    }

    public void setCreationTime(long l)
    {
        creationTime = l;
    }

    public void setDuration(long l)
    {
        duration = l;
    }

    public void setHeight(double d)
    {
        height = d;
    }

    public void setLayer(int i)
    {
        layer = i;
    }

    public void setMatrix(long al[])
    {
        matrix = al;
    }

    public void setModificationTime(long l)
    {
        modificationTime = l;
    }

    public void setTrackId(long l)
    {
        trackId = l;
    }

    public void setVolume(float f)
    {
        volume = f;
    }

    public void setWidth(double d)
    {
        width = d;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TrackHeaderBox[");
        stringbuilder.append("creationTime=").append(getCreationTime());
        stringbuilder.append(";");
        stringbuilder.append("modificationTime=").append(getModificationTime());
        stringbuilder.append(";");
        stringbuilder.append("trackId=").append(getTrackId());
        stringbuilder.append(";");
        stringbuilder.append("duration=").append(getDuration());
        stringbuilder.append(";");
        stringbuilder.append("layer=").append(getLayer());
        stringbuilder.append(";");
        stringbuilder.append("alternateGroup=").append(getAlternateGroup());
        stringbuilder.append(";");
        stringbuilder.append("volume=").append(getVolume());
        for (int i = 0; i < matrix.length; i++)
        {
            stringbuilder.append(";");
            stringbuilder.append("matrix").append(i).append("=").append(matrix[i]);
        }

        stringbuilder.append(";");
        stringbuilder.append("width=").append(getWidth());
        stringbuilder.append(";");
        stringbuilder.append("height=").append(getHeight());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
