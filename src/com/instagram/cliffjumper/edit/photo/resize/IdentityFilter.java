// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.resize;

import android.os.Parcel;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.cliffjumper.edit.common.basefilter.BaseSimpleFilter;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.e.a;
import com.instagram.filterkit.e.c;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            b

public class IdentityFilter extends BaseSimpleFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.cliffjumper.edit.photo.resize.b();

    public IdentityFilter()
    {
    }

    private IdentityFilter(Parcel parcel)
    {
        super(parcel);
    }

    IdentityFilter(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    protected final void a(b b1, a a1, c c)
    {
        b1.a("image", a1.b());
    }

    protected final b b(com.instagram.filterkit.d.c c)
    {
        int i = ShaderBridge.a("Identity");
        if (i == 0)
        {
            return null;
        } else
        {
            return new b(i);
        }
    }

}
