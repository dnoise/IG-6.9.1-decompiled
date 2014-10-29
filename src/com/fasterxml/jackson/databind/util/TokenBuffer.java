// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.d.e;
import com.fasterxml.jackson.a.g;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.i;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.n;
import com.fasterxml.jackson.a.q;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.u;
import com.fasterxml.jackson.a.v;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

public class TokenBuffer extends h
{

    protected static final int DEFAULT_PARSER_FEATURES = n.a();
    protected int _appendOffset;
    protected boolean _closed;
    protected Segment _first;
    protected int _generatorFeatures;
    protected Segment _last;
    protected s _objectCodec;
    protected e _writeContext;

    public TokenBuffer(s s)
    {
        _objectCodec = s;
        _generatorFeatures = DEFAULT_PARSER_FEATURES;
        _writeContext = e.a();
        Segment segment = new Segment();
        _last = segment;
        _first = segment;
        _appendOffset = 0;
    }

    protected final void _append(r r1)
    {
        Segment segment = _last.append(_appendOffset, r1);
        if (segment == null)
        {
            _appendOffset = 1 + _appendOffset;
            return;
        } else
        {
            _last = segment;
            _appendOffset = 1;
            return;
        }
    }

    protected final void _append(r r1, Object obj)
    {
        Segment segment = _last.append(_appendOffset, r1, obj);
        if (segment == null)
        {
            _appendOffset = 1 + _appendOffset;
            return;
        } else
        {
            _last = segment;
            _appendOffset = 1;
            return;
        }
    }

    protected final void _appendRaw(int j, Object obj)
    {
        Segment segment = _last.appendRaw(_appendOffset, j, obj);
        if (segment == null)
        {
            _appendOffset = 1 + _appendOffset;
            return;
        } else
        {
            _last = segment;
            _appendOffset = 1;
            return;
        }
    }

    protected void _reportUnsupportedOperation()
    {
        throw new UnsupportedOperationException("Called operation not supported for TokenBuffer");
    }

    public TokenBuffer append(TokenBuffer tokenbuffer)
    {
        for (l l1 = tokenbuffer.asParser(); l1.nextToken() != null; copyCurrentEvent(l1)) { }
        return this;
    }

    public l asParser()
    {
        return asParser(_objectCodec);
    }

    public l asParser(l l1)
    {
        Parser parser = new Parser(_first, l1.getCodec());
        parser.setLocation(l1.getTokenLocation());
        return parser;
    }

    public l asParser(s s)
    {
        return new Parser(_first, s);
    }

    public void close()
    {
        _closed = true;
    }

