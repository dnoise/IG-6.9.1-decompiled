// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.render;

import android.content.Context;
import com.instagram.creation.a.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.render:
//            a, j, h

public final class i
{

    public static j a(com.instagram.cliffjumper.edit.photo.render.a a1)
    {
        return a(a1, com.instagram.creation.a.a.a());
    }

    private static j a(com.instagram.cliffjumper.edit.photo.render.a a1, int k)
    {
        for (Iterator iterator = a1.e().iterator(); iterator.hasNext();)
        {
            j j1 = (j)iterator.next();
            if (j1.a() == k)
            {
                return j1;
            }
        }

        return null;
    }

    public static boolean a(h h1)
    {
        return h1.a == -1;
    }

    public static h[] a(Context context)
    {
        h ah[] = new h[2];
        ah[0] = new h(com.instagram.creation.photo.a.a.a(context), com.instagram.creation.a.a.a(), false);
        ah[1] = new h(com.instagram.creation.photo.a.a.a(), -1, true);
        return ah;
    }

    public static j b(com.instagram.cliffjumper.edit.photo.render.a a1)
    {
        return a(a1, -1);
    }
}
