// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import com.facebook.av;
import com.facebook.az;
import com.instagram.android.login.fragment.v;
import com.instagram.api.h.b;
import com.instagram.base.activity.a;
import com.instagram.common.i.c;
import com.instagram.o.e;

public class PasswordResetActivity extends a
{

    public PasswordResetActivity()
    {
    }

    private static String b(String s1)
    {
        return Long.toString(Long.parseLong(s1, 36));
    }

    private static boolean c(String s1)
    {
        String s2;
        if (s1.startsWith("instagram://") || s1.startsWith("instagr.am://"))
        {
            if ((s2 = Uri.parse(s1).getHost()) != null && (s2.equals("android") || s2.equals("instagr.am") || s2.equals("reset_password")))
            {
                return true;
            }
        }
        return false;
    }

    protected final void h()
    {
        boolean flag;
        flag = true;
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d())
        {
            e.a(az.must_log_out);
            finish();
        }
        if (d().a(av.layout_container_main) != null) goto _L2; else goto _L1
_L1:
        v v1;
        Bundle bundle;
        String s1;
        v1 = new v();
        bundle = new Bundle();
        s1 = getIntent().getDataString();
        if (!c(s1)) goto _L4; else goto _L3
_L3:
        Uri uri = Uri.parse(s1);
        bundle.putString("argument_user_id", b(uri.getQueryParameter("u")));
        bundle.putString("argument_reset_token", uri.getQueryParameter("t"));
_L8:
        if (flag) goto _L6; else goto _L5
_L5:
        e.a(az.uri_error);
        finish();
_L2:
        return;
_L4:
        Exception exception;
        Exception exception1;
        ag ag1;
        if (com.instagram.api.h.b.a(s1))
        {
            s1 = s1.replaceFirst("\\/\\?.*", "");
            String as[] = s1.split("/");
            bundle.putString("argument_user_id", b(as[-2 + as.length]));
            bundle.putString("argument_reset_token", as[-1 + as.length]);
            continue; /* Loop/switch isn't completed */
        }
        flag = false;
        continue; /* Loop/switch isn't completed */
        exception1;
        com.instagram.common.i.c.a("reset_password", (new StringBuilder("malformed uri ")).append(s1).toString(), exception1);
        e.a(az.uri_error);
        finish();
        return;
        exception;
        e.a(az.uri_error);
        finish();
        return;
_L6:
        v1.g(bundle);
        ag1 = d().a();
        ag1.b(av.layout_container_main, v1);
        ag1.b();
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
