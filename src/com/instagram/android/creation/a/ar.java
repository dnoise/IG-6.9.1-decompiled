// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.b.e;
import com.instagram.a.c;
import com.instagram.android.a.a;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.widget.IgAutoCompleteTextView;
import com.instagram.android.widget.r;
import com.instagram.android.widget.s;
import com.instagram.android.widget.v;
import com.instagram.android.widget.x;
import com.instagram.base.a.b;
import com.instagram.common.ui.widget.imageview.ConstrainedImageView;
import com.instagram.common.y.f;
import com.instagram.sharelater.ShareLaterMedia;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.creation.a:
//            au, as, at

public final class ar extends b
    implements c, v
{

    private IgAutoCompleteTextView a;
    private Handler b;
    private ShareLaterMedia c;
    private s d;
    private View e;
    private int f;
    private e g;
    private List h;
    private com.instagram.api.j.a i;

    public ar()
    {
        b = new Handler();
        i = new au(this);
    }

    private void a(int j)
    {
        if (l().getParent() instanceof MainTabActivity)
        {
            ((MainTabActivity)l().getParent()).a(j);
        }
    }

    static void a(ar ar1)
    {
        ar1.c();
    }

    static IgAutoCompleteTextView b(ar ar1)
    {
        return ar1.a;
    }

    private boolean b()
    {
        for (Iterator iterator = h.iterator(); iterator.hasNext();)
        {
            if (((x)iterator.next()).a(c))
            {
                return true;
            }
        }

        return false;
    }

    static ShareLaterMedia c(ar ar1)
    {
        return ar1.c;
    }

    private void c()
    {
        d.a(c);
        d();
    }

    static com.instagram.api.j.a d(ar ar1)
    {
        return ar1.i;
    }

    private void d()
    {
        if (e != null)
        {
            e.setEnabled(b());
        }
    }

    static Handler e(ar ar1)
    {
        return ar1.b;
    }

    public final void F()
    {
        super.F();
        f = l().getRequestedOrientation();
        l().setRequestedOrientation(-1);
        l().getWindow().setSoftInputMode(16);
    }

    public final void G()
    {
        super.G();
        com.instagram.common.y.f.a(l(), a);
        l().setRequestedOrientation(f);
        l().getWindow().setSoftInputMode(0);
        e = null;
    }

    public final void H()
    {
        super.H();
        if (l().getParent() != null && (l().getParent() instanceof MainTabActivity))
        {
            a(0);
        }
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.share_later, viewgroup, false);
        ((ConstrainedImageView)view.findViewById(av.metadata_imageview)).setUrl(c.a());
        a = (IgAutoCompleteTextView)view.findViewById(av.caption_text_view);
        a.setText(c.c());
        a.setAdapter(new a(l()));
        int j = o().getDimensionPixelSize(at.autocomplete_list_item_height);
        a.setDropDownMaxNumberItemsDisplayed$2549578(j);
        if (c.d())
        {
            view.findViewById(av.caption_video_overlay).setVisibility(0);
        }
        h = x.a(n(), c);
        d = new s(n(), h);
        d.setOnSharingToggleListener(this);
        int l = o().getDimensionPixelSize(at.row_padding);
        d.setPadding(l, 0, l, l);
        d.a(c);
        ((ViewGroup)view.findViewById(av.share_later_content)).addView(d);
        return view;
    }

    public final void a(int j, int l, Intent intent)
    {
        r.a(j, l, intent, g, c);
        c();
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        c = (ShareLaterMedia)j().getParcelable("ShareLaterMedia.SHARE_LATER_MEDIA");
        a(8);
        g = new as(this, this, c);
    }

    public final void a(com.instagram.a.b b1)
    {
        e = b1.c(az.share, new com.instagram.android.creation.a.at(this));
        d();
    }

    public final void a(x x1)
    {
        x1.a(c, this, g);
        c();
    }

    public final String j_()
    {
        return "share_later";
    }

    public final void m_()
    {
        super.m_();
        a = null;
        d = null;
    }
}