    public void copyCurrentEvent(l l1)
    {
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[l1.getCurrentToken().ordinal()])
        {
        default:
            throw new RuntimeException("Internal error: should never end up through this code path");

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
            switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonParser.NumberType[-1 + l1.getNumberType$72641f5()])
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
            switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonParser.NumberType[-1 + l1.getNumberType$72641f5()])
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

    public void copyCurrentStructure(l l1)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.f)
        {
            writeFieldName(l1.getCurrentName());
            r1 = l1.nextToken();
        }
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[r1.ordinal()])
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

    public h disable(i j)
    {
        _generatorFeatures = _generatorFeatures & (-1 ^ j.b());
        return this;
    }

    public h enable(i j)
    {
        _generatorFeatures = _generatorFeatures | j.b();
        return this;
    }

    public r firstToken()
    {
        if (_first != null)
        {
            return _first.type(0);
        } else
        {
            return null;
        }
    }

    public void flush()
    {
    }

    public s getCodec()
    {
        return _objectCodec;
    }

    public final e getOutputContext()
    {
        return _writeContext;
    }

    public volatile q getOutputContext()
    {
        return getOutputContext();
    }

    public boolean isClosed()
    {
        return _closed;
    }

    public boolean isEnabled(i j)
    {
        return (_generatorFeatures & j.b()) != 0;
    }

    public void serialize(h h1)
    {
        int j;
        Segment segment1;
        Segment segment = _first;
        j = -1;
        segment1 = segment;
_L9:
        int k = j + 1;
        if (k < 16) goto _L2; else goto _L1
_L1:
        Segment segment3 = segment1.next();
        if (segment3 == null) goto _L4; else goto _L3
_L3:
        Segment segment2;
        int i1;
        i1 = 0;
        segment2 = segment3;
_L7:
        r r1 = segment2.type(i1);
        if (r1 == null) goto _L4; else goto _L5
_L5:
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[r1.ordinal()])
        {
        default:
            throw new RuntimeException("Internal error: should never end up through this code path");

        case 1: // '\001'
            h1.writeStartObject();
            j = i1;
            segment1 = segment2;
            break;

        case 2: // '\002'
            h1.writeEndObject();
            j = i1;
            segment1 = segment2;
            break;

        case 3: // '\003'
            h1.writeStartArray();
            j = i1;
            segment1 = segment2;
            break;

        case 4: // '\004'
            h1.writeEndArray();
            j = i1;
            segment1 = segment2;
            break;

        case 5: // '\005'
            Object obj3 = segment2.get(i1);
            if (obj3 instanceof u)
            {
                h1.writeFieldName((u)obj3);
                j = i1;
                segment1 = segment2;
            } else
            {
                h1.writeFieldName((String)obj3);
                j = i1;
                segment1 = segment2;
            }
            break;

        case 6: // '\006'
            Object obj2 = segment2.get(i1);
            if (obj2 instanceof u)
            {
                h1.writeString((u)obj2);
                j = i1;
                segment1 = segment2;
            } else
            {
                h1.writeString((String)obj2);
                j = i1;
                segment1 = segment2;
            }
            break;

        case 7: // '\007'
            Object obj1 = segment2.get(i1);
            if (obj1 instanceof Integer)
            {
                h1.writeNumber(((Integer)obj1).intValue());
                j = i1;
                segment1 = segment2;
            } else
            if (obj1 instanceof BigInteger)
            {
                h1.writeNumber((BigInteger)obj1);
                j = i1;
                segment1 = segment2;
            } else
            if (obj1 instanceof Long)
            {
                h1.writeNumber(((Long)obj1).longValue());
                j = i1;
                segment1 = segment2;
            } else
            if (obj1 instanceof Short)
            {
                h1.writeNumber(((Short)obj1).shortValue());
                j = i1;
                segment1 = segment2;
            } else
            {
                h1.writeNumber(((Number)obj1).intValue());
                j = i1;
                segment1 = segment2;
            }
            break;

        case 8: // '\b'
            Object obj = segment2.get(i1);
            if (obj instanceof Double)
            {
                h1.writeNumber(((Double)obj).doubleValue());
                j = i1;
                segment1 = segment2;
            } else
            if (obj instanceof BigDecimal)
            {
                h1.writeNumber((BigDecimal)obj);
                j = i1;
                segment1 = segment2;
            } else
            if (obj instanceof Float)
            {
                h1.writeNumber(((Float)obj).floatValue());
                j = i1;
                segment1 = segment2;
            } else
            if (obj == null)
            {
                h1.writeNull();
                j = i1;
                segment1 = segment2;
            } else
            if (obj instanceof String)
            {
                h1.writeNumber((String)obj);
                j = i1;
                segment1 = segment2;
            } else
            {
                throw new g((new StringBuilder("Unrecognized value type for VALUE_NUMBER_FLOAT: ")).append(obj.getClass().getName()).append(", can not serialize").toString());
            }
            break;

        case 9: // '\t'
            h1.writeBoolean(true);
            j = i1;
            segment1 = segment2;
            break;

        case 10: // '\n'
            h1.writeBoolean(false);
            j = i1;
            segment1 = segment2;
            break;

        case 11: // '\013'
            h1.writeNull();
            j = i1;
            segment1 = segment2;
            break;

        case 12: // '\f'
            h1.writeObject(segment2.get(i1));
            j = i1;
            segment1 = segment2;
            break;
        }
          goto _L6
_L4:
        return;
_L2:
        segment2 = segment1;
        i1 = k;
        if (true) goto _L7; else goto _L6
_L6:
        if (true) goto _L9; else goto _L8
