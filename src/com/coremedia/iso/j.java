// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.coremedia.iso:
//            i, d

final class j
{

    final i a;
    private String b;
    private byte c[];
    private String d;
    private String e;
    private String f[];

    public j(i k, String s, byte abyte0[], String s1)
    {
        a = k;
        super();
        b = s;
        d = s1;
        c = abyte0;
    }

    public final String a()
    {
        return e;
    }

    public final String[] b()
    {
        return f;
    }

    public final j c()
    {
        if (c == null) goto _L2; else goto _L1
_L1:
        String s;
        if (!"uuid".equals(b))
        {
            throw new RuntimeException("we have a userType but no uuid box type. Something's wrong");
        }
        s = a.b.getProperty((new StringBuilder()).append(d).append("-uuid[").append(com.coremedia.iso.d.a(c).toUpperCase()).append("]").toString());
        if (s == null)
        {
            s = a.b.getProperty((new StringBuilder("uuid[")).append(com.coremedia.iso.d.a(c).toUpperCase()).append("]").toString());
        }
        if (s == null)
        {
            s = a.b.getProperty("uuid");
        }
_L4:
        if (s == null)
        {
            s = a.b.getProperty("default");
        }
        if (s == null)
        {
            throw new RuntimeException((new StringBuilder("No box object found for ")).append(b).toString());
        }
        break; /* Loop/switch isn't completed */
_L2:
        s = a.b.getProperty((new StringBuilder()).append(d).append("-").append(b).toString());
        if (s == null)
        {
            s = a.b.getProperty(b);
        }
        if (true) goto _L4; else goto _L3
_L3:
        Matcher matcher = a.c.matcher(s);
        if (!matcher.matches())
        {
            throw new RuntimeException((new StringBuilder("Cannot work with that constructor: ")).append(s).toString());
        } else
        {
            e = matcher.group(1);
            f = matcher.group(2).split(",");
            return this;
        }
    }
}
