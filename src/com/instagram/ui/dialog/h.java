// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.dialog;

import android.content.DialogInterface;
import android.view.KeyEvent;

// Referenced classes of package com.instagram.ui.dialog:
//            g

final class h
    implements android.content.DialogInterface.OnKeyListener
{

    final g a;

    h(g g)
    {
        a = g;
        super();
    }

    public final boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        return i == 4;
    }
}
