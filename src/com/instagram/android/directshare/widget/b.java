// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.view.View;

// Referenced classes of package com.instagram.android.directshare.widget:
//            DirectShareRecipientView, d

final class b
    implements android.view.View.OnClickListener
{

    final DirectShareRecipientView a;

    b(DirectShareRecipientView directsharerecipientview)
    {
        a = directsharerecipientview;
        super();
    }

    public final void onClick(View view)
    {
        if (DirectShareRecipientView.b(a) != null)
        {
            DirectShareRecipientView.b(a).a(a);
        }
    }
}
