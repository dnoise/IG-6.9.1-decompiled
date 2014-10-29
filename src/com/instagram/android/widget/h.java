// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.view.View;
import android.widget.BaseAdapter;
import com.facebook.b.b;
import com.instagram.share.b.a;
import com.instagram.share.b.g;

// Referenced classes of package com.instagram.android.widget:
//            e

public final class h
    implements android.view.View.OnClickListener
{

    final e a;

    public h(e e1)
    {
        a = e1;
        super();
    }

    public final void onClick(View view)
    {
        b b1 = com.instagram.share.b.a.a();
        if (b1.b())
        {
            com.instagram.android.widget.e.a(a, b1.c());
            return;
        } else
        {
            com.instagram.android.widget.e.a(a).notifyDataSetChanged();
            b1.a(com.instagram.android.widget.e.b(a), g.a, e.c(a));
            return;
        }
    }
}
