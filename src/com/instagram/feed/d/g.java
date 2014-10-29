// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import com.facebook.as;
import com.instagram.common.y.e;
import com.instagram.user.c.a;
import java.util.regex.Matcher;

// Referenced classes of package com.instagram.feed.d:
//            b, a, i, h

final class g
{

    private static final int a = 6;

    static int a(String s, int j, TextPaint textpaint, int k)
    {
        return (new StaticLayout(s, 0, j, textpaint, k, android.text.Layout.Alignment.ALIGN_NORMAL, 0.0F, 0.0F, false)).getLineCount();
    }

    private static int a(String s, TextPaint textpaint, int j)
    {
        int k;
        int l;
        int i1;
        k = 0;
        if (a(s, s.length(), textpaint, j) <= 5)
        {
            return 0;
        }
        l = a;
        i1 = s.length();
_L2:
        int j1;
        j1 = (i1 + l) / 2;
        int k1 = a(s, j1, textpaint, j);
        if (k1 < 5)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        if (k1 <= 5)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = j1;
_L3:
        if (++k > 20)
        {
            return j1;
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (a(s, j1 + 1, textpaint, j) > 5)
        {
            return j1;
        }
        l = j1;
          goto _L3
    }

    static SpannableStringBuilder a(Resources resources, b b1, TextPaint textpaint, int j)
    {
        if (b1.f() == null)
        {
            return null;
        } else
        {
            SpannableStringBuilder spannablestringbuilder = a(resources, b1.f(), textpaint, j);
            a(spannablestringbuilder, b1, false);
            a(spannablestringbuilder, b1);
            return spannablestringbuilder;
        }
    }

    private static SpannableStringBuilder a(Resources resources, String s, TextPaint textpaint, int j)
    {
        int k;
        int l;
        k = a(s, textpaint, j);
        if (k == 0)
        {
            return new SpannableStringBuilder(s);
        }
        l = 0;
_L3:
        int i1;
        if (l >= 50)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        i1 = k - a - l;
        if (!Character.isWhitespace(s.charAt(i1))) goto _L2; else goto _L1
_L1:
        if (i1 == 0)
        {
            i1 = k - a;
        }
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(s.substring(0, i1));
        spannablestringbuilder.append(" [...]");
        spannablestringbuilder.setSpan(new ForegroundColorSpan(resources.getColor(as.grey_light)), i1, i1 + a, 33);
        return spannablestringbuilder;
_L2:
        l++;
          goto _L3
        i1 = 0;
          goto _L1
    }

    public static SpannableStringBuilder a(b b1, boolean flag)
    {
        if (b1.f() == null)
        {
            return null;
        } else
        {
            SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(b1.f());
            a(spannablestringbuilder, b1, flag);
            a(spannablestringbuilder, b1);
            return spannablestringbuilder;
        }
    }

    static CharSequence a(b b1, SpannableStringBuilder spannablestringbuilder)
    {
        a a1 = b1.g();
        l l = b1.e();
        SpannableStringBuilder spannablestringbuilder1 = new SpannableStringBuilder();
        spannablestringbuilder1.append(a1.b());
        spannablestringbuilder1.setSpan(new com.instagram.feed.d.a("comment_owner", a1, l), 0, a1.b().length(), 33);
        spannablestringbuilder1.append(" ").append(spannablestringbuilder);
        return spannablestringbuilder1;
    }

    private static void a(SpannableStringBuilder spannablestringbuilder, b b1)
    {
        for (Matcher matcher = e.a(spannablestringbuilder.toString()); matcher.find(); spannablestringbuilder.setSpan(new i(matcher.group(1), b1), matcher.start(1), matcher.end(1), 33)) { }
    }

    private static void a(SpannableStringBuilder spannablestringbuilder, b b1, boolean flag)
    {
        for (Matcher matcher = e.b(spannablestringbuilder.toString()); matcher.find(); spannablestringbuilder.setSpan(new h(flag, matcher.group(1), b1), matcher.start(1), matcher.end(1), 33)) { }
    }

}
