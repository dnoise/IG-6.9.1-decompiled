// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;

import com.fasterxml.jackson.a.f.a;
import com.fasterxml.jackson.a.f.b;
import java.util.Iterator;

// Referenced classes of package com.fasterxml.jackson.a:
//            v, e, l, h

public abstract class s
{

    protected s()
    {
    }

    public abstract v createArrayNode();

    public abstract v createObjectNode();

    public e getFactory()
    {
        return getJsonFactory();
    }

    public abstract e getJsonFactory();

    public abstract v readTree(l l);

    public abstract Object readValue(l l, a a);

    public abstract Object readValue(l l, b b);

    public abstract Object readValue(l l, Class class1);

    public abstract Iterator readValues(l l, a a);

    public abstract Iterator readValues(l l, b b);

    public abstract Iterator readValues(l l, Class class1);

    public abstract l treeAsTokens(v v);

    public abstract Object treeToValue(v v, Class class1);

    public abstract void writeValue(h h, Object obj);
}
