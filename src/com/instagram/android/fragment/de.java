// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.database.DataSetObserver;
import com.instagram.android.feed.a.l;
import com.instagram.ui.e.a;
import com.instagram.ui.e.b;

// Referenced classes of package com.instagram.android.fragment:
//            cr

final class de extends DataSetObserver
{

    final cr a;

    de(cr cr1)
    {
        a = cr1;
        super();
    }

    public final void onChanged()
    {
        android.view.View view = a.E();
        if (view != null)
        {
            boolean flag;
            a a1;
            int i;
            if (((l)a.W()).p() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a1 = com.instagram.android.fragment.cr.b(a);
            if (flag)
            {
                i = b.d;
            } else
            {
                i = b.e;
            }
            a1.a(view, i);
        }
    }
}
