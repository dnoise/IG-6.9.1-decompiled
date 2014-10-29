// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.net.URLEncoder;
import java.util.ArrayList;

// Referenced classes of package com.facebook:
//            bi, bc

final class bf
    implements bi
{

    final ArrayList a;
    final bc b;

    bf(bc bc, ArrayList arraylist)
    {
        b = bc;
        a = arraylist;
        super();
    }

    public final void a(String s, String s1)
    {
        ArrayList arraylist = a;
        Object aobj[] = new Object[2];
        aobj[0] = s;
        aobj[1] = URLEncoder.encode(s1, "UTF-8");
        arraylist.add(String.format("%s=%s", aobj));
    }
}
