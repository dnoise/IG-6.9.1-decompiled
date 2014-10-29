// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.bugreport.a;

import android.content.Context;
import android.os.Build;
import com.instagram.common.a.a.a;
import com.instagram.common.a.a.n;
import com.instagram.common.y.e;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;

// Referenced classes of package com.instagram.bugreport.a:
//            c

public abstract class b extends a
{

    private final Context a;
    private final String b;
    private final String d;
    private final String e;
    private final String f;
    private String g;
    private ArrayList h;

    public b(Context context, String s, String s1, String s2, String s3)
    {
        a = context;
        b = s;
        d = s1;
        e = s2;
        f = s3;
    }

    public com.instagram.common.a.c.b a()
    {
        com.instagram.common.a.c.b b1 = new com.instagram.common.a.c.b();
        b1.a("user_identifier", d);
        b1.a("client_time", Long.toString(System.currentTimeMillis() / 1000L));
        b1.a("config_id", f);
        b1.a("locale", com.facebook.d.c.a.a(Locale.getDefault()));
        com.instagram.api.b.a a1 = new com.instagram.api.b.a();
        a1.a("IG_Username", d);
        a1.a("Git_Hash", com.instagram.common.s.a.d(a));
        a1.a("Build_Num", com.instagram.common.s.a.a(a));
        a1.a("Branch", com.instagram.common.s.a.c(a));
        a1.a("OS_Version", android.os.Build.VERSION.RELEASE);
        a1.a("Manufacturer", Build.MANUFACTURER);
        a1.a("Model", Build.MODEL);
        a1.a("Locale", Locale.getDefault().getDisplayName(Locale.US));
        a1.a("Build_Type", com.instagram.common.s.b.a().toString());
        com.instagram.api.b.a a2 = new com.instagram.api.b.a();
        a2.a("description", b);
        a2.a("category_id", e);
        a2.a("misc_info", a1.toString());
        b1.a("metadata", a2.toString());
        if (!com.instagram.common.y.e.c(g))
        {
            File file = new File(g);
            if (file.exists())
            {
                b1.a("file", file, "bugreport.png", "image/png");
            }
        }
        if (h != null)
        {
            String s = "attachments";
            for (int i = 0; i < h.size();)
            {
                String s1 = (String)h.get(i);
                if (!com.instagram.common.y.e.c(s1))
                {
                    File file1 = new File(s1);
                    if (file1.exists())
                    {
                        s = (new StringBuilder()).append(s).append(i).toString();
                        b1.a(s, file1, s1, "text/plain");
                    }
                }
                String s2 = s;
                i++;
                s = s2;
            }

        }
        return b1;
    }

    public final void a(String s)
    {
        g = s;
    }

    public final void a(ArrayList arraylist)
    {
        h = arraylist;
    }

    public final String b()
    {
        return b;
    }

    public int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    public final n d()
    {
        return new c(this);
    }

    public final String f()
    {
        return g;
    }

    public final ArrayList h()
    {
        return h;
    }
}
