// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.app.Dialog;
import android.view.View;
import com.facebook.av;

// Referenced classes of package com.instagram.android.people.c:
//            a

final class e
    implements android.view.View.OnClickListener
{

    final Dialog a;
    final a b;

    e(a a1, Dialog dialog)
    {
        b = a1;
        a = dialog;
        super();
    }

    public final void onClick(View view)
    {
        view.setVisibility(8);
        a.findViewById(av.more_options_container).setVisibility(0);
    }
}
