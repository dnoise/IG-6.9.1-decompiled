// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import android.app.Dialog;
import android.view.View;
import com.facebook.az;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.maps.d:
//            a, k

final class j
    implements android.view.View.OnClickListener
{

    final a a;

    j(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        CharSequence acharsequence[] = new CharSequence[1];
        acharsequence[0] = a.c(az.edit_photos_on_map);
        (new b(a.n())).a(acharsequence, new k(this)).a(true).d().c().show();
    }
}
