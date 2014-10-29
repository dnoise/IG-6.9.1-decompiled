// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.c;

import ch.boye.httpclientandroidlib.NameValuePair;
import java.util.Comparator;

// Referenced classes of package com.instagram.common.a.c:
//            b

final class c
    implements Comparator
{

    final b a;

    c(b b)
    {
        a = b;
        super();
    }

    private static int a(NameValuePair namevaluepair, NameValuePair namevaluepair1)
    {
        return namevaluepair.getName().compareTo(namevaluepair1.getName());
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((NameValuePair)obj, (NameValuePair)obj1);
    }
}
