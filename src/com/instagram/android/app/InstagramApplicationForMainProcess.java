// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.support.v4.app.an;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.message.BasicHeader;
import com.facebook.ba;
import com.instagram.android.fragment.fx;
import com.instagram.android.h.f;
import com.instagram.common.analytics.ab;
import com.instagram.common.analytics.o;
import com.instagram.common.b.b;
import com.instagram.common.d.j;
import com.instagram.common.i.c;
import com.instagram.common.s.a;
import com.instagram.k.d;
import com.instagram.m.k;
import com.instagram.o.f.h;
import com.instagram.strings.StringBridge;
import com.instagram.user.userservice.a.e;
import com.instagram.user.userservice.b.g;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.instagram.android.app:
//            a, b, c, d, 
//            e

public class InstagramApplicationForMainProcess extends b
{

    private static final Header HEADER_REFERER = new BasicHeader("Referer", "android.instagram.com");
    private static final String IMAGE_CACHE_DIR = "images";
    private static final com.instagram.common.g.a.f REQUEST_FILTER = new com.instagram.android.app.a();
    private static final String TAG = "InstagramApplicationForMainProcess";
    private final e mAutoCompleteUpdateReceiver = new e();
    private final BroadcastReceiver mChangedUserReceiver = new com.instagram.android.app.b(this);
    private final Context mContext;
    private final com.facebook.b.f mServiceListener = new com.instagram.android.app.c(this);
    private final g mSuggestionsUpdateReceiver = new g();

    public InstagramApplicationForMainProcess(Context context)
    {
        mContext = context;
    }

    private void detectWebViewCrashingBug()
    {
        if (mContext.getCacheDir() == null)
        {
            c.b("failed_to_initialize_cache_dir", "failed_to_initialize_cache_dir");
        }
    }

    private void initAnalytics()
    {
        if (!StringBridge.a())
        {
            String s = a.b(mContext);
            String s1 = String.valueOf(a.a(mContext));
            String s2 = com.instagram.common.z.a.b(mContext);
            com.instagram.d.a.d();
            String s3 = com.instagram.d.a.c();
            String s4 = com.instagram.service.a.a.a().c();
            String s5 = com.instagram.share.b.a.f();
            com.instagram.common.analytics.a.a(new ab(mContext, s2, s, s1, s3, "f249176f09e26ce54212b472dbab8fa8", s4, s5));
        }
        com.instagram.b.d.c.a(com.instagram.common.analytics.a.a(), com.facebook.d.g.b.a());
        com.instagram.k.a.a(mContext).a();
        com.instagram.common.p.b.b.a().a(new com.instagram.b.a.b(mContext));
        com.instagram.common.p.b.b.a().a(new o(mContext));
    }

    private void initRealtimeUpdates()
    {
        f.c().a(mContext, new j(mContext), new com.instagram.android.h.a(mContext));
    }

    private void installSystemMessageHandlers()
    {
        com.instagram.api.i.c.a("fb_needs_reauth", com.instagram.share.b.a.m());
        com.instagram.api.i.c.a("foursquare_needs_reauth", com.instagram.share.d.a.e());
        com.instagram.api.i.c.a("vkontakte_needs_reauth", com.instagram.share.vkontakte.a.h());
        com.instagram.api.i.c.a("twitter_needs_reauth", com.instagram.share.f.a.i());
    }

    private static boolean isBlacklistedForAdvancedResize()
    {
        List list = Arrays.asList(new String[] {
            "MI 3W", "MI 4W", "D2533", "Vodafone Smart 4 turbo", "D2502", "305SH"
        });
        return android.os.Build.VERSION.SDK_INT == 19 && list.contains(Build.MODEL);
    }

    private void reauthFacebookAndFetchUserId()
    {
        com.facebook.b.b b1 = com.instagram.share.b.a.a();
        if (b1.a())
        {
            b1.a(mContext, mServiceListener);
        } else
        {
            com.instagram.share.b.a.h();
        }
        com.instagram.share.b.a.a(mContext);
    }

