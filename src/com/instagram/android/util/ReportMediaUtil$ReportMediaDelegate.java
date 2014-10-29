// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.util;

import android.net.Uri;
import android.os.Parcel;
import android.support.v4.app.Fragment;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;
import com.instagram.model.people.PeopleTag;
import com.instagram.user.c.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.util:
//            e

class <init>
    implements com.instagram.simplewebview.ate
{

    public static final android.os.rtMediaDelegate.a CREATOR = new e();
    private final String a;

    private static boolean a(List list, a a1)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            if (((PeopleTag)iterator.next()).d().equals(a1.g()))
            {
                iterator.remove();
                return true;
            }
        }

        return false;
    }

    public final void a(Fragment fragment, Uri uri)
    {
        if ("tag-removed".equals(uri.getQueryParameter("action")))
        {
            l l1 = ad.a().b(a);
            a a1 = com.instagram.service.a.a.a().b();
            if (l1.W() && a(((List) (l1.V())), a1))
            {
                l1.z();
            }
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(a);
    }


    private gate(Parcel parcel)
    {
        a = parcel.readString();
    }

    a(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    private <init>(String s)
    {
        a = s;
    }

    a(String s, byte byte0)
    {
        this(s);
    }
}
