// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;


// Referenced classes of package com.fasterxml.jackson.databind.util:
//            NameTransformer

final class nit> extends NameTransformer
{

    final String val$prefix;
    final String val$suffix;

    public final String reverse(String s)
    {
        if (s.startsWith(val$prefix))
        {
            String s1 = s.substring(val$prefix.length());
            if (s1.endsWith(val$suffix))
            {
                return s1.substring(0, s1.length() - val$suffix.length());
            }
        }
        return null;
    }

    public final String toString()
    {
        return (new StringBuilder("[PreAndSuffixTransformer('")).append(val$prefix).append("','").append(val$suffix).append("')]").toString();
    }

    public final String transform(String s)
    {
        return (new StringBuilder()).append(val$prefix).append(s).append(val$suffix).toString();
    }

    ()
    {
        val$prefix = s;
        val$suffix = s1;
        super();
    }
}
