// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.b;

import android.net.Uri;
import android.text.SpannableStringBuilder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.instagram.android.login.b:
//            c

public final class b
{

    public static SpannableStringBuilder a(String s, String s1, Uri uri)
    {
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(s1);
        c c1 = new c(uri);
        for (Matcher matcher = Pattern.compile((new StringBuilder("(")).append(s).append(")").toString(), 2).matcher(s1); matcher.find(); spannablestringbuilder.setSpan(c1, matcher.start(1), matcher.end(1), 33)) { }
        return spannablestringbuilder;
    }
}
