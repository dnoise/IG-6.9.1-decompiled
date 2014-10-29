// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.Context;
import android.content.DialogInterface;
import com.facebook.az;
import com.instagram.android.feed.c.a;
import com.instagram.android.util.ReportMediaUtil;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.directshare.d:
//            ad

final class ai
    implements android.content.DialogInterface.OnClickListener
{

    final ad a;

    private ai(ad ad1)
    {
        a = ad1;
        super();
    }

    ai(ad ad1, byte byte0)
    {
        this(ad1);
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        CharSequence charsequence = ad.b(a)[i];
        if (ad.c(a).getString(az.directshare_delete).equals(charsequence))
        {
            ad.d(a);
        } else
        {
            if (ad.c(a).getString(az.directshare_hide).equals(charsequence))
            {
                ad.e(a);
                return;
            }
            if (com.instagram.android.feed.c.a.a(charsequence, ad.c(a).getResources()))
            {
                ad.g(a).a(ad.f(a).c());
                return;
            }
            if (ad.c(a).getString(az.directshare_ignore_all).equals(charsequence))
            {
                ad.h(a);
                return;
            }
            if (ad.c(a).getString(az.report_inappropriate).equals(charsequence))
            {
                ReportMediaUtil.a(ad.c(a), ad.f(a));
                return;
            }
        }
    }
}
