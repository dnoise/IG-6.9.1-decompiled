// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import java.io.Serializable;

public class PropertyName
    implements Serializable
{

    public static final PropertyName NO_NAME = new PropertyName(new String("#disabled"), null);
    public static final PropertyName USE_DEFAULT = new PropertyName("", null);
    private static final String _NO_NAME = "#disabled";
    private static final String _USE_DEFAULT = "";
    private static final long serialVersionUID = 0x6e0fe282c0ebea86L;
    protected final String _namespace;
    protected final String _simpleName;

    public PropertyName(String s)
    {
        this(s, null);
    }

    public PropertyName(String s, String s1)
    {
        if (s == null)
        {
            s = "";
        }
        _simpleName = s;
        _namespace = s1;
    }

    public static PropertyName construct(String s, String s1)
    {
        if (s == null)
        {
            s = "";
        }
        if (s1 == null && s.length() == 0)
        {
            return USE_DEFAULT;
        } else
        {
            return new PropertyName(s, s1);
        }
    }

    public boolean equals(Object obj)
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
            PropertyName propertyname = (PropertyName)obj;
            if (_simpleName == null)
            {
                if (propertyname._simpleName != null)
                {
                    return false;
                }
            } else
            if (!_simpleName.equals(propertyname._simpleName))
            {
                return false;
            }
            if (_namespace == null)
            {
                if (propertyname._namespace != null)
                {
                    return false;
                }
            } else
            {
                return _namespace.equals(propertyname._namespace);
            }
        }
        return true;
    }

    public String getNamespace()
    {
        return _namespace;
    }

    public String getSimpleName()
    {
        return _simpleName;
    }

    public boolean hasNamespace()
    {
        return _namespace != null;
    }

    public boolean hasSimpleName()
    {
        return _simpleName.length() > 0;
    }

    public int hashCode()
    {
        if (_namespace == null)
        {
            return _simpleName.hashCode();
        } else
        {
            return _namespace.hashCode() ^ _simpleName.hashCode();
        }
    }

    protected Object readResolve()
    {
        if (_simpleName == null || "".equals(_simpleName))
        {
            this = USE_DEFAULT;
        } else
        if (_simpleName.equals("#disabled"))
        {
            return NO_NAME;
        }
        return this;
    }

    public String toString()
    {
        if (_namespace == null)
        {
            return _simpleName;
        } else
        {
            return (new StringBuilder("{")).append(_namespace).append("}").append(_simpleName).toString();
        }
    }

    public PropertyName withNamespace(String s)
    {
        if (s != null ? s.equals(_namespace) : _namespace == null)
        {
            return this;
        } else
        {
            return new PropertyName(_simpleName, s);
        }
    }

    public PropertyName withSimpleName(String s)
    {
        if (s == null)
        {
            s = "";
        }
        if (s.equals(_simpleName))
        {
            return this;
        } else
        {
            return new PropertyName(s, _namespace);
        }
    }

}
