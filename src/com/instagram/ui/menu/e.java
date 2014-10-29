// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.facebook.at;
import com.facebook.aw;
import com.instagram.base.a.c;
import java.util.Collection;

// Referenced classes of package com.instagram.ui.menu:
//            r

public abstract class e extends c
{

    public e()
    {
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.layout_listview, viewgroup, false);
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        a(((android.widget.ListAdapter) (new r(n()))));
    }

    public void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        int i = o().getDimensionPixelSize(at.row_text_padding);
        v_().setPadding(0, i, 0, i);
        v_().setClipToPadding(false);
    }

    protected final void a(Collection collection)
    {
        ((r)c()).a(collection);
    }
}
