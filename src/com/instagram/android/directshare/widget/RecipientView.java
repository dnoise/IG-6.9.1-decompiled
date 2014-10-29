// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.a.a;
import com.instagram.common.ui.widget.imageview.IgImageView;

public class RecipientView extends FrameLayout
{

    private static final a a = new a();
    private IgImageView b;
    private ImageView c;

    public RecipientView(Context context)
    {
        super(context);
        a();
    }

    public RecipientView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public RecipientView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        LayoutInflater.from(getContext()).inflate(aw.layout_directshare_recipient, this);
        b = (IgImageView)findViewById(av.avatar);
        c = (ImageView)findViewById(av.badge);
    }

    public final void a(boolean flag, boolean flag1, boolean flag2, boolean flag3)
    {
        if (flag)
        {
            c.setImageResource(au.permalink_badge_heart);
            c.setVisibility(0);
            a.a(b);
            return;
        }
        if (flag1)
        {
            c.setImageResource(au.permalink_badge_commented);
            c.setVisibility(0);
            a.a(b);
            return;
        }
        if (flag2)
        {
            if (flag3)
            {
                c.setImageResource(au.permalink_badge_seen);
                c.setVisibility(0);
            } else
            {
                c.setVisibility(4);
            }
            a.a(b);
            return;
        } else
        {
            c.setVisibility(4);
            a.a(b, 0.4F);
            return;
        }
    }

    public void setAvatarUrl(String s)
    {
        b.setUrl(s);
    }

}
