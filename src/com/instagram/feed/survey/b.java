// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.os.Parcel;

final class b
    implements android.os.Parcelable.Creator
{

    b()
    {
    }

    private static MultiQuestionSurvey.PossibleAnswer a(Parcel parcel)
    {
        return new MultiQuestionSurvey.PossibleAnswer(parcel, (byte)0);
    }

    private static MultiQuestionSurvey.PossibleAnswer[] a(int i)
    {
        return new MultiQuestionSurvey.PossibleAnswer[i];
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
