// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.widget.EditText;
import com.facebook.au;
import com.facebook.az;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.android.login:
//            e, f, g, h, 
//            j

public final class d
{

    private final EditText a;
    private final EditText b;
    private final Drawable c;
    private final Drawable d;
    private boolean e;
    private boolean f;
    private j g;

    public d(Resources resources, EditText edittext, EditText edittext1)
    {
        a = edittext;
        b = edittext1;
        c = resources.getDrawable(au.profile_glyph_password);
        d = resources.getDrawable(au.profile_glyph_password_red);
        d();
    }

    static EditText a(d d1)
    {
        return d1.a;
    }

    private static void a(EditText edittext, Drawable drawable)
    {
        edittext.setCompoundDrawablesWithIntrinsicBounds(drawable, null, null, null);
    }

    static void a(d d1, boolean flag)
    {
        d1.a(flag);
    }

    private void a(boolean flag)
    {
        e = flag;
        EditText edittext = a;
        Drawable drawable;
        if (flag)
        {
            drawable = d;
        } else
        {
            drawable = c;
        }
        a(edittext, drawable);
    }

    static void b(d d1, boolean flag)
    {
        d1.b(flag);
    }

    private void b(boolean flag)
    {
        f = flag;
        EditText edittext = b;
        Drawable drawable;
        if (flag)
        {
            drawable = d;
        } else
        {
            drawable = c;
        }
        a(edittext, drawable);
    }

    static boolean b(d d1)
    {
        return d1.e;
    }

    static j c(d d1)
    {
        return d1.g;
    }

    static EditText d(d d1)
    {
        return d1.b;
    }

    private void d()
    {
        a.setOnFocusChangeListener(new com.instagram.android.login.e(this));
        a.addTextChangedListener(new f(this));
        b.setOnFocusChangeListener(new g(this));
        b.addTextChangedListener(new h(this));
    }

    static boolean e(d d1)
    {
        return d1.f;
    }

    public final void a(j j)
    {
        g = j;
    }

    public final boolean a()
    {
        String s = a.getText().toString();
        String s1 = b.getText().toString();
        return s.length() >= 6 && s1.equals(s);
    }

    public final String b()
    {
        String s = a.getText().toString();
        String s1 = b.getText().toString();
        if (s.length() < 6 || s1.length() < 6)
        {
            return a.getContext().getString(az.password_must_be_six_characters);
        }
        if (!s.equals(s1))
        {
            return a.getContext().getString(az.passwords_do_not_match);
        } else
        {
            return null;
        }
    }

    public final boolean c()
    {
        String s = a.getText().toString();
        String s1 = b.getText().toString();
        return !com.instagram.common.y.e.c(s) && !com.instagram.common.y.e.c(s1);
    }
}
