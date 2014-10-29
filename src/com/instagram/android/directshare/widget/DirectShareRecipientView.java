// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.ui.c.a;
import com.instagram.ui.c.b;

// Referenced classes of package com.instagram.android.directshare.widget:
//            e, a, d, c, 
//            b

public class DirectShareRecipientView extends CircularImageView
    implements b
{

    private android.view.View.OnFocusChangeListener b;
    private d c;
    private com.instagram.ui.f.b d;

    public DirectShareRecipientView(Context context)
    {
        super(context);
        d();
    }

    public DirectShareRecipientView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d();
    }

    public DirectShareRecipientView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d();
    }

    static com.instagram.ui.f.b a(DirectShareRecipientView directsharerecipientview)
    {
        return directsharerecipientview.d;
    }

    static d b(DirectShareRecipientView directsharerecipientview)
    {
        return directsharerecipientview.c;
    }

    static android.view.View.OnFocusChangeListener c(DirectShareRecipientView directsharerecipientview)
    {
        return directsharerecipientview.b;
    }

    private void d()
    {
        super.setClickable(true);
        super.setFocusable(true);
        super.setFocusableInTouchMode(true);
        super.setOnFocusChangeListener(new e(this, (byte)0));
        super.setOnClickListener(new com.instagram.android.directshare.widget.a(this));
    }

    public final void a()
    {
        if (c != null)
        {
            c.a(this);
        }
    }

    public boolean onCheckIsTextEditor()
    {
        return true;
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        editorinfo.inputType = 0;
        if (!onCheckIsTextEditor())
        {
            return null;
        } else
        {
            return new a(new c(this, this), this);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 67 && c != null)
        {
            c.a(this);
        }
        return super.onKeyUp(i, keyevent);
    }

    public void setOnDeleteKeyListener(d d1)
    {
        c = d1;
    }

    public void setOnFocusChangeListener(android.view.View.OnFocusChangeListener onfocuschangelistener)
    {
        b = onfocuschangelistener;
    }

    public void setTooltipString(String s)
    {
        com.instagram.ui.g.a a1 = new com.instagram.ui.g.a(LayoutInflater.from(getContext()), getContext().getResources().getDisplayMetrics());
        a1.a(s);
        a1.b(new com.instagram.android.directshare.widget.b(this));
        d = com.instagram.ui.f.a.a().a(this).a(a1).a(getContext());
    }
}
