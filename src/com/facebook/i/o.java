// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;

import java.util.regex.Pattern;

// Referenced classes of package com.facebook.i:
//            p

public final class o
{

    private p a;

    public o()
    {
        a = new p(100);
    }

    public final Pattern a(String s)
    {
        Pattern pattern = (Pattern)a.a(s);
        if (pattern == null)
        {
            pattern = Pattern.compile(s);
            a.a(s, pattern);
        }
        return pattern;
    }
}
