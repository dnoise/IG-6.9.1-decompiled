// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.facebook.au;

// Referenced classes of package com.instagram.creation.photo.camera:
//            b, a

public class CameraFlashButton extends ImageView
{

    private Drawable a;
    private Drawable b;
    private Drawable c;
    private int d;

    public CameraFlashButton(Context context)
    {
        super(context);
        d = b.b;
        a();
    }

    public CameraFlashButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = b.b;
        a();
    }

    public CameraFlashButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d = b.b;
        a();
    }

    private void a()
    {
        a = getDrawable();
        b = getResources().getDrawable(au.camera_flash_on);
        c = getResources().getDrawable(au.camera_flash_auto);
    }

    private Drawable b(int i)
    {
        switch (a.a[i - 1])
        {
        default:
            return a;

        case 3: // '\003'
            return b;

        case 2: // '\002'
            return c;
        }
    }

    public final void a(int i)
    {
        if (i == d)
        {
            return;
        } else
        {
            setImageDrawable(b(i));
            d = i;
            return;
        }
    }

    public int getCurrentMode$2508da22()
    {
        return d;
    }

    public boolean performClick()
    {
        a.a[-1 + d];
        JVM INSTR tableswitch 1 2: default 32
    //                   1 44
    //                   2 54;
           goto _L1 _L2 _L3
_L1:
        a(b.b);
_L5:
        return super.performClick();
_L2:
        a(b.c);
        continue; /* Loop/switch isn't completed */
_L3:
        a(b.a);
        if (true) goto _L5; else goto _L4
_L4:
    }
}
