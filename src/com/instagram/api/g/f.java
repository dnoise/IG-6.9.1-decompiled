// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;

import android.net.Uri;
import com.instagram.common.g.a.g;
import com.instagram.common.g.a.i;
import com.instagram.common.y.i.a;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public final class f
    implements i
{

    public static final f a = new f();
    private static final String b[] = {
        "igcdn.com", "cdninstagram.com"
    };

    private f()
    {
    }

    private static g b(String s)
    {
        Uri uri = Uri.parse(s);
        if (uri.getScheme() != null)
        {
            String s4 = uri.getScheme().toLowerCase(Locale.US);
            if (!s4.equals("http") && !s4.equals("https"))
            {
                return new g(s, s, null, s);
            }
        }
        android.net.Uri.Builder builder = uri.buildUpon().query(null);
        Iterator iterator = com.instagram.common.y.i.a.a(uri).iterator();
        String s1 = null;
        while (iterator.hasNext()) 
        {
            String s3 = (String)iterator.next();
            if ("ig_tt".equalsIgnoreCase(s3))
            {
                s1 = uri.getQueryParameter(s3);
            } else
            {
                Iterator iterator1 = uri.getQueryParameters(s3).iterator();
                while (iterator1.hasNext()) 
                {
                    builder.appendQueryParameter(s3, (String)iterator1.next());
                }
            }
        }
        String s2 = builder.build().toString();
        builder.encodedAuthority(c(uri.getAuthority()));
        return new g(s2, s, s1, builder.build().toString());
    }

    private static String c(String s)
    {
        String as[] = b;
        int j = as.length;
        int k = 0;
        int l = -1;
        do
        {
            if (k >= j)
            {
                break;
            }
            String s3 = as[k];
            if (l != -1)
            {
                break;
            }
            l = s.indexOf(s3);
            k++;
        } while (true);
        if (l == -1)
        {
            return s;
        } else
        {
            String s1 = s.substring(0, 1 + s.indexOf('@'));
            String s2 = s.substring(l);
            return (new StringBuilder()).append(s1).append(s2).toString();
        }
    }

    public final g a(String s)
    {
        return b(s);
    }

}
