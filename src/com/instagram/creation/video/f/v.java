// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.media.CamcorderProfile;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import com.facebook.az;
import com.instagram.common.c.a;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.i.c;
import com.instagram.creation.video.i.d;
import com.instagram.creation.video.l.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.f:
//            a, ar, w

final class v extends a
{

    final com.instagram.creation.video.f.a a;

    private v(com.instagram.creation.video.f.a a1)
    {
        a = a1;
        super();
    }

    v(com.instagram.creation.video.f.a a1, byte byte0)
    {
        this(a1);
    }

    private transient b a(b ab[])
    {
        b b1 = ab[0];
        if (com.instagram.creation.video.f.a.b(a).o() > 0)
        {
            long l = SystemClock.elapsedRealtime();
            int i = a.a.videoFrameWidth;
            int j = a.a.videoFrameHeight;
            int k;
            File afile[];
            ArrayList arraylist;
            Iterator iterator;
            int i1;
            String s;
            String s1;
            float f1;
            com.instagram.b.d.a a1;
            com.instagram.creation.b.a.a a2;
            long l1;
            if (i > j)
            {
                k = j;
                j = i;
            } else
            {
                k = i;
            }
            b1.a(1);
            b1.d(k);
            b1.e(j);
            afile = new File[1 + com.instagram.creation.video.f.a.b(a).o()];
            arraylist = new ArrayList();
            iterator = com.instagram.creation.video.f.a.b(a).b().iterator();
            i1 = 0;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                com.instagram.creation.video.i.a a3 = (com.instagram.creation.video.i.a)iterator.next();
                if (a3.c() == c.b && a3.d() != null)
                {
                    String s2 = a3.d();
                    afile[i1] = new File(s2);
                    i1++;
                    com.instagram.creation.b.a.a a4 = new com.instagram.creation.b.a.a();
                    a4.a(s2);
                    a4.a(a3.e());
                    long l2 = a3.b();
                    a4.c(0);
                    a4.d((int)l2);
                    a4.a(k, j);
                    arraylist.add(a4);
                }
            } while (true);
            b1.b(arraylist);
            s = afile[0].getAbsolutePath();
            s1 = (new StringBuilder()).append(s.substring(0, -4 + s.length())).append("-stitched.mp4").toString();
            afile[-1 + afile.length] = new File(s1);
            com.instagram.b.d.c.a().a("video_stitch_clips");
            f1 = f.a(afile);
            a1 = com.instagram.b.d.c.a().c("video_stitch_clips");
            if (a1 != null)
            {
                a1.a("num_clips", i1).a("stitched_duration", f1);
            }
            com.instagram.b.d.c.a().b("video_stitch_clips");
            a2 = new com.instagram.creation.b.a.a();
            a2.a(s1);
            a2.a(com.instagram.creation.video.f.a.A(a));
            a2.c(0);
            a2.d((int)(1000F * f1));
            a2.a(k, j);
            b1.a(a2);
            l1 = SystemClock.elapsedRealtime();
            (new StringBuilder("Splitting and stitching took: ")).append(l1 - l).append("ms");
        }
        return b1;
    }

    private void a(b b1)
    {
        super.a(b1);
        if (com.instagram.creation.video.f.a.H(a) != null)
        {
            com.instagram.creation.video.f.a.H(a).dismiss();
            com.instagram.creation.video.f.a.a(a, null);
        }
        ((com.instagram.creation.video.k.a)a.l()).c(b1);
        Bundle bundle = new Bundle();
        bundle.putString("pendingMediaKey", b1.a());
        bundle.putBoolean("directShare", com.instagram.creation.video.f.a.v(a));
        com.instagram.p.a.q.c();
        (new com.instagram.base.a.a.a(a.p())).a(new ar(), bundle).b("next").a("VideoEditFragment").c().a();
    }

    protected final volatile Object a(Object aobj[])
    {
        return a((b[])aobj);
    }

    protected final void a()
    {
        super.a();
        com.instagram.creation.video.f.a.a(a, new com.instagram.ui.dialog.f(a.l()));
        com.instagram.creation.video.f.a.H(a).a(a.c(az.processing));
        com.instagram.creation.video.f.a.H(a).setCancelable(false);
        com.instagram.creation.video.f.a.c(a).postDelayed(new w(this), 500L);
    }

    protected final volatile void a(Object obj)
    {
        a((b)obj);
    }
}
