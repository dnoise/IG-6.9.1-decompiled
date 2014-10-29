// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.os.Handler;
import android.os.Message;
import android.widget.CompoundButton;
import android.widget.Toast;
import com.facebook.az;

// Referenced classes of package com.instagram.android.creation.a:
//            t

final class w extends Handler
{

    final t a;

    w(t t1)
    {
        a = t1;
        super();
    }

    public final void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            break;
        }
        if (a.u())
        {
            String s = a.c(az.failed_to_detect_location);
            Toast.makeText(a.l(), s, 0).show();
        }
        t.b(a).setChecked(false);
        t.a(a);
    }
}
