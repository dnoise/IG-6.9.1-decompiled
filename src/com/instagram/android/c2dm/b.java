// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c2dm;

import android.net.Uri;

public final class b
{

    public static Uri a(String s)
    {
        return (new android.net.Uri.Builder()).scheme("ig").authority("notif").appendPath(s).build();
    }

    public static Uri a(String s, String s1)
    {
        return (new android.net.Uri.Builder()).scheme("ig").authority("notif").appendPath(s).appendPath(s1).build();
    }
}
