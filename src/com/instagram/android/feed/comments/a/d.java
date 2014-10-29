// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a

final class d
    implements android.content.DialogInterface.OnClickListener
{

    final a a;

    d(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(com.instagram.api.h.d.a("http://help.instagram.com/customer/portal/articles/245800-reducing-comment-spam", a.n())));
        a.a(intent);
    }
}
