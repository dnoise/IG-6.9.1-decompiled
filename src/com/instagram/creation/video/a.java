// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video;

import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import com.instagram.creation.video.i.b;
import com.instagram.creation.video.i.c;
import com.instagram.creation.video.i.d;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.video:
//            b, c

public final class a
    implements b
{

    private d a;
    private List b;
    private com.instagram.creation.video.i.a c;
    private boolean d;

    public a()
    {
        a = new d();
        b = new ArrayList();
        d = false;
        a.a(new com.instagram.creation.video.b(this));
    }

    static List a(a a1)
    {
        return a1.b;
    }

    static d b(a a1)
    {
        return a1.a;
    }

    private void b(com.instagram.creation.video.i.a a1)
    {
        (new StringBuilder("Adding an existing clip ")).append(a1.d());
        a.a(a1);
        c = a1;
        c.a(this);
    }

    static boolean c(a a1)
    {
        return a1.d;
    }

    public final com.instagram.creation.video.i.a a()
    {
        return c;
    }

    public final com.instagram.creation.video.i.a a(int i1, int j1)
    {
        c = new com.instagram.creation.video.i.a();
        c.a(i1);
        c.a(c.a);
        c.b(j1);
        a.a(c);
        c.a(this);
        return c;
    }

    public final void a(int i1)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((com.instagram.creation.video.c)iterator.next()).a(i1)) { }
    }

    public final void a(Bundle bundle)
    {
        bundle.putBoolean("hasImportedClips", d);
    }

    public final void a(com.instagram.creation.video.c c1)
    {
        b.add(c1);
    }

    public final void a(com.instagram.creation.video.i.a a1)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((com.instagram.creation.video.c)iterator.next()).c(a1)) { }
        if (m())
        {
            for (Iterator iterator1 = b.iterator(); iterator1.hasNext(); ((com.instagram.creation.video.c)iterator1.next()).c()) { }
        }
    }

    public final void a(String s)
    {
        if (!(new File(s)).exists())
        {
            return;
        } else
        {
            c.b(s);
            return;
        }
    }

    public final void a(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b((com.instagram.creation.video.i.a)iterator.next())) { }
    }

    public final void a(boolean flag)
    {
        d = flag;
    }

    public final d b()
    {
        return a;
    }

    public final void b(Bundle bundle)
    {
        a(bundle.getBoolean("hasImportedClips"));
    }

    public final void b(com.instagram.creation.video.c c1)
    {
        b.remove(c1);
    }

    public final int c()
    {
        return a.c();
    }

    public final boolean d()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            if (((com.instagram.creation.video.i.a)iterator.next()).c() != c.a)
            {
                return true;
            }
        }

        return false;
    }

    public final void e()
    {
        c.a();
    }

    public final void f()
    {
        if (c == null)
        {
            return;
        } else
        {
            c.a(c.b);
            c.a();
            return;
        }
    }

    public final boolean g()
    {
        return a.d() != null && a.d().c() == c.c;
    }

    public final void h()
    {
        if (a.d() != null)
        {
            a.d().a(c.b);
        }
    }

    public final void i()
    {
        com.instagram.creation.video.i.a a1 = a.d();
        if (a1 == null) goto _L2; else goto _L1
_L1:
        if (a1.d() == null) goto _L4; else goto _L3
_L3:
        String s;
        MediaMetadataRetriever mediametadataretriever = new MediaMetadataRetriever();
        mediametadataretriever.setDataSource(a1.d());
        s = mediametadataretriever.extractMetadata(9);
        if (s == null) goto _L6; else goto _L5
_L5:
        (new StringBuilder("duration: ")).append(Long.valueOf(s));
_L2:
        return;
        Exception exception;
        exception;
        com.facebook.e.a.a.a("ClipStackManager", (new StringBuilder("Exception when retrieving metadata: ")).append(exception).toString());
_L6:
        com.facebook.e.a.a.a("ClipStackManager", "No video file or too short; deleting");
        a1.a(c.d);
        j();
        return;
_L4:
        com.facebook.e.a.a.a("ClipStackManager", "No video file found");
        if (true) goto _L6; else goto _L7
_L7:
    }

    public final void j()
    {
        com.instagram.creation.video.i.a a1 = a.d();
        if (a1 != null)
        {
            if (a1.d() != null)
            {
                com.instagram.common.y.a.a(com.instagram.common.y.c.a.a(), a1.d());
            }
            a.b(a1);
        }
    }

    public final void k()
    {
        if (a.d() != null)
        {
            a.d().a(c.c);
        }
    }

    public final int l()
    {
        return 15000 - c();
    }

    public final boolean m()
    {
        return l() < 300;
    }

    public final boolean n()
    {
        return l() <= 0;
    }

    public final int o()
    {
        return a.b();
    }

    public final boolean p()
    {
        return d;
    }
}
