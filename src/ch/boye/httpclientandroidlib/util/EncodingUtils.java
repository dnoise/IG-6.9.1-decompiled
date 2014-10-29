// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.util;

import java.io.UnsupportedEncodingException;

public final class EncodingUtils
{

    private EncodingUtils()
    {
    }

    public static byte[] getAsciiBytes(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Parameter may not be null");
        }
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes("US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new Error("HttpClient requires ASCII support");
        }
        return abyte0;
    }

    public static String getAsciiString(byte abyte0[])
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Parameter may not be null");
        } else
        {
            return getAsciiString(abyte0, 0, abyte0.length);
        }
    }

    public static String getAsciiString(byte abyte0[], int i, int j)
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Parameter may not be null");
        }
        String s;
        try
        {
            s = new String(abyte0, i, j, "US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new Error("HttpClient requires ASCII support");
        }
        return s;
    }

    public static byte[] getBytes(String s, String s1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("data may not be null");
        }
        if (s1 == null || s1.length() == 0)
        {
            throw new IllegalArgumentException("charset may not be null or empty");
        }
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes(s1);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return s.getBytes();
        }
        return abyte0;
    }

    public static String getString(byte abyte0[], int i, int j, String s)
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Parameter may not be null");
        }
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("charset may not be null or empty");
        }
        String s1;
        try
        {
            s1 = new String(abyte0, i, j, s);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return new String(abyte0, i, j);
        }
        return s1;
    }

    public static String getString(byte abyte0[], String s)
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Parameter may not be null");
        } else
        {
            return getString(abyte0, 0, abyte0.length, s);
        }
    }
}
