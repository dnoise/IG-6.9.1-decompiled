// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.e;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.ListView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.base.a.a;
import com.instagram.common.y.e;
import com.instagram.ui.dialog.b;
import com.instagram.ui.widget.searchedittext.SearchEditText;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.instagram.android.e:
//            c, f, b, e

public final class d extends a
{

    private List aa;
    private com.instagram.android.e.b ab;
    private SearchEditText ac;

    public d()
    {
    }

    static SearchEditText a(d d1)
    {
        return d1.ac;
    }

    static com.instagram.android.e.b b(d d1)
    {
        return d1.ab;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        com.instagram.common.r.a a1 = new com.instagram.common.r.a((TelephonyManager)n().getSystemService("phone"));
        com.facebook.i.d d1 = com.facebook.i.d.a(n());
        aa = new ArrayList();
        Iterator iterator = a1.a(Locale.getDefault().getLanguage()).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Locale locale = (Locale)iterator.next();
            int i = d1.a(locale.getCountry());
            if (i != 0)
            {
                String s = String.valueOf(i);
                List list = aa;
                Object aobj[] = new Object[2];
                aobj[0] = locale.getDisplayCountry();
                aobj[1] = s;
                list.add(new c(s, e.a("%s (+%s)", aobj)));
            }
        } while (true);
        Collections.sort(aa);
    }

    public final Dialog c(Bundle bundle)
    {
        super.c(bundle);
        b b1 = new b(n());
        b1.b(c(az.select_your_country).toUpperCase(Locale.getDefault()));
        View view = LayoutInflater.from(n()).inflate(aw.dialog_country_codes, null);
        ListView listview = (ListView)view.findViewById(av.country_code_list);
        ac = (SearchEditText)view.findViewById(av.search);
        ac.setOnFilterTextListener(new f(this, (byte)0));
        android.graphics.ColorFilter colorfilter = com.instagram.common.ui.colorfilter.a.a(o().getColor(as.grey_light));
        ac.getCompoundDrawables()[0].mutate().setColorFilter(colorfilter);
        ac.setClearButtonColorFilter(colorfilter);
        ab = new com.instagram.android.e.b(n(), aa);
        listview.setAdapter(ab);
        b1.a(view);
        b1.a(true);
        b1.d();
        Dialog dialog = b1.c();
        listview.setOnItemClickListener(new com.instagram.android.e.e(this, dialog));
        return dialog;
    }

    public final void d(Bundle bundle)
    {
        super.d(bundle);
        c().getWindow().setSoftInputMode(36);
    }
}
