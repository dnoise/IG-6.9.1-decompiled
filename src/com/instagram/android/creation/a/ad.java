// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.view.View;
import android.widget.CompoundButton;

// Referenced classes of package com.instagram.android.creation.a:
//            t

final class ad
    implements android.view.View.OnClickListener
{

    final t a;

    ad(t t1)
    {
        a = t1;
        super();
    }

    public final void onClick(View view)
    {
        t.b(a).performClick();
    }
}
