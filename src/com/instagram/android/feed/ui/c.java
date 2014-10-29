// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.ui;

import android.view.MotionEvent;
import android.view.ViewConfiguration;

public abstract class c extends android.view.GestureDetector.SimpleOnGestureListener
{

    private boolean a;

    public c()
    {
    }

    protected void a()
    {
    }

    public final boolean onDown(MotionEvent motionevent)
    {
        a = false;
        return true;
    }

    public final void onLongPress(MotionEvent motionevent)
    {
    }

    public final boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        if (!a)
        {
            a();
            a = true;
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean onSingleTapUp(MotionEvent motionevent)
    {
        if (!a && motionevent.getEventTime() - motionevent.getDownTime() > (long)ViewConfiguration.getDoubleTapTimeout())
        {
            a();
            a = true;
            return true;
        } else
        {
            return false;
        }
    }
}
