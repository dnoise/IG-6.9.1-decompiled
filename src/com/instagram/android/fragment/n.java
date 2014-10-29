// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;
import android.widget.CompoundButton;

// Referenced classes of package com.instagram.android.fragment:
//            k

final class n
    implements android.content.DialogInterface.OnClickListener
{

    final CompoundButton a;
    final k b;

    n(k k, CompoundButton compoundbutton)
    {
        b = k;
        a = compoundbutton;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.performClick();
    }
}
