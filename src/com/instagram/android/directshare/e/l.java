// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import com.facebook.az;

final class l extends Enum
{

    public static final l a;
    public static final l b;
    public static final l c;
    private static final l e[];
    private int d;

    private l(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(com/instagram/android/directshare/e/l, s);
    }

    public static l[] values()
    {
        return (l[])e.clone();
    }

    static 
    {
        a = new l("IGNORE", 0, az.directshare_requested_direct_shares_ignore_failed);
        b = new l("ACCEPT", 1, az.directshare_requested_direct_shares_accept_failed);
        c = new l("IGNORE_ALL", 2, az.directshare_requested_direct_shares_ignore_all_failed);
        l al[] = new l[3];
        al[0] = a;
        al[1] = b;
        al[2] = c;
        e = al;
    }
}
