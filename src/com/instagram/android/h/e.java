// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.h;


final class e
{

    static final int a[];

    static 
    {
        a = new int[com.instagram.realtimeclient.RealtimeOperation.Type.values().length];
        try
        {
            a[com.instagram.realtimeclient.RealtimeOperation.Type.add.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[com.instagram.realtimeclient.RealtimeOperation.Type.remove.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[com.instagram.realtimeclient.RealtimeOperation.Type.replace.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2)
        {
            return;
        }
    }
}
