// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import android.widget.ListView;

// Referenced classes of package com.instagram.android.fragment:
//            ea, ef, y

final class ed
    implements android.view.View.OnClickListener
{

    final ea a;

    ed(ea ea1)
    {
        a = ea1;
        super();
    }

    public final void onClick(View view)
    {
        if (a.b() == ef.a)
        {
            ea.d(a).setSelection(0);
            return;
        } else
        {
            ea.b(a).a(ef.a);
            return;
        }
    }
}
