// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.app.an;
import com.facebook.av;
import com.instagram.api.j.b;
import com.instagram.api.j.e;
import com.instagram.api.j.j;
import com.instagram.user.c.a;
import java.io.ByteArrayOutputStream;

// Referenced classes of package com.instagram.android.d:
//            d

public final class o extends b
{

    private byte a[];
    private boolean d;
    private int e;
    private Uri f;

    public o(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, av.request_id_update_avatar, a1);
        d = false;
    }

    public static byte[] a(Bitmap bitmap)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, bytearrayoutputstream);
        return bytearrayoutputstream.toByteArray();
    }

    private static a d(j j1)
    {
        boolean flag = j1.b("user");
        a a1 = null;
        if (flag)
        {
            a1 = (a)j1.a("user", com/instagram/user/c/a);
        }
        return a1;
    }

    public final void a(int i)
    {
        e = i;
        super.g();
    }

    public final void a(Uri uri)
    {
        f = uri;
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        if (!d && a != null)
        {
            b1.a("profile_pic", a, "profile_pic");
        }
    }

    public final Object b(j j1)
    {
        return d(j1);
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String c_()
    {
        if (d)
        {
            return "accounts/remove_profile_picture/";
        } else
        {
            return "accounts/change_profile_picture/";
        }
    }

    public final void e()
    {
        d = true;
        super.g();
    }

    public final void f()
    {
        try
        {
            if (!d)
            {
                a = a(com.instagram.android.d.d.a(k(), e, f));
            }
            return;
        }
        catch (Exception exception)
        {
            throw new e();
        }
    }
}