    private void scanAdvancedCameraWhiteList()
    {
        boolean flag;
        String as[];
        flag = true;
        (new StringBuilder("Device model: ")).append(Build.MODEL);
        as = new String[20];
        as[0] = "Galaxy Nexus";
        as[flag] = "Nexus S";
        as[2] = "HTC_Amaze_4G";
        as[3] = "DROID3";
        as[4] = "DROID4";
        as[5] = "DROIDX";
        as[6] = "DROID BIONIC";
        as[7] = "SPH-D700";
        as[8] = "GT-I9100";
        as[9] = "SGH-T959V";
        as[10] = "SCH-I500";
        as[11] = "SCH-I510";
        as[12] = "ADR6425LVW";
        as[13] = "MB865";
        as[14] = "LT15a";
        as[15] = "PC36100";
        as[16] = "PG86100";
        as[17] = "GT-N7000";
        as[18] = "GT-P7510";
        as[19] = "ThinkPad Tablet";
        if (android.os.Build.VERSION.SDK_INT < 14) goto _L2; else goto _L1
_L1:
        com.instagram.l.a.b b1 = com.instagram.l.a.b.a();
        b1.b(b1.a(flag));
        return;
_L2:
        for (int i = 0; i < 20; i++)
        {
            if (as[i].equalsIgnoreCase(Build.MODEL))
            {
                continue; /* Loop/switch isn't completed */
            }
        }

        flag = false;
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void scanAdvancedResizeWhiteList()
    {
        boolean flag;
        com.instagram.l.a.b b1;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b1 = com.instagram.l.a.b.a();
        flag1 = b1.c(flag);
        flag2 = isBlacklistedForAdvancedResize();
        flag3 = false;
        if (!flag2)
        {
            flag3 = flag1;
        }
        b1.d(flag3);
    }

    public Object getAppService(Class class1)
    {
        if (com/instagram/common/y/f/a.equals(class1))
        {
            return com.instagram.android.login.b.a.a();
        } else
        {
            return super.getAppService(class1);
        }
    }

    public void onCreate()
    {
        d.a().a(com.instagram.k.f.a);
        byte byte0;
        boolean flag;
        com.instagram.android.app.d d1;
        com.instagram.common.g.b.h h1;
        com.instagram.common.g.c.a a1;
        if (com.instagram.common.s.b.d())
        {
            byte0 = 6;
        } else
        {
            byte0 = 2;
        }
        com.facebook.e.a.a.a(byte0);
        com.instagram.common.h.a.a(mContext);
        com.facebook.k.a.a(mContext);
        mContext.setTheme(ba.InstagramTheme);
        android.support.v4.a.e.a(mContext).a(mChangedUserReceiver, new IntentFilter("AuthHelper.BROADCAST_USER_CHANGED"));
        if (!com.instagram.common.s.b.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        an.a(flag);
        com.instagram.common.a.b.a.a(new com.instagram.api.a.c());
        com.instagram.common.u.b.b.a("1006803734412");
        com.instagram.common.u.b.d.a("instagram");
        com.instagram.creation.photo.c.g.a(mContext);
        com.instagram.l.a.b.a(mContext);
        k.c();
        com.instagram.o.f.f.a(new com.instagram.android.util.c());
        com.instagram.o.f.d.a(new com.instagram.android.maps.f.a());
        com.instagram.o.f.b.a(new com.instagram.android.feed.e.g());
        h.a(new fx());
        com.instagram.service.a.a.a().b();
        com.instagram.user.c.j.a(new com.instagram.user.f.a());
        com.instagram.e.a.a(com.instagram.share.b.a.f());
        initRealtimeUpdates();
        initAnalytics();
        com.instagram.ui.e.d.a().d();
        detectWebViewCrashingBug();
        com.instagram.camera.h.a();
        d1 = new com.instagram.android.app.d(this);
        com.instagram.common.p.b.b.a().a(new com.instagram.common.g.b.o(mContext));
        h1 = com.instagram.common.g.b.h.a(mContext, "images");
        h1.a(REQUEST_FILTER);
        h1.a(com.instagram.api.g.e.a);
        h1.a(com.instagram.api.g.f.a);
        h1.a(d1);
        a1 = com.instagram.common.g.c.a.a(mContext);
        a1.a(com.instagram.api.g.e.a);
        a1.a(com.instagram.api.g.f.a);
        a1.a(d1);
        com.instagram.creation.b.d.c.a();
        scanAdvancedCameraWhiteList();
        scanAdvancedResizeWhiteList();
        installSystemMessageHandlers();
        (new Handler()).postDelayed(new com.instagram.android.app.e(this), 6000L);
        com.instagram.o.a.a().b();
        if (com.instagram.common.s.b.b() && android.os.Build.VERSION.SDK_INT >= 16)
        {
            com.instagram.common.k.a.a(mContext).a();
        }
    }






}
