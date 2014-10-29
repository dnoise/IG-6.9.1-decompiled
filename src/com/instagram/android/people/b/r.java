// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.view.View;
import com.instagram.android.c.a.j;
import com.instagram.android.widget.IndeterminateCheckBox;

// Referenced classes of package com.instagram.android.people.b:
//            q

final class r
    implements android.view.View.OnClickListener
{

    final q a;

    r(q q1)
    {
        a = q1;
        super();
    }

    public final void onClick(View view)
    {
        if (!q.a(a).a())
        {
            q.a(a, j.b);
        }
    }
}
