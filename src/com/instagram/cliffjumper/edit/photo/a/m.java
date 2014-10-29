// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.facebook.az;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class m extends Handler
{

    final a a;

    m(a a1)
    {
        a = a1;
        super();
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            a.c();
            com.instagram.cliffjumper.edit.photo.a.a.a(a, a.c(az.loading));
        } else
        {
            if (message.what == 4)
            {
                com.instagram.cliffjumper.edit.photo.a.a.V();
                Long.valueOf(SystemClock.elapsedRealtime() - com.instagram.cliffjumper.edit.photo.a.a.b(a));
                com.instagram.cliffjumper.edit.photo.a.a.c(a);
                return;
            }
            if (message.what == 5)
            {
                com.instagram.cliffjumper.edit.photo.a.a.b(a, message.obj.toString());
                return;
            }
        }
    }
}
