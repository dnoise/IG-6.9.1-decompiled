// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.view.View;
import com.instagram.ui.f.b;

// Referenced classes of package com.instagram.android.directshare.widget:
//            DirectShareRecipientView

final class e
    implements android.view.View.OnFocusChangeListener
{

    final DirectShareRecipientView a;

    private e(DirectShareRecipientView directsharerecipientview)
    {
        a = directsharerecipientview;
        super();
    }

    e(DirectShareRecipientView directsharerecipientview, byte byte0)
    {
        this(directsharerecipientview);
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (DirectShareRecipientView.c(a) != null)
        {
            DirectShareRecipientView.c(a).onFocusChange(view, flag);
        }
        if (flag)
        {
            if (DirectShareRecipientView.a(a) != null)
            {
                DirectShareRecipientView.a(a).a();
            }
        } else
        if (DirectShareRecipientView.a(a) != null)
        {
            DirectShareRecipientView.a(a).b();
            return;
        }
    }
}
