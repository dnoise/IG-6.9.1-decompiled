// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.android.fragment.cr;
import com.instagram.android.fragment.el;
import com.instagram.android.fragment.fc;
import com.instagram.base.activity.a;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.y.d;
import com.instagram.j.c.g;

// Referenced classes of package com.instagram.android.activity:
//            b

public class ActivityInTab extends a
{

    private static Bundle p = null;
    private boolean q;
    private h r;

    public ActivityInTab()
    {
        q = false;
    }

    private static Fragment a(int k)
    {
        switch (k)
        {
        case 2: // '\002'
        default:
            return null;

        case 1: // '\001'
            return new fc();

        case 3: // '\003'
            return new g();

        case 4: // '\004'
            return new el();

        case 0: // '\0'
            return new cr();
        }
    }

    public static void a(Bundle bundle)
    {
        p = bundle;
    }

    static boolean a(ActivityInTab activityintab)
    {
        activityintab.q = true;
        return true;
    }

    private static Bundle i()
    {
        Bundle bundle = p;
        p = null;
        return bundle;
    }

    protected final String f()
    {
        return getIntent().getExtras().getString("MainTabActivity.EXTRA_TAB_NAME");
    }

    public final void g()
    {
        d().f();
    }

    protected final void h()
    {
        int k = getIntent().getExtras().getInt("com.instagram.extra.EXTRA_STARTING_FRAGMENT");
        Fragment fragment = d().a(av.layout_container_main);
        if (fragment == null)
        {
            ag ag1 = d().a();
            fragment = a(k);
            ag1.b(av.layout_container_main, fragment);
            ag1.b();
        }
        com.instagram.b.c.a.a().a((com.instagram.common.analytics.g)fragment, 0, "cold_start");
    }

    public void onBackPressed()
    {
        d.b("ActivityInTab.BROADCAST_BACK_PRESSED");
        if (d().g() == 0)
        {
            Intent intent = new Intent("MainTabActivity.BROADCAST_BACK_PUSHED");
            intent.putExtra("MainTabActivity.EXTRA_TAB_NAME", f());
            d.a(intent);
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        r = (new j(this)).a().a("MainTabActivity.BROADCAST_POP_TO_ROOT", new b(this, (byte)0)).a();
        r.b();
    }

    protected void onDestroy()
    {
        r.c();
        super.onDestroy();
    }

    protected void onPostResume()
    {
        super.onPostResume();
        if (q)
        {
            g();
            q = false;
        }
        Bundle bundle = i();
        if (bundle != null && !bundle.isEmpty())
        {
            com.instagram.android.util.a.a(d(), bundle);
        }
    }

}
