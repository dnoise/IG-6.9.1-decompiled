// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.sharelater;

import android.os.Parcel;
import android.os.Parcelable;
import com.instagram.common.y.e;
import com.instagram.feed.d.l;
import com.instagram.model.a.a;
import com.instagram.model.a.b;
import com.instagram.share.b.h;
import com.instagram.venue.model.Venue;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.instagram.sharelater:
//            a, b

public class ShareLaterMedia
    implements Parcelable, b
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.sharelater.a();
    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private String h;
    private String i;
    private a j;
    private String k;
    private Venue l;

    private ShareLaterMedia(Parcel parcel)
    {
        h = parcel.readString();
        i = parcel.readString();
        j = com.instagram.model.a.a.a(parcel.readInt());
        k = parcel.readString();
        l = (Venue)parcel.readParcelable(com/instagram/venue/model/Venue.getClassLoader());
        boolean aflag[] = new boolean[com.instagram.sharelater.b.a().length];
        parcel.readBooleanArray(aflag);
        a = aflag[-1 + com.instagram.sharelater.b.a];
        b = aflag[-1 + com.instagram.sharelater.b.b];
        c = aflag[-1 + b.c];
        d = aflag[-1 + b.d];
        e = aflag[-1 + com.instagram.sharelater.b.e];
        f = aflag[-1 + b.f];
        boolean flag;
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
    }

    ShareLaterMedia(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    public ShareLaterMedia(l l1)
    {
        if (l1.u() != null)
        {
            h = l1.u().f();
        }
        i = l1.d();
        j = l1.w();
        k = l1.e();
        l = l1.B();
        boolean flag;
        if (l1.Q() != null && l1.R() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
    }

    public final String a()
    {
        return k;
    }

    public final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("media_id", b());
        b1.a("caption", c());
        if (v())
        {
            java.util.Map.Entry entry2;
            for (Iterator iterator2 = com.instagram.share.vkontakte.a.a().g().entrySet().iterator(); iterator2.hasNext(); b1.a((String)entry2.getKey(), (String)entry2.getValue()))
            {
                entry2 = (java.util.Map.Entry)iterator2.next();
            }

        }
        if (q())
        {
            java.util.Map.Entry entry1;
            for (Iterator iterator1 = com.instagram.share.f.a.b().h().entrySet().iterator(); iterator1.hasNext(); b1.a((String)entry1.getKey(), (String)entry1.getValue()))
            {
                entry1 = (java.util.Map.Entry)iterator1.next();
            }

        }
        if (r())
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = com.instagram.share.c.a.b().d().entrySet().iterator(); iterator.hasNext(); b1.a((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        if (s())
        {
            com.facebook.b.b b2 = com.instagram.share.b.a.a();
            String s1 = com.instagram.share.b.a.i().c();
            if (com.instagram.common.y.e.c(s1))
            {
                s1 = b2.c();
            }
            b1.a("share_to_facebook", "1");
            b1.a("fb_access_token", s1);
        }
        if (t())
        {
            com.instagram.share.d.a a2 = com.instagram.share.d.a.a();
            b1.a("share_to_foursquare", "1");
            b1.a("foursquare_access_token", a2.d());
        }
        if (u())
        {
            com.instagram.share.tumblr.a a1 = com.instagram.share.tumblr.a.b();
            b1.a("share_to_tumblr", "1");
            b1.a("tumblr_access_token_key", a1.e());
            b1.a("tumblr_access_token_secret", a1.f());
        }
    }

    public final void a(String s1)
    {
        h = s1;
    }

    public final void a(boolean flag)
    {
        a = flag;
    }

    public final String b()
    {
        return i;
    }

    public final void b(boolean flag)
    {
        b = flag;
    }

    public final String c()
    {
        return h;
    }

    public final void c(boolean flag)
    {
        c = flag;
    }

    public final void d(boolean flag)
    {
        d = flag;
    }

    public final boolean d()
    {
        return j == a.b;
    }

    public int describeContents()
    {
        return 0;
    }

    public final void e(boolean flag)
    {
        e = flag;
    }

    public final void f(boolean flag)
    {
        f = flag;
    }

    public final boolean f()
    {
        return g;
    }

    public final a n()
    {
        return j;
    }

    public final boolean o()
    {
        return l != null;
    }

    public final boolean p()
    {
        return false;
    }

    public final boolean q()
    {
        return a;
    }

    public final boolean r()
    {
        return e;
    }

    public final boolean s()
    {
        return b;
    }

    public final boolean t()
    {
        return c;
    }

    public final boolean u()
    {
        return d;
    }

    public final boolean v()
    {
        return f;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        int j1 = 1;
        parcel.writeString(h);
        parcel.writeString(i);
        parcel.writeInt(j.a());
        parcel.writeString(k);
        parcel.writeParcelable(l, i1);
        boolean aflag[] = new boolean[6];
        aflag[0] = a;
        aflag[j1] = b;
        aflag[2] = c;
        aflag[3] = d;
        aflag[4] = e;
        aflag[5] = f;
        parcel.writeBooleanArray(aflag);
        if (!g)
        {
            j1 = 0;
        }
        parcel.writeInt(j1);
    }

}
