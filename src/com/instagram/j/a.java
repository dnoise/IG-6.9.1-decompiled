// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import com.facebook.as;
import com.instagram.common.y.e;
import com.instagram.j.d.c;
import com.instagram.j.d.h;
import com.instagram.j.d.i;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;

// Referenced classes of package com.instagram.j:
//            e, g, b, c, 
//            d, f

public final class a
{

    public static SpannableStringBuilder a(Context context, c c1, com.instagram.j.a.a.a a1)
    {
        String s = c1.a(context);
        String s1 = (new StringBuilder()).append(c1.c()).append(" ").append(s).toString();
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(s1);
        spannablestringbuilder.setSpan(new ForegroundColorSpan(context.getResources().getColor(as.grey_light)), s1.length() - s.length(), s1.length(), 33);
        a(spannablestringbuilder, c1, a1);
        return spannablestringbuilder;
    }

    private static void a(SpannableStringBuilder spannablestringbuilder, com.instagram.j.a.a.a a1)
    {
        for (Matcher matcher = e.a(spannablestringbuilder.toString()); matcher.find(); spannablestringbuilder.setSpan(new com.instagram.j.e(a1, matcher.group(1)), matcher.start(1), matcher.end(1), 33)) { }
    }

    private static void a(SpannableStringBuilder spannablestringbuilder, c c1, com.instagram.j.a.a.a a1)
    {
        Iterator iterator = c1.k().iterator();
_L8:
        h h1;
        String s;
        int j;
        Object obj;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_250;
        }
        h1 = (h)iterator.next();
        s = h1.d();
        j = g.a[h1.c().ordinal()];
        obj = null;
        j;
        JVM INSTR tableswitch 1 5: default 92
    //                   1 102
    //                   2 160
    //                   3 175
    //                   4 114
    //                   5 114;
           goto _L1 _L2 _L3 _L4 _L5 _L5
_L4:
        break MISSING_BLOCK_LABEL_175;
_L5:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IndexOutOfBoundsException("Unhandled newsfeed story link type");
_L2:
        obj = new b(a1, s);
_L6:
        if (obj != null)
        {
            if (h1.a() >= 0 && h1.b() < spannablestringbuilder.length())
            {
                spannablestringbuilder.setSpan(obj, h1.a(), h1.b(), 33);
            } else
            {
                com.instagram.common.i.c.a("NewsfeedStoryUtil.addLink()", new IndexOutOfBoundsException((new StringBuilder("length: ")).append(spannablestringbuilder.length()).append(", start: ").append(h1.a()).append(", end: ").append(h1.b()).toString()));
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        obj = new com.instagram.j.c(a1, s);
          goto _L6
        obj = new d(a1, s);
          goto _L6
        a(spannablestringbuilder, a1);
        b(spannablestringbuilder, a1);
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static void b(SpannableStringBuilder spannablestringbuilder, com.instagram.j.a.a.a a1)
    {
        for (Matcher matcher = e.b(spannablestringbuilder.toString()); matcher.find(); spannablestringbuilder.setSpan(new f(a1, matcher.group(1)), matcher.start(1), matcher.end(1), 33)) { }
    }
}
