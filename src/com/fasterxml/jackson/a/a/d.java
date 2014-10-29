// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.a;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.c.h;
import com.fasterxml.jackson.a.g.p;
import com.fasterxml.jackson.a.k;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.n;
import com.fasterxml.jackson.a.q;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.w;

// Referenced classes of package com.fasterxml.jackson.a.a:
//            e

public abstract class d extends l
{

    protected static final int INT_APOSTROPHE = 39;
    protected static final int INT_ASTERISK = 42;
    protected static final int INT_BACKSLASH = 92;
    protected static final int INT_COLON = 58;
    protected static final int INT_COMMA = 44;
    protected static final int INT_CR = 13;
    protected static final int INT_LBRACKET = 91;
    protected static final int INT_LCURLY = 123;
    protected static final int INT_LF = 10;
    protected static final int INT_QUOTE = 34;
    protected static final int INT_RBRACKET = 93;
    protected static final int INT_RCURLY = 125;
    protected static final int INT_SLASH = 47;
    protected static final int INT_SPACE = 32;
    protected static final int INT_TAB = 9;
    protected static final int INT_b = 98;
    protected static final int INT_f = 102;
    protected static final int INT_n = 110;
    protected static final int INT_r = 114;
    protected static final int INT_t = 116;
    protected static final int INT_u = 117;
    protected r _currToken;
    protected r _lastClearedToken;

    protected d()
    {
    }

    protected d(int i)
    {
        super(i);
    }

    protected static final String _getCharDesc(int i)
    {
        char c = (char)i;
        if (Character.isISOControl(c))
        {
            return (new StringBuilder("(CTRL-CHAR, code ")).append(i).append(")").toString();
        }
        if (i > 255)
        {
            return (new StringBuilder("'")).append(c).append("' (code ").append(i).append(" / 0x").append(Integer.toHexString(i)).append(")").toString();
        } else
        {
            return (new StringBuilder("'")).append(c).append("' (code ").append(i).append(")").toString();
        }
    }

    protected final k _constructError(String s, Throwable throwable)
    {
        return new k(s, getCurrentLocation(), throwable);
    }

    protected void _decodeBase64(String s, com.fasterxml.jackson.a.g.d d1, a a1)
    {
        try
        {
            a1.a(s, d1);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            _reportError(illegalargumentexception.getMessage());
        }
    }

    protected abstract void _handleEOF();

    protected char _handleUnrecognizedCharacterEscape(char c)
    {
        while (isEnabled(n.f) || c == '\'' && isEnabled(n.d)) 
        {
            return c;
        }
        _reportError((new StringBuilder("Unrecognized character escape ")).append(_getCharDesc(c)).toString());
        return c;
    }

    protected void _reportBase64EOF()
    {
        throw _constructError("Unexpected end-of-String in base64 content");
    }

    protected final void _reportError(String s)
    {
        throw _constructError(s);
    }

