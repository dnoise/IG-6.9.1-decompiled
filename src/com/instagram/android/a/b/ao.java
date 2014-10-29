// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.view.View;
import android.widget.ImageView;
import com.instagram.android.a.q;
import com.instagram.android.maps.b.f;
import com.instagram.android.maps.e.a;

// Referenced classes of package com.instagram.android.a.b:
//            ap

final class ao
    implements android.view.View.OnClickListener
{

    final q a;
    final ap b;

    ao(q q1, ap ap1)
    {
        a = q1;
        b = ap1;
        super();
    }

    public final void onClick(View view)
    {
        boolean flag;
        ImageView imageview;
        char c;
        if (!com.instagram.android.maps.e.a.a().b(a.a.g()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        imageview = b.c;
        if (flag)
        {
            c = '\200';
        } else
        {
            c = '\377';
        }
        imageview.setAlpha(c);
        if (flag)
        {
            com.instagram.android.maps.e.a.a().a(a.a.g());
            return;
        } else
        {
            com.instagram.android.maps.e.a.a().b(a.a.g());
            return;
        }
    }
}
