// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base.ui;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import com.facebook.at;
import com.facebook.au;
import com.facebook.av;
import com.instagram.common.y.f;

// Referenced classes of package com.instagram.creation.base.ui:
//            c, b

public final class a
{

    public static int a(Resources resources)
    {
        int i = resources.getDimensionPixelSize(at.action_bar_height);
        int j = resources.getDisplayMetrics().widthPixels;
        int k = resources.getDimensionPixelSize(at.creation_secondary_actions_large_condensed);
        int l = resources.getDimensionPixelSize(at.creation_secondary_actions_large);
        int i1 = (int)f.a(resources.getDisplayMetrics(), 124);
        boolean flag;
        float f1;
        if ((int)f.a(resources.getDisplayMetrics(), 116) + (k + (i + j)) <= resources.getDisplayMetrics().heightPixels)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f1 = f.a(resources.getDisplayMetrics());
        if (flag)
        {
            if (i1 + (l + (i + j)) <= resources.getDisplayMetrics().heightPixels)
            {
                return c.a;
            } else
            {
                return c.b;
            }
        }
        if (f1 > 1.4F)
        {
            return c.c;
        } else
        {
            return c.d;
        }
    }

    public static void a(View view)
    {
        Resources resources = view.getResources();
        switch (b.a[-1 + a(view.getResources())])
        {
        default:
            return;

        case 1: // '\001'
            view.findViewById(av.creation_secondary_actions).getLayoutParams().height = resources.getDimensionPixelSize(at.creation_secondary_actions_large_condensed);
            return;

        case 2: // '\002'
            b(view);
            return;

        case 3: // '\003'
            b(view);
            break;
        }
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)view.findViewById(av.creation_main_actions).getLayoutParams();
        layoutparams.height = resources.getDimensionPixelSize(at.creation_main_actions_height_small_condensed);
        layoutparams.weight = 0.0F;
        android.widget.LinearLayout.LayoutParams layoutparams1 = (android.widget.LinearLayout.LayoutParams)view.findViewById(av.creation_image_container).getLayoutParams();
        layoutparams1.weight = 1.0F;
        layoutparams1.height = 0;
    }

    private static void b(View view)
    {
        view.findViewById(av.creation_main_actions).setBackgroundResource(au.creation_main_actions_background_small);
    }

    public static boolean b(Resources resources)
    {
        int i = a(resources);
        return i == c.a || i == c.b;
    }
}
