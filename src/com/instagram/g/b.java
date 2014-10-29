// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.g;

import android.content.DialogInterface;
import com.instagram.simplewebview.SimpleWebViewActivity;

// Referenced classes of package com.instagram.g:
//            a

final class b
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final String b;
    final a c;

    b(a a1, String s, String s1)
    {
        c = a1;
        a = s;
        b = s1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        SimpleWebViewActivity.a(c.l(), a, b);
    }
}
