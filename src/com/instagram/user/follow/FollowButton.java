// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.app.an;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import com.facebook.as;
import com.facebook.au;
import com.facebook.az;
import com.facebook.bb;
import com.instagram.common.y.d;
import com.instagram.common.y.e;
import com.instagram.ui.dialog.b;
import com.instagram.ui.widget.textview.a;
import com.instagram.user.c.c;
import com.instagram.user.c.f;
import java.util.regex.Matcher;

// Referenced classes of package com.instagram.user.follow:
//            h, e, d, n, 
//            g, i, f, b, 
//            c

public class FollowButton extends a
{

    private boolean a;
    private String b;
    private int c;
    private int d;
    private final h e;

    public FollowButton(Context context)
    {
        this(context, null, 0);
    }

    public FollowButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public FollowButton(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, bb.FollowButton, j, 0);
        String s = typedarray.getNonResourceString(bb.FollowButton_followButtonStyle);
        typedarray.recycle();
        if ("large".equals(s))
        {
            e = com.instagram.user.follow.h.b;
        } else
        {
            e = com.instagram.user.follow.h.a;
        }
        a();
    }

    private void a()
    {
        d = au.rounded_layout_border_stroke;
        c = as.grey_light;
        int j = getPaddingLeft();
        int k = getPaddingRight();
        setBackgroundResource(d);
        setPadding(j, 0, k, 0);
    }

    private void a(Context context, an an, com.instagram.user.c.a a1, g g1)
    {
        SpannableStringBuilder spannablestringbuilder;
        if (a1.s() == f.b)
        {
            int k = az.unfollow_public_user_x;
            Object aobj1[] = new Object[1];
            aobj1[0] = a1.b();
            spannablestringbuilder = new SpannableStringBuilder(context.getString(k, aobj1));
        } else
        {
            f f1 = a1.s();
            f f2 = f.c;
            spannablestringbuilder = null;
            if (f1 == f2)
            {
                int j = az.unfollow_private_user_x;
                Object aobj[] = new Object[1];
                aobj[0] = a1.b();
                spannablestringbuilder = new SpannableStringBuilder(context.getString(j, aobj));
            }
        }
        if (spannablestringbuilder != null)
        {
            for (Matcher matcher = com.instagram.common.y.e.b(spannablestringbuilder.toString()); matcher.find(); spannablestringbuilder.setSpan(new StyleSpan(1), matcher.start(1), matcher.end(1), 33)) { }
            (new b(context)).a(a1.f()).a(spannablestringbuilder).b(az.unfollow, new com.instagram.user.follow.e(this, a1, an, g1)).c(az.cancel, new com.instagram.user.follow.d(this)).c().show();
        }
    }

    private void a(com.instagram.user.c.a a1, an an, g g1)
    {
        c c1 = a1.t();
        com.instagram.user.follow.n.a().a(a1, getContext(), an);
        Intent intent = new Intent("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED");
        intent.putExtra("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED_USER_ID", a1.g());
        com.instagram.common.y.d.a(intent);
        if (g1 != null)
        {
            g1.a(c1);
        }
    }

    private void a(c c1)
    {
        int j;
        boolean flag;
        int k;
        int l;
        int i1;
        if (c1 != c.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setEnabled(flag);
        c = com.instagram.user.follow.i.b(c1);
        d = com.instagram.user.follow.i.a(c1);
        com.instagram.user.follow.f.a[c1.ordinal()];
        JVM INSTR tableswitch 1 4: default 68
    //                   1 169
    //                   2 176
    //                   3 183
    //                   4 157;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        setText("");
        j = 0;
_L7:
        if (e.a() && j != 0)
        {
            setText(j);
        }
        k = e.a(c1);
        if (k != 0)
        {
            setImageResource(k);
        }
        l = getPaddingLeft();
        i1 = getPaddingRight();
        setBackgroundResource(d);
        setPadding(l, 0, i1, 0);
        b();
        return;
_L5:
        setText("...");
        j = 0;
        continue; /* Loop/switch isn't completed */
_L2:
        j = az.following_button_following;
        continue; /* Loop/switch isn't completed */
_L3:
        j = az.following_button_requested;
        continue; /* Loop/switch isn't completed */
_L4:
        j = az.following_button_follow;
        if (true) goto _L7; else goto _L6
_L6:
    }

    static void a(FollowButton followbutton, Context context, an an, com.instagram.user.c.a a1, g g1)
    {
        followbutton.a(context, an, a1, g1);
    }

    static void a(FollowButton followbutton, com.instagram.user.c.a a1, an an, g g1)
    {
        followbutton.a(a1, an, g1);
    }

    private void b()
    {
        int j = c;
        if (isEnabled() && (isSelected() || isPressed()))
        {
            j = com.instagram.user.follow.i.a(j);
        }
        android.graphics.ColorFilter colorfilter = com.instagram.common.ui.colorfilter.a.a(getResources().getColor(j));
        getBackground().mutate().setColorFilter(colorfilter);
        if (d == au.rounded_layout_border_fill)
        {
            j = as.white;
        }
        android.graphics.ColorFilter colorfilter1 = com.instagram.common.ui.colorfilter.a.a(getResources().getColor(j));
        setTextColor(getResources().getColor(j));
        if (getDrawable() != null)
        {
            getDrawable().mutate().setColorFilter(colorfilter1);
        }
    }

    public final void a(com.instagram.user.c.a a1, an an)
    {
        a(a1, an, false, null);
    }

    public final void a(com.instagram.user.c.a a1, an an, boolean flag, g g1)
    {
        if (a1 == null)
        {
            return;
        }
        if (com.instagram.user.a.a.a(a1))
        {
            setVisibility(8);
            return;
        }
        if (b != null && !a1.g().equals(b))
        {
            a = false;
        }
        b = a1.g();
        if (!a)
        {
            a = true;
            if (flag)
            {
                (new com.instagram.user.follow.b(getContext(), an, a1)).g();
            }
        }
        a(a1.t());
        setOnClickListener(new com.instagram.user.follow.c(this, a1, an, g1));
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        b();
    }
}
