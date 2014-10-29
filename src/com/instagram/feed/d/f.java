// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.instagram.feed.d:
//            b, d, g

public final class f
{

    private static f a;
    private final Map b = new HashMap();
    private final Map c = new HashMap();
    private final Map d = new HashMap();

    public f()
    {
    }

    public static f a()
    {
        if (a == null)
        {
            b();
        }
        return a;
    }

    private SpannableStringBuilder b(b b1)
    {
        return a(b1, false);
    }

    private static void b()
    {
        com/instagram/feed/d/f;
        JVM INSTR monitorenter ;
        f f1 = a;
        if (f1 == null) goto _L2; else goto _L1
_L1:
        com/instagram/feed/d/f;
        JVM INSTR monitorexit ;
        return;
_L2:
        a = new f();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final SpannableStringBuilder a(Resources resources, b b1, TextPaint textpaint, int i)
    {
        SpannableStringBuilder spannablestringbuilder = (SpannableStringBuilder)c.get(b1.b());
        if (spannablestringbuilder == null)
        {
            spannablestringbuilder = b(b1);
        }
        if (b1.i() != d.b)
        {
            String s = spannablestringbuilder.toString();
            if (g.a(s, s.length(), textpaint, i) > 5)
            {
                spannablestringbuilder = g.a(resources, b1, textpaint, i);
            }
        }
        c.put(b1.b(), spannablestringbuilder);
        return spannablestringbuilder;
    }

    final SpannableStringBuilder a(b b1, boolean flag)
    {
        SpannableStringBuilder spannablestringbuilder = (SpannableStringBuilder)b.get(b1.b());
        if (spannablestringbuilder == null)
        {
            spannablestringbuilder = g.a(b1, flag);
            if (b1.b() != null)
            {
                b.put(b1.b(), spannablestringbuilder);
            }
        }
        return spannablestringbuilder;
    }

    public final CharSequence a(b b1)
    {
        CharSequence charsequence = (CharSequence)d.get(b1.b());
        if (charsequence == null)
        {
            charsequence = g.a(b1, b(b1));
            if (b1.b() != null)
            {
                d.put(b1.b(), charsequence);
            }
        }
        return charsequence;
    }
}
