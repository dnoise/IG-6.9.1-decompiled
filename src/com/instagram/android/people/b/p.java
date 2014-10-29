// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.os.Bundle;
import android.view.View;
import com.instagram.service.a.a;

// Referenced classes of package com.instagram.android.people.b:
//            m, q

final class p
    implements android.view.View.OnClickListener
{

    final m a;

    p(m m1)
    {
        a = m1;
        super();
    }

    public final void onClick(View view)
    {
        Bundle bundle = new Bundle();
        bundle.putBoolean("PhotosOfYouOptionsFragment.ARG_REVIEW_ENABLED", com.instagram.service.a.a.a().b().i());
        (new com.instagram.base.a.a.a(a.p())).a(new q(), bundle).a();
    }
}
