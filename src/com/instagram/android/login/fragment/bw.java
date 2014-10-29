// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;


final class bw extends android.text.LoginFilter.UsernameFilterGeneric
{

    private bw()
    {
    }

    bw(byte byte0)
    {
        this();
    }

    public final boolean isAllowed(char c)
    {
        return c != ' ';
    }
}
