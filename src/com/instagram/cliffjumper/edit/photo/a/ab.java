// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.os.Bundle;
import com.facebook.az;
import com.instagram.cliffjumper.edit.common.effectfilter.CjFilter;
import com.instagram.cliffjumper.edit.photo.render.i;
import com.instagram.cliffjumper.edit.photo.render.j;
import com.instagram.cliffjumper.edit.photo.render.k;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.d;
import com.instagram.creation.b.a.e;
import com.instagram.creation.photo.b.a;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            aa, a

final class ab
    implements Runnable
{

    final com.instagram.cliffjumper.edit.photo.render.a a;
    final e b;
    final aa c;

    ab(aa aa1, com.instagram.cliffjumper.edit.photo.render.a a1, e e1)
    {
        c = aa1;
        a = a1;
        b = e1;
        super();
    }

    public final void run()
    {
        if (c.a.l() != null)
        {
            c.a.c();
            if (c.a.E() != null)
            {
                j j1 = i.b(a);
                if (j1 != null && j1.d() != k.a)
                {
                    com.instagram.cliffjumper.edit.photo.a.aa.a(c, az.unable_to_save_full_image);
                }
                j j2 = i.a(a);
                if (j2 == null || j2.d() != k.a)
                {
                    com.instagram.cliffjumper.edit.photo.a.aa.a(c, az.unable_to_save_upload_image);
                    return;
                }
                String s = c.a.j().getString("pendingMediaKey");
                b b1 = b.b(s);
                b b2;
                Bundle bundle;
                boolean flag;
                if (b1 == null)
                {
                    b2 = com.instagram.creation.b.a.b.a(s);
                    ((a)c.a.l()).a(b2);
                } else
                {
                    b2 = b1;
                }
                b2.e(j2.b());
                b2.a(c.a.j().getInt("mediaSource"));
                b2.d(c.a.j().getInt("originalWidth"));
                b2.e(c.a.j().getInt("originalHeight"));
                b2.c(String.valueOf(j2.c()));
                b2.a(d.a);
                b2.a(com.instagram.cliffjumper.edit.photo.a.a.w(c.a));
                b.h();
                ((a)c.a.l()).b(b2);
                bundle = new Bundle();
                if (c.a.j().containsKey("latitude") && c.a.j().containsKey("longitude"))
                {
                    bundle.putDouble("latitude", c.a.j().getDouble("latitude"));
                    bundle.putDouble("longitude", c.a.j().getDouble("longitude"));
                }
                flag = c.a.j().getBoolean("directShare", false);
                com.instagram.p.a.d.b().a("filter_id", c.a.d().m()).a();
                ((com.instagram.creation.base.a)c.a.l()).a(b2.a(), flag, bundle);
                return;
            }
        }
    }
}
