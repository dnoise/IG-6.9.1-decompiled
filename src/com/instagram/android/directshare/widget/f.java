// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.view.View;
import android.view.inputmethod.BaseInputConnection;

// Referenced classes of package com.instagram.android.directshare.widget:
//            DirectShareSearchEditText

final class f extends BaseInputConnection
{

    final DirectShareSearchEditText a;

    f(DirectShareSearchEditText directsharesearchedittext, View view)
    {
        a = directsharesearchedittext;
        super(view, false);
    }
}
