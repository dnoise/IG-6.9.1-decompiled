// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import android.widget.CheckBox;
import com.instagram.android.g.b;
import com.instagram.android.maps.e.a;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.feed.d.ai;

// Referenced classes of package com.instagram.android.feed.a.b:
//            s

final class t
    implements android.view.View.OnClickListener
{

    final ai a;
    final IgImageView b;
    final CheckBox c;

    t(ai ai, IgImageView igimageview, CheckBox checkbox)
    {
        a = ai;
        b = igimageview;
        c = checkbox;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.android.maps.e.a.a().a((b)a);
        com.instagram.android.feed.a.b.s.a(b, c, a);
    }
}
