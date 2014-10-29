// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.support.v4.app.Fragment;
import com.facebook.au;
import com.facebook.az;
import com.facebook.b.e;
import com.instagram.model.a.b;
import com.instagram.share.vkontakte.a;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.widget:
//            y, z, aa, ab, 
//            ac, ad

public abstract class x extends Enum
{

    public static final x a;
    public static final x b;
    public static final x c;
    public static final x d;
    public static final x e;
    public static final x f;
    private static final x j[];
    private final int g;
    private final String h;
    private final int i;

    private x(String s, int k, int l, String s1, int i1)
    {
        super(s, k);
        g = l;
        h = s1;
        i = i1;
    }

    x(String s, int k, int l, String s1, int i1, byte byte0)
    {
        this(s, k, l, s1, i1);
    }

    public static List a(Context context, b b1)
    {
        ArrayList arraylist = new ArrayList();
        if (com.instagram.share.vkontakte.a.a(context))
        {
            arraylist.add(f);
        }
        arraylist.add(a);
        arraylist.add(b);
        arraylist.add(d);
        if ((b1.p() || b1.o() || b1.f()) && com.instagram.android.maps.f.a.a())
        {
            arraylist.add(c);
        }
        if (b1.n() == com.instagram.model.a.a.a)
        {
            arraylist.add(e);
        }
        return arraylist;
    }

    public static List b(Context context)
    {
        ArrayList arraylist = new ArrayList();
        x ax[] = values();
        int k = ax.length;
        int l = 0;
        while (l < k) 
        {
            x x1 = ax[l];
            if (x1 == f && com.instagram.share.vkontakte.a.a(context))
            {
                arraylist.add(0, x1);
            } else
            {
                arraylist.add(x1);
            }
            l++;
        }
        return arraylist;
    }

    public static x valueOf(String s)
    {
        return (x)Enum.valueOf(com/instagram/android/widget/x, s);
    }

    public static x[] values()
    {
        return (x[])j.clone();
    }

    public final int a()
    {
        return g;
    }

    public final String a(Context context)
    {
        return context.getString(g);
    }

    public abstract void a(Fragment fragment, e e1);

    public final void a(b b1, Fragment fragment, e e1)
    {
        if (a(b1))
        {
            a(b1, false);
            return;
        }
        if (c())
        {
            a(b1, true);
            return;
        } else
        {
            a(fragment, e1);
            return;
        }
    }

    public abstract void a(b b1, boolean flag);

    public abstract boolean a(b b1);

    public final int b()
    {
        return i;
    }

    public abstract boolean c();

    public abstract void d();

    public final String e()
    {
        return h;
    }

    static 
    {
        a = new y("FACEBOOK", az.facebook, "facebook", au.share_facebook);
        b = new z("TWITTER", az.twitter, "twitter", au.share_twitter);
        c = new aa("FOURSQUARE", az.foursquare, au.share_foursquare);
        d = new ab("TUMBLR", az.tumblr, "tumblr", au.share_tumblr);
        e = new ac("FLICKR", az.flickr, "flickr", au.share_flickr);
        f = new ad("VKONTAKTE", az.vkontakte, "vkontakte", au.share_vkontakte);
        x ax[] = new x[6];
        ax[0] = a;
        ax[1] = b;
        ax[2] = c;
        ax[3] = d;
        ax[4] = e;
        ax[5] = f;
        j = ax;
    }
}
