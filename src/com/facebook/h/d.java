// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.h;

import com.facebook.g.u;
import java.util.AbstractList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package com.facebook.h:
//            g, c

final class d extends AbstractList
    implements g
{

    private final JSONArray a;
    private final Class b;

    public d(JSONArray jsonarray, Class class1)
    {
        u.a(jsonarray, "state");
        u.a(class1, "itemType");
        a = jsonarray;
        b = class1;
    }

    private void a(int i)
    {
        if (i < 0 || i >= a.length())
        {
            throw new IndexOutOfBoundsException();
        } else
        {
            return;
        }
    }

    private void a(int i, Object obj)
    {
        Object obj1 = c.a(obj);
        try
        {
            a.put(i, obj1);
            return;
        }
        catch (JSONException jsonexception)
        {
            throw new IllegalArgumentException(jsonexception);
        }
    }

    public final JSONArray a()
    {
        return a;
    }

    public final void add(int i, Object obj)
    {
        if (i < 0)
        {
            throw new IndexOutOfBoundsException();
        }
        if (i < size())
        {
            throw new UnsupportedOperationException("Only adding items at the end of the list is supported.");
        } else
        {
            a(i, obj);
            return;
        }
    }

    public final void clear()
    {
        throw new UnsupportedOperationException();
    }

    public final boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        } else
        {
            d d1 = (d)obj;
            return a.equals(d1.a);
        }
    }

    public final Object get(int i)
    {
        a(i);
        return c.a(a.opt(i), b, null);
    }

    public final int hashCode()
    {
        return a.hashCode();
    }

    public final boolean remove(Object obj)
    {
        throw new UnsupportedOperationException();
    }

    public final boolean removeAll(Collection collection)
    {
        throw new UnsupportedOperationException();
    }

    public final boolean retainAll(Collection collection)
    {
        throw new UnsupportedOperationException();
    }

    public final Object set(int i, Object obj)
    {
        a(i);
        Object obj1 = get(i);
        a(i, obj);
        return obj1;
    }

    public final int size()
    {
        return a.length();
    }

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = b.getSimpleName();
        aobj[1] = a;
        return String.format("GraphObjectList{itemType=%s, state=%s}", aobj);
    }
}
