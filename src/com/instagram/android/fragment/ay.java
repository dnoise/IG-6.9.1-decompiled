// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.widget.RadioGroup;
import com.instagram.share.b.a;
import com.instagram.share.b.h;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            aw

final class ay
    implements android.widget.RadioGroup.OnCheckedChangeListener
{

    final aw a;

    ay(aw aw1)
    {
        a = aw1;
        super();
    }

    public final void onCheckedChanged(RadioGroup radiogroup, int i)
    {
        if (i == 0)
        {
            com.instagram.share.b.a.a(new h("", "", ""));
        } else
        if (i > 0 && i - 1 < aw.c(a).size())
        {
            com.instagram.share.b.a.a((h)aw.c(a).get(i - 1));
            return;
        }
    }
}
