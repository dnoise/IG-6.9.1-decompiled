// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.d;

import android.view.View;
import com.facebook.av;

public final class b
{

    public static void a(boolean flag, View view)
    {
        if (view != null)
        {
            View view1 = view.findViewById(av.listview_progressbar);
            int i;
            if (flag)
            {
                i = 0;
            } else
            {
                i = 8;
            }
            view1.setVisibility(i);
        }
    }
}
