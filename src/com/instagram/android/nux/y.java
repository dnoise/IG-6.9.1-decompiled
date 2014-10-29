// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.app.Dialog;
import android.view.View;
import android.widget.EditText;
import com.facebook.av;
import com.facebook.az;
import com.instagram.api.h.c;
import com.instagram.common.y.e;
import com.instagram.common.y.f;
import com.instagram.l.a.a;
import java.util.Locale;

// Referenced classes of package com.instagram.android.nux:
//            w, n

final class y
    implements android.view.View.OnClickListener
{

    final Dialog a;
    final w b;

    y(w w1, Dialog dialog)
    {
        b = w1;
        a = dialog;
        super();
    }

    public final void onClick(View view)
    {
        a a1 = com.instagram.l.a.a.a();
        EditText edittext = (EditText)a.findViewById(av.dev_server);
        String s = edittext.getText().toString().toLowerCase(Locale.US);
        n n1;
        int i;
        Object aobj[];
        if (e.c(s))
        {
            a1.a(false);
        } else
        {
            a1.a(true);
            if ("preprod".equals(s))
            {
                a1.a("preprod.instagram.com");
            } else
            if (s.contains("."))
            {
                a1.a(s);
            } else
            {
                a1.a((new StringBuilder()).append(s).append(".sb.facebook.com:8084").toString());
            }
        }
        f.a(b.a.n(), edittext);
        n1 = b.a;
        i = az.dev_host_set_to;
        aobj = new Object[1];
        aobj[0] = c.a();
        com.instagram.o.e.a(n1.a(i, aobj));
        a.dismiss();
    }
}
