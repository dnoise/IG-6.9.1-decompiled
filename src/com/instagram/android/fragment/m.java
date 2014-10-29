// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.widget.CompoundButton;
import com.facebook.az;
import com.instagram.l.a.b;

// Referenced classes of package com.instagram.android.fragment:
//            k

final class m
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final k a;

    m(k k1)
    {
        a = k1;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        b.a().d(flag);
        if (flag)
        {
            k.a(a, az.advanced_resize_warning, compoundbutton);
        }
    }
}
