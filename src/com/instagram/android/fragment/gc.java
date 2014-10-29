// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Intent;
import android.net.Uri;
import android.view.View;

// Referenced classes of package com.instagram.android.fragment:
//            fy

final class gc
    implements android.view.View.OnClickListener
{

    final fy a;

    gc(fy fy1)
    {
        a = fy1;
        super();
    }

    public final void onClick(View view)
    {
        a.a(new Intent("android.intent.action.VIEW", Uri.parse("http://blog.instagram.com/")));
    }
}
