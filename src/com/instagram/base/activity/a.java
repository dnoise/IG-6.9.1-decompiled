// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.s;
import android.support.v4.app.t;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.a.c;
import com.instagram.a.f;
import com.instagram.base.b.b;

// Referenced classes of package com.instagram.base.activity:
//            d, b, c

public abstract class a extends d
    implements com.instagram.a.a
{

    private f p;
    private final t q = new com.instagram.base.activity.b(this);

    public a()
    {
    }

    static void a(a a1)
    {
        a1.g();
    }

    private static boolean b(Fragment fragment)
    {
        return fragment instanceof c;
    }

    private void g()
    {
        Fragment fragment = d().a(av.layout_container_main);
        if (fragment.E() != null)
        {
            int i;
            if (b(fragment) && !com.instagram.base.b.b.a(fragment))
            {
                i = getResources().getDimensionPixelSize(at.action_bar_height);
            } else
            {
                i = 0;
            }
            findViewById(av.layout_container_main).setPadding(0, i, 0, 0);
            if (com.instagram.base.b.b.a(fragment))
            {
                ((com.instagram.base.b.a)fragment).au();
                return;
            }
        }
    }

    public final f a()
    {
        return p;
    }

    public final void a(Fragment fragment)
    {
        g();
    }

    protected abstract void h();

    public final void k()
    {
        Fragment fragment = d().a(av.layout_container_main);
        f f1 = p;
        c c1;
        if (fragment instanceof c)
        {
            c1 = (c)fragment;
        } else
        {
            c1 = null;
        }
        f1.a(c1);
    }

    protected void onCreate(Bundle bundle)
    {
        setContentView(aw.activity_fragment_host);
        p = new f((ViewGroup)findViewById(av.action_bar), new com.instagram.base.activity.c(this));
        super.onCreate(bundle);
        d().a(q);
        if (com.instagram.creation.c.a.a())
        {
            SurfaceView surfaceview = new SurfaceView(this);
            surfaceview.setLayoutParams(new android.view.ViewGroup.LayoutParams(0, 0));
            ((ViewGroup)findViewById(0x1020002)).addView(surfaceview);
        }
        h();
    }

    protected void onResume()
    {
        super.onResume();
        k();
        g();
    }
}
