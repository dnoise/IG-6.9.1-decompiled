// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.b;
import com.instagram.android.feed.a.h;
import com.instagram.feed.a.i;
import java.util.Map;

// Referenced classes of package com.instagram.android.fragment:
//            eu, ck

public final class cj extends eu
{

    public cj()
    {
    }

    private void as()
    {
        View view = LayoutInflater.from(n()).inflate(aw.load_more_empty, (ViewGroup)E(), false);
        view.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-2, -2, 17));
        view.setPadding(0, 0, 0, 0);
        ((ViewGroup)E()).addView(view);
        v_().setEmptyView(view);
    }

    protected final int Y()
    {
        return h.b;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        c(true);
    }

    public final void a(b b1)
    {
        super.a(b1);
        b1.a(az.likes);
    }

    public final void a(Map map)
    {
        map.put("src", "liked");
    }

    protected final void b(i i, boolean flag)
    {
        super.b(i, flag);
        as();
    }

    protected final com.instagram.feed.a.h d(boolean flag)
    {
        return new ck(this, af(), flag);
    }

    public final String j_()
    {
        return "feed_liked";
    }
}
