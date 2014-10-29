// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.dialog;

import android.content.Context;
import android.view.View;
import com.instagram.api.h.d;
import com.instagram.simplewebview.SimpleWebViewActivity;

// Referenced classes of package com.instagram.ui.dialog:
//            b

final class c
    implements android.view.View.OnClickListener
{

    final String a;
    final int b;
    final b c;

    c(b b1, String s, int i)
    {
        c = b1;
        a = s;
        b = i;
        super();
    }

    public final void onClick(View view)
    {
        SimpleWebViewActivity.a(com.instagram.ui.dialog.b.a(c), d.a(a, com.instagram.ui.dialog.b.a(c)), com.instagram.ui.dialog.b.a(c).getString(b));
    }
}
