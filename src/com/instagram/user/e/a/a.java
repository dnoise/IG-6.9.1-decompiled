// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.e.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.instagram.user.follow.h;
import java.util.List;

public abstract class a extends com.instagram.ui.d.a
{

    private final h a;

    public a(Context context, h h)
    {
        super(context);
        a = h;
    }

    protected final View a(Context context, int i, ViewGroup viewgroup)
    {
        return com.instagram.user.e.a.a.a.a(context, viewgroup, a);
    }

    public final void a()
    {
        k.clear();
        notifyDataSetChanged();
    }

    protected abstract void a(View view, Context context, int i);

    public final void a(Object obj)
    {
        k.remove(obj);
        notifyDataSetChanged();
    }

    public final void a(List list)
    {
        k.clear();
        k.addAll(list);
        notifyDataSetChanged();
    }
}
