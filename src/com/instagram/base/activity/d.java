// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity;

import android.os.Bundle;
import android.support.v4.app.k;
import android.view.MotionEvent;
import com.instagram.common.analytics.a;
import com.instagram.common.p.a.b;

public abstract class d extends k
{

    public d()
    {
    }

    public void a_()
    {
        onBackPressed();
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        a.a().e();
        return super.dispatchTouchEvent(motionevent);
    }

    public void onBackPressed()
    {
        com.instagram.b.c.a.a().a(this, "back");
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b.a().b();
        setVolumeControlStream(3);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        b.a().c();
    }

    protected void onPause()
    {
        super.onPause();
        b.a().b(this);
    }

    protected void onResume()
    {
        super.onResume();
        b.a().a(this);
    }
}
