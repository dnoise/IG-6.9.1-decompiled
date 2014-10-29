// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.Intent;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.feed.d:
//            l

public final class a extends ClickableSpan
{

    private final com.instagram.user.c.a a;
    private final l b;
    private final String c;

    public a(String s, com.instagram.user.c.a a1, l l1)
    {
        c = s;
        a = a1;
        b = l1;
    }

    public final void onClick(View view)
    {
        Intent intent = new Intent("Media.USER_CLICKED");
        intent.putExtra("Media.EXTRA_MEDIA_ID", b.d());
        intent.putExtra("Media.EXTRA_USER_ID", a.g());
        intent.putExtra("Media.EXTRA_CLICK_POINT", c);
        d.a(intent);
    }

    public final void updateDrawState(TextPaint textpaint)
    {
        textpaint.setColor(textpaint.linkColor);
        textpaint.setFakeBoldText(true);
    }
}
