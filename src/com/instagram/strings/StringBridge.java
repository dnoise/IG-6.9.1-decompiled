// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.strings;

import com.facebook.k.a;

public class StringBridge
{

    private static boolean a = false;

    public static boolean a()
    {
        return a;
    }

    public static native String getInstagramString(String s);

    public static native String getSignatureString(byte abyte0[]);

    static 
    {
        try
        {
            com.facebook.k.a.a("cryptox");
            com.facebook.k.a.a("scrambler");
            com.facebook.k.a.a("strings");
        }
        catch (Throwable throwable)
        {
            a = true;
        }
    }
}
