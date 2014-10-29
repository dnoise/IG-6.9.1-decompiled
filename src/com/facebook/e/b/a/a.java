// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.b.a;

import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicReference;

public final class a
{

    private static AtomicReference a = new AtomicReference(null);

    public static Parcelable a(Parcelable parcelable)
    {
        if (parcelable != null)
        {
            parcelable.toString();
            parcelable = b(parcelable);
        }
        return parcelable;
    }

    public static Parcelable b(Parcelable parcelable)
    {
        a.get();
        return parcelable;
    }

}
