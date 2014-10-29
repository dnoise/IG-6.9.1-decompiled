// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.az;
import com.instagram.api.h.d;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            fy, du

final class gl
    implements android.content.DialogInterface.OnClickListener
{

    final fy a;

    gl(fy fy1)
    {
        a = fy1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 0)
        {
            a.a(new Intent("android.intent.action.VIEW", Uri.parse(d.a("http://help.instagram.com/372161259539444/", a.l()))));
            return;
        }
        Bundle bundle = new Bundle();
        int j;
        if (i == 1)
        {
            j = az.send_feedback;
        } else
        {
            j = az.report_problem;
        }
        bundle.putInt("title", j);
        (new a(a.p())).a(new du(), bundle).a();
    }
}
