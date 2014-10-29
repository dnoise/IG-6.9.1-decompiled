// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;


// Referenced classes of package com.instagram.android.maps:
//            l, k, j, PhotoMapsActivity

final class m
    implements Runnable
{

    final l a;

    m(l l1)
    {
        a = l1;
        super();
    }

    public final void run()
    {
        PhotoMapsActivity.e(a.a.b.b).dismiss();
    }
}
