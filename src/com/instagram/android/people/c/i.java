// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.app.Dialog;
import android.view.View;
import com.instagram.android.util.ReportMediaUtil;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.people.c:
//            a

final class i
    implements android.view.View.OnClickListener
{

    final Dialog a;
    final l b;
    final a c;

    i(a a1, Dialog dialog, l l)
    {
        c = a1;
        a = dialog;
        b = l;
        super();
    }

    public final void onClick(View view)
    {
        a.dismiss();
        ReportMediaUtil.a(com.instagram.android.people.c.a.f(c), b);
    }
}
