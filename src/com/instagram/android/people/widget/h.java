// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.os.Parcel;

final class h
    implements android.os.Parcelable.Creator
{

    h()
    {
    }

    private static PeopleTagsInteractiveLayout.UnnamedTagSavedState a(Parcel parcel)
    {
        return new PeopleTagsInteractiveLayout.UnnamedTagSavedState(parcel);
    }

    private static PeopleTagsInteractiveLayout.UnnamedTagSavedState[] a(int i)
    {
        return new PeopleTagsInteractiveLayout.UnnamedTagSavedState[i];
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public final Object[] newArray(int i)
    {
        return a(i);
    }
}
