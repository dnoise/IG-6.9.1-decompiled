// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.d;

import com.fasterxml.jackson.a.q;

public final class e extends q
{

    protected final e a;
    protected String b;
    protected e c;

    private e(int i, e e1)
    {
        c = null;
        _type = i;
        a = e1;
        _index = -1;
    }

    public static e a()
    {
        return new e(0, null);
    }

    private e a(int i)
    {
        _type = i;
        _index = -1;
        b = null;
        return this;
    }

    private void a(StringBuilder stringbuilder)
    {
        if (_type == 2)
        {
            stringbuilder.append('{');
            if (b != null)
            {
                stringbuilder.append('"');
                stringbuilder.append(b);
                stringbuilder.append('"');
            } else
            {
                stringbuilder.append('?');
            }
            stringbuilder.append('}');
            return;
        }
        if (_type == 1)
        {
            stringbuilder.append('[');
            stringbuilder.append(getCurrentIndex());
            stringbuilder.append(']');
            return;
        } else
        {
            stringbuilder.append("/");
            return;
        }
    }

    public final int a(String s)
    {
        if (_type != 2 || b != null)
        {
            return 4;
        }
        b = s;
        return _index >= 0 ? 1 : 0;
    }

    public final e b()
    {
        e e1 = c;
        if (e1 == null)
        {
            e e2 = new e(1, this);
            c = e2;
            return e2;
        } else
        {
            return e1.a(1);
        }
    }

    public final e c()
    {
        e e1 = c;
        if (e1 == null)
        {
            e e2 = new e(2, this);
            c = e2;
            return e2;
        } else
        {
            return e1.a(2);
        }
    }

    public final e d()
    {
        return a;
    }

    public final int e()
    {
        if (_type == 2)
        {
            if (b == null)
            {
                return 5;
            } else
            {
                b = null;
                _index = 1 + _index;
                return 2;
            }
        }
        if (_type == 1)
        {
            int i = _index;
            _index = 1 + _index;
            return i >= 0 ? 1 : 0;
        }
        _index = 1 + _index;
        return _index != 0 ? 3 : 0;
    }

    public final String getCurrentName()
    {
        return b;
    }

    public final q getParent()
    {
        return d();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        a(stringbuilder);
        return stringbuilder.toString();
    }
}
