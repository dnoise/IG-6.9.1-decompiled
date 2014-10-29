// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.activity:
//            MainTabActivity

final class m
    implements android.content.DialogInterface.OnClickListener
{

    final MainTabActivity a;

    m(MainTabActivity maintabactivity)
    {
        a = maintabactivity;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.finish();
    }
}
