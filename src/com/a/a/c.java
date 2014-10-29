// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;

import java.io.DataInputStream;
import java.io.InputStream;

public final class c extends DataInputStream
{

    public c(InputStream inputstream)
    {
        super(inputstream);
    }

    public final byte[] a(int i)
    {
        byte abyte0[] = new byte[i];
        readFully(abyte0);
        return abyte0;
    }
}
