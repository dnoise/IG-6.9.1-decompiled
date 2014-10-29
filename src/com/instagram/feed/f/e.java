// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.f;

import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.StyleSpan;

public final class e
{

    int a;
    String b;
    boolean c;

    public e()
    {
    }

    public final SpannableString a()
    {
        SpannableString spannablestring = new SpannableString(b);
        if (c)
        {
            spannablestring.setSpan(new StyleSpan(1), 0, spannablestring.length(), 33);
        }
        spannablestring.setSpan(new AbsoluteSizeSpan(a, true), 0, spannablestring.length(), 33);
        return spannablestring;
    }
}
