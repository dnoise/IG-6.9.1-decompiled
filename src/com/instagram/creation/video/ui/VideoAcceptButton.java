// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.instagram.creation.video.a.d;
import com.instagram.creation.video.a.e;

public class VideoAcceptButton extends ImageView
    implements d
{

    private int a;

    public VideoAcceptButton(Context context)
    {
        super(context);
        a = e.d;
        a();
    }

    public VideoAcceptButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = e.d;
        a();
    }

    public VideoAcceptButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = e.d;
        a();
    }

    private void a()
    {
        boolean flag;
        if (a == e.d)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setEnabled(flag);
    }

    public final void b(int i)
    {
        a = i;
        a();
    }
}
