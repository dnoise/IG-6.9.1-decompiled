// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;


// Referenced classes of package com.instagram.android.maps.ui:
//            r, q, m

final class s
    implements Runnable
{

    final r a;

    s(r r1)
    {
        a = r1;
        super();
    }

    public final void run()
    {
        m.k(a.a.c).dismiss();
    }
}
