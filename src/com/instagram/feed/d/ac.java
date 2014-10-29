// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.Intent;
import android.content.res.Resources;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.facebook.as;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.feed.d:
//            l

final class ac extends ClickableSpan
{

    final Resources a;
    final l b;

    ac(Resources resources, l l1)
    {
        a = resources;
        b = l1;
        super();
    }

    public final void onClick(View view)
    {
        Intent intent = new Intent("Media.NUMBER_COMMENTS_CLICKED");
        intent.putExtra("Media.EXTRA_MEDIA_ID", b.d());
        d.a(intent);
    }

    public final void updateDrawState(TextPaint textpaint)
    {
        textpaint.setFakeBoldText(true);
        textpaint.setColor(a.getColor(as.grey_light));
    }
}
