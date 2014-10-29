// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.d;

import android.content.Context;
import android.content.Intent;
import com.instagram.common.y.e;
import com.instagram.simplewebview.SimpleWebViewActivity;

public final class a
{

    public static void a(Context context, String s, boolean flag)
    {
        if (!e.c(s))
        {
            Intent intent = new Intent(context, com/instagram/simplewebview/SimpleWebViewActivity);
            intent.addFlags(0x14000000);
            intent.putExtra("SimpleWebViewFragment.ARGUMENT_URL", s);
            intent.putExtra("SimpleWebViewFragment.ARGUMENT_TOGGLE_DISPLAY_BACK_BUTTON", flag);
            intent.putExtra("SimpleWebViewFragment.ARGUMENT_SHOW_REFRESH", true);
            context.startActivity(intent);
        }
    }
}
