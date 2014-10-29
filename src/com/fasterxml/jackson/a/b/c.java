// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.b;

import com.fasterxml.jackson.a.e;
import java.io.EOFException;
import java.io.InputStream;

// Referenced classes of package com.fasterxml.jackson.a.b:
//            b, a

public class c
    implements b
{

    protected final byte _buffer[];
    protected int _bufferedEnd;
    protected final int _bufferedStart;
    protected final InputStream _in;
    protected int _ptr;

    public c(InputStream inputstream, byte abyte0[])
    {
        _in = inputstream;
        _buffer = abyte0;
        _bufferedStart = 0;
        _ptr = 0;
        _bufferedEnd = 0;
    }

    public c(byte abyte0[])
    {
        _in = null;
        _buffer = abyte0;
        _bufferedStart = 0;
        _bufferedEnd = abyte0.length;
    }

    public c(byte abyte0[], int i, int j)
    {
        _in = null;
        _buffer = abyte0;
        _ptr = i;
        _bufferedStart = i;
        _bufferedEnd = i + j;
    }

    public a createMatcher$6e3aa73a(e e, int i)
    {
        return new a(_in, _buffer, _bufferedStart, _bufferedEnd - _bufferedStart, e, i);
    }

    public boolean hasMoreBytes()
    {
        if (_ptr < _bufferedEnd)
        {
            return true;
        }
        if (_in == null)
        {
            return false;
        }
        int i = _buffer.length - _ptr;
        if (i <= 0)
        {
            return false;
        }
        int j = _in.read(_buffer, _ptr, i);
        if (j <= 0)
        {
            return false;
        } else
        {
            _bufferedEnd = j + _bufferedEnd;
            return true;
        }
    }

    public byte nextByte()
    {
        if (_ptr >= _bufferedEnd && !hasMoreBytes())
        {
            throw new EOFException((new StringBuilder("Failed auto-detect: could not read more than ")).append(_ptr).append(" bytes (max buffer size: ").append(_buffer.length).append(")").toString());
        } else
        {
            byte abyte0[] = _buffer;
            int i = _ptr;
            _ptr = i + 1;
            return abyte0[i];
        }
    }

    public void reset()
    {
        _ptr = _bufferedStart;
    }
}
