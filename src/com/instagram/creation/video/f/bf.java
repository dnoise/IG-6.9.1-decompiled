// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.instagram.a.d;
import com.instagram.a.e;
import com.instagram.base.a.b;
import com.instagram.creation.base.ui.a;

// Referenced classes of package com.instagram.creation.video.f:
//            bg, bh

public abstract class bf extends b
{

    public bf()
    {
    }

    private void a(View view)
    {
        View view1 = view.findViewById(av.action_bar_button_back);
        if (com.instagram.creation.base.ui.a.b(o()))
        {
            view1.setBackgroundDrawable(new d(o(), e.a, 5));
        }
        view1.setOnClickListener(new bg(this));
    }

    private void b(View view)
    {
        view.findViewById(av.action_bar_button_next).setOnClickListener(new bh(this));
    }

    private void c(View view)
    {
        if (com.instagram.creation.base.ui.a.b(o()))
        {
            ((TextView)view.findViewById(av.action_bar_textview_title)).setText(V());
        }
    }

    public abstract String V();

    protected final com.instagram.creation.b.a.b W()
    {
        String s = j().getString("pendingMediaKey");
        return com.instagram.creation.b.d.a.a().a(s);
    }

    public void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        a(view);
        b(view);
        c(view);
    }

    public abstract void c();

    public abstract void d();
}
