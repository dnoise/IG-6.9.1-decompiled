// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.os.Parcel;

final class c
    implements android.os.Parcelable.Creator
{

    c()
    {
    }

    private static MultiQuestionSurvey.Question a(Parcel parcel)
    {
        return new MultiQuestionSurvey.Question(parcel, (byte)0);
    }

    private static MultiQuestionSurvey.Question[] a(int i)
    {
        return new MultiQuestionSurvey.Question[i];
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
