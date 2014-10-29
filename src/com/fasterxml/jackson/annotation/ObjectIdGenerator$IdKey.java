// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.annotation;

import java.io.Serializable;

public final class hashCode
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    private final int hashCode;
    private final Object key;
    private final Class scope;
    private final Class type;

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
            hashCode hashcode = (hashCode)obj;
            if (!hashcode.key.equals(key) || hashcode.type != type || hashcode.scope != scope)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return hashCode;
    }

    public (Class class1, Class class2, Object obj)
    {
        type = class1;
        scope = class2;
        key = obj;
        int i = obj.hashCode() + class1.getName().hashCode();
        if (class2 != null)
        {
            i ^= class2.getName().hashCode();
        }
        hashCode = i;
    }
}
