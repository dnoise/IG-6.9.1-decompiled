// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

// Referenced classes of package com.instagram.camera:
//            r, q

public class ShutterButton extends ImageView
{

    private r a;
    private boolean b;

    public ShutterButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    static void a(ShutterButton shutterbutton, boolean flag)
    {
        shutterbutton.a(flag);
    }

    private void a(boolean flag)
    {
        if (a != null)
        {
            a.a(flag);
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        boolean flag = isPressed();
        if (flag != b)
        {
            if (!flag)
            {
                post(new q(this, flag));
            } else
            {
                a(flag);
            }
            b = flag;
        }
    }

    public boolean performClick()
    {
        boolean flag = super.performClick();
        if (a != null)
        {
            a.f();
        }
        return flag;
    }

    public void setOnShutterButtonListener(r r1)
    {
        a = r1;
    }
}
