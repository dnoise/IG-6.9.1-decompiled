// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.b;

import android.app.Dialog;
import android.content.Context;
import com.facebook.az;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.directshare.b:
//            b

public final class a
{

    public static void a(Context context)
    {
        (new b(context)).b(az.directshare_blocking_education_msg).b(az.directshare_blocking_confirm_button, new com.instagram.android.directshare.b.b(context)).a(true).d().c(az.cancel, null).c().show();
    }
}
