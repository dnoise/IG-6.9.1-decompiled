// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.view.View;
import android.view.inputmethod.BaseInputConnection;

// Referenced classes of package com.instagram.android.directshare.widget:
//            DirectShareRecipientView

final class c extends BaseInputConnection
{

    final DirectShareRecipientView a;

    c(DirectShareRecipientView directsharerecipientview, View view)
    {
        a = directsharerecipientview;
        super(view, false);
    }
}
