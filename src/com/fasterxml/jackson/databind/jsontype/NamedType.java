// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsontype;

import java.io.Serializable;

public final class NamedType
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected final Class _class;
    protected final int _hashCode;
    protected String _name;

    public NamedType(Class class1)
    {
        this(class1, null);
    }

    public NamedType(Class class1, String s)
    {
        _class = class1;
        _hashCode = class1.getName().hashCode();
        setName(s);
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            if (_class != ((NamedType)obj)._class)
            {
                return false;
            }
        }
        return true;
    }

    public final String getName()
    {
        return _name;
    }

    public final Class getType()
    {
        return _class;
    }

    public final boolean hasName()
    {
        return _name != null;
    }

    public final int hashCode()
    {
        return _hashCode;
    }

    public final void setName(String s)
    {
        if (s == null || s.length() == 0)
        {
            s = null;
        }
        _name = s;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder("[NamedType, class ")).append(_class.getName()).append(", name: ");
        String s;
        if (_name == null)
        {
            s = "null";
        } else
        {
            s = (new StringBuilder("'")).append(_name).append("'").toString();
        }
        return stringbuilder.append(s).append("]").toString();
    }
}
