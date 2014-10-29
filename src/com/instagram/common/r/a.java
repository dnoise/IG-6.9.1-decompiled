// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.r;

import android.telephony.TelephonyManager;
import java.util.Locale;

// Referenced classes of package com.instagram.common.r:
//            b

public final class a
{

    private final TelephonyManager a;

    public a(TelephonyManager telephonymanager)
    {
        a = telephonymanager;
    }

    public final Iterable a(String s)
    {
        return new b(this, s);
    }

    public final String a()
    {
        String s = a.getSimCountryIso();
        if (s == null)
        {
            if ((s = a.getNetworkCountryIso()) == null)
            {
                return Locale.getDefault().getCountry();
            }
        }
        return s;
    }
}
