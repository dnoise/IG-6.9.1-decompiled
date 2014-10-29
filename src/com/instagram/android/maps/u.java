// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.content.DialogInterface;
import com.instagram.android.maps.b.f;
import com.instagram.android.maps.e.a;
import com.instagram.android.maps.ui.i;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class u
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final CharSequence b[];
    final String c;
    final PhotoMapsActivity d;

    u(PhotoMapsActivity photomapsactivity, String s, CharSequence acharsequence[], String s1)
    {
        d = photomapsactivity;
        a = s;
        b = acharsequence;
        c = s1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int j)
    {
        if (a.equals(b[j]))
        {
            if (!com.instagram.android.maps.e.a.a().b() && com.instagram.android.maps.e.a.a().f())
            {
                com.instagram.android.maps.e.a.a().a(d.f());
            }
            a a1 = com.instagram.android.maps.e.a.a();
            boolean flag;
            if (!com.instagram.android.maps.e.a.a().b())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a1.a(flag);
        } else
        if (c.equals(b[j]))
        {
            ArrayList arraylist = new ArrayList();
            Iterator iterator = PhotoMapsActivity.n(d).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                f f1 = (f)iterator.next();
                if (com.instagram.android.maps.PhotoMapsActivity.f(d).a(f1.f()))
                {
                    PhotoMapsActivity _tmp = d;
                    arraylist.addAll(PhotoMapsActivity.b(f1));
                }
            } while (true);
            PhotoMapsActivity.b(d, arraylist);
            com.instagram.android.maps.d.a.a(arraylist, d.c());
            return;
        }
    }
}
