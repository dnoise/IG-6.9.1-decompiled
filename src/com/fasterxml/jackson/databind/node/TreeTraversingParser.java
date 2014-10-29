// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.a.d;
import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.q;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            NodeCursor, POJONode, BinaryNode

public class TreeTraversingParser extends d
{

    protected boolean _closed;
    protected r _nextToken;
    protected NodeCursor _nodeCursor;
    protected s _objectCodec;
    protected boolean _startContainer;

    public TreeTraversingParser(JsonNode jsonnode)
    {
        this(jsonnode, null);
    }

    public TreeTraversingParser(JsonNode jsonnode, s s)
    {
        super(0);
        _objectCodec = s;
        if (jsonnode.isArray())
        {
            _nextToken = r.d;
            _nodeCursor = new NodeCursor.Array(jsonnode, null);
            return;
        }
        if (jsonnode.isObject())
        {
            _nextToken = r.b;
            _nodeCursor = new NodeCursor.Object(jsonnode, null);
            return;
        } else
        {
            _nodeCursor = new NodeCursor.RootValue(jsonnode, null);
            return;
        }
    }

    protected void _handleEOF()
    {
        _throwInternal();
    }

    public void close()
    {
        if (!_closed)
        {
            _closed = true;
            _nodeCursor = null;
            _currToken = null;
        }
    }

    protected JsonNode currentNode()
    {
        if (_closed || _nodeCursor == null)
        {
            return null;
        } else
        {
            return _nodeCursor.currentNode();
        }
    }

    protected JsonNode currentNumericNode()
    {
        JsonNode jsonnode = currentNode();
        if (jsonnode == null || !jsonnode.isNumber())
        {
            r r1;
            if (jsonnode == null)
            {
                r1 = null;
            } else
            {
                r1 = jsonnode.asToken();
            }
            throw _constructError((new StringBuilder("Current token (")).append(r1).append(") not numeric, can not use numeric value accessors").toString());
        } else
        {
            return jsonnode;
        }
    }

    public BigInteger getBigIntegerValue()
    {
        return currentNumericNode().bigIntegerValue();
    }

    public byte[] getBinaryValue(a a)
    {
        JsonNode jsonnode = currentNode();
        if (jsonnode != null)
        {
            byte abyte0[] = jsonnode.binaryValue();
            if (abyte0 != null)
            {
                return abyte0;
            }
            if (jsonnode.isPojo())
            {
                Object obj = ((POJONode)jsonnode).getPojo();
                if (obj instanceof byte[])
                {
                    return (byte[])(byte[])obj;
                }
            }
        }
        return null;
    }

    public s getCodec()
    {
        return _objectCodec;
    }

    public j getCurrentLocation()
    {
        return j.a;
    }

    public String getCurrentName()
    {
        if (_nodeCursor == null)
        {
            return null;
        } else
        {
            return _nodeCursor.getCurrentName();
        }
    }

    public BigDecimal getDecimalValue()
    {
        return currentNumericNode().decimalValue();
    }

    public double getDoubleValue()
    {
        return currentNumericNode().doubleValue();
    }

    public Object getEmbeddedObject()
    {
        if (!_closed)
        {
            JsonNode jsonnode = currentNode();
            if (jsonnode != null)
            {
                if (jsonnode.isPojo())
                {
                    return ((POJONode)jsonnode).getPojo();
                }
                if (jsonnode.isBinary())
                {
                    return ((BinaryNode)jsonnode).binaryValue();
                }
            }
        }
        return null;
    }

    public float getFloatValue()
    {
        return (float)currentNumericNode().doubleValue();
    }

    public int getIntValue()
    {
        return currentNumericNode().intValue();
    }

    public long getLongValue()
    {
        return currentNumericNode().longValue();
    }

    public int getNumberType$72641f5()
    {
        JsonNode jsonnode = currentNumericNode();
        if (jsonnode == null)
        {
            return 0;
        } else
        {
            return jsonnode.numberType$72641f5();
        }
    }

    public Number getNumberValue()
    {
        return currentNumericNode().numberValue();
    }

    public q getParsingContext()
    {
        return _nodeCursor;
    }

    public String getText()
    {
        if (!_closed) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        _cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[_currToken.ordinal()];
        JVM INSTR tableswitch 1 5: default 56
    //                   1 71
    //                   2 79
    //                   3 87
    //                   4 87
    //                   5 98;
           goto _L3 _L4 _L5 _L6 _L6 _L7
_L3:
        if (_currToken != null)
        {
            return _currToken.a();
        }
          goto _L8
_L4:
        return _nodeCursor.getCurrentName();
_L5:
        return currentNode().textValue();
_L6:
        return String.valueOf(currentNode().numberValue());
_L7:
        JsonNode jsonnode = currentNode();
        if (jsonnode != null && jsonnode.isBinary())
        {
            return jsonnode.asText();
        }
        if (true) goto _L3; else goto _L8
_L8:
        if (true) goto _L1; else goto _L9
_L9:
    }

    public char[] getTextCharacters()
    {
        return getText().toCharArray();
    }

    public int getTextLength()
    {
        return getText().length();
    }

    public int getTextOffset()
    {
        return 0;
    }

    public j getTokenLocation()
    {
        return j.a;
    }

    public boolean hasTextCharacters()
    {
        return false;
    }

    public boolean isClosed()
    {
        return _closed;
    }

    public r nextToken()
    {
        if (_nextToken != null)
        {
            _currToken = _nextToken;
            _nextToken = null;
            return _currToken;
        }
        if (_startContainer)
        {
            _startContainer = false;
            if (!_nodeCursor.currentHasChildren())
            {
                r r1;
                if (_currToken == r.b)
                {
                    r1 = r.c;
                } else
                {
                    r1 = r.e;
                }
                _currToken = r1;
                return _currToken;
            }
            _nodeCursor = _nodeCursor.iterateChildren();
            _currToken = _nodeCursor.nextToken();
            if (_currToken == r.b || _currToken == r.d)
            {
                _startContainer = true;
            }
            return _currToken;
        }
        if (_nodeCursor == null)
        {
            _closed = true;
            return null;
        }
        _currToken = _nodeCursor.nextToken();
        if (_currToken != null)
        {
            if (_currToken == r.b || _currToken == r.d)
            {
                _startContainer = true;
            }
            return _currToken;
        } else
        {
            _currToken = _nodeCursor.endToken();
            _nodeCursor = _nodeCursor.getParent();
            return _currToken;
        }
    }

    public void overrideCurrentName(String s)
    {
        if (_nodeCursor != null)
        {
            _nodeCursor.overrideCurrentName(s);
        }
    }

    public int readBinaryValue(a a, OutputStream outputstream)
    {
        byte abyte0[] = getBinaryValue(a);
        int i = 0;
        if (abyte0 != null)
        {
            outputstream.write(abyte0, 0, abyte0.length);
            i = abyte0.length;
        }
        return i;
    }

    public void setCodec(s s)
    {
        _objectCodec = s;
    }

    public l skipChildren()
    {
        if (_currToken == r.b)
        {
            _startContainer = false;
            _currToken = r.c;
        } else
        if (_currToken == r.d)
        {
            _startContainer = false;
            _currToken = r.e;
            return this;
        }
        return this;
    }

    public w version()
    {
        return PackageVersion.VERSION;
    }

    private class _cls1
    {

        static final int $SwitchMap$com$fasterxml$jackson$core$JsonToken[];

        static 
        {
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[r.values().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.f.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.h.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.i.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.j.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.g.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4)
            {
                return;
            }
        }
    }

}
