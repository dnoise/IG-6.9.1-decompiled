// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import android.content.DialogInterface;
import com.instagram.android.maps.PhotoMapsActivity;
import com.instagram.android.maps.e.a;

// Referenced classes of package com.instagram.android.maps.d:
//            j

final class k
    implements android.content.DialogInterface.OnClickListener
{

    final j a;

    k(j j)
    {
        a = j;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a a1 = com.instagram.android.maps.e.a.a();
        if (!a1.b() && a1.f())
        {
            a1.a(PhotoMapsActivity.e().f());
        }
        boolean flag;
        if (!a1.b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1.a(flag);
    }
}
