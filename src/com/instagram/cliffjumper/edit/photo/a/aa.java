// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.widget.Toast;
import com.facebook.az;
import com.instagram.cliffjumper.edit.photo.render.a;
import com.instagram.cliffjumper.edit.photo.render.b;
import com.instagram.cliffjumper.edit.photo.render.g;
import com.instagram.common.i.c;
import com.instagram.creation.b.a.e;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a, ab

final class aa
    implements g
{

    final com.instagram.cliffjumper.edit.photo.a.a a;

    private aa(com.instagram.cliffjumper.edit.photo.a.a a1)
    {
        a = a1;
        super();
    }

    aa(com.instagram.cliffjumper.edit.photo.a.a a1, byte byte0)
    {
        this(a1);
    }

    private void a(int i)
    {
        Toast.makeText(a.n(), i, 0).show();
    }

    static void a(aa aa1, int i)
    {
        aa1.a(i);
    }

    public final void a(a a1)
    {
        if (a.l() == null)
        {
            return;
        }
        if (a1.c() == b.a)
        {
            e e1 = (e)a.l();
            e1.a(new ab(this, a1, e1));
            return;
        } else
        {
            c.b("Render Failure", "Render Failure", a1.d());
            Class class1 = com.instagram.cliffjumper.edit.photo.a.a.V();
            Object aobj[] = new Object[1];
            aobj[0] = a1.c();
            com.facebook.e.a.a.a(class1, com.instagram.common.y.e.a("Render Failure: %s", aobj));
            a.c();
            a(az.unable_to_save_upload_image);
            return;
        }
    }
}
