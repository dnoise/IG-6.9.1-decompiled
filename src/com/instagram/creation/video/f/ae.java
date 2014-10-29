// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Message;
import android.view.View;

// Referenced classes of package com.instagram.creation.video.f:
//            ad

final class ae
    implements android.os.Handler.Callback
{

    final ad a;

    ae(ad ad1)
    {
        a = ad1;
        super();
    }

    public final boolean handleMessage(Message message)
    {
        if (message.what == 5)
        {
            if (ad.a(a) != null)
            {
                ad.a(a).setVisibility(8);
            }
        } else
        if (message.what == 6)
        {
            if (ad.a(a) != null)
            {
                ad.a(a).setVisibility(0);
                return true;
            }
        } else
        {
            return false;
        }
        return true;
    }
}
