// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.util;

import android.net.Uri;
import android.os.Parcel;
import android.support.v4.app.Fragment;
import com.instagram.feed.comments.b.a;
import com.instagram.feed.comments.c.b;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.feed.comments.util:
//            b

class <init>
    implements com.instagram.simplewebview.gate
{

    public static final android.os.ReportCommentDelegate.c CREATOR = new com.instagram.feed.comments.util.b();
    private final String a;
    private final String b;
    private final boolean c;

    public final void a(Fragment fragment, Uri uri)
    {
        if (c && a != null)
        {
            com.instagram.feed.d.b b1 = ad.a().b(b).e(a);
            if (b1 != null)
            {
                com.instagram.feed.comments.b.a.a(fragment.n(), fragment.z(), b1, b.b, null);
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
        parcel.writeString(b);
        int j;
        if (c)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
    }


    private (Parcel parcel)
    {
        boolean flag = true;
        super();
        a = parcel.readString();
        b = parcel.readString();
        if (parcel.readByte() != flag)
        {
            flag = false;
        }
        c = flag;
    }

    c(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    private <init>(String s, String s1, boolean flag)
    {
        a = s;
        b = s1;
        c = flag;
    }

    c(String s, String s1, boolean flag, byte byte0)
    {
        this(s, s1, flag);
    }
}
