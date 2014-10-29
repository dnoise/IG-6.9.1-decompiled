// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.au;

// Referenced classes of package com.instagram.camera.ui:
//            a

public class FocusIndicatorView extends View
    implements a
{

    public FocusIndicatorView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    private void setDrawable(int i)
    {
        setBackgroundDrawable(getResources().getDrawable(i));
    }

    public final void a()
    {
        setDrawable(au.ic_focus_focusing);
    }

    public final void b()
    {
        setDrawable(au.ic_focus_focused);
    }

    public final void c()
    {
        setDrawable(au.ic_focus_failed);
    }

    public final void d()
    {
        setBackgroundDrawable(null);
    }
}
