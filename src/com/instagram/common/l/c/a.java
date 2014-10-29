// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.l.c;

import java.io.Closeable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class a
{

    private static final Logger a = Logger.getLogger(com/instagram/common/l/c/a.getName());

    private a()
    {
    }

    public static void a(Closeable closeable)
    {
        try
        {
            a(closeable, true);
            return;
        }
        catch (IOException ioexception)
        {
            a.log(Level.SEVERE, "IOException should not have been thrown.", ioexception);
        }
    }

    public static void a(Closeable closeable, boolean flag)
    {
        if (closeable == null)
        {
            return;
        }
        try
        {
            closeable.close();
            return;
        }
        catch (IOException ioexception)
        {
            if (flag)
            {
                a.log(Level.WARNING, "IOException thrown while closing Closeable.", ioexception);
                return;
            } else
            {
                throw ioexception;
            }
        }
    }

}