_L8:
    }

    public h setCodec(s s)
    {
        _objectCodec = s;
        return this;
    }

    public String toString()
    {
        StringBuilder stringbuilder;
        l l1;
        int j;
        stringbuilder = new StringBuilder();
        stringbuilder.append("[TokenBuffer: ");
        l1 = asParser();
        j = 0;
_L1:
        r r1;
        try
        {
            r1 = l1.nextToken();
        }
        catch (IOException ioexception)
        {
            throw new IllegalStateException(ioexception);
        }
        if (r1 == null)
        {
            if (j >= 100)
            {
                stringbuilder.append(" ... (truncated ").append(j - 100).append(" entries)");
            }
            stringbuilder.append(']');
            return stringbuilder.toString();
        }
        if (j >= 100)
        {
            break MISSING_BLOCK_LABEL_137;
        }
        if (j <= 0)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        stringbuilder.append(", ");
        stringbuilder.append(r1.toString());
        if (r1 == r.f)
        {
            stringbuilder.append('(');
            stringbuilder.append(l1.getCurrentName());
            stringbuilder.append(')');
        }
        j++;
          goto _L1
    }

    public h useDefaultPrettyPrinter()
    {
        return this;
    }

    public w version()
    {
        return PackageVersion.VERSION;
    }

    public int writeBinary(a a, InputStream inputstream, int j)
    {
        throw new UnsupportedOperationException();
    }

    public void writeBinary(a a, byte abyte0[], int j, int k)
    {
        byte abyte1[] = new byte[k];
        System.arraycopy(abyte0, j, abyte1, 0, k);
        writeObject(abyte1);
    }

    public void writeBoolean(boolean flag)
    {
        r r1;
        if (flag)
        {
            r1 = r.k;
        } else
        {
            r1 = r.l;
        }
        _append(r1);
    }

    public final void writeEndArray()
    {
        _append(r.e);
        e e1 = _writeContext.d();
        if (e1 != null)
        {
            _writeContext = e1;
        }
    }

    public final void writeEndObject()
    {
        _append(r.c);
        e e1 = _writeContext.d();
        if (e1 != null)
        {
            _writeContext = e1;
        }
    }

    public void writeFieldName(u u1)
    {
        _append(r.f, u1);
        _writeContext.a(u1.a());
    }

    public final void writeFieldName(String s)
    {
        _append(r.f, s);
        _writeContext.a(s);
    }

    public void writeNull()
    {
        _append(r.m);
    }

    public void writeNumber(double d)
    {
        _append(r.j, Double.valueOf(d));
    }

    public void writeNumber(float f)
    {
        _append(r.j, Float.valueOf(f));
    }

    public void writeNumber(int j)
    {
        _append(r.i, Integer.valueOf(j));
    }

    public void writeNumber(long l1)
    {
        _append(r.i, Long.valueOf(l1));
    }

    public void writeNumber(String s)
    {
        _append(r.j, s);
    }

    public void writeNumber(BigDecimal bigdecimal)
    {
        if (bigdecimal == null)
        {
            writeNull();
            return;
        } else
        {
            _append(r.j, bigdecimal);
            return;
        }
    }

    public void writeNumber(BigInteger biginteger)
    {
        if (biginteger == null)
        {
            writeNull();
            return;
        } else
        {
            _append(r.i, biginteger);
            return;
        }
    }

    public void writeNumber(short word0)
    {
        _append(r.i, Short.valueOf(word0));
    }

    public void writeObject(Object obj)
    {
        _append(r.g, obj);
    }

    public void writeRaw(char c)
    {
        _reportUnsupportedOperation();
    }

    public void writeRaw(u u1)
    {
        _reportUnsupportedOperation();
    }

    public void writeRaw(String s)
    {
        _reportUnsupportedOperation();
    }

    public void writeRaw(String s, int j, int k)
    {
        _reportUnsupportedOperation();
    }

    public void writeRaw(char ac[], int j, int k)
    {
        _reportUnsupportedOperation();
    }

    public void writeRawUTF8String(byte abyte0[], int j, int k)
    {
        _reportUnsupportedOperation();
    }

    public void writeRawValue(String s)
    {
        _reportUnsupportedOperation();
    }

    public void writeRawValue(String s, int j, int k)
    {
        _reportUnsupportedOperation();
    }

    public void writeRawValue(char ac[], int j, int k)
    {
        _reportUnsupportedOperation();
    }

    public final void writeStartArray()
    {
        _append(r.d);
        _writeContext = _writeContext.b();
    }

    public final void writeStartObject()
    {
        _append(r.b);
        _writeContext = _writeContext.c();
    }

    public void writeString(u u1)
    {
        if (u1 == null)
        {
            writeNull();
            return;
        } else
        {
            _append(r.h, u1);
            return;
        }
    }

    public void writeString(String s)
    {
        if (s == null)
        {
            writeNull();
            return;
        } else
        {
            _append(r.h, s);
            return;
        }
    }

    public void writeString(char ac[], int j, int k)
    {
        writeString(new String(ac, j, k));
    }

    public void writeTree(v v)
    {
        _append(r.g, v);
    }

    public void writeUTF8String(byte abyte0[], int j, int k)
    {
        _reportUnsupportedOperation();
    }


    private class Segment
    {

        public static final int TOKENS_PER_SEGMENT = 16;
        private static final r TOKEN_TYPES_BY_INDEX[];
        protected Segment _next;
        protected long _tokenTypes;
        protected final Object _tokens[] = new Object[16];

        private void set(int j, int k, Object obj)
        {
            _tokens[j] = obj;
            long l1 = k;
            if (j > 0)
            {
                l1 <<= j << 2;
            }
            _tokenTypes = l1 | _tokenTypes;
        }

        public final Segment append(int j, r r1)
        {
            if (j < 16)
            {
                set(j, r1);
                return null;
            } else
            {
                _next = new Segment();
                _next.set(0, r1);
                return _next;
            }
        }

        public final Segment append(int j, r r1, Object obj)
        {
            if (j < 16)
            {
                set(j, r1, obj);
                return null;
            } else
            {
                _next = new Segment();
                _next.set(0, r1, obj);
                return _next;
            }
        }

        public final Segment appendRaw(int j, int k, Object obj)
        {
            if (j < 16)
            {
                set(j, k, obj);
                return null;
            } else
            {
                _next = new Segment();
                _next.set(0, k, obj);
                return _next;
            }
        }

        public final Object get(int j)
        {
            return _tokens[j];
        }

        public final Segment next()
        {
            return _next;
        }

        public final int rawType(int j)
        {
            long l1 = _tokenTypes;
            if (j > 0)
            {
                l1 >>= j << 2;
            }
            return 0xf & (int)l1;
        }

        public final void set(int j, r r1)
        {
            long l1 = r1.ordinal();
            if (j > 0)
            {
                l1 <<= j << 2;
            }
            _tokenTypes = l1 | _tokenTypes;
        }

        public final void set(int j, r r1, Object obj)
        {
            _tokens[j] = obj;
            long l1 = r1.ordinal();
            if (j > 0)
            {
                l1 <<= j << 2;
            }
            _tokenTypes = l1 | _tokenTypes;
        }

        public final r type(int j)
        {
            long l1 = _tokenTypes;
            if (j > 0)
            {
                l1 >>= j << 2;
            }
            int k = 0xf & (int)l1;
            return TOKEN_TYPES_BY_INDEX[k];
        }

        static 
        {
            TOKEN_TYPES_BY_INDEX = new r[16];
            r ar[] = r.values();
            System.arraycopy(ar, 1, TOKEN_TYPES_BY_INDEX, 1, Math.min(15, -1 + ar.length));
        }

        public Segment()
        {
        }
    }


    private class Parser extends d
    {

        protected transient com.fasterxml.jackson.a.g.d _byteBuilder;
        protected boolean _closed;
        protected s _codec;
        protected j _location;
        protected com.fasterxml.jackson.a.d.d _parsingContext;
        protected Segment _segment;
        protected int _segmentPtr;

        protected final void _checkIsNumber()
        {
            if (_currToken == null || !_currToken.c())
            {
                throw _constructError((new StringBuilder("Current token (")).append(_currToken).append(") not numeric, can not use numeric value accessors").toString());
            } else
            {
                return;
            }
        }

        protected final Object _currentObject()
        {
            return _segment.get(_segmentPtr);
        }

        protected final void _handleEOF()
        {
            _throwInternal();
        }

        public final void close()
        {
            if (!_closed)
            {
                _closed = true;
            }
        }

        public final BigInteger getBigIntegerValue()
        {
            Number number = getNumberValue();
            if (number instanceof BigInteger)
            {
                return (BigInteger)number;
            }
            if (getNumberType$72641f5() == o.f)
            {
                return ((BigDecimal)number).toBigInteger();
            } else
            {
                return BigInteger.valueOf(number.longValue());
            }
        }

        public final byte[] getBinaryValue(a a)
        {
            if (_currToken == r.g)
            {
                Object obj = _currentObject();
                if (obj instanceof byte[])
                {
                    return (byte[])(byte[])obj;
                }
            }
            if (_currToken != r.h)
            {
                throw _constructError((new StringBuilder("Current token (")).append(_currToken).append(") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary").toString());
            }
            String s = getText();
            if (s == null)
            {
                return null;
            }
            com.fasterxml.jackson.a.g.d d1 = _byteBuilder;
            if (d1 == null)
            {
                d1 = new com.fasterxml.jackson.a.g.d((byte)0);
                _byteBuilder = d1;
            } else
            {
                _byteBuilder.a();
            }
            _decodeBase64(s, d1, a);
            return d1.c();
        }

        public final s getCodec()
        {
            return _codec;
        }

        public final j getCurrentLocation()
        {
            if (_location == null)
            {
                return j.a;
            } else
            {
                return _location;
            }
        }

        public final String getCurrentName()
        {
            return _parsingContext.getCurrentName();
        }

        public final BigDecimal getDecimalValue()
        {
            Number number = getNumberValue();
            if (number instanceof BigDecimal)
            {
                return (BigDecimal)number;
            }
            switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonParser.NumberType[-1 + getNumberType$72641f5()])
            {
            case 3: // '\003'
            case 4: // '\004'
            default:
                return BigDecimal.valueOf(number.doubleValue());

            case 1: // '\001'
            case 5: // '\005'
                return BigDecimal.valueOf(number.longValue());

            case 2: // '\002'
                return new BigDecimal((BigInteger)number);
            }
        }

        public final double getDoubleValue()
        {
            return getNumberValue().doubleValue();
        }

        public final Object getEmbeddedObject()
        {
            if (_currToken == r.g)
            {
                return _currentObject();
            } else
            {
                return null;
            }
        }

        public final float getFloatValue()
        {
            return getNumberValue().floatValue();
        }

        public final int getIntValue()
        {
            if (_currToken == r.i)
            {
                return ((Number)_currentObject()).intValue();
            } else
            {
                return getNumberValue().intValue();
            }
        }

        public final long getLongValue()
        {
            return getNumberValue().longValue();
        }

        public final int getNumberType$72641f5()
        {
            Number number = getNumberValue();
            if (number instanceof Integer)
            {
                return o.a;
            }
            if (number instanceof Long)
            {
                return o.b;
            }
            if (number instanceof Double)
            {
                return o.e;
            }
            if (number instanceof BigDecimal)
            {
                return o.f;
            }
            if (number instanceof BigInteger)
            {
                return o.c;
            }
            if (number instanceof Float)
            {
                return o.d;
            }
            if (number instanceof Short)
            {
                return o.a;
            } else
            {
                return 0;
            }
        }

        public final Number getNumberValue()
        {
            _checkIsNumber();
            Object obj = _currentObject();
            if (obj instanceof Number)
            {
                return (Number)obj;
            }
            if (obj instanceof String)
            {
                String s = (String)obj;
                if (s.indexOf('.') >= 0)
                {
                    return Double.valueOf(Double.parseDouble(s));
                } else
                {
                    return Long.valueOf(Long.parseLong(s));
                }
            }
            if (obj == null)
            {
                return null;
            } else
            {
                throw new IllegalStateException((new StringBuilder("Internal error: entry should be a Number, but is of type ")).append(obj.getClass().getName()).toString());
            }
        }

        public final q getParsingContext()
        {
            return _parsingContext;
        }

        public final String getText()
        {
            if (_currToken == r.h || _currToken == r.f)
            {
                Object obj = _currentObject();
                if (obj instanceof String)
                {
                    return (String)obj;
                }
                if (obj == null)
                {
                    return null;
                } else
                {
                    return obj.toString();
                }
            }
            if (_currToken == null)
            {
                return null;
            }
            Object obj1;
            switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[_currToken.ordinal()])
            {
            default:
                return _currToken.a();

            case 7: // '\007'
            case 8: // '\b'
                obj1 = _currentObject();
                break;
            }
            if (obj1 == null)
            {
                return null;
            } else
            {
                return obj1.toString();
            }
        }

        public final char[] getTextCharacters()
        {
            String s = getText();
            if (s == null)
            {
                return null;
            } else
            {
                return s.toCharArray();
            }
        }

        public final int getTextLength()
        {
            String s = getText();
            if (s == null)
            {
                return 0;
            } else
            {
                return s.length();
            }
        }

        public final int getTextOffset()
        {
            return 0;
        }

        public final j getTokenLocation()
        {
            return getCurrentLocation();
        }

        public final boolean hasTextCharacters()
        {
            return false;
        }

        public final boolean isClosed()
        {
            return _closed;
        }

        public final r nextToken()
        {
            if (!_closed && _segment != null) goto _L2; else goto _L1
_L1:
            return null;
_L2:
            int k = 1 + _segmentPtr;
            _segmentPtr = k;
            if (k < 16)
            {
                break; /* Loop/switch isn't completed */
            }
            _segmentPtr = 0;
            _segment = _segment.next();
            if (_segment == null) goto _L1; else goto _L3
_L3:
            _currToken = _segment.type(_segmentPtr);
            if (_currToken != r.f) goto _L5; else goto _L4
_L4:
            Object obj = _currentObject();
            String s;
            if (obj instanceof String)
            {
                s = (String)obj;
            } else
            {
                s = obj.toString();
            }
            _parsingContext.a(s);
_L7:
            return _currToken;
_L5:
            if (_currToken == r.b)
            {
                _parsingContext = _parsingContext.b(-1, -1);
            } else
            if (_currToken == r.d)
            {
                _parsingContext = _parsingContext.a(-1, -1);
            } else
            if (_currToken == r.c || _currToken == r.e)
            {
                _parsingContext = _parsingContext.c();
                if (_parsingContext == null)
                {
                    _parsingContext = com.fasterxml.jackson.a.d.d.a();
                }
            }
            if (true) goto _L7; else goto _L6
_L6:
        }

        public final void overrideCurrentName(String s)
        {
            com.fasterxml.jackson.a.d.d d1 = _parsingContext;
            if (_currToken == r.b || _currToken == r.d)
            {
                d1 = d1.c();
            }
            d1.a(s);
        }

        public final r peekNextToken()
        {
            if (!_closed)
            {
                Segment segment = _segment;
                int k = 1 + _segmentPtr;
                Segment segment1;
                if (k >= 16)
                {
                    Segment segment2;
                    if (segment == null)
                    {
                        segment2 = null;
                    } else
                    {
                        segment2 = segment.next();
                    }
                    segment1 = segment2;
                    k = 0;
                } else
                {
                    segment1 = segment;
                }
                if (segment1 != null)
                {
                    return segment1.type(k);
                }
            }
            return null;
        }

        public final int readBinaryValue(a a, OutputStream outputstream)
        {
            byte abyte0[] = getBinaryValue(a);
            int k = 0;
            if (abyte0 != null)
            {
                outputstream.write(abyte0, 0, abyte0.length);
                k = abyte0.length;
            }
            return k;
        }

        public final void setCodec(s s)
        {
            _codec = s;
        }

        public final void setLocation(j j1)
        {
            _location = j1;
        }

        public final w version()
        {
            return PackageVersion.VERSION;
        }

        public Parser(Segment segment, s s)
        {
            super(0);
            _location = null;
            _segment = segment;
            _segmentPtr = -1;
            _codec = s;
            _parsingContext = com.fasterxml.jackson.a.d.d.a();
        }
    }


    private class _cls1
    {

        static final int $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[];
        static final int $SwitchMap$com$fasterxml$jackson$core$JsonToken[];

        static 
        {
            $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType = new int[o.a().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.a] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.c] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.f] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.d] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.b] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[r.values().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.b.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.c.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.d.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror7) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.e.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror8) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.f.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror9) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.h.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror10) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.i.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror11) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.j.ordinal()] = 8;
            }
            catch (NoSuchFieldError nosuchfielderror12) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.k.ordinal()] = 9;
            }
            catch (NoSuchFieldError nosuchfielderror13) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.l.ordinal()] = 10;
            }
            catch (NoSuchFieldError nosuchfielderror14) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.m.ordinal()] = 11;
            }
            catch (NoSuchFieldError nosuchfielderror15) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.g.ordinal()] = 12;
            }
            catch (NoSuchFieldError nosuchfielderror16)
            {
                return;
            }
        }
    }

}
