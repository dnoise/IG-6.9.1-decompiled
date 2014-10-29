// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.base.a.b;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.fragment:
//            di, dj, dk, dl, 
//            dm

public final class dh extends b
    implements c
{

    public dh()
    {
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.fragment_preload_options, viewgroup, false);
    }

    public final void a(View view, Bundle bundle)
    {
        RadioGroup radiogroup = (RadioGroup)view.findViewById(av.preload_options_radiogroup);
        RadioButton radiobutton = (RadioButton)view.findViewById(av.preload_options_always);
        RadioButton radiobutton1 = (RadioButton)view.findViewById(av.preload_options_wifi);
        a a1 = com.instagram.l.b.a.a();
        boolean flag = com.instagram.creation.c.a.c();
        radiobutton.setChecked(flag);
        boolean flag1;
        CompoundButton compoundbutton;
        CompoundButton compoundbutton1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        radiobutton1.setChecked(flag1);
        radiogroup.setOnCheckedChangeListener(new di(this, a1, radiobutton));
        compoundbutton = (CompoundButton)view.findViewById(av.sound_switch);
        compoundbutton.setChecked(a1.v());
        compoundbutton.setOnCheckedChangeListener(new dj(this, a1));
        view.findViewById(av.sound_row).setOnClickListener(new dk(this, compoundbutton));
        compoundbutton1 = (CompoundButton)view.findViewById(av.video_save_switch);
        compoundbutton1.setChecked(a1.w());
        compoundbutton1.setOnCheckedChangeListener(new dl(this, a1));
        view.findViewById(av.video_storage_row).setOnClickListener(new dm(this, compoundbutton1));
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.videos);
        b1.a(true);
    }

    public final String j_()
    {
        return "preload_options";
    }
}
