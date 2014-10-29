// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.c.a.i;
import com.instagram.android.c.a.j;
import com.instagram.android.widget.IndeterminateCheckBox;
import com.instagram.base.a.b;
import com.instagram.common.ui.colorfilter.a;

// Referenced classes of package com.instagram.android.people.b:
//            u, t, r, s

public final class q extends b
    implements c
{

    private IndeterminateCheckBox a;
    private IndeterminateCheckBox b;

    public q()
    {
    }

    static IndeterminateCheckBox a(q q1)
    {
        return q1.a;
    }

    private void a(int k)
    {
        if (k == j.a)
        {
            b.setIndeterminate(true);
        } else
        {
            a.setIndeterminate(true);
        }
        (new i(n(), z(), k, new u(this, (byte)0))).g();
    }

    static void a(q q1, int k)
    {
        q1.a(k);
    }

    private Drawable b()
    {
        Drawable drawable = o().getDrawable(au.radio_check);
        drawable.mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(o().getColor(as.accent_blue_medium)));
        return drawable;
    }

    static IndeterminateCheckBox b(q q1)
    {
        return q1.b;
    }

    private void c()
    {
        boolean flag = com.instagram.service.a.a.a().b().i();
        IndeterminateCheckBox indeterminatecheckbox = a;
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        indeterminatecheckbox.setChecked(Boolean.valueOf(flag1));
        b.setChecked(Boolean.valueOf(flag));
    }

    static void c(q q1)
    {
        q1.c();
    }

    public final void F()
    {
        super.F();
        TextView textview = (TextView)E().findViewById(av.learn_more_photos_of_you);
        CharSequence charsequence = b(az.people_tagging_learn_more_photos);
        SpannableString spannablestring = new SpannableString(charsequence);
        spannablestring.setSpan(new t(this), 0, charsequence.length(), 33);
        SpannableStringBuilder spannablestringbuilder = (new SpannableStringBuilder(b(az.people_tagging_review_description))).append("\n").append(spannablestring);
        textview.setMovementMethod(LinkMovementMethod.getInstance());
        textview.setText(spannablestringbuilder);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.fragment_user_tag_options, viewgroup, false);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
    }

    public final void a(View view, Bundle bundle)
    {
        a = (IndeterminateCheckBox)view.findViewById(av.tag_option_automatically);
        a.getCheckBox().setBackgroundDrawable(b());
        view.findViewById(av.tag_option_automatically_container).setOnClickListener(new r(this));
        b = (IndeterminateCheckBox)view.findViewById(av.tag_option_manually);
        b.getCheckBox().setBackgroundDrawable(b());
        view.findViewById(av.tag_option_manually_container).setOnClickListener(new s(this));
        c();
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.options);
        b1.a(true);
    }

    public final String j_()
    {
        return "photos_of_you_options";
    }
}
