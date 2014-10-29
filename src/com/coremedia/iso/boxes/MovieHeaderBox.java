// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class MovieHeaderBox extends AbstractFullBox
{

    public static final String TYPE = "mvhd";
    private long creationTime;
    private int currentTime;
    private long duration;
    private long matrix[] = {
        0x10000L, 0L, 0L, 0L, 0x10000L, 0L, 0L, 0L, 0x40000000L
    };
    private long modificationTime;
    private long nextTrackId;
    private int posterTime;
    private int previewDuration;
    private int previewTime;
    private double rate;
    private int selectionDuration;
    private int selectionTime;
    private long timescale;
    private float volume;

    public MovieHeaderBox()
    {
        super("mvhd");
        rate = 1.0D;
        volume = 1.0F;
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            creationTime = e.h(bytebuffer);
            modificationTime = e.h(bytebuffer);
            timescale = e.b(bytebuffer);
            duration = e.h(bytebuffer);
        } else
        {
            creationTime = e.b(bytebuffer);
            modificationTime = e.b(bytebuffer);
            timescale = e.b(bytebuffer);
            duration = e.b(bytebuffer);
        }
        rate = e.i(bytebuffer);
        volume = e.j(bytebuffer);
        e.d(bytebuffer);
        e.b(bytebuffer);
        e.b(bytebuffer);
        matrix = new long[9];
        for (int i = 0; i < 9; i++)
        {
            matrix[i] = e.b(bytebuffer);
        }

        previewTime = bytebuffer.getInt();
        previewDuration = bytebuffer.getInt();
        posterTime = bytebuffer.getInt();
        selectionTime = bytebuffer.getInt();
        selectionDuration = bytebuffer.getInt();
        currentTime = bytebuffer.getInt();
        nextTrackId = e.b(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        int i = 0;
        writeVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            g.a(bytebuffer, creationTime);
            g.a(bytebuffer, modificationTime);
            g.b(bytebuffer, timescale);
            g.a(bytebuffer, duration);
        } else
        {
            g.b(bytebuffer, creationTime);
            g.b(bytebuffer, modificationTime);
            g.b(bytebuffer, timescale);
            g.b(bytebuffer, duration);
        }
        g.a(bytebuffer, rate);
        g.b(bytebuffer, volume);
        g.b(bytebuffer, 0);
        g.b(bytebuffer, 0L);
        g.b(bytebuffer, 0L);
        for (; i < 9; i++)
        {
            g.b(bytebuffer, matrix[i]);
        }

        bytebuffer.putInt(previewTime);
        bytebuffer.putInt(previewDuration);
        bytebuffer.putInt(posterTime);
        bytebuffer.putInt(selectionTime);
        bytebuffer.putInt(selectionDuration);
        bytebuffer.putInt(currentTime);
        g.b(bytebuffer, nextTrackId);
    }

    protected long getContentSize()
    {
        long l;
        if (getVersion() == 1)
        {
            l = 32L;
        } else
        {
            l = 20L;
        }
        return l + 80L;
    }

    public long getCreationTime()
    {
        return creationTime;
    }

    public int getCurrentTime()
    {
        return currentTime;
    }

    public long getDuration()
    {
        return duration;
    }

    public long[] getMatrix()
    {
        return matrix;
    }

    public long getModificationTime()
    {
        return modificationTime;
    }

    public long getNextTrackId()
    {
        return nextTrackId;
    }

    public int getPosterTime()
    {
        return posterTime;
    }

    public int getPreviewDuration()
    {
        return previewDuration;
    }

    public int getPreviewTime()
    {
        return previewTime;
    }

    public double getRate()
    {
        return rate;
    }

    public int getSelectionDuration()
    {
        return selectionDuration;
    }

    public int getSelectionTime()
    {
        return selectionTime;
    }

    public long getTimescale()
    {
        return timescale;
    }

    public float getVolume()
    {
        return volume;
    }

    public void setCreationTime(long l)
    {
        creationTime = l;
    }

    public void setCurrentTime(int i)
    {
        currentTime = i;
    }

    public void setDuration(long l)
    {
        duration = l;
    }

    public void setMatrix(long al[])
    {
        matrix = al;
    }

    public void setModificationTime(long l)
    {
        modificationTime = l;
    }

    public void setNextTrackId(long l)
    {
        nextTrackId = l;
    }

    public void setPosterTime(int i)
    {
        posterTime = i;
    }

    public void setPreviewDuration(int i)
    {
        previewDuration = i;
    }

    public void setPreviewTime(int i)
    {
        previewTime = i;
    }

    public void setRate(double d)
    {
        rate = d;
    }

    public void setSelectionDuration(int i)
    {
        selectionDuration = i;
    }

    public void setSelectionTime(int i)
    {
        selectionTime = i;
    }

    public void setTimescale(long l)
    {
        timescale = l;
    }

    public void setVolume(float f)
    {
        volume = f;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("MovieHeaderBox[");
        stringbuilder.append("creationTime=").append(getCreationTime());
        stringbuilder.append(";");
        stringbuilder.append("modificationTime=").append(getModificationTime());
        stringbuilder.append(";");
        stringbuilder.append("timescale=").append(getTimescale());
        stringbuilder.append(";");
        stringbuilder.append("duration=").append(getDuration());
        stringbuilder.append(";");
        stringbuilder.append("rate=").append(getRate());
        stringbuilder.append(";");
        stringbuilder.append("volume=").append(getVolume());
        for (int i = 0; i < matrix.length; i++)
        {
            stringbuilder.append(";");
            stringbuilder.append("matrix").append(i).append("=").append(matrix[i]);
        }

        stringbuilder.append(";");
        stringbuilder.append("nextTrackId=").append(getNextTrackId());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
