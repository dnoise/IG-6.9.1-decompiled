// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.os.Parcel;
import android.support.v4.b.c;

final class bp
    implements c
{

    bp()
    {
    }

    private static ViewPager.SavedState b(Parcel parcel, ClassLoader classloader)
    {
        return new ViewPager.SavedState(parcel, classloader);
    }

    private static ViewPager.SavedState[] b(int i)
    {
        return new ViewPager.SavedState[i];
    }

    public final Object a(Parcel parcel, ClassLoader classloader)
    {
        return b(parcel, classloader);
    }

    public final Object[] a(int i)
    {
        return b(i);
    }
}
