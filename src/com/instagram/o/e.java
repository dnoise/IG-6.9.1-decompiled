// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o;

import android.widget.Toast;
import com.instagram.common.h.a;

public final class e
{

    public static void a(int i)
    {
        Toast toast = Toast.makeText(com.instagram.common.h.a.a(), i, 0);
        toast.setGravity(49, 0, 0);
        toast.show();
    }

    public static void a(CharSequence charsequence)
    {
        Toast toast = Toast.makeText(com.instagram.common.h.a.a(), charsequence, 0);
        toast.setGravity(49, 0, 0);
        toast.show();
    }
}
