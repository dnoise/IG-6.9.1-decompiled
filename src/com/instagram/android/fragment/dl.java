// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.widget.CompoundButton;
import com.instagram.common.analytics.b;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.fragment:
//            dh

final class dl
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final a a;
    final dh b;

    dl(dh dh, a a1)
    {
        b = dh;
        a = a1;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        a.f(flag);
        (new b("instagram_setting_save_captured_videos_clicked", b)).a("enabled", Boolean.toString(flag)).a();
    }
}
