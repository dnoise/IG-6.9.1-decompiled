// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.base.activity.a;

// Referenced classes of package com.instagram.android.nux:
//            n

public class SignedOutFragmentActivity extends a
{

    private boolean p;
    private boolean q;
    private boolean r;

    public SignedOutFragmentActivity()
    {
        p = true;
        q = false;
        r = false;
    }

    public static void a(Activity activity)
    {
        Intent intent = new Intent(activity, com/instagram/android/nux/SignedOutFragmentActivity);
        intent.setFlags(0x4000000);
        activity.startActivity(intent);
        activity.finish();
    }

    public final void b(boolean flag)
    {
        p = flag;
    }

    public final void g()
    {
        q = true;
    }

    protected final void h()
    {
        if (d().a(av.layout_container_main) == null)
        {
            ag ag1 = d().a();
            ag1.b(av.layout_container_main, new n());
            ag1.b();
        }
    }

    public final void i()
    {
        r = true;
    }

    public final boolean j()
    {
        return r;
    }

    public void onBackPressed()
    {
        if (p)
        {
            super.onBackPressed();
        }
    }

    public void onRestoreInstanceState(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
        p = bundle.getBoolean("allow_back", true);
        q = bundle.getBoolean("is_nux_flow", false);
        r = bundle.getBoolean("has_followed", false);
    }

    protected void onResume()
    {
        super.onResume();
        (new com.instagram.registrationpush.a(this)).b();
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d() && !q)
        {
            finish();
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("allow_back", p);
        bundle.putBoolean("is_nux_flow", q);
        bundle.putBoolean("has_followed", r);
    }
}
