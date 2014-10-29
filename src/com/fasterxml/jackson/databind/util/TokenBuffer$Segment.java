// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.a.r;

public final class 
{

    public static final int TOKENS_PER_SEGMENT = 16;
    private static final r TOKEN_TYPES_BY_INDEX[];
    protected TOKEN_TYPES_BY_INDEX _next;
    protected long _tokenTypes;
    protected final Object _tokens[] = new Object[16];

    private void set(int i, int j, Object obj)
    {
        _tokens[i] = obj;
        long l = j;
        if (i > 0)
        {
            l <<= i << 2;
        }
        _tokenTypes = l | _tokenTypes;
    }

    public final _tokenTypes append(int i, r r1)
    {
        if (i < 16)
        {
            set(i, r1);
            return null;
        } else
        {
            _next = new <init>();
            _next.set(0, r1);
            return _next;
        }
    }

    public final _next append(int i, r r1, Object obj)
    {
        if (i < 16)
        {
            set(i, r1, obj);
            return null;
        } else
        {
            _next = new <init>();
            _next.set(0, r1, obj);
            return _next;
        }
    }

    public final _next appendRaw(int i, int j, Object obj)
    {
        if (i < 16)
        {
            set(i, j, obj);
            return null;
        } else
        {
            _next = new <init>();
            _next.set(0, j, obj);
            return _next;
        }
    }

    public final Object get(int i)
    {
        return _tokens[i];
    }

    public final _tokens next()
    {
        return _next;
    }

    public final int rawType(int i)
    {
        long l = _tokenTypes;
        if (i > 0)
        {
            l >>= i << 2;
        }
        return 0xf & (int)l;
    }

    public final void set(int i, r r1)
    {
        long l = r1.ordinal();
        if (i > 0)
        {
            l <<= i << 2;
        }
        _tokenTypes = l | _tokenTypes;
    }

    public final void set(int i, r r1, Object obj)
    {
        _tokens[i] = obj;
        long l = r1.ordinal();
        if (i > 0)
        {
            l <<= i << 2;
        }
        _tokenTypes = l | _tokenTypes;
    }

    public final r type(int i)
    {
        long l = _tokenTypes;
        if (i > 0)
        {
            l >>= i << 2;
        }
        int j = 0xf & (int)l;
        return TOKEN_TYPES_BY_INDEX[j];
    }

    static 
    {
        TOKEN_TYPES_BY_INDEX = new r[16];
        r ar[] = r.values();
        System.arraycopy(ar, 1, TOKEN_TYPES_BY_INDEX, 1, Math.min(15, -1 + ar.length));
    }

    public ()
    {
    }
}
