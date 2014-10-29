// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import android.view.View;
import com.instagram.android.login.c.o;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            bz

final class ca
    implements android.view.View.OnClickListener
{

    final bz a;

    ca(bz bz1)
    {
        a = bz1;
        super();
    }

    public final void onClick(View view)
    {
        b.aq.c();
        a.b().b(a.j().getString("email_lookup"));
    }
}
