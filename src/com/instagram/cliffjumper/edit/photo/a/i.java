// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.view.View;
import com.instagram.cliffjumper.edit.common.ui.a;
import com.instagram.cliffjumper.edit.photo.tiltshift.b;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class i
    implements android.view.View.OnClickListener
{

    final com.instagram.cliffjumper.edit.photo.a.a a;

    i(com.instagram.cliffjumper.edit.photo.a.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        b b1 = new b(a.o());
        b1.a(com.instagram.cliffjumper.edit.photo.a.a.n(a), com.instagram.cliffjumper.edit.photo.a.a.h(a), com.instagram.cliffjumper.edit.photo.a.a.i(a), com.instagram.cliffjumper.edit.photo.a.a.f(a), com.instagram.cliffjumper.edit.photo.a.a.j(a));
        com.instagram.cliffjumper.edit.photo.a.a.a(a, b1);
    }
}
