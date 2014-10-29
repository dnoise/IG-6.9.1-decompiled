// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.a;

import com.instagram.feed.d.l;

public final class a extends com.instagram.android.feed.a.a
{

    private boolean e;

    public a(com.instagram.android.fragment.a a1, int i)
    {
        super(a1, i);
    }

    public final void a(boolean flag)
    {
        e = flag;
    }

    protected final boolean b(l l1)
    {
        if (e)
        {
            return super.b(l1) && l1.Y();
        } else
        {
            return super.b(l1);
        }
    }
}
