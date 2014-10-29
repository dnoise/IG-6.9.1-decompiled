// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ImageSpan;
import com.facebook.au;
import com.facebook.az;
import com.instagram.common.y.f;
import com.instagram.user.c.a;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.feed.d:
//            b, a, f, ac, 
//            l, e, d, ab

final class aa
{

    private static final DecimalFormat a;

    private static int a(Resources resources, SpannableStringBuilder spannablestringbuilder, int i, b b1, TextPaint textpaint, int j)
    {
        String s = b1.g().b();
        spannablestringbuilder.append(s);
        spannablestringbuilder.setSpan(new com.instagram.feed.d.a("comment_owner", b1.g(), b1.e()), i, i + s.length(), 33);
        spannablestringbuilder.append(" ").append(com.instagram.feed.d.f.a().a(resources, b1, textpaint, j)).append("\n");
        return spannablestringbuilder.length();
    }

    private static int a(Resources resources, l l1, SpannableStringBuilder spannablestringbuilder, int i)
    {
        ac ac1 = new ac(resources, l1);
        if (l1.s().intValue() == 1)
        {
            spannablestringbuilder.append(resources.getString(az.view_1_comment));
        } else
        {
            int j = az.view_all_x_comments;
            Object aobj[] = new Object[1];
            aobj[0] = l1.s();
            spannablestringbuilder.append(resources.getString(j, aobj));
        }
        spannablestringbuilder.setSpan(ac1, i, i + (spannablestringbuilder.length() - i), 33);
        spannablestringbuilder.append("\n");
        return spannablestringbuilder.length();
    }

    private static Drawable a(Resources resources, int i, float f1)
    {
        BitmapDrawable bitmapdrawable = (BitmapDrawable)resources.getDrawable(i);
        bitmapdrawable.setGravity(51);
        bitmapdrawable.setBounds(0, 0, (int)f.a(resources.getDisplayMetrics(), 18), (int)f.a(resources.getDisplayMetrics(), f1) + bitmapdrawable.getIntrinsicHeight());
        return bitmapdrawable;
    }

    private static b a(List list, int i)
    {
        b b1;
        try
        {
            b1 = (b)list.get(i);
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            com.facebook.e.a.a.a("MediaRenderer", "Attempt to get a comment that does not exist. index = %s", aobj);
            return null;
        }
        return b1;
    }

    static CharSequence a(Resources resources, l l1)
    {
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(" ");
        spannablestringbuilder.setSpan(new ImageSpan(a(resources, au.explore_attribution, 4F), 1), 0, 1, 33);
        b b1 = new b();
        b1.a(l1.v());
        b1.a(l1);
        SpannableStringBuilder spannablestringbuilder1 = com.instagram.feed.d.f.a().a(b1, true);
        for (int i = -1 + spannablestringbuilder1.length(); i >= 0; i--)
        {
            if (spannablestringbuilder1.charAt(i) == '@')
            {
                spannablestringbuilder1.delete(i, i + 1);
            }
        }

        spannablestringbuilder.append(spannablestringbuilder1);
        return spannablestringbuilder;
    }

