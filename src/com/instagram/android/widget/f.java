// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.view.View;
import android.widget.BaseAdapter;

// Referenced classes of package com.instagram.android.widget:
//            e, a

public final class f
    implements android.view.View.OnClickListener
{

    final e a;

    public f(e e1)
    {
        a = e1;
        super();
    }

    public final void onClick(View view)
    {
        e.a(a).notifyDataSetChanged();
        (new a(e.d(a), e.b(a))).b();
    }
}
