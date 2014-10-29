// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.model.people;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.a.l;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.model.people:
//            a

public class PeopleTag
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.model.people.a();
    a a;
    PointF b;
    private String c;
    private String d;

    public PeopleTag()
    {
    }

    private PeopleTag(Parcel parcel)
    {
        d = parcel.readString();
        c = parcel.readString();
        b = new PointF();
        b.x = parcel.readFloat();
        b.y = parcel.readFloat();
    }

    PeopleTag(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    public PeopleTag(a a1, PointF pointf)
    {
        b = pointf;
        a(a1);
    }

    static PointF a(l l1)
    {
        l1.nextToken();
        float f = l1.getFloatValue();
        l1.nextToken();
        float f1 = l1.getFloatValue();
        l1.nextToken();
        return new PointF(f, f1);
    }

    private void a(a a1)
    {
        c = a1.b();
        d = a1.g();
    }

    final PeopleTag a()
    {
        c = a.b();
        d = a.g();
        a = null;
        return this;
    }

    public final void a(PointF pointf)
    {
        b = pointf;
    }

    public final void a(String s)
    {
        c = s;
    }

    public final PointF b()
    {
        return b;
    }

    public final void b(String s)
    {
        d = s;
    }

    public final String c()
    {
        return c;
    }

    public final String d()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof PeopleTag))
        {
            return false;
        } else
        {
            return ((PeopleTag)obj).d().equals(d);
        }
    }

    public int hashCode()
    {
        return d().hashCode();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(d);
        parcel.writeString(c);
        parcel.writeFloat(b.x);
        parcel.writeFloat(b.y);
    }

}
