// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ba;

public final class f extends Dialog
{

    public f(Context context)
    {
        super(context, ba.IgDialog);
        setContentView(aw.progress_dialog);
        setCancelable(false);
    }

    public final void a(String s)
    {
        TextView textview = (TextView)findViewById(av.message);
        textview.setVisibility(0);
        textview.setText(s);
    }
}
