// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.view.View;
import com.instagram.android.c.a.x;
import com.instagram.android.widget.IgAutoCompleteTextView;
import com.instagram.sharelater.ShareLaterMedia;

// Referenced classes of package com.instagram.android.creation.a:
//            ar

final class at
    implements android.view.View.OnClickListener
{

    final ar a;

    at(ar ar1)
    {
        a = ar1;
        super();
    }

    public final void onClick(View view)
    {
        ar.c(a).a(ar.b(a).getText().toString());
        (new x(a.n(), a.z(), ar.d(a), ar.c(a))).g();
    }
}
