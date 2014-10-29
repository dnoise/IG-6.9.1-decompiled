// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.b.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.facebook.d.d.c;
import com.instagram.common.analytics.b;
import java.io.File;

public class a
{

    public static final Class a = com/instagram/b/a/a;
    private final Context b;
    private final PackageManager c;
    private final TelephonyManager d;

    public a(Context context)
    {
        b = context.getApplicationContext();
        c = b.getPackageManager();
        d = (TelephonyManager)b.getSystemService("phone");
    }

    private String a()
    {
        int i = -1;
        int j = d.getPhoneType();
        i = j;
_L1:
        android.content.res.Resources.NotFoundException notfoundexception;
        switch (i)
        {
        default:
            return "UNKNOWN";

        case 2: // '\002'
            return "CDMA";

        case 1: // '\001'
            return "GSM";

        case 3: // '\003'
            return "SIP";

        case 0: // '\0'
            return "NONE";
        }
        notfoundexception;
        a;
          goto _L1
    }

    private static String a(int i)
    {
        switch (i)
        {
        default:
            return "UNKNOWN";

        case 7: // '\007'
            return "1xRTT";

        case 4: // '\004'
            return "CDMA";

        case 2: // '\002'
            return "EDGE";

        case 14: // '\016'
            return "EHRPD";

        case 5: // '\005'
            return "EVDO_0";

        case 6: // '\006'
            return "EVDO_A";

        case 12: // '\f'
            return "EVDO_B";

        case 1: // '\001'
            return "GPRS";

        case 8: // '\b'
            return "HSDPA";

        case 10: // '\n'
            return "HSPA";

        case 15: // '\017'
            return "HSPAP";

        case 9: // '\t'
            return "HSUPA";

        case 11: // '\013'
            return "IDEN";

        case 13: // '\r'
            return "LTE";

        case 3: // '\003'
            return "UMTS";
        }
    }

    private void b(b b1)
    {
        b1.a("distribution_channel", (new c(b)).a("com.instagram.android.channel"));
    }

    private void c(b b1)
    {
        b1.a("app_store_package_name", com.instagram.common.y.d.a.b(c));
    }

    private void d(b b1)
    {
        String s;
        ApplicationInfo applicationinfo;
        s = "user_installed_app";
        applicationinfo = b.getApplicationInfo();
        if ((1 & applicationinfo.flags) == 0) goto _L2; else goto _L1
_L1:
        s = "system_app";
_L4:
        b1.a("app_install_type", s);
        return;
_L2:
        if ((0x80 & applicationinfo.flags) != 0)
        {
            s = "updated_system_app";
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void e(b b1)
    {
        b1.a("carrier", d.getNetworkOperatorName());
        b1.a("carrier_country_iso", d.getNetworkCountryIso());
        b1.a("network_type", a(d.getNetworkType()));
        b1.a("phone_type", a());
        b1.a("sim_country_iso", d.getSimCountryIso());
        int i = d.getSimState();
        TelephonyManager _tmp = d;
        if (i == 5)
        {
            b1.a("sim_operator", d.getSimOperatorName());
        }
    }

    private void f(b b1)
    {
        b1.a("device_type", Build.MODEL);
        b1.a("brand", Build.BRAND);
        b1.a("manufacturer", Build.MANUFACTURER);
        b1.a("os_type", "Android");
        b1.a("os_ver", android.os.Build.VERSION.RELEASE);
        b1.a("cpu_abi", Build.CPU_ABI);
        b1.a("cpu_abi2", Build.CPU_ABI2);
        DisplayMetrics displaymetrics = b.getResources().getDisplayMetrics();
        try
        {
            ((WindowManager)b.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        }
        catch (Exception exception)
        {
            Class _tmp = a;
        }
        b1.a("density", displaymetrics.density);
        b1.a("density_dpi", displaymetrics.densityDpi);
        b1.a("screen_width", displaymetrics.widthPixels);
        b1.a("screen_height", displaymetrics.heightPixels);
    }

    private void g(b b1)
    {
        File file = b.getFilesDir();
        b1.a("internal_total_space_in_mb", file.getTotalSpace() / 0x100000L);
        b1.a("internal_usable_space_in_mb", file.getUsableSpace() / 0x100000L);
        File file1 = b.getExternalCacheDir();
        if (file1 != null)
        {
            b1.a("external_total_space_in_mb", file1.getTotalSpace() / 0x100000L);
            b1.a("external_usable_space_in_mb", file1.getUsableSpace() / 0x100000L);
        }
    }

    public final void a(b b1)
    {
        c(b1);
        e(b1);
        f(b1);
        d(b1);
        b(b1);
        g(b1);
    }

}
