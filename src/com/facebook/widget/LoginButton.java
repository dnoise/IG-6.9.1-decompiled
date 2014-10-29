// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.widget.Button;
import com.facebook.as;
import com.facebook.at;
import com.facebook.au;
import com.facebook.az;
import com.facebook.bb;
import com.facebook.bc;
import com.facebook.bo;
import com.facebook.cc;
import com.facebook.cf;
import com.facebook.cg;
import com.facebook.g.q;
import com.facebook.g.t;
import com.facebook.h.h;
import com.facebook.z;
import java.util.List;

// Referenced classes of package com.facebook.widget:
//            c, d, b, a, 
//            g, f

public class LoginButton extends Button
{

    private static final String a = com/facebook/widget/LoginButton.getName();
    private String b;
    private q c;
    private h d;
    private bo e;
    private boolean f;
    private boolean g;
    private String h;
    private String i;
    private g j;
    private Fragment k;
    private c l;

    public LoginButton(Context context)
    {
        super(context);
        b = null;
        d = null;
        e = null;
        l = new c();
        a(context);
        b();
    }

    public LoginButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = null;
        d = null;
        e = null;
        l = new c();
        if (attributeset.getStyleAttribute() == 0)
        {
            setTextColor(getResources().getColor(as.com_facebook_loginview_text_color));
            setTextSize(0, getResources().getDimension(at.com_facebook_loginview_text_size));
            setPadding(getResources().getDimensionPixelSize(at.com_facebook_loginview_padding_left), getResources().getDimensionPixelSize(at.com_facebook_loginview_padding_top), getResources().getDimensionPixelSize(at.com_facebook_loginview_padding_right), getResources().getDimensionPixelSize(at.com_facebook_loginview_padding_bottom));
            setWidth(getResources().getDimensionPixelSize(at.com_facebook_loginview_width));
            setHeight(getResources().getDimensionPixelSize(at.com_facebook_loginview_height));
            setGravity(17);
            if (isInEditMode())
            {
                setBackgroundColor(getResources().getColor(as.com_facebook_blue));
                h = "Log in";
            } else
            {
                setBackgroundResource(au.com_facebook_loginbutton_blue);
            }
        }
        a(attributeset);
        if (!isInEditMode())
        {
            a(context);
        }
    }

    public LoginButton(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        b = null;
        d = null;
        e = null;
        l = new c();
        a(attributeset);
        a(context);
    }

    static q a(LoginButton loginbutton)
    {
        return loginbutton.c;
    }

    static h a(LoginButton loginbutton, h h1)
    {
        loginbutton.d = h1;
        return h1;
    }

    static String a()
    {
        return a;
    }

    private void a(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, bb.com_facebook_login_view);
        f = typedarray.getBoolean(bb.com_facebook_login_view_confirm_logout, true);
        g = typedarray.getBoolean(bb.com_facebook_login_view_fetch_user_info, true);
        h = typedarray.getString(bb.com_facebook_login_view_login_text);
        i = typedarray.getString(bb.com_facebook_login_view_logout_text);
        typedarray.recycle();
    }

    private static boolean a(Context context)
    {
        if (context != null)
        {
            bo bo1 = bo.g();
            if (bo1 != null)
            {
                return bo1.a();
            }
            if (t.a(context) != null && bo.a(context) != null)
            {
                return true;
            }
        }
        return false;
    }

    static g b(LoginButton loginbutton)
    {
        return loginbutton.j;
    }

    private void b()
    {
        setOnClickListener(new d(this, (byte)0));
        c();
        if (!isInEditMode())
        {
            c = new q(getContext(), new b(this, (byte)0));
            d();
        }
    }

    static h c(LoginButton loginbutton)
    {
        return loginbutton.d;
    }

    private void c()
    {
        if (c != null && c.b() != null)
        {
            String s1;
            if (i != null)
            {
                s1 = i;
            } else
            {
                s1 = getResources().getString(az.com_facebook_loginview_log_out_button);
            }
            setText(s1);
            return;
        }
        String s;
        if (h != null)
        {
            s = h;
        } else
        {
            s = getResources().getString(az.com_facebook_loginview_log_in_button);
        }
        setText(s);
    }

    private void d()
    {
        if (g)
        {
            bo bo1 = c.b();
            if (bo1 != null)
            {
                if (bo1 != e)
                {
                    bc.a(new bc[] {
                        bc.a(bo1, new a(this, bo1))
                    });
                    e = bo1;
                }
            } else
            {
                d = null;
                if (j != null)
                {
                    g _tmp = j;
                    h _tmp1 = d;
                    return;
                }
            }
        }
    }

    static boolean d(LoginButton loginbutton)
    {
        return loginbutton.f;
    }

    static String e(LoginButton loginbutton)
    {
        return loginbutton.b;
    }

    static Fragment f(LoginButton loginbutton)
    {
        return loginbutton.k;
    }

    static c g(LoginButton loginbutton)
    {
        return loginbutton.l;
    }

    static void h(LoginButton loginbutton)
    {
        loginbutton.d();
    }

    static void i(LoginButton loginbutton)
    {
        loginbutton.c();
    }

    final void a(Exception exception)
    {
label0:
        {
            if (com.facebook.widget.c.f(l) != null)
            {
                if (!(exception instanceof z))
                {
                    break label0;
                }
                com.facebook.widget.c.f(l);
            }
            return;
        }
        com.facebook.widget.c.f(l);
        new z(exception);
    }

    public cf getDefaultAudience()
    {
        return l.b();
    }

    public cg getLoginBehavior()
    {
        return l.d();
    }

    public f getOnErrorListener()
    {
        return l.a();
    }

    List getPermissions()
    {
        return l.c();
    }

    public cc getSessionStatusCallback()
    {
        return l.e();
    }

    public g getUserInfoChangedCallback()
    {
        return j;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (c != null && !c.e())
        {
            c.c();
            d();
            c();
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (c != null)
        {
            c.d();
        }
    }

    public void onFinishInflate()
    {
        super.onFinishInflate();
        b();
    }

    public void setApplicationId(String s)
    {
        b = s;
    }

    public void setDefaultAudience(cf cf)
    {
        l.a(cf);
    }

    public void setFragment(Fragment fragment)
    {
        k = fragment;
    }

    public void setLoginBehavior(cg cg)
    {
        l.a(cg);
    }

    public void setOnErrorListener(f f1)
    {
        l.a(f1);
    }

    void setProperties(c c1)
    {
        l = c1;
    }

    public void setPublishPermissions(List list)
    {
        l.b(list, c.a());
    }

    public void setReadPermissions(List list)
    {
        l.a(list, c.a());
    }

    public void setSession(bo bo1)
    {
        c.a(bo1);
        d();
        c();
    }

    public void setSessionStatusCallback(cc cc)
    {
        l.a(cc);
    }

    public void setUserInfoChangedCallback(g g1)
    {
        j = g1;
    }

}
