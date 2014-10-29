// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.text.TextPaint;
import android.text.style.ClickableSpan;

public abstract class k extends ClickableSpan
{

    private boolean a;

    public k()
    {
    }

    public k(boolean flag)
    {
        a = flag;
    }

    public void updateDrawState(TextPaint textpaint)
    {
        textpaint.setColor(textpaint.linkColor);
        textpaint.setFakeBoldText(a);
    }
}
