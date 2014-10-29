// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import android.os.CountDownTimer;
import android.widget.TextView;
import com.facebook.az;
import com.instagram.android.c.a.t;
import com.instagram.android.c.a.v;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package com.instagram.android.login.fragment:
//            ci, co

final class cr extends CountDownTimer
{

    final ci a;
    private final DateFormat b;

    cr(ci ci1)
    {
        this(ci1, 0x2bf20L, 1000L);
    }

    private cr(ci ci1, long l, long l1)
    {
        a = ci1;
        super(0x2bf20L, 1000L);
        b = new SimpleDateFormat("m:ss", Locale.US);
        b.setTimeZone(TimeZone.getTimeZone("GMT"));
    }

    public final void onFinish()
    {
        if (ci.g(a) != null)
        {
            ci.g(a).setText("");
            if (a.j() != null)
            {
                android.support.v4.app.k k = a.l();
                android.support.v4.app.an an = a.z();
                int i;
                if (a.j().getBoolean("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW"))
                {
                    i = v.b;
                } else
                {
                    i = v.a;
                }
                (new t(k, an, i, a.j().getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"), a.j().getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_DEVICE_ID"), new co(a, (byte)0))).g();
            }
        }
    }

    public final void onTick(long l)
    {
        Date date = new Date(l);
        if (ci.g(a) != null)
        {
            TextView textview = ci.g(a);
            ci ci1 = a;
            int i = az.no_code_received;
            Object aobj[] = new Object[1];
            aobj[0] = b.format(date);
            textview.setText(ci1.a(i, aobj));
        }
    }
}
