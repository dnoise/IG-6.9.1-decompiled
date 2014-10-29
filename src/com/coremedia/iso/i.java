// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import com.coremedia.iso.boxes.a;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Properties;
import java.util.regex.Pattern;

// Referenced classes of package com.coremedia.iso:
//            a, j

public final class i extends com.coremedia.iso.a
{

    Properties b;
    Pattern c;

    public transient i()
    {
        BufferedInputStream bufferedinputstream;
        c = Pattern.compile("(.*)\\((.*?)\\)");
        bufferedinputstream = new BufferedInputStream(getClass().getResourceAsStream("/isoparser-default.properties"));
        b = new Properties();
        Enumeration enumeration;
        b.load(bufferedinputstream);
        enumeration = Thread.currentThread().getContextClassLoader().getResources("isoparser-custom.properties");
_L1:
        BufferedInputStream bufferedinputstream1;
        if (!enumeration.hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_140;
        }
        bufferedinputstream1 = new BufferedInputStream(((URL)enumeration.nextElement()).openStream());
        b.load(bufferedinputstream1);
        bufferedinputstream1.close();
          goto _L1
        IOException ioexception1;
        ioexception1;
        throw new RuntimeException(ioexception1);
        Exception exception;
        exception;
        Exception exception1;
        IOException ioexception2;
        try
        {
            bufferedinputstream.close();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        throw exception;
        exception1;
        bufferedinputstream1.close();
        throw exception1;
        try
        {
            bufferedinputstream.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        return;
    }

    public final a a(String s, byte abyte0[], String s1)
    {
        int k;
        String as[];
        String s2;
        k = 0;
        j j1 = (new j(this, s, abyte0, s1)).c();
        as = j1.b();
        s2 = j1.a();
        Class class1;
        Class aclass[];
        Object aobj[];
        if (as[0].trim().length() == 0)
        {
            as = new String[0];
        }
        class1 = Class.forName(s2);
        aclass = new Class[as.length];
        aobj = new Object[as.length];
_L6:
        if (k >= as.length) goto _L2; else goto _L1
_L1:
        if ("userType".equals(as[k]))
        {
            aobj[k] = abyte0;
            aclass[k] = [B;
            break MISSING_BLOCK_LABEL_302;
        }
        ClassNotFoundException classnotfoundexception;
        if ("type".equals(as[k]))
        {
            aobj[k] = s;
            aclass[k] = java/lang/String;
            break MISSING_BLOCK_LABEL_302;
        }
        if ("parent".equals(as[k]))
        {
            aobj[k] = s1;
            aclass[k] = java/lang/String;
            break MISSING_BLOCK_LABEL_302;
        }
        throw new InternalError((new StringBuilder("No such param: ")).append(as[k]).toString());
_L2:
        if (as.length <= 0) goto _L4; else goto _L3
_L3:
        Constructor constructor1 = class1.getConstructor(aclass);
_L5:
        return (a)constructor1.newInstance(aobj);
_L4:
        Constructor constructor = class1.getConstructor(new Class[0]);
        constructor1 = constructor;
          goto _L5
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        try
        {
            throw new RuntimeException(nosuchmethodexception);
        }
        // Misplaced declaration of an exception variable
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new RuntimeException(classnotfoundexception);
        }
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        throw new RuntimeException(invocationtargetexception);
        InstantiationException instantiationexception;
        instantiationexception;
        throw new RuntimeException(instantiationexception);
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        throw new RuntimeException(illegalaccessexception);
        k++;
          goto _L6
    }
}
