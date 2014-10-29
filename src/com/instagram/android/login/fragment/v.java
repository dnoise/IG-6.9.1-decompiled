// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.a.f;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.c.a.z;
import com.instagram.android.login.c.m;
import com.instagram.android.login.d;
import com.instagram.base.a.b;
import com.instagram.common.a.a.g;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.o.e;
import com.instagram.user.c.a;
import com.instagram.user.c.i;
import com.instagram.user.c.j;

// Referenced classes of package com.instagram.android.login.fragment:
//            w, x, y, z, 
//            ab, ac

public final class v extends b
    implements c
{

    public final com.instagram.api.j.f a = new x(this);
    private View aa;
    private final BroadcastReceiver ab = new w(this);
    public final android.view.View.OnClickListener b = new y(this);
    private final Handler c = new Handler();
    private com.instagram.common.a.a.k d;
    private a e;
    private boolean f;
    private EditText g;
    private EditText h;
    private d i;

    public v()
    {
    }

    private String V()
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.getText().toString();
        }
    }

    private String W()
    {
        if (h == null)
        {
            return null;
        } else
        {
            return h.getText().toString();
        }
    }

    static a a(v v1)
    {
        return v1.e;
    }

    static a a(v v1, a a1)
    {
        v1.e = a1;
        return a1;
    }

    private void a(int l)
    {
        if (l().getParent() == null)
        {
            return;
        } else
        {
            ((MainTabActivity)l().getParent()).a(l);
            return;
        }
    }

    private void a(View view, a a1)
    {
        if (view == null)
        {
            return;
        } else
        {
            ((CircularImageView)view.findViewById(av.user_profile_picture)).setUrl(a1.f());
            ((TextView)view.findViewById(av.username_textview)).setText(a1.b());
            f = false;
            com.instagram.a.f.a(l()).b(false);
            return;
        }
    }

    static void a(v v1, View view, a a1)
    {
        v1.a(view, a1);
    }

    static boolean a(v v1, boolean flag)
    {
        v1.f = flag;
        return flag;
    }

    private void b()
    {
        if (!i.a())
        {
            com.instagram.o.e.a(i.b());
            return;
        } else
        {
            com.instagram.p.b.au.c();
            d.a((new m(d(), V(), W(), c(), com.instagram.common.z.a.a(n()), com.instagram.common.z.a.b(n()))).a(new com.instagram.android.login.fragment.z(this, this)));
            return;
        }
    }

    static void b(v v1)
    {
        v1.b();
    }

    static View c(v v1)
    {
        return v1.aa;
    }

    private String c()
    {
        return j().getString("argument_reset_token");
    }

    static Handler d(v v1)
    {
        return v1.c;
    }

    private String d()
    {
        return j().getString("argument_user_id");
    }

    static d e(v v1)
    {
        return v1.i;
    }

    public final void F()
    {
        super.F();
        a(8);
    }

    public final void G()
    {
        super.G();
        aa = null;
        a(0);
    }

    public final void H()
    {
        super.H();
        android.support.v4.a.e.a(n()).a(ab);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_password_reset, null);
        g = (EditText)view.findViewById(av.new_password);
        h = (EditText)view.findViewById(av.confirm_new_password);
        g.setTypeface(Typeface.DEFAULT);
        g.setTransformationMethod(new PasswordTransformationMethod());
        h.setTypeface(Typeface.DEFAULT);
        h.setTransformationMethod(new PasswordTransformationMethod());
        i = new d(o(), g, h);
        i.a(new ab(this));
        h.setOnEditorActionListener(new ac(this));
        if (e != null)
        {
            a(view, e);
        }
        return view;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        com.instagram.p.b.at.c();
        d = new g(n(), z());
        a a1 = j.a().a(d());
        if (a1 != null)
        {
            f = false;
            e = a1;
        } else
        {
            (new z(n(), z(), com.instagram.common.y.e.a.a(), a)).a(d());
        }
        android.support.v4.a.e.a(n()).a(ab, new IntentFilter("ActivityInTab.BROADCAST_BACK_PRESSED"));
    }

    public final void a(com.instagram.a.b b1)
    {
        aa = b1.c(az.change_password, b);
        aa.setEnabled(i.c());
        b1.b(f);
    }

    public final String j_()
    {
        return "password_reset";
    }

    public final void m_()
    {
        super.m_();
        i.a(null);
        i = null;
        h = null;
        g = null;
    }
}
