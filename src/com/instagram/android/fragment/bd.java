// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.facebook.az;
import com.instagram.android.widget.a;

// Referenced classes of package com.instagram.android.fragment:
//            bc

final class bd
    implements android.view.View.OnClickListener
{

    final bc a;

    bd(bc bc1)
    {
        a = bc1;
        super();
    }

    public final void onClick(View view)
    {
        (new a(a.n(), a)).a(a.c(az.find_friends_item_from_my_contact_list)).a().b();
    }
}
