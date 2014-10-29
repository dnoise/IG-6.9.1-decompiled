// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.facebook.as;
import com.instagram.android.maps.e.a;

final class ai extends ClickableSpan
{

    final Context a;
    final boolean b;

    ai(Context context, boolean flag)
    {
        a = context;
        b = flag;
        super();
    }

    public final void onClick(View view)
    {
        if (b)
        {
            com.instagram.android.maps.e.a.a().d();
            return;
        } else
        {
            com.instagram.android.maps.e.a.a().e();
            return;
        }
    }

    public final void updateDrawState(TextPaint textpaint)
    {
        textpaint.setColor(a.getResources().getColor(as.light_gray));
        textpaint.setUnderlineText(true);
        textpaint.setFakeBoldText(true);
    }
}
