// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.c;
import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.a.n;
import com.fasterxml.jackson.a.q;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.w;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

public class l extends com.fasterxml.jackson.a.l
{

    protected com.fasterxml.jackson.a.l a;

    public l(com.fasterxml.jackson.a.l l1)
    {
        a = l1;
    }

    public boolean canUseSchema(c c)
    {
        return a.canUseSchema(c);
    }

    public void clearCurrentToken()
    {
        a.clearCurrentToken();
    }

    public void close()
    {
        a.close();
    }

    public com.fasterxml.jackson.a.l disable(n n)
    {
        a.disable(n);
        return this;
    }

    public com.fasterxml.jackson.a.l enable(n n)
    {
        a.enable(n);
        return this;
    }

    public BigInteger getBigIntegerValue()
    {
        return a.getBigIntegerValue();
    }

    public byte[] getBinaryValue(a a1)
    {
        return a.getBinaryValue(a1);
    }

    public boolean getBooleanValue()
    {
        return a.getBooleanValue();
    }

    public byte getByteValue()
    {
        return a.getByteValue();
    }

    public s getCodec()
    {
        return a.getCodec();
    }

    public j getCurrentLocation()
    {
        return a.getCurrentLocation();
    }

    public String getCurrentName()
    {
        return a.getCurrentName();
    }

    public r getCurrentToken()
    {
        return a.getCurrentToken();
    }

    public BigDecimal getDecimalValue()
    {
        return a.getDecimalValue();
    }

    public double getDoubleValue()
    {
        return a.getDoubleValue();
    }

    public Object getEmbeddedObject()
    {
        return a.getEmbeddedObject();
    }

    public float getFloatValue()
    {
        return a.getFloatValue();
    }

    public Object getInputSource()
    {
        return a.getInputSource();
    }

    public int getIntValue()
    {
        return a.getIntValue();
    }

    public r getLastClearedToken()
    {
        return a.getLastClearedToken();
    }

    public long getLongValue()
    {
        return a.getLongValue();
    }

    public int getNumberType$72641f5()
    {
        return a.getNumberType$72641f5();
    }

    public Number getNumberValue()
    {
        return a.getNumberValue();
    }

    public q getParsingContext()
    {
        return a.getParsingContext();
    }

    public c getSchema()
    {
        return a.getSchema();
    }

    public short getShortValue()
    {
        return a.getShortValue();
    }

    public String getText()
    {
        return a.getText();
    }

    public char[] getTextCharacters()
    {
        return a.getTextCharacters();
    }

    public int getTextLength()
    {
        return a.getTextLength();
    }

    public int getTextOffset()
    {
        return a.getTextOffset();
    }

    public j getTokenLocation()
    {
        return a.getTokenLocation();
    }

    public boolean getValueAsBoolean()
    {
        return a.getValueAsBoolean();
    }

    public boolean getValueAsBoolean(boolean flag)
    {
        return a.getValueAsBoolean(flag);
    }

    public double getValueAsDouble()
    {
        return a.getValueAsDouble();
    }

    public double getValueAsDouble(double d)
    {
        return a.getValueAsDouble(d);
    }

    public int getValueAsInt()
    {
        return a.getValueAsInt();
    }

    public int getValueAsInt(int i)
    {
        return a.getValueAsInt(i);
    }

    public long getValueAsLong()
    {
        return a.getValueAsLong();
    }

    public long getValueAsLong(long l1)
    {
        return a.getValueAsLong(l1);
    }

    public String getValueAsString()
    {
        return a.getValueAsString();
    }

    public String getValueAsString(String s)
    {
        return a.getValueAsString(s);
    }

    public boolean hasCurrentToken()
    {
        return a.hasCurrentToken();
    }

    public boolean hasTextCharacters()
    {
        return a.hasTextCharacters();
    }

    public boolean isClosed()
    {
        return a.isClosed();
    }

    public boolean isEnabled(n n)
    {
        return a.isEnabled(n);
    }

    public r nextToken()
    {
        return a.nextToken();
    }

    public r nextValue()
    {
        return a.nextValue();
    }

    public void overrideCurrentName(String s)
    {
        a.overrideCurrentName(s);
    }

    public int readBinaryValue(a a1, OutputStream outputstream)
    {
        return a.readBinaryValue(a1, outputstream);
    }

    public boolean requiresCustomCodec()
    {
        return a.requiresCustomCodec();
    }

    public void setCodec(s s)
    {
        a.setCodec(s);
    }

    public void setSchema(c c)
    {
        a.setSchema(c);
    }

    public com.fasterxml.jackson.a.l skipChildren()
    {
        a.skipChildren();
        return this;
    }

    public w version()
    {
        return a.version();
    }
}
