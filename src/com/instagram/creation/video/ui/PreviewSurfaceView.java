// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

public class PreviewSurfaceView extends SurfaceView
{

    public PreviewSurfaceView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setZOrderMediaOverlay(true);
        getHolder().setType(3);
    }
}
