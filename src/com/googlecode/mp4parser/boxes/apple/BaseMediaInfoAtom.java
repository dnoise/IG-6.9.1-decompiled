// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class BaseMediaInfoAtom extends AbstractFullBox
{

    public static final String TYPE = "gmin";
    short balance;
    short graphicsMode;
    int opColorB;
    int opColorG;
    int opColorR;
    short reserved;

    public BaseMediaInfoAtom()
    {
        super("gmin");
        graphicsMode = 64;
        opColorR = 32768;
        opColorG = 32768;
        opColorB = 32768;
    }

    protected void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        graphicsMode = bytebuffer.getShort();
        opColorR = e.d(bytebuffer);
        opColorG = e.d(bytebuffer);
        opColorB = e.d(bytebuffer);
        balance = bytebuffer.getShort();
        reserved = bytebuffer.getShort();
    }

    public short getBalance()
    {
        return balance;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.putShort(graphicsMode);
        g.b(bytebuffer, opColorR);
        g.b(bytebuffer, opColorG);
        g.b(bytebuffer, opColorB);
        bytebuffer.putShort(balance);
        bytebuffer.putShort(reserved);
    }

    protected long getContentSize()
    {
        return 16L;
    }

    public short getGraphicsMode()
    {
        return graphicsMode;
    }

    public int getOpColorB()
    {
        return opColorB;
    }

    public int getOpColorG()
    {
        return opColorG;
    }

    public int getOpColorR()
    {
        return opColorR;
    }

    public short getReserved()
    {
        return reserved;
    }

    public void setBalance(short word0)
    {
        balance = word0;
    }

    public void setGraphicsMode(short word0)
    {
        graphicsMode = word0;
    }

    public void setOpColorB(int i)
    {
        opColorB = i;
    }

    public void setOpColorG(int i)
    {
        opColorG = i;
    }

    public void setOpColorR(int i)
    {
        opColorR = i;
    }

    public void setReserved(short word0)
    {
        reserved = word0;
    }

    public String toString()
    {
        return (new StringBuilder("BaseMediaInfoAtom{graphicsMode=")).append(graphicsMode).append(", opColorR=").append(opColorR).append(", opColorG=").append(opColorG).append(", opColorB=").append(opColorB).append(", balance=").append(balance).append(", reserved=").append(reserved).append('}').toString();
    }
}
