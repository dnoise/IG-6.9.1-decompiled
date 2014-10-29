// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.a;

import com.fasterxml.jackson.a.d.e;
import com.fasterxml.jackson.a.g;
import com.fasterxml.jackson.a.g.p;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.i;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.q;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.u;
import com.fasterxml.jackson.a.v;
import com.fasterxml.jackson.a.w;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package com.fasterxml.jackson.a.a:
//            b

public abstract class a extends h
{

    protected s a;
    protected int b;
    protected boolean c;
    protected e d;
    protected boolean e;

    protected a(int j, s s1)
    {
        b = j;
        d = com.fasterxml.jackson.a.d.e.a();
        a = s1;
        c = isEnabled(i.e);
    }

    private void a(Object obj)
    {
        if (obj == null)
        {
            writeNull();
            return;
        }
        if (obj instanceof String)
        {
            writeString((String)obj);
            return;
        }
        if (obj instanceof Number)
        {
            Number number = (Number)obj;
            if (number instanceof Integer)
            {
                writeNumber(number.intValue());
                return;
            }
            if (number instanceof Long)
            {
                writeNumber(number.longValue());
                return;
            }
            if (number instanceof Double)
            {
                writeNumber(number.doubleValue());
                return;
            }
            if (number instanceof Float)
            {
                writeNumber(number.floatValue());
                return;
            }
            if (number instanceof Short)
            {
                writeNumber(number.shortValue());
                return;
            }
            if (number instanceof Byte)
            {
                writeNumber(number.byteValue());
                return;
            }
            if (number instanceof BigInteger)
            {
                writeNumber((BigInteger)number);
                return;
            }
            if (number instanceof BigDecimal)
            {
                writeNumber((BigDecimal)number);
                return;
            }
            if (number instanceof AtomicInteger)
            {
                writeNumber(((AtomicInteger)number).get());
                return;
            }
            if (number instanceof AtomicLong)
            {
                writeNumber(((AtomicLong)number).get());
                return;
            }
        } else
        {
            if (obj instanceof byte[])
            {
                writeBinary((byte[])(byte[])obj);
                return;
            }
            if (obj instanceof Boolean)
            {
                writeBoolean(((Boolean)obj).booleanValue());
                return;
            }
            if (obj instanceof AtomicBoolean)
            {
                writeBoolean(((AtomicBoolean)obj).get());
                return;
            }
        }
        throw new IllegalStateException((new StringBuilder("No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed ")).append(obj.getClass().getName()).append(")").toString());
    }

    protected static void b(String s1)
    {
        throw new g(s1);
    }

    protected static void c()
    {
        p.a();
    }

    public final e a()
    {
        return d;
    }

    protected abstract void a(String s1);

    protected abstract void b();

    public void close()
    {
        e = true;
    }

    public final void copyCurrentEvent(l l1)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == null)
        {
            b("No current event to copy");
        }
        switch (b.b[r1.ordinal()])
        {
        default:
            c();
            return;

        case 1: // '\001'
            writeStartObject();
            return;

        case 2: // '\002'
            writeEndObject();
            return;

        case 3: // '\003'
            writeStartArray();
            return;

        case 4: // '\004'
            writeEndArray();
            return;

        case 5: // '\005'
            writeFieldName(l1.getCurrentName());
            return;

        case 6: // '\006'
            if (l1.hasTextCharacters())
            {
                writeString(l1.getTextCharacters(), l1.getTextOffset(), l1.getTextLength());
                return;
            } else
            {
                writeString(l1.getText());
                return;
            }

        case 7: // '\007'
            switch (b.a[-1 + l1.getNumberType$72641f5()])
            {
            default:
                writeNumber(l1.getLongValue());
                return;

            case 1: // '\001'
                writeNumber(l1.getIntValue());
                return;

            case 2: // '\002'
                writeNumber(l1.getBigIntegerValue());
                break;
            }
            return;

        case 8: // '\b'
            switch (b.a[-1 + l1.getNumberType$72641f5()])
            {
            default:
                writeNumber(l1.getDoubleValue());
                return;

            case 3: // '\003'
                writeNumber(l1.getDecimalValue());
                return;

            case 4: // '\004'
                writeNumber(l1.getFloatValue());
                break;
            }
            return;

        case 9: // '\t'
            writeBoolean(true);
            return;

        case 10: // '\n'
            writeBoolean(false);
            return;

        case 11: // '\013'
            writeNull();
            return;

        case 12: // '\f'
            writeObject(l1.getEmbeddedObject());
            return;
        }
    }

    public final void copyCurrentStructure(l l1)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.f)
        {
            writeFieldName(l1.getCurrentName());
            r1 = l1.nextToken();
        }
        switch (b.b[r1.ordinal()])
        {
        case 2: // '\002'
        default:
            copyCurrentEvent(l1);
            return;

        case 3: // '\003'
            writeStartArray();
            for (; l1.nextToken() != r.e; copyCurrentStructure(l1)) { }
            writeEndArray();
            return;

        case 1: // '\001'
            writeStartObject();
            break;
        }
        for (; l1.nextToken() != r.c; copyCurrentStructure(l1)) { }
        writeEndObject();
    }

    protected final void d()
    {
        throw new UnsupportedOperationException((new StringBuilder("Operation not supported by generator of type ")).append(getClass().getName()).toString());
    }

    public h disable(i j)
    {
        b = b & (-1 ^ j.b());
        if (j == i.e)
        {
            c = false;
        } else
        if (j == i.g)
        {
            setHighestNonEscapedChar(0);
            return this;
        }
        return this;
    }

    public h enable(i j)
    {
        b = b | j.b();
        if (j == i.e)
        {
            c = true;
        } else
        if (j == i.g)
        {
            setHighestNonEscapedChar(127);
            return this;
        }
        return this;
    }

    public final s getCodec()
    {
        return a;
    }

    public q getOutputContext()
    {
        return a();
    }

    public boolean isClosed()
    {
        return e;
    }

    public final boolean isEnabled(i j)
    {
        return (b & j.b()) != 0;
    }

    public h setCodec(s s1)
    {
        a = s1;
        return this;
    }

    public h useDefaultPrettyPrinter()
    {
        if (getPrettyPrinter() != null)
        {
            return this;
        } else
        {
            return setPrettyPrinter(new com.fasterxml.jackson.a.g.e());
        }
    }

    public w version()
    {
        return p.a(getClass());
    }

    public int writeBinary(com.fasterxml.jackson.a.a a1, InputStream inputstream, int j)
    {
        d();
        return 0;
    }

    public void writeFieldName(u u1)
    {
        writeFieldName(u1.a());
    }

    public void writeObject(Object obj)
    {
        if (obj == null)
        {
            writeNull();
            return;
        }
        if (a != null)
        {
            a.writeValue(this, obj);
            return;
        } else
        {
            a(obj);
            return;
        }
    }

    public void writeRawValue(String s1)
    {
        a("write raw value");
        writeRaw(s1);
    }

    public void writeRawValue(String s1, int j, int k)
    {
        a("write raw value");
        writeRaw(s1, j, k);
    }

    public void writeRawValue(char ac[], int j, int k)
    {
        a("write raw value");
        writeRaw(ac, j, k);
    }

    public void writeString(u u1)
    {
        writeString(u1.a());
    }

    public void writeTree(v v)
    {
        if (v == null)
        {
            writeNull();
            return;
        }
        if (a == null)
        {
            throw new IllegalStateException("No ObjectCodec defined");
        } else
        {
            a.writeValue(this, v);
            return;
        }
    }
}
