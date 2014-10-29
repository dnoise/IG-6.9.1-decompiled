// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.f;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ax;
import com.instagram.common.ui.widget.imageview.IgImageView;

public final class a extends FrameLayout
{

    private View a;
    private IgImageView b;
    private TextView c;
    private TextView d;
    private View e;
    private int f;
    private int g;

    public a(Context context)
    {
        super(context);
        a();
    }

    private void a()
    {
        LayoutInflater.from(getContext()).inflate(aw.follow_all_header, this, true);
        a = findViewById(av.content);
        b = (IgImageView)findViewById(av.avatar);
        c = (TextView)findViewById(av.username);
        d = (TextView)findViewById(av.message);
        e = findViewById(av.follow_all);
        setUser(null);
        b();
    }

    private void b()
    {
        if (g == 0 || f == 0)
        {
            a.setVisibility(8);
            return;
        }
        a.setVisibility(0);
        Resources resources = getResources();
        int i;
        int j;
        Object aobj[];
        String s;
        if (f == com.instagram.android.k.d.a.b)
        {
            i = ax.found_x_contacts;
        } else
        {
            i = ax.found_x_friends;
        }
        j = g;
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(g);
        s = resources.getQuantityString(i, j, aobj);
        d.setText(s);
    }

    public final void a(int i)
    {
        g = i;
        b();
    }

    public final void setFollowAllEnabled(boolean flag)
    {
        e.setEnabled(flag);
    }

    public final void setOnFollowAll(android.view.View.OnClickListener onclicklistener)
    {
        e.setOnClickListener(onclicklistener);
    }

    public final void setType$1b988d18(int i)
    {
        f = i;
        b();
    }

    public final void setUser(com.instagram.user.c.a a1)
    {
        if (a1 != null)
        {
            b.setVisibility(0);
            c.setVisibility(0);
            b.setUrl(a1.f());
            c.setText(a1.b());
            return;
        } else
        {
            b.setVisibility(8);
            c.setVisibility(8);
            return;
        }
    }
}
