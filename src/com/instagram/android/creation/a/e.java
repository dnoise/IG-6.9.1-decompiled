// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import com.instagram.common.y.f;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class e extends Handler
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            f.a(a.n(), a.E());
        } else
        if (message.what == 2)
        {
            if (d.a(a))
            {
                d.b(a);
            }
            d.c(a);
            if (!d.d(a).hasFocus())
            {
                f.a(a.n(), a.E());
                return;
            }
        }
    }
}
