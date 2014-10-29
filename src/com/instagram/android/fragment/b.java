// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Handler;
import android.support.v4.app.s;
import com.instagram.android.feed.a.a;
import com.instagram.common.j.d;
import com.instagram.feed.d.t;

// Referenced classes of package com.instagram.android.fragment:
//            a

final class b
    implements d
{

    final com.instagram.android.fragment.a a;

    b(com.instagram.android.fragment.a a1)
    {
        a = a1;
        super();
    }

    private boolean a(t t1)
    {
        return a.W().b(t1.a);
    }

    private void b(t t1)
    {
label0:
        {
            a a1 = a.W();
            boolean flag = a1.m();
            boolean flag1;
            if (!t1.b)
            {
                com.instagram.android.fragment.a.a(a).removeMessages(0);
                com.instagram.android.fragment.a.a(a).sendEmptyMessageDelayed(0, 100L);
            } else
            {
                a1.notifyDataSetChanged();
            }
            flag1 = a1.m();
            if (a.ai() && flag && !flag1 && a.p().g() > 0)
            {
                if (!a.u())
                {
                    break label0;
                }
                a.p().d();
            }
            return;
        }
        com.instagram.android.fragment.a.b(a);
    }

    public final volatile boolean a(com.instagram.common.j.a a1)
    {
        return a((t)a1);
    }

    public final volatile void b(com.instagram.common.j.a a1)
    {
        b((t)a1);
    }
}
