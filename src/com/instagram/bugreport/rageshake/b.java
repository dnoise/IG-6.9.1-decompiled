// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.bugreport.rageshake;

import android.content.DialogInterface;
import android.support.v4.app.k;
import com.facebook.az;
import com.instagram.o.e;
import com.instagram.share.b.a;

// Referenced classes of package com.instagram.bugreport.rageshake:
//            a, f

final class b
    implements android.content.DialogInterface.OnClickListener
{

    final com.instagram.bugreport.rageshake.a a;

    private b(com.instagram.bugreport.rageshake.a a1)
    {
        a = a1;
        super();
    }

    b(com.instagram.bugreport.rageshake.a a1, byte byte0)
    {
        this(a1);
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        CharSequence charsequence = com.instagram.bugreport.rageshake.a.a(a)[i];
        if (!charsequence.equals(com.instagram.bugreport.rageshake.a.b(a).getString(az.rageshake_bug_report_option))) goto _L2; else goto _L1
_L1:
        if (!com.instagram.share.b.a.a().b()) goto _L4; else goto _L3
_L3:
        android.graphics.Bitmap bitmap = com.instagram.common.e.a.a(com.instagram.bugreport.rageshake.a.c(a));
        if (bitmap == null) goto _L6; else goto _L5
_L5:
        com.instagram.bugreport.rageshake.a.a(a, new f(bitmap, com.instagram.bugreport.rageshake.a.d(a)));
        com.instagram.bugreport.rageshake.a.e(a).execute(new Void[0]);
_L8:
        return;
_L6:
        e.a(az.rageshake_error_low_memory);
        return;
_L4:
        e.a(az.rageshake_error_facebook);
        return;
_L2:
        if (charsequence.equals(com.instagram.bugreport.rageshake.a.f(a).getString(az.rageshake_update_option)))
        {
            com.instagram.bugreport.rageshake.a.a(a, new com.instagram.o.b.a(com.instagram.bugreport.rageshake.a.g(a)));
            com.instagram.bugreport.rageshake.a.h(a).c();
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }
}