    protected void _reportInvalidBase64(a a1, char c, int i, String s)
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
        throw _constructError(s1);
    }

    protected void _reportInvalidEOF()
    {
        _reportInvalidEOF((new StringBuilder(" in ")).append(_currToken).toString());
    }

    protected void _reportInvalidEOF(String s)
    {
        _reportError((new StringBuilder("Unexpected end-of-input")).append(s).toString());
    }

    protected void _reportInvalidEOFInValue()
    {
        _reportInvalidEOF(" in a value");
    }

    protected void _reportUnexpectedChar(int i, String s)
    {
        String s1 = (new StringBuilder("Unexpected character (")).append(_getCharDesc(i)).append(")").toString();
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s1).append(": ").append(s).toString();
        }
        _reportError(s1);
    }

    protected final void _throwInternal()
    {
        p.a();
    }

    protected void _throwInvalidSpace(int i)
    {
        char c = (char)i;
        _reportError((new StringBuilder("Illegal character (")).append(_getCharDesc(c)).append("): only regular white space (\\r, \\n, \\t) is allowed between tokens").toString());
    }

    protected void _throwUnquotedSpace(int i, String s)
    {
        if (!isEnabled(n.e) || i >= 32)
        {
            char c = (char)i;
            _reportError((new StringBuilder("Illegal unquoted character (")).append(_getCharDesc(c)).append("): has to be escaped using backslash to be included in ").append(s).toString());
        }
    }

    protected final void _wrapError(String s, Throwable throwable)
    {
        throw _constructError(s, throwable);
    }

    public void clearCurrentToken()
    {
        if (_currToken != null)
        {
            _lastClearedToken = _currToken;
            _currToken = null;
        }
    }

    public abstract void close();

    public abstract byte[] getBinaryValue(a a1);

    public abstract String getCurrentName();

    public r getCurrentToken()
    {
        return _currToken;
    }

    public r getLastClearedToken()
    {
        return _lastClearedToken;
    }

    public abstract q getParsingContext();

    public abstract String getText();

    public abstract char[] getTextCharacters();

    public abstract int getTextLength();

    public abstract int getTextOffset();

    public boolean getValueAsBoolean(boolean flag)
    {
        if (_currToken == null) goto _L2; else goto _L1
_L1:
        com.fasterxml.jackson.a.a.e.a[_currToken.ordinal()];
        JVM INSTR tableswitch 5 10: default 56
    //                   5 58
    //                   6 69
    //                   7 71
    //                   8 71
    //                   9 73
    //                   10 93;
           goto _L2 _L3 _L4 _L5 _L5 _L6 _L7
_L2:
        return flag;
_L3:
        return getIntValue() != 0;
_L4:
        return true;
_L5:
        return false;
_L6:
        Object obj = getEmbeddedObject();
        if (obj instanceof Boolean)
        {
            return ((Boolean)obj).booleanValue();
        }
_L7:
        if (!"true".equals(getText().trim())) goto _L2; else goto _L8
_L8:
        return true;
    }

    public double getValueAsDouble(double d1)
    {
        if (_currToken == null) goto _L2; else goto _L1
_L1:
        com.fasterxml.jackson.a.a.e.a[_currToken.ordinal()];
        JVM INSTR tableswitch 5 11: default 60
    //                   5 62
    //                   6 67
    //                   7 69
    //                   8 69
    //                   9 80
    //                   10 71
    //                   11 62;
           goto _L2 _L3 _L4 _L5 _L5 _L6 _L7 _L3
_L2:
        return d1;
_L3:
        return getDoubleValue();
_L4:
        return 1.0D;
_L5:
        return 0.0D;
_L7:
        return h.a(getText(), d1);
_L6:
        Object obj = getEmbeddedObject();
        if (obj instanceof Number)
        {
            return ((Number)obj).doubleValue();
        }
        if (true) goto _L2; else goto _L8
_L8:
    }

    public int getValueAsInt(int i)
    {
        if (_currToken == null) goto _L2; else goto _L1
_L1:
        com.fasterxml.jackson.a.a.e.a[_currToken.ordinal()];
        JVM INSTR tableswitch 5 11: default 60
    //                   5 62
    //                   6 67
    //                   7 69
    //                   8 69
    //                   9 80
    //                   10 71
    //                   11 62;
           goto _L2 _L3 _L4 _L5 _L5 _L6 _L7 _L3
_L2:
        return i;
_L3:
        return getIntValue();
_L4:
        return 1;
_L5:
        return 0;
_L7:
        return h.a(getText(), i);
_L6:
        Object obj = getEmbeddedObject();
        if (obj instanceof Number)
        {
            return ((Number)obj).intValue();
        }
        if (true) goto _L2; else goto _L8
_L8:
    }

    public long getValueAsLong(long l1)
    {
        if (_currToken == null) goto _L2; else goto _L1
_L1:
        com.fasterxml.jackson.a.a.e.a[_currToken.ordinal()];
        JVM INSTR tableswitch 5 11: default 60
    //                   5 62
    //                   6 67
    //                   7 69
    //                   8 69
    //                   9 80
    //                   10 71
    //                   11 62;
           goto _L2 _L3 _L4 _L5 _L5 _L6 _L7 _L3
_L2:
        return l1;
_L3:
        return getLongValue();
_L4:
        return 1L;
_L5:
        return 0L;
_L7:
        return h.a(getText(), l1);
_L6:
        Object obj = getEmbeddedObject();
        if (obj instanceof Number)
        {
            return ((Number)obj).longValue();
        }
        if (true) goto _L2; else goto _L8
_L8:
    }

    public String getValueAsString(String s)
    {
        if (_currToken != r.h && (_currToken == null || _currToken == r.m || !_currToken.d()))
        {
            return s;
        } else
        {
            return getText();
        }
    }

    public boolean hasCurrentToken()
    {
        return _currToken != null;
    }

    public abstract boolean hasTextCharacters();

    public abstract boolean isClosed();

    public abstract r nextToken();

    public r nextValue()
    {
        r r1 = nextToken();
        if (r1 == r.f)
        {
            r1 = nextToken();
        }
        return r1;
    }

    public abstract void overrideCurrentName(String s);

    public l skipChildren()
    {
        if (_currToken != r.b && _currToken != r.d)
        {
            return this;
        }
        int i = 1;
        do
        {
label0:
            do
            {
                r r1 = nextToken();
                if (r1 == null)
                {
                    _handleEOF();
                    return this;
                }
                switch (com.fasterxml.jackson.a.a.e.a[r1.ordinal()])
                {
                default:
                    break;

                case 3: // '\003'
                case 4: // '\004'
                    break label0;

                case 1: // '\001'
                case 2: // '\002'
                    i++;
                    break;
                }
            } while (true);
        } while (--i != 0);
        return this;
    }

    public w version()
    {
        return p.a(getClass());
    }
}
