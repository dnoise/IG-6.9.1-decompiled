// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.bugreport.rageshake;

import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.ba;
import android.support.v4.app.bx;
import com.facebook.au;
import com.facebook.az;
import com.instagram.bugreport.a.b;
import com.instagram.bugreport.a.d;
import com.instagram.bugreport.a.g;
import com.instagram.common.a.a.f;
import com.instagram.common.a.a.k;
import java.util.ArrayList;

// Referenced classes of package com.instagram.bugreport.rageshake:
//            RageShakeActivity, e

public class RageShakeService extends IntentService
{

    private final k a = new f();
    private b b;
    private Context c;

    public RageShakeService()
    {
        super("RageShakeService");
    }

    private void a()
    {
        a(getString(az.rageshake_send_success), getString(az.rageshake_send_description), au.notification_icon, getString(az.rageshake_send_success), new Intent(), 3);
    }

    public static void a(Context context, String s, String s1, ArrayList arraylist)
    {
        Intent intent = new Intent(context.getApplicationContext(), com/instagram/bugreport/rageshake/RageShakeService);
        intent.putExtra("RageShakeActivity.INTENT_EXTRA_DESCRIPTION", s);
        intent.putExtra("RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH", s1);
        intent.putStringArrayListExtra("RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS", arraylist);
        context.startService(intent);
    }

    static void a(RageShakeService rageshakeservice)
    {
        rageshakeservice.a();
    }

    private void a(String s, String s1, int i, String s2, Intent intent, int j)
    {
        android.app.Notification notification = (new ba(c)).a(s).b(s1).a(i).a().d(s2).a(System.currentTimeMillis()).a(PendingIntent.getActivity(c, (int)System.currentTimeMillis(), intent, 0x10000000)).d();
        bx.a(this).a(j, notification);
    }

    private void b()
    {
        Intent intent = new Intent(c, com/instagram/bugreport/rageshake/RageShakeActivity);
        intent.putExtra("RageShakeActivity.INTENT_EXTRA_RETRY", true);
        intent.putExtra("RageShakeActivity.INTENT_EXTRA_DESCRIPTION", b.b());
        intent.putExtra("RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH", b.f());
        intent.putStringArrayListExtra("RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS", b.h());
        int i = az.rageshake_fail_title;
        Object aobj[] = new Object[1];
        aobj[0] = b.b();
        a(getString(i, aobj), getString(az.rageshake_fail_text), 0x108008a, getString(az.rageshake_fail_ticker), intent, 2);
    }

    static void b(RageShakeService rageshakeservice)
    {
        rageshakeservice.b();
    }

    protected void onHandleIntent(Intent intent)
    {
        c = getApplicationContext();
        b = (new g(c)).a(intent.getStringExtra("RageShakeActivity.INTENT_EXTRA_DESCRIPTION")).a();
        b.a(intent.getStringArrayListExtra("RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS"));
        b.a(intent.getStringExtra("RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH"));
        b.a(new e(this));
        a.a(b);
    }
}
