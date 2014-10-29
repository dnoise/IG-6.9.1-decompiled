// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.e;

import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import com.instagram.p.b;
import com.instagram.ui.widget.searchedittext.SearchEditText;

// Referenced classes of package com.instagram.android.e:
//            c, d, a

final class e
    implements android.widget.AdapterView.OnItemClickListener
{

    final Dialog a;
    final d b;

    e(d d1, Dialog dialog)
    {
        b = d1;
        a = dialog;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        c c1 = (c)adapterview.getItemAtPosition(i);
        ((a)b.k()).a((new StringBuilder("+")).append(c1.a()).toString());
        b.aa.b().a("selected_country", c1.b()).a("search_term", d.a(b).getText().toString()).a();
        a.dismiss();
    }
}
