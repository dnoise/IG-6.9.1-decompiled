// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.content.Context;
import android.content.DialogInterface;
import com.facebook.az;
import com.instagram.android.activity.TwitterAuthActivity;
import com.instagram.creation.base.e;
import com.instagram.share.f.a;

// Referenced classes of package com.instagram.android.d:
//            f

final class g
    implements android.content.DialogInterface.OnClickListener
{

    final Context a;
    final f b;

    g(f f1, Context context)
    {
        b = f1;
        a = context;
        super();
    }

    private void a()
    {
        if (com.instagram.share.f.a.a())
        {
            b.e();
            return;
        } else
        {
            TwitterAuthActivity.b(b.b);
            return;
        }
    }

    private void a(Context context)
    {
        com.instagram.android.d.f.a(b, com.instagram.common.y.a.b(context));
        e.a(b.b, 2, com.instagram.android.d.f.a(b));
    }

    private boolean a(int i, int j)
    {
        return b.b(a)[i].equals(a.getString(j));
    }

    private void b()
    {
        b.c();
    }

    private void c()
    {
        f.b(b, com.instagram.creation.photo.c.a.a(".jpg"));
        com.instagram.creation.photo.c.a.a(b.b, 4, f.b(b), "android.media.action.IMAGE_CAPTURE");
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        if (a(i, az.remove_current_picture))
        {
            b.b();
        } else
        {
            if (a(i, az.take_picture))
            {
                c();
                return;
            }
            if (a(i, az.choose_from_library))
            {
                a(a);
                return;
            }
            if (a(i, az.import_from_facebook))
            {
                b();
                return;
            }
            if (a(i, az.import_from_twitter))
            {
                a();
                return;
            }
        }
    }
}
