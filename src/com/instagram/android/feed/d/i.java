// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.d;

import android.animation.AnimatorSet;
import android.content.DialogInterface;
import android.view.View;
import com.instagram.android.feed.a.a;
import com.instagram.feed.c.g;
import com.instagram.feed.d.q;
import com.instagram.feed.g.b;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.feed.d:
//            d

final class i
    implements android.content.DialogInterface.OnClickListener
{

    final d a;

    private i(d d1)
    {
        a = d1;
        super();
    }

    i(d d1, byte byte0)
    {
        this(d1);
    }

    public final void onClick(DialogInterface dialoginterface, int j)
    {
        dialoginterface.dismiss();
        CharSequence charsequence = d.c(a)[j];
        String s = null;
        Iterator iterator = d.d(a).iterator();
        while (iterator.hasNext()) 
        {
            q q1 = (q)iterator.next();
            String s1;
            if (q1.b != null && q1.b.equals(charsequence))
            {
                s1 = q1.a;
            } else
            {
                s1 = s;
            }
            s = s1;
        }
        if (s == null)
        {
            throw new UnsupportedOperationException("Menu item click not handled");
        }
        b.a().b(d.e(a));
        g.a(d.e(a), d.f(a).c(), s);
        d.h(a).startAnimation(com.instagram.android.feed.d.d.g(a));
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            d.i(a).start();
            return;
        } else
        {
            d.f(a).notifyDataSetChanged();
            return;
        }
    }
}
