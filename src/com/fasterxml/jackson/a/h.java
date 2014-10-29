// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;

import com.fasterxml.jackson.a.c.c;
import java.io.Closeable;
import java.io.Flushable;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.a:
//            x, c, b, u, 
//            t, i, l, s, 
//            q, w, a, v

public abstract class h
    implements x, Closeable, Flushable
{

    protected t _cfgPrettyPrinter;

    protected h()
    {
    }

    public boolean canUseSchema(com.fasterxml.jackson.a.c c1)
    {
        return false;
    }

    public abstract void close();

    public final h configure(i i, boolean flag)
    {
        if (flag)
        {
            enable(i);
            return this;
        } else
        {
            disable(i);
            return this;
        }
    }

    public abstract void copyCurrentEvent(l l);

    public abstract void copyCurrentStructure(l l);

    public abstract h disable(i i);

    public abstract h enable(i i);

    public abstract void flush();

    public c getCharacterEscapes()
    {
        return null;
    }

    public abstract s getCodec();

    public int getHighestEscapedChar()
    {
        return 0;
    }

    public abstract q getOutputContext();

    public Object getOutputTarget()
    {
        return null;
    }

    public t getPrettyPrinter()
    {
        return _cfgPrettyPrinter;
    }

    public com.fasterxml.jackson.a.c getSchema()
    {
        return null;
    }

    public abstract boolean isClosed();

    public abstract boolean isEnabled(i i);

    public h setCharacterEscapes(c c1)
    {
        return this;
    }

    public abstract h setCodec(s s);

    public h setHighestNonEscapedChar(int i)
    {
        return this;
    }

    public h setPrettyPrinter(t t)
    {
        _cfgPrettyPrinter = t;
        return this;
    }

    public h setRootValueSeparator(u u1)
    {
        throw new UnsupportedOperationException();
    }

    public void setSchema(com.fasterxml.jackson.a.c c1)
    {
        throw new UnsupportedOperationException((new StringBuilder("Generator of type ")).append(getClass().getName()).append(" does not support schema of type '").append(c1.a()).append("'").toString());
    }

    public abstract h useDefaultPrettyPrinter();

    public abstract w version();

    public final void writeArrayFieldStart(String s)
    {
        writeFieldName(s);
        writeStartArray();
    }

    public abstract int writeBinary(a a, InputStream inputstream, int i);

    public int writeBinary(InputStream inputstream, int i)
    {
        return writeBinary(b.a(), inputstream, i);
    }

    public abstract void writeBinary(a a, byte abyte0[], int i, int j);

    public void writeBinary(byte abyte0[])
    {
        writeBinary(b.a(), abyte0, 0, abyte0.length);
    }

    public void writeBinary(byte abyte0[], int i, int j)
    {
        writeBinary(b.a(), abyte0, i, j);
    }

    public final void writeBinaryField(String s, byte abyte0[])
    {
        writeFieldName(s);
        writeBinary(abyte0);
    }

    public abstract void writeBoolean(boolean flag);

    public final void writeBooleanField(String s, boolean flag)
    {
        writeFieldName(s);
        writeBoolean(flag);
    }

    public abstract void writeEndArray();

    public abstract void writeEndObject();

    public abstract void writeFieldName(u u1);

    public abstract void writeFieldName(String s);

    public abstract void writeNull();

    public final void writeNullField(String s)
    {
        writeFieldName(s);
        writeNull();
    }

    public abstract void writeNumber(double d);

    public abstract void writeNumber(float f);

    public abstract void writeNumber(int i);

    public abstract void writeNumber(long l);

    public abstract void writeNumber(String s);

    public abstract void writeNumber(BigDecimal bigdecimal);

    public abstract void writeNumber(BigInteger biginteger);

    public void writeNumber(short word0)
    {
        writeNumber(word0);
    }

    public final void writeNumberField(String s, double d)
    {
        writeFieldName(s);
        writeNumber(d);
    }

    public final void writeNumberField(String s, float f)
    {
        writeFieldName(s);
        writeNumber(f);
    }

    public final void writeNumberField(String s, int i)
    {
        writeFieldName(s);
        writeNumber(i);
    }

    public final void writeNumberField(String s, long l)
    {
        writeFieldName(s);
        writeNumber(l);
    }

    public final void writeNumberField(String s, BigDecimal bigdecimal)
    {
        writeFieldName(s);
        writeNumber(bigdecimal);
    }

    public abstract void writeObject(Object obj);

    public final void writeObjectField(String s, Object obj)
    {
        writeFieldName(s);
        writeObject(obj);
    }

    public final void writeObjectFieldStart(String s)
    {
        writeFieldName(s);
        writeStartObject();
    }

    public abstract void writeRaw(char c1);

    public void writeRaw(u u1)
    {
        writeRaw(u1.a());
    }

    public abstract void writeRaw(String s);

    public abstract void writeRaw(String s, int i, int j);

    public abstract void writeRaw(char ac[], int i, int j);

    public abstract void writeRawUTF8String(byte abyte0[], int i, int j);

    public abstract void writeRawValue(String s);

    public abstract void writeRawValue(String s, int i, int j);

    public abstract void writeRawValue(char ac[], int i, int j);

    public abstract void writeStartArray();

    public abstract void writeStartObject();

    public abstract void writeString(u u1);

    public abstract void writeString(String s);

    public abstract void writeString(char ac[], int i, int j);

    public void writeStringField(String s, String s1)
    {
        writeFieldName(s);
        writeString(s1);
    }

    public abstract void writeTree(v v);

    public abstract void writeUTF8String(byte abyte0[], int i, int j);
}
