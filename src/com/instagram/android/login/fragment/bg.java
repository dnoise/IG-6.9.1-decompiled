// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import com.instagram.android.login.k;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            bt, an

final class bg extends bt
{

    final an a;

    bg(an an1)
    {
        a = an1;
        super(an1, (byte)0);
    }

    public final void a(boolean flag)
    {
label0:
        {
            if (flag)
            {
                if (an.v(a) != k.c)
                {
                    break label0;
                }
                b.J.c();
            }
            return;
        }
        b.I.c();
    }
}
