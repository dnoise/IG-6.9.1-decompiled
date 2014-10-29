// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.view.View;
import com.instagram.cliffjumper.edit.common.ui.b;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class j
    implements android.view.View.OnClickListener
{

    final a a;

    j(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        boolean flag;
        if (!com.instagram.cliffjumper.edit.photo.a.a.f(a).b(20))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view.setSelected(flag);
        com.instagram.cliffjumper.edit.photo.a.a.f(a).a(20, flag);
        com.instagram.cliffjumper.edit.photo.a.a.j(a).a();
    }
}
