// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ba;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.y.f;
import com.instagram.ui.menu.r;

// Referenced classes of package com.instagram.ui.dialog:
//            d, c, e

public final class b
{

    private final Context a;
    private final Dialog b;
    private final ListView c;
    private final View d;
    private final View e;
    private final TextView f;
    private final CircularImageView g;
    private final TextView h;
    private final TextView i;
    private final View j;
    private final TextView k;
    private final TextView l;
    private final TextView m;
    private final View n;
    private final ViewGroup o;

    public b(Context context)
    {
        this(context, aw.alert_dialog, ba.IgDialog);
        c.setVisibility(8);
        c.setBackgroundDrawable(null);
    }

    public b(Context context, int i1, int j1)
    {
        a = context;
        b = new Dialog(context, j1);
        b.setContentView(i1);
        c = (ListView)b.findViewById(0x102000a);
        d = b.findViewById(av.scrollView);
        e = b.findViewById(av.alertTitleContainer);
        f = (TextView)b.findViewById(av.alertTitle);
        g = (CircularImageView)b.findViewById(av.message_avatar);
        h = (TextView)b.findViewById(av.message);
        i = (TextView)b.findViewById(av.link);
        j = b.findViewById(av.button_group);
        k = (TextView)b.findViewById(av.button_positive);
        l = (TextView)b.findViewById(av.button_negative);
        n = b.findViewById(av.button_divider);
        m = (TextView)b.findViewById(av.button_blue);
        o = (ViewGroup)b.findViewById(av.customViewHolder);
    }

    static Context a(b b1)
    {
        return b1.a;
    }

    private void a(String s, android.content.DialogInterface.OnClickListener onclicklistener, TextView textview, int i1)
    {
        textview.setText(s);
        textview.setOnClickListener(new d(this, onclicklistener, i1));
    }

    static Dialog b(b b1)
    {
        return b1.b;
    }

    private b c(String s, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        a(s, onclicklistener, m, -1);
        m.setVisibility(0);
        return this;
    }

    public final b a(int i1)
    {
        f.setText(i1);
        e.setVisibility(0);
        return this;
    }

    public final b a(int i1, int j1, String s)
    {
        SpannableString spannablestring = new SpannableString(a.getString(i1));
        spannablestring.setSpan(new UnderlineSpan(), 0, spannablestring.length(), 0);
        i.setText(spannablestring);
        i.setOnClickListener(new c(this, s, j1));
        i.setVisibility(0);
        return this;
    }

    public final b a(int i1, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        return c(a.getString(i1), onclicklistener);
    }

    public final b a(android.content.DialogInterface.OnDismissListener ondismisslistener)
    {
        b.setOnDismissListener(ondismisslistener);
        return this;
    }

    public final b a(View view)
    {
        o.addView(view);
        o.setVisibility(0);
        return this;
    }

    public final b a(CharSequence charsequence)
    {
        h.setText(charsequence);
        d.setVisibility(0);
        return this;
    }

    public final b a(String s)
    {
        g.setUrl(s);
        g.setVisibility(0);
        return this;
    }

    public final b a(String s, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        a(s, onclicklistener, k, -1);
        if (j != null)
        {
            j.setVisibility(0);
        }
        return this;
    }

    public final b a(boolean flag)
    {
        b.setCancelable(flag);
        return this;
    }

    public final b a(CharSequence acharsequence[], android.content.DialogInterface.OnClickListener onclicklistener)
    {
        r r1 = new r(a);
        c.setOnItemClickListener(new e(this, onclicklistener));
        r1.a(acharsequence);
        c.setAdapter(r1);
        c.setVisibility(0);
        return this;
    }

    public final void a()
    {
        b.dismiss();
    }

    public final b b()
    {
        h.setGravity(17);
        return this;
    }

    public final b b(int i1)
    {
        return a(a.getText(i1));
    }

    public final b b(int i1, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        return a(a.getString(i1), onclicklistener);
    }

    public final b b(String s)
    {
        f.setText(s);
        e.setVisibility(0);
        return this;
    }

    public final b b(String s, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        a(s, onclicklistener, l, -2);
        l.setVisibility(0);
        n.setVisibility(0);
        k.setBackgroundResource(au.dialog_bottom_right_button);
        return this;
    }

    public final Dialog c()
    {
        boolean flag = true;
        if (f != null && h != null && e.getVisibility() == 8)
        {
            h.setMinimumHeight((int)com.instagram.common.y.f.a(h.getResources().getDisplayMetrics(), 76));
            h.setGravity(17);
        }
        if (e != null && d != null && j != null && m != null && c != null && c.getVisibility() == 0)
        {
            r r1 = (r)c.getAdapter();
            boolean flag1;
            if (e.getVisibility() != 0 && d.getVisibility() != 0)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            r1.a(flag1);
            if (j.getVisibility() == 0 || m.getVisibility() == 0)
            {
                flag = false;
            }
            r1.b(flag);
        }
        return b;
    }

    public final b c(int i1, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        return b(a.getString(i1), onclicklistener);
    }

    public final b d()
    {
        b.setCanceledOnTouchOutside(true);
        return this;
    }
}
