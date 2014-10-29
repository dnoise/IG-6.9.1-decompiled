// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


public class RealtimePatchTuple
{

    public final boolean isTombstone;
    public final String timestamp;

    public RealtimePatchTuple(boolean flag, String s)
    {
        isTombstone = flag;
        timestamp = s;
    }
}
