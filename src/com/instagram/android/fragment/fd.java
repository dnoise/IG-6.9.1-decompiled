// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.instagram.base.b.d;
import com.instagram.ui.a.b;

// Referenced classes of package com.instagram.android.fragment:
//            fc, fe

final class fd
    implements d
{

    final fc a;

    fd(fc fc1)
    {
        a = fc1;
        super();
    }

    public final void a(float f)
    {
        b.a(fc.a(a), (int)(-f));
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            int i;
            if (f == (float)com.instagram.android.fragment.fc.b(a))
            {
                i = 0;
            } else
            {
                i = com.instagram.android.fragment.fc.b(a);
            }
            if (i != fc.a(a).getPaddingTop())
            {
                fc.a(a).post(new fe(this, i, f));
            }
        }
    }
}