    static CharSequence a(Resources resources, l l1, TextPaint textpaint, int i)
    {
        List list;
        SpannableStringBuilder spannablestringbuilder;
        int j;
        int k;
        boolean flag;
        boolean flag1;
        int i1;
        boolean flag2;
        boolean flag3;
        int k1;
        int i2;
        b b1;
        boolean flag4;
        list = l1.A().c();
        spannablestringbuilder = new SpannableStringBuilder();
        j = 0;
        int l2;
        int i3;
        if (list != null)
        {
            k = list.size();
        } else
        {
            k = 0;
        }
        flag = false;
        if (!l1.n()) goto _L2; else goto _L1
_L1:
        flag1 = false;
_L15:
        i1 = Math.min(k, 6);
        flag2 = flag1;
_L16:
        int j1;
        if (!flag2 || l1.n())
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (flag3)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        k1 = i1 + j1;
        i2 = 0;
_L13:
        if (i2 >= k1) goto _L4; else goto _L3
_L3:
        if (i2 != 0) goto _L6; else goto _L5
_L5:
        b1 = a(list, 0);
        flag4 = false;
        if (b1 == null) goto _L8; else goto _L7
_L7:
        if (!l1.Z()) goto _L10; else goto _L9
_L9:
        l2 = b1.i();
        i3 = d.b;
        flag4 = false;
        if (l2 != i3) goto _L12; else goto _L11
_L11:
        boolean flag5;
        int j2;
        int k2;
        if (b1 != null)
        {
            j = a(resources, spannablestringbuilder, j, b1, textpaint, i);
            flag5 = flag;
        } else
        if (flag4)
        {
            j = a(resources, l1, spannablestringbuilder, j);
            flag5 = true;
        } else
        {
            flag5 = flag;
        }
        i2++;
        flag = flag5;
          goto _L13
_L2:
        if (k - 6 <= 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag1) goto _L15; else goto _L14
_L14:
        i1 = k;
        flag2 = flag1;
          goto _L16
_L12:
        flag4 = false;
        if (k1 != 1) goto _L8; else goto _L17
_L17:
        a(resources, l1, spannablestringbuilder, j);
        flag4 = false;
        b1 = null;
          goto _L11
_L10:
        flag4 = false;
        if (flag2) goto _L11; else goto _L18
_L18:
        j2 = b1.i();
        k2 = d.b;
        flag4 = false;
        if (j2 == k2) goto _L11; else goto _L19
_L19:
        flag4 = true;
_L8:
        b1 = null;
          goto _L11
_L6:
        if (!l1.Z())
        {
            break MISSING_BLOCK_LABEL_349;
        }
        a(resources, l1, spannablestringbuilder, j);
_L4:
        if (spannablestringbuilder.length() > 0)
        {
            spannablestringbuilder.delete(-1 + spannablestringbuilder.length(), spannablestringbuilder.length());
        }
        return spannablestringbuilder;
        if (i2 == 1 && flag3 && !flag)
        {
            flag4 = true;
            b1 = null;
        } else
        if (flag2)
        {
            b1 = a(list, i2);
            flag4 = false;
        } else
        {
            b1 = a(list, -1 + (i2 + (k - i1)));
            flag4 = false;
        }
          goto _L11
    }

    static CharSequence a(l l1)
    {
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder();
        spannablestringbuilder.append(l1.c().b());
        spannablestringbuilder.setSpan(new com.instagram.feed.d.a("media_owner", l1.c(), l1), 0, l1.c().b().length(), 33);
        return spannablestringbuilder;
    }

    static CharSequence b(Resources resources, l l1)
    {
        Set set = l1.k();
        if (set != null)
        {
            if (set.size() != 0)
            {
                SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(" ");
                spannablestringbuilder.setSpan(new ImageSpan(a(resources, au.feed_like_small, 3F), 1), 0, 1, 33);
                Iterator iterator = set.iterator();
                for (int i = 1; iterator.hasNext(); i = spannablestringbuilder.length())
                {
                    a a1 = (a)iterator.next();
                    String s = a1.b();
                    spannablestringbuilder.append(s);
                    spannablestringbuilder.setSpan(new com.instagram.feed.d.a("like_owner", a1, l1), i, i + s.length(), 33);
                    spannablestringbuilder.append(", ");
                }

                spannablestringbuilder.delete(-2 + spannablestringbuilder.length(), spannablestringbuilder.length());
                return spannablestringbuilder;
            }
        } else
        if (l1.j() > 0)
        {
            return c(resources, l1);
        }
        return "";
    }

    private static SpannableStringBuilder c(Resources resources, l l1)
    {
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(" ");
        spannablestringbuilder.setSpan(new ImageSpan(a(resources, au.feed_like_small, 4F), 1), 0, 1, 33);
        int i = az.number_of_people_who_like_this_photo;
        Object aobj[] = new Object[1];
        aobj[0] = a.format(l1.j());
        spannablestringbuilder.append(resources.getString(i, aobj));
        spannablestringbuilder.setSpan(new ab(l1), 1, spannablestringbuilder.length(), 33);
        return spannablestringbuilder;
    }

    static 
    {
        DecimalFormat decimalformat = new DecimalFormat();
        a = decimalformat;
        decimalformat.setGroupingUsed(true);
        a.setMaximumFractionDigits(0);
    }
}
