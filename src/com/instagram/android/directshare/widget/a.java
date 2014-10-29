// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.view.View;
import com.instagram.ui.f.b;

// Referenced classes of package com.instagram.android.directshare.widget:
//            DirectShareRecipientView

final class a
    implements android.view.View.OnClickListener
{

    final DirectShareRecipientView a;

    a(DirectShareRecipientView directsharerecipientview)
    {
        a = directsharerecipientview;
        super();
    }

    public final void onClick(View view)
    {
        DirectShareRecipientView.a(a).c();
    }
}
