// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.instagram.creation.video.a;
import com.instagram.creation.video.a.d;
import com.instagram.creation.video.a.e;
import com.instagram.creation.video.c;

public class VideoShutterButton extends ImageView
    implements d, c
{

    private int a;
    private a b;

    public VideoShutterButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = e.d;
    }

    private void a()
    {
        b();
    }

    private void b()
    {
        if (b == null)
        {
            setEnabled(false);
        } else
        {
            if (b.p())
            {
                setEnabled(false);
                return;
            }
            if (b.m())
            {
                setEnabled(false);
                return;
            }
            if (a == e.b || a == e.a)
            {
                setEnabled(true);
                return;
            }
            if (a == e.d || a == e.c)
            {
                setEnabled(true);
                return;
            }
        }
    }

    public final void a(int i)
    {
        a();
    }

    public final void a(com.instagram.creation.video.i.a a1)
    {
        a();
    }

    public final void b(int i)
    {
        a = i;
        a();
    }

    public final void b(com.instagram.creation.video.i.a a1)
    {
        a();
    }

    public final void c()
    {
        a();
    }

    public final void c(com.instagram.creation.video.i.a a1)
    {
    }

    public void setClipStackManager(a a1)
    {
        b = a1;
    }
}
