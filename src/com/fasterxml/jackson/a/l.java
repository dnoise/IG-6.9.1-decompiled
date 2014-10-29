// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;

import com.fasterxml.jackson.a.f.b;
import java.io.Closeable;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;

// Referenced classes of package com.fasterxml.jackson.a:
//            x, k, n, b, 
//            r, m, u, s, 
//            c, a, j, q, 
//            v, w

public abstract class l
    implements x, Closeable
{

    private static final int MAX_BYTE_I = 255;
    private static final int MAX_SHORT_I = 32767;
    private static final int MIN_BYTE_I = -128;
    private static final int MIN_SHORT_I = -32768;
    protected int _features;

    protected l()
    {
    }

    protected l(int i)
    {
        _features = i;
    }

    protected k _constructError(String s1)
    {
        return new k(s1, getCurrentLocation());
    }

    protected void _reportUnsupportedOperation()
    {
        throw new UnsupportedOperationException((new StringBuilder("Operation not supported by parser of type ")).append(getClass().getName()).toString());
    }

    public boolean canUseSchema(c c1)
    {
        return false;
    }

    public abstract void clearCurrentToken();

    public abstract void close();

    public l configure(n n1, boolean flag)
    {
        if (flag)
        {
            enable(n1);
            return this;
        } else
        {
            disable(n1);
            return this;
        }
    }

    public l disable(n n1)
    {
        _features = _features & (-1 ^ n1.b());
        return this;
    }

    public l enable(n n1)
    {
        _features = _features | n1.b();
        return this;
    }

    public abstract BigInteger getBigIntegerValue();

    public byte[] getBinaryValue()
    {
        return getBinaryValue(b.a());
    }

    public abstract byte[] getBinaryValue(a a);

    public boolean getBooleanValue()
    {
        r r1 = getCurrentToken();
        if (r1 == r.k)
        {
            return true;
        }
        if (r1 == r.l)
        {
            return false;
        } else
        {
            throw new k((new StringBuilder("Current token (")).append(r1).append(") not of boolean type").toString(), getCurrentLocation());
        }
    }

    public byte getByteValue()
    {
        int i = getIntValue();
        if (i < -128 || i > 255)
        {
            throw _constructError((new StringBuilder("Numeric value (")).append(getText()).append(") out of range of Java byte").toString());
        } else
        {
            return (byte)i;
        }
    }

    public abstract s getCodec();

    public abstract j getCurrentLocation();

    public abstract String getCurrentName();

    public abstract r getCurrentToken();

    public abstract BigDecimal getDecimalValue();

    public abstract double getDoubleValue();

    public abstract Object getEmbeddedObject();

    public abstract float getFloatValue();

    public Object getInputSource()
    {
        return null;
    }

    public abstract int getIntValue();

    public abstract r getLastClearedToken();

    public abstract long getLongValue();

    public abstract int getNumberType$72641f5();

    public abstract Number getNumberValue();

    public abstract q getParsingContext();

    public c getSchema()
    {
        return null;
    }

    public short getShortValue()
    {
        int i = getIntValue();
        if (i < -32768 || i > 32767)
        {
            throw _constructError((new StringBuilder("Numeric value (")).append(getText()).append(") out of range of Java short").toString());
        } else
        {
            return (short)i;
        }
    }

    public abstract String getText();

    public abstract char[] getTextCharacters();

    public abstract int getTextLength();

    public abstract int getTextOffset();

    public abstract j getTokenLocation();

    public boolean getValueAsBoolean()
    {
        return getValueAsBoolean(false);
    }

    public boolean getValueAsBoolean(boolean flag)
    {
        return flag;
    }

    public double getValueAsDouble()
    {
        return getValueAsDouble(0.0D);
    }

    public double getValueAsDouble(double d)
    {
        return d;
    }

    public int getValueAsInt()
    {
        return getValueAsInt(0);
    }

    public int getValueAsInt(int i)
    {
        return i;
    }

    public long getValueAsLong()
    {
        return getValueAsLong(0L);
    }

    public long getValueAsLong(long l1)
    {
        return l1;
    }

    public String getValueAsString()
    {
        return getValueAsString(null);
    }

    public abstract String getValueAsString(String s1);

    public abstract boolean hasCurrentToken();

    public abstract boolean hasTextCharacters();

    public abstract boolean isClosed();

    public boolean isEnabled(n n1)
    {
        return (_features & n1.b()) != 0;
    }

    public boolean isExpectedStartArrayToken()
    {
        return getCurrentToken() == r.d;
    }

    public Boolean nextBooleanValue()
    {
        switch (m.a[nextToken().ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return Boolean.TRUE;

        case 2: // '\002'
            return Boolean.FALSE;
        }
    }

    public boolean nextFieldName(u u1)
    {
        return nextToken() == r.f && u1.a().equals(getCurrentName());
    }

    public int nextIntValue(int i)
    {
        if (nextToken() == r.i)
        {
            i = getIntValue();
        }
        return i;
    }

    public long nextLongValue(long l1)
    {
        if (nextToken() == r.i)
        {
            l1 = getLongValue();
        }
        return l1;
    }

    public String nextTextValue()
    {
        if (nextToken() == r.h)
        {
            return getText();
        } else
        {
            return null;
        }
    }

    public abstract r nextToken();

    public abstract r nextValue();

    public abstract void overrideCurrentName(String s1);

    public int readBinaryValue(a a, OutputStream outputstream)
    {
        _reportUnsupportedOperation();
        return 0;
    }

    public int readBinaryValue(OutputStream outputstream)
    {
        return readBinaryValue(b.a(), outputstream);
    }

    public Object readValueAs(b b1)
    {
        s s1 = getCodec();
        if (s1 == null)
        {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
        } else
        {
            return s1.readValue(this, b1);
        }
    }

    public Object readValueAs(Class class1)
    {
        s s1 = getCodec();
        if (s1 == null)
        {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
        } else
        {
            return s1.readValue(this, class1);
        }
    }

    public v readValueAsTree()
    {
        s s1 = getCodec();
        if (s1 == null)
        {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree");
        } else
        {
            return s1.readTree(this);
        }
    }

    public Iterator readValuesAs(b b1)
    {
        s s1 = getCodec();
        if (s1 == null)
        {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
        } else
        {
            return s1.readValues(this, b1);
        }
    }

    public Iterator readValuesAs(Class class1)
    {
        s s1 = getCodec();
        if (s1 == null)
        {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
        } else
        {
            return s1.readValues(this, class1);
        }
    }

    public int releaseBuffered(OutputStream outputstream)
    {
        return -1;
    }

    public int releaseBuffered(Writer writer)
    {
        return -1;
    }

    public boolean requiresCustomCodec()
    {
        return false;
    }

    public abstract void setCodec(s s1);

    public void setSchema(c c1)
    {
        throw new UnsupportedOperationException((new StringBuilder("Parser of type ")).append(getClass().getName()).append(" does not support schema of type '").append(c1.a()).append("'").toString());
    }

    public abstract l skipChildren();

    public abstract w version();
}
