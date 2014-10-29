// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.b;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

final class c extends ClickableSpan
{

    private final Uri a;

    public c(Uri uri)
    {
        a = uri;
    }

    public final void onClick(View view)
    {
        Intent intent = new Intent("android.intent.action.VIEW", a);
        view.getContext().startActivity(intent);
    }

    public final void updateDrawState(TextPaint textpaint)
    {
        super.updateDrawState(textpaint);
        textpaint.setColor(textpaint.linkColor);
        textpaint.setFakeBoldText(true);
    }
}
