// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.support.v4.app.an;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.az;
import com.instagram.a.d;
import com.instagram.a.e;
import com.instagram.android.feed.a.b.ar;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.a.b:
//            n, l, m

public final class k
{

    public static View a(View view)
    {
        n n1 = new n();
        com.instagram.android.a.b.n.a(n1, (TextView)view.findViewById(av.row_friend_request_header_textview));
        com.instagram.android.a.b.n.a(n1, view.findViewById(av.row_friend_request_header_button_approve));
        n.b(n1, view.findViewById(av.row_friend_request_header_button_ignore));
        n.c(n1, view);
        view.setTag(n1);
        return view;
    }

    public static void a(n n1, a a1, Context context, an an, ar ar1)
    {
        if (a1.A() && ar1.x_())
        {
            com.instagram.android.a.b.n.a(n1).setVisibility(0);
            int i = az.x_wants_to_follow_you;
            Object aobj[] = new Object[1];
            aobj[0] = a1.b();
            SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(context.getString(i, aobj));
            spannablestringbuilder.setSpan(new StyleSpan(1), 0, a1.b().length(), 33);
            n.b(n1).setText(spannablestringbuilder);
            if (n.c(n1).getBackground() == null)
            {
                n.c(n1).setBackgroundDrawable(new d(n.c(n1).getResources(), e.a, 3));
            }
            n.c(n1).setOnClickListener(new l(context, an, a1, n1));
            com.instagram.android.a.b.n.d(n1).setOnClickListener(new m(context, an, a1, n1));
            return;
        } else
        {
            com.instagram.android.a.b.n.a(n1).setVisibility(8);
            return;
        }
    }
}
