// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.e;

import com.facebook.e.a.a;

// Referenced classes of package com.facebook.d.e:
//            b, a

public class c
    implements b
{

    Class a;

    public c(Class class1)
    {
        a = class1;
    }

    public Object a()
    {
        Object obj = a.newInstance();
        return obj;
        InstantiationException instantiationexception;
        instantiationexception;
        com.facebook.e.a.a.a(com.facebook.d.e.a.b(), "Couldn't instantiate object", instantiationexception);
_L2:
        return null;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        com.facebook.e.a.a.a(com.facebook.d.e.a.b(), "Couldn't instantiate object", illegalaccessexception);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(Object obj)
    {
    }
}
