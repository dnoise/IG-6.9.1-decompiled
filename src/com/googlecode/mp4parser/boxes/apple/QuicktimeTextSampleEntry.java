// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.boxes.sampleentry.SampleEntry;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;

public class QuicktimeTextSampleEntry extends SampleEntry
{

    public static final String TYPE = "text";
    int backgroundB;
    int backgroundG;
    int backgroundR;
    long defaultTextBox;
    int displayFlags;
    short fontFace;
    String fontName;
    short fontNumber;
    int foregroundB;
    int foregroundG;
    int foregroundR;
    long reserved1;
    byte reserved2;
    short reserved3;
    int textJustification;

    public QuicktimeTextSampleEntry()
    {
        super("text");
        foregroundR = 65535;
        foregroundG = 65535;
        foregroundB = 65535;
        fontName = "";
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        _parseReservedAndDataReferenceIndex(bytebuffer);
        displayFlags = bytebuffer.getInt();
        textJustification = bytebuffer.getInt();
        backgroundR = e.d(bytebuffer);
        backgroundG = e.d(bytebuffer);
        backgroundB = e.d(bytebuffer);
        defaultTextBox = e.h(bytebuffer);
        reserved1 = e.h(bytebuffer);
        fontNumber = bytebuffer.getShort();
        fontFace = bytebuffer.getShort();
        reserved2 = bytebuffer.get();
        reserved3 = bytebuffer.getShort();
        foregroundR = e.d(bytebuffer);
        foregroundG = e.d(bytebuffer);
        foregroundB = e.d(bytebuffer);
        if (bytebuffer.remaining() > 0)
        {
            byte abyte0[] = new byte[e.f(bytebuffer)];
            bytebuffer.get(abyte0);
            fontName = new String(abyte0);
            return;
        } else
        {
            fontName = null;
            return;
        }
    }

    public int getBackgroundB()
    {
        return backgroundB;
    }

    public int getBackgroundG()
    {
        return backgroundG;
    }

    public int getBackgroundR()
    {
        return backgroundR;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        _writeReservedAndDataReferenceIndex(bytebuffer);
        bytebuffer.putInt(displayFlags);
        bytebuffer.putInt(textJustification);
        g.b(bytebuffer, backgroundR);
        g.b(bytebuffer, backgroundG);
        g.b(bytebuffer, backgroundB);
        g.a(bytebuffer, defaultTextBox);
        g.a(bytebuffer, reserved1);
        bytebuffer.putShort(fontNumber);
        bytebuffer.putShort(fontFace);
        bytebuffer.put(reserved2);
        bytebuffer.putShort(reserved3);
        g.b(bytebuffer, foregroundR);
        g.b(bytebuffer, foregroundG);
        g.b(bytebuffer, foregroundB);
        if (fontName != null)
        {
            g.d(bytebuffer, fontName.length());
            bytebuffer.put(fontName.getBytes());
        }
    }

    protected long getContentSize()
    {
        int i;
        if (fontName != null)
        {
            i = fontName.length();
        } else
        {
            i = 0;
        }
        return (long)(i + 52);
    }

    public long getDefaultTextBox()
    {
        return defaultTextBox;
    }

    public int getDisplayFlags()
    {
        return displayFlags;
    }

    public short getFontFace()
    {
        return fontFace;
    }

    public String getFontName()
    {
        return fontName;
    }

    public short getFontNumber()
    {
        return fontNumber;
    }

    public int getForegroundB()
    {
        return foregroundB;
    }

    public int getForegroundG()
    {
        return foregroundG;
    }

    public int getForegroundR()
    {
        return foregroundR;
    }

    public long getReserved1()
    {
        return reserved1;
    }

    public byte getReserved2()
    {
        return reserved2;
    }

    public short getReserved3()
    {
        return reserved3;
    }

    public int getTextJustification()
    {
        return textJustification;
    }

    public void setBackgroundB(int i)
    {
        backgroundB = i;
    }

    public void setBackgroundG(int i)
    {
        backgroundG = i;
    }

    public void setBackgroundR(int i)
    {
        backgroundR = i;
    }

    public void setDefaultTextBox(long l)
    {
        defaultTextBox = l;
    }

    public void setDisplayFlags(int i)
    {
        displayFlags = i;
    }

    public void setFontFace(short word0)
    {
        fontFace = word0;
    }

    public void setFontName(String s)
    {
        fontName = s;
    }

    public void setFontNumber(short word0)
    {
        fontNumber = word0;
    }

    public void setForegroundB(int i)
    {
        foregroundB = i;
    }

    public void setForegroundG(int i)
    {
        foregroundG = i;
    }

    public void setForegroundR(int i)
    {
        foregroundR = i;
    }

    public void setReserved1(long l)
    {
        reserved1 = l;
    }

    public void setReserved2(byte byte0)
    {
        reserved2 = byte0;
    }

    public void setReserved3(short word0)
    {
        reserved3 = word0;
    }

    public void setTextJustification(int i)
    {
        textJustification = i;
    }
}
