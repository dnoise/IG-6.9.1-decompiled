// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.a.e;
import com.instagram.base.activity.d;

// Referenced classes of package com.instagram.android.activity:
//            ae, ac, ad

public abstract class ab extends d
{

    protected Handler p;

    public ab()
    {
        p = new Handler();
    }

    protected final void b(String s)
    {
        p.post(new ae(this, s));
    }

    protected abstract String f();

    protected abstract void g();

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if ((double)getResources().getDisplayMetrics().density >= 1.5D)
        {
            getWindow().setSoftInputMode(4);
        }
        setContentView(aw.activity_xauth);
        ((TextView)findViewById(av.action_bar_textview_title)).setText(f());
        View view = findViewById(av.action_bar_button_back);
        view.setOnClickListener(new ac(this));
        view.setBackgroundDrawable(new com.instagram.a.d(getResources(), e.a, 5));
        findViewById(av.follow_instagram_container).setOnClickListener(new ad(this));
        g();
    }
}
