// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;


public interface j
{

    public abstract void onConnect();

    public abstract void onDisconnect(int i, String s);

    public abstract void onError(Exception exception);

    public abstract void onMessage(String s);

    public abstract void onMessage(byte abyte0[]);

    public abstract void onPing();
}
