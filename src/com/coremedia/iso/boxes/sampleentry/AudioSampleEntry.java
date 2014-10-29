// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.b;
import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.a;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            SampleEntry

public class AudioSampleEntry extends SampleEntry
    implements ContainerBox
{

    public static final String TYPE1 = "samr";
    public static final String TYPE10 = "mlpa";
    public static final String TYPE11 = "dtsl";
    public static final String TYPE12 = "dtsh";
    public static final String TYPE13 = "dtse";
    public static final String TYPE2 = "sawb";
    public static final String TYPE3 = "mp4a";
    public static final String TYPE4 = "drms";
    public static final String TYPE5 = "alac";
    public static final String TYPE7 = "owma";
    public static final String TYPE8 = "ac-3";
    public static final String TYPE9 = "ec-3";
    public static final String TYPE_ENCRYPTED = "enca";
    private b boxParser;
    private long bytesPerFrame;
    private long bytesPerPacket;
    private long bytesPerSample;
    private int channelCount;
    private int compressionId;
    private int packetSize;
    private int reserved1;
    private long reserved2;
    private long sampleRate;
    private int sampleSize;
    private long samplesPerPacket;
    private int soundVersion;
    private byte soundVersion2Data[];

    public AudioSampleEntry(String s)
    {
        super(s);
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        _parseReservedAndDataReferenceIndex(bytebuffer);
        soundVersion = e.d(bytebuffer);
        reserved1 = e.d(bytebuffer);
        reserved2 = e.b(bytebuffer);
        channelCount = e.d(bytebuffer);
        sampleSize = e.d(bytebuffer);
        compressionId = e.d(bytebuffer);
        packetSize = e.d(bytebuffer);
        sampleRate = e.b(bytebuffer);
        if (!type.equals("mlpa"))
        {
            sampleRate = sampleRate >>> 16;
        }
        if (soundVersion > 0)
        {
            samplesPerPacket = e.b(bytebuffer);
            bytesPerPacket = e.b(bytebuffer);
            bytesPerFrame = e.b(bytebuffer);
            bytesPerSample = e.b(bytebuffer);
        }
        if (soundVersion == 2)
        {
            soundVersion2Data = new byte[20];
            bytebuffer.get(20);
        }
        _parseChildBoxes(bytebuffer);
    }

    public long getBytesPerFrame()
    {
        return bytesPerFrame;
    }

    public long getBytesPerPacket()
    {
        return bytesPerPacket;
    }

    public long getBytesPerSample()
    {
        return bytesPerSample;
    }

    public int getChannelCount()
    {
        return channelCount;
    }

    public int getCompressionId()
    {
        return compressionId;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        _writeReservedAndDataReferenceIndex(bytebuffer);
        g.b(bytebuffer, soundVersion);
        g.b(bytebuffer, reserved1);
        g.b(bytebuffer, reserved2);
        g.b(bytebuffer, channelCount);
        g.b(bytebuffer, sampleSize);
        g.b(bytebuffer, compressionId);
        g.b(bytebuffer, packetSize);
        if (type.equals("mlpa"))
        {
            g.b(bytebuffer, getSampleRate());
        } else
        {
            g.b(bytebuffer, getSampleRate() << 16);
        }
        if (soundVersion > 0)
        {
            g.b(bytebuffer, samplesPerPacket);
            g.b(bytebuffer, bytesPerPacket);
            g.b(bytebuffer, bytesPerFrame);
            g.b(bytebuffer, bytesPerSample);
        }
        if (soundVersion == 2)
        {
            bytebuffer.put(soundVersion2Data);
        }
        _writeChildBoxes(bytebuffer);
    }

    protected long getContentSize()
    {
        long l = 0L;
        long l1;
        long l2;
        long l3;
        Iterator iterator;
        long l4;
        if (soundVersion > 0)
        {
            l1 = 16L;
        } else
        {
            l1 = l;
        }
        l2 = l1 + 28L;
        if (soundVersion == 2)
        {
            l = 20L;
        }
        l3 = l2 + l;
        iterator = boxes.iterator();
        for (l4 = l3; iterator.hasNext(); l4 += ((a)iterator.next()).getSize()) { }
        return l4;
    }

    public int getPacketSize()
    {
        return packetSize;
    }

    public int getReserved1()
    {
        return reserved1;
    }

    public long getReserved2()
    {
        return reserved2;
    }

    public long getSampleRate()
    {
        return sampleRate;
    }

    public int getSampleSize()
    {
        return sampleSize;
    }

    public long getSamplesPerPacket()
    {
        return samplesPerPacket;
    }

    public int getSoundVersion()
    {
        return soundVersion;
    }

    public byte[] getSoundVersion2Data()
    {
        return soundVersion2Data;
    }

    public void setBoxParser(b b)
    {
        boxParser = b;
    }

    public void setBytesPerFrame(long l)
    {
        bytesPerFrame = l;
    }

    public void setBytesPerPacket(long l)
    {
        bytesPerPacket = l;
    }

    public void setBytesPerSample(long l)
    {
        bytesPerSample = l;
    }

    public void setChannelCount(int i)
    {
        channelCount = i;
    }

    public void setCompressionId(int i)
    {
        compressionId = i;
    }

    public void setPacketSize(int i)
    {
        packetSize = i;
    }

    public void setReserved1(int i)
    {
        reserved1 = i;
    }

    public void setReserved2(long l)
    {
        reserved2 = l;
    }

    public void setSampleRate(long l)
    {
        sampleRate = l;
    }

    public void setSampleSize(int i)
    {
        sampleSize = i;
    }

    public void setSamplesPerPacket(long l)
    {
        samplesPerPacket = l;
    }

    public void setSoundVersion(int i)
    {
        soundVersion = i;
    }

    public void setSoundVersion2Data(byte abyte0[])
    {
        soundVersion2Data = abyte0;
    }

    public String toString()
    {
        return (new StringBuilder("AudioSampleEntry{bytesPerSample=")).append(bytesPerSample).append(", bytesPerFrame=").append(bytesPerFrame).append(", bytesPerPacket=").append(bytesPerPacket).append(", samplesPerPacket=").append(samplesPerPacket).append(", packetSize=").append(packetSize).append(", compressionId=").append(compressionId).append(", soundVersion=").append(soundVersion).append(", sampleRate=").append(sampleRate).append(", sampleSize=").append(sampleSize).append(", channelCount=").append(channelCount).append(", boxes=").append(getBoxes()).append('}').toString();
    }
}
