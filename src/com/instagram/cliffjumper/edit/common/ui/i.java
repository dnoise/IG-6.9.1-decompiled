// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.ui;

import android.view.Choreographer;
import android.view.View;

// Referenced classes of package com.instagram.cliffjumper.edit.common.ui:
//            h

final class i extends h
    implements android.view.Choreographer.FrameCallback
{

    Choreographer a;

    public i(View view)
    {
        super(view);
        a = Choreographer.getInstance();
    }

    protected final void a()
    {
        a.postFrameCallback(this);
    }

    protected final void b()
    {
        a.removeFrameCallback(this);
    }

    public final void doFrame(long l)
    {
        a(l / 0xf4240L);
    }
}
