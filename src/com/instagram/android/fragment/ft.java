// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.android.util.f;
import com.instagram.api.h.d;
import com.instagram.common.y.e;
import com.instagram.f.a.a.c;
import com.instagram.feed.a.k;
import com.instagram.feed.a.l;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.fragment:
//            fo, fu

final class ft
    implements android.content.DialogInterface.OnClickListener
{

    final fo a;

    ft(fo fo1)
    {
        a = fo1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        CharSequence acharsequence[] = a.aw();
        if (acharsequence[i].equals(a.c(az.report_inappropriate)))
        {
            f.a(a.n(), a.au());
        } else
        {
            if (acharsequence[i].equals(a.c(az.directshare_receive_direct_posts)))
            {
                (new c(a.n(), a.z(), new fu(a, (byte)0), a.ae.g())).g();
                return;
            }
            if (com.instagram.android.feed.c.a.a(acharsequence[i], a.o()))
            {
                fo.h(a).a(a.au());
                return;
            }
            if (acharsequence[i].equals(a.c(az.suggest_user)))
            {
                (new k(a.n(), a.z(), a.au().g(), l.a)).g();
                return;
            }
            if (acharsequence[i].equals(a.c(az.copy_profile_url)))
            {
                android.support.v4.app.k k1 = a.l();
                Object aobj[] = new Object[1];
                aobj[0] = a.au().b();
                com.instagram.common.y.a.a.a(k1, d.a(e.a("/%s/", aobj)));
                Toast.makeText(a.n(), az.copy_profile_url_confirmation, 1).show();
                return;
            }
        }
    }
}
