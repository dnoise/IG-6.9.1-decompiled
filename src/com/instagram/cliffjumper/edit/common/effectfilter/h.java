// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import android.view.View;
import android.widget.ImageView;
import com.instagram.cliffjumper.edit.common.ui.b;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            f

final class h
    implements android.view.View.OnClickListener
{

    final ImageView a;
    final f b;

    h(f f1, ImageView imageview)
    {
        b = f1;
        a = imageview;
        super();
    }

    public final void onClick(View view)
    {
        f f1 = b;
        boolean flag;
        if (!f.f(b))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f.a(f1, flag);
        f.c(b).a(20, f.f(b));
        if (!f.a(b))
        {
            f _tmp = b;
            f.a(a, f.f(b));
            f.d(b).a();
        }
    }
}
