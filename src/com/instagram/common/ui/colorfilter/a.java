// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.colorfilter;

import android.graphics.ColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.util.SparseArray;

public final class a
{

    private static final SparseArray a = new SparseArray();

    public static ColorFilter a(int i)
    {
        Object obj = (ColorFilter)a.get(i);
        if (obj == null)
        {
            obj = new PorterDuffColorFilter(i, android.graphics.PorterDuff.Mode.SRC_ATOP);
            a.put(i, obj);
        }
        return ((ColorFilter) (obj));
    }

}
