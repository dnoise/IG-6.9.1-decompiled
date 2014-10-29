// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.text.TextPaint;

final class y
{

    private final float a;
    private final boolean b;
    private final TextPaint c;
    private final int d;
    private final float e;

    private y(TextPaint textpaint, int i, float f)
    {
        a = 1.0F;
        b = true;
        c = textpaint;
        d = i;
        e = f;
    }

    y(TextPaint textpaint, int i, float f, byte byte0)
    {
        this(textpaint, i, f);
    }

    static TextPaint a(y y1)
    {
        return y1.c;
    }

    static int b(y y1)
    {
        return y1.d;
    }

    static float c(y y1)
    {
        return y1.e;
    }
}
