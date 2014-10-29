// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.view.View;
import android.widget.ImageView;
import com.instagram.android.a.r;
import com.instagram.android.maps.b.f;
import com.instagram.android.maps.e.a;

// Referenced classes of package com.instagram.android.a.b:
//            am

final class al
    implements android.view.View.OnClickListener
{

    final r a;
    final am b;

    al(r r1, am am1)
    {
        a = r1;
        b = am1;
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
        imageview = b.d;
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
