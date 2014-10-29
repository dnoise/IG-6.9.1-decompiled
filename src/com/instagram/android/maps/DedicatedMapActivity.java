// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.base.activity.a;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.android.maps:
//            a

public class DedicatedMapActivity extends a
{

    private LocalActivityManager p;

    public DedicatedMapActivity()
    {
        p = new LocalActivityManager(this, true);
    }

    private Activity i()
    {
        return p.getCurrentActivity();
    }

    public final LocalActivityManager g()
    {
        return p;
    }

    protected final void h()
    {
        if (d().a(av.layout_container_main) == null)
        {
            com.instagram.android.maps.a a1 = new com.instagram.android.maps.a();
            Bundle bundle = new Bundle();
            bundle.putString("ARGUMENT_USER_ID", getIntent().getAction());
            a1.g(bundle);
            ag ag1 = d().a();
            ag1.b(av.layout_container_main, a1);
            ag1.b();
        }
    }

    public void onBackPressed()
    {
label0:
        {
            if (!d.a("BROADCAST_PHOTOMAPS_BACK_PRESSED"))
            {
                if (i() == null || !i().hasWindowFocus())
                {
                    break label0;
                }
                i().onBackPressed();
            }
            return;
        }
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Bundle bundle1;
        if (bundle != null)
        {
            bundle1 = bundle.getBundle("android:states");
        } else
        {
            bundle1 = null;
        }
        p.dispatchCreate(bundle1);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        p.dispatchDestroy(isFinishing());
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        Bundle bundle1 = p.saveInstanceState();
        if (bundle1 != null)
        {
            bundle.putBundle("android:states", bundle1);
        }
    }

    protected void onStop()
    {
        super.onStop();
        p.dispatchStop();
    }
}
