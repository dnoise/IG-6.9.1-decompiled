// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.support.v4.app.s;
import android.view.View;
import com.instagram.o.f.e;
import com.instagram.o.f.f;
import com.instagram.user.d.a;
import java.util.List;

final class af
    implements android.view.View.OnClickListener
{

    final s a;
    final a b;
    final int c;

    af(s s, a a1, int i)
    {
        a = s;
        b = a1;
        c = i;
        super();
    }

    public final void onClick(View view)
    {
        f.a().c(a, (String)b.f().get(c)).a();
    }
}
