// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.content.res.Resources;
import android.graphics.Rect;
import android.support.v4.app.k;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import com.facebook.at;
import com.facebook.av;
import com.instagram.android.people.widget.PhotoScrollView;
import com.instagram.common.ui.b.a;

// Referenced classes of package com.instagram.android.people.b:
//            a

final class e
    implements a
{

    final com.instagram.android.people.b.a a;

    e(com.instagram.android.people.b.a a1)
    {
        a = a1;
        super();
    }

    public final void a(int i)
    {
        int j = a.o().getDisplayMetrics().heightPixels;
        int l = a.o().getDimensionPixelSize(at.action_bar_height);
        Rect rect = new Rect();
        a.l().getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int i1 = rect.top;
        int j1 = android.view.View.MeasureSpec.makeMeasureSpec(j - l - i1, 0x40000000);
        int k1 = android.view.View.MeasureSpec.makeMeasureSpec(a.o().getDisplayMetrics().widthPixels, 0x40000000);
        com.instagram.android.people.b.a.a(a).findViewById(av.people_tag_landscape_photo_container).measure(k1, j1);
    }
}
