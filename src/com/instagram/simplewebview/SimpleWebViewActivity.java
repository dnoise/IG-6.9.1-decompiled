// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.simplewebview;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.base.activity.a;

// Referenced classes of package com.instagram.simplewebview:
//            SimpleWebViewFragment

public class SimpleWebViewActivity extends a
{

    public SimpleWebViewActivity()
    {
    }

    public static void a(Context context, String s1, String s2)
    {
        Intent intent = new Intent(context, com/instagram/simplewebview/SimpleWebViewActivity);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_URL", s1);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST", true);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_TITLE", s2);
        context.startActivity(intent);
    }

    protected final void h()
    {
        if (d().a(av.layout_container_main) == null)
        {
            SimpleWebViewFragment simplewebviewfragment = new SimpleWebViewFragment();
            simplewebviewfragment.g(getIntent().getExtras());
            ag ag1 = d().a();
            ag1.b(av.layout_container_main, simplewebviewfragment);
            ag1.b();
        }
    }
}
