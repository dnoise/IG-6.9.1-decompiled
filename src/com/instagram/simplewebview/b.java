// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.simplewebview;

import android.view.View;

// Referenced classes of package com.instagram.simplewebview:
//            SimpleWebViewFragment

final class b
    implements android.view.View.OnClickListener
{

    final SimpleWebViewFragment a;

    b(SimpleWebViewFragment simplewebviewfragment)
    {
        a = simplewebviewfragment;
        super();
    }

    public final void onClick(View view)
    {
        a.b();
    }
}
