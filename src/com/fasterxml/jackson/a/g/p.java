// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;

import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.a.x;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.regex.Pattern;

public final class p
{

    private static final Pattern a = Pattern.compile("[-_./;:]");

    private static int a(String s)
    {
        int i = 0;
        String s1 = s.toString();
        int j = s1.length();
        int k = 0;
        do
        {
            if (i >= j)
            {
                break;
            }
            char c = s1.charAt(i);
            if (c > '9' || c < '0')
            {
                break;
            }
            k = k * 10 + (c - 48);
            i++;
        } while (true);
        return k;
    }

    private static w a(Reader reader)
    {
        BufferedReader bufferedreader = new BufferedReader(reader);
        String s4 = bufferedreader.readLine();
        String s1 = s4;
        if (s1 == null) goto _L2; else goto _L1
_L1:
        String s8 = bufferedreader.readLine();
        String s;
        String s5;
        s = s8;
        s5 = null;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        String s9 = bufferedreader.readLine();
        s5 = s9;
_L6:
        bufferedreader.close();
        String s2;
        String s3;
        String s7 = s5;
        s2 = s;
        s3 = s7;
_L3:
        if (s2 != null)
        {
            s2 = s2.trim();
        }
        if (s3 != null)
        {
            s3 = s3.trim();
        }
        return a(s1, s2, s3);
        IOException ioexception3;
        ioexception3;
        String s6 = s5;
        s2 = s;
        s3 = s6;
          goto _L3
        IOException ioexception1;
        ioexception1;
        s = null;
        s1 = null;
_L4:
        bufferedreader.close();
        s2 = s;
        s3 = null;
          goto _L3
        IOException ioexception2;
        ioexception2;
        s2 = s;
        s3 = null;
          goto _L3
        Exception exception;
        exception;
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception) { }
        throw exception;
        IOException ioexception4;
        ioexception4;
        s = null;
          goto _L4
        IOException ioexception5;
        ioexception5;
          goto _L4
_L2:
        s = null;
        s5 = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static w a(Class class1)
    {
        InputStream inputstream;
        w w1 = b(class1);
        if (w1 != null)
        {
            return w1;
        }
        inputstream = class1.getResourceAsStream("VERSION.txt");
        if (inputstream == null)
        {
            return w.a();
        }
        InputStreamReader inputstreamreader = new InputStreamReader(inputstream, "UTF-8");
        w w3 = a(((Reader) (inputstreamreader)));
        inputstreamreader.close();
_L2:
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception4)
        {
            throw new RuntimeException(ioexception4);
        }
        return w3;
        Exception exception;
        exception;
        Exception exception1;
        UnsupportedEncodingException unsupportedencodingexception;
        w w2;
        IOException ioexception3;
        try
        {
            inputstreamreader.close();
        }
        catch (IOException ioexception) { }
        throw exception;
        unsupportedencodingexception;
        w2 = w.a();
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception2)
        {
            throw new RuntimeException(ioexception2);
        }
        return w2;
        exception1;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception1)
        {
            throw new RuntimeException(ioexception1);
        }
        throw exception1;
        ioexception3;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static w a(String s, String s1, String s2)
    {
        String s3;
        if (s != null)
        {
            if ((s3 = s.trim()).length() != 0)
            {
                String as[] = a.split(s3);
                int i = a(as[0]);
                int j;
                int k;
                int l;
                String s4;
                if (as.length > 1)
                {
                    j = a(as[1]);
                } else
                {
                    j = 0;
                }
                if (as.length > 2)
                {
                    k = a(as[2]);
                } else
                {
                    k = 0;
                }
                l = as.length;
                s4 = null;
                if (l > 3)
                {
                    s4 = as[3];
                }
                return new w(i, j, k, s4, s1, s2);
            }
        }
        return null;
    }

    public static final void a()
    {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }

    private static w b(Class class1)
    {
        Class class2;
        Object obj;
        try
        {
            class2 = Class.forName((new StringBuilder(class1.getPackage().getName())).append(".PackageVersion").toString(), true, class1.getClassLoader());
        }
        catch (Exception exception)
        {
            return null;
        }
        if (class2 == null)
        {
            return null;
        }
        try
        {
            obj = class2.newInstance();
        }
        catch (RuntimeException runtimeexception)
        {
            throw runtimeexception;
        }
        catch (Exception exception1)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to instantiate ")).append(class2.getName()).append(" to find version information, problem: ").append(exception1.getMessage()).toString(), exception1);
        }
        if (!(obj instanceof x))
        {
            throw new IllegalArgumentException((new StringBuilder("Bad version class ")).append(class2.getName()).append(": does not implement ").append(com/fasterxml/jackson/a/x.getName()).toString());
        } else
        {
            return ((x)obj).version();
        }
    }

}
