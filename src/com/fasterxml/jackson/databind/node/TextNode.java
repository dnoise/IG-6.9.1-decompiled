// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.c.b;
import com.fasterxml.jackson.a.c.h;
import com.fasterxml.jackson.a.g.d;
import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.a.k;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.SerializerProvider;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            ValueNode, JsonNodeType

public final class TextNode extends ValueNode
{

    static final TextNode EMPTY_STRING_NODE = new TextNode("");
    static final int INT_SPACE = 32;
    final String _value;

    public TextNode(String s)
    {
        _value = s;
    }

    protected static void appendQuoted(StringBuilder stringbuilder, String s)
    {
        stringbuilder.append('"');
        b.a(stringbuilder, s);
        stringbuilder.append('"');
    }

    public static TextNode valueOf(String s)
    {
        if (s == null)
        {
            return null;
        }
        if (s.length() == 0)
        {
            return EMPTY_STRING_NODE;
        } else
        {
            return new TextNode(s);
        }
    }

    protected final void _reportBase64EOF()
    {
        throw new k("Unexpected end-of-String when base64 content", j.a);
    }

    protected final void _reportInvalidBase64(a a1, char c, int i)
    {
        _reportInvalidBase64(a1, c, i, null);
    }

    protected final void _reportInvalidBase64(a a1, char c, int i, String s)
    {
        String s1;
        if (c <= ' ')
        {
            s1 = (new StringBuilder("Illegal white space character (code 0x")).append(Integer.toHexString(c)).append(") as character #").append(i + 1).append(" of 4-char base64 unit: can only used between units").toString();
        } else
        if (a1.a(c))
        {
            s1 = (new StringBuilder("Unexpected padding character ('")).append(a1.b()).append("') as character #").append(i + 1).append(" of 4-char base64 unit: padding only legal as 3rd or 4th character").toString();
        } else
        if (!Character.isDefined(c) || Character.isISOControl(c))
        {
            s1 = (new StringBuilder("Illegal character (code 0x")).append(Integer.toHexString(c)).append(") in base64 content").toString();
        } else
        {
            s1 = (new StringBuilder("Illegal character '")).append(c).append("' (code 0x").append(Integer.toHexString(c)).append(") in base64 content").toString();
        }
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s1).append(": ").append(s).toString();
        }
        throw new k(s1, j.a);
    }

    public final boolean asBoolean(boolean flag)
    {
        if (_value != null && "true".equals(_value.trim()))
        {
            flag = true;
        }
        return flag;
    }

    public final double asDouble(double d1)
    {
        return h.a(_value, d1);
    }

    public final int asInt(int i)
    {
        return h.a(_value, i);
    }

    public final long asLong(long l)
    {
        return h.a(_value, l);
    }

    public final String asText()
    {
        return _value;
    }

    public final r asToken()
    {
        return r.h;
    }

    public final byte[] binaryValue()
    {
        return getBinaryValue(com.fasterxml.jackson.a.b.a());
    }

    public final boolean equals(Object obj)
    {
        boolean flag;
        if (obj == this)
        {
            flag = true;
        } else
        {
            flag = false;
            if (obj != null)
            {
                Class class1 = obj.getClass();
                Class class2 = getClass();
                flag = false;
                if (class1 == class2)
                {
                    return ((TextNode)obj)._value.equals(_value);
                }
            }
        }
        return flag;
    }

    public final byte[] getBinaryValue(a a1)
    {
        d d1;
        String s;
        int i;
        int l;
        d1 = new d((byte)0);
        s = _value;
        i = s.length();
        l = 0;
_L8:
        if (l >= i) goto _L2; else goto _L1
_L1:
        int i1;
        char c;
        i1 = l + 1;
        c = s.charAt(l);
        if (i1 >= i) goto _L2; else goto _L3
_L3:
        int k1;
        int i2;
        if (c <= ' ')
        {
            break MISSING_BLOCK_LABEL_392;
        }
        int j1 = a1.b(c);
        if (j1 < 0)
        {
            _reportInvalidBase64(a1, c, 0);
        }
        if (i1 >= i)
        {
            _reportBase64EOF();
        }
        k1 = i1 + 1;
        char c1 = s.charAt(i1);
        int l1 = a1.b(c1);
        if (l1 < 0)
        {
            _reportInvalidBase64(a1, c1, 1);
        }
        i2 = l1 | j1 << 6;
        if (k1 < i) goto _L5; else goto _L4
_L4:
        if (a1.a()) goto _L7; else goto _L6
_L6:
        d1.a(i2 >> 4);
_L2:
        return d1.c();
_L7:
        _reportBase64EOF();
_L5:
        int j2;
        int k2;
label0:
        {
            j2 = k1 + 1;
            char c2 = s.charAt(k1);
            k2 = a1.b(c2);
            if (k2 >= 0)
            {
                break label0;
            }
            if (k2 != -2)
            {
                _reportInvalidBase64(a1, c2, 2);
            }
            if (j2 >= i)
            {
                _reportBase64EOF();
            }
            l = j2 + 1;
            char c4 = s.charAt(j2);
            if (!a1.a(c4))
            {
                _reportInvalidBase64(a1, c4, 3, (new StringBuilder("expected padding character '")).append(a1.b()).append("'").toString());
            }
            d1.a(i2 >> 4);
        }
          goto _L8
        int l2;
label1:
        {
            l2 = k2 | i2 << 6;
            if (j2 < i)
            {
                break MISSING_BLOCK_LABEL_324;
            }
            if (a1.a())
            {
                break label1;
            }
            d1.b(l2 >> 2);
        }
          goto _L2
        _reportBase64EOF();
        l = j2 + 1;
        char c3 = s.charAt(j2);
        int i3 = a1.b(c3);
        if (i3 < 0)
        {
            if (i3 != -2)
            {
                _reportInvalidBase64(a1, c3, 3);
            }
            d1.b(l2 >> 2);
        } else
        {
            d1.c(i3 | l2 << 6);
        }
          goto _L8
        l = i1;
          goto _L1
    }

    public final JsonNodeType getNodeType()
    {
        return JsonNodeType.STRING;
    }

    public final int hashCode()
    {
        return _value.hashCode();
    }

    public final void serialize(com.fasterxml.jackson.a.h h1, SerializerProvider serializerprovider)
    {
        if (_value == null)
        {
            h1.writeNull();
            return;
        } else
        {
            h1.writeString(_value);
            return;
        }
    }

    public final String textValue()
    {
        return _value;
    }

    public final String toString()
    {
        int i = _value.length();
        StringBuilder stringbuilder = new StringBuilder(i + 2 + (i >> 4));
        appendQuoted(stringbuilder, _value);
        return stringbuilder.toString();
    }

}
