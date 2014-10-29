// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.i;

import android.net.Uri;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

public final class a
{

    public static Set a(Uri uri)
    {
        if (uri.isOpaque())
        {
            throw new UnsupportedOperationException("This isn't a hierarchical URI.");
        }
        String s = uri.getEncodedQuery();
        if (s == null)
        {
            return new HashSet();
        }
        LinkedHashSet linkedhashset = new LinkedHashSet();
        int i = 0;
        do
        {
            int j = s.indexOf('&', i);
            if (j == -1)
            {
                j = s.length();
            }
            int k = s.indexOf('=', i);
            if (k > j || k == -1)
            {
                k = j;
            }
            linkedhashset.add(Uri.decode(s.substring(i, k)));
            i = j + 1;
        } while (i < s.length());
        return linkedhashset;
    }
}
