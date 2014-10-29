// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;

public interface d
    extends ListAdapter
{

    public abstract View a(int i, View view, ViewGroup viewgroup);

    public abstract boolean b(int i);
}
