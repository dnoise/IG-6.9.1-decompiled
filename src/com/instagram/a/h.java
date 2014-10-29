// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.a;

import android.view.View;

// Referenced classes of package com.instagram.a:
//            f

final class h
    implements android.view.View.OnClickListener
{

    final android.view.View.OnClickListener a;
    final f b;

    h(f f1, android.view.View.OnClickListener onclicklistener)
    {
        b = f1;
        a = onclicklistener;
        super();
    }

    public final void onClick(View view)
    {
        a.onClick(view);
        f.a(b).onClick(view);
    }
}
