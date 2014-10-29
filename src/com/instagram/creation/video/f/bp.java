// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.support.v4.app.k;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.aq;
import com.facebook.au;
import com.facebook.av;
import com.facebook.az;
import com.googlecode.mp4parser.a.c;
import com.instagram.common.c.a;
import com.instagram.common.y.f;
import com.instagram.creation.video.l.g;
import com.instagram.o.e;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.f:
//            bi, br, bq

final class bp extends a
{

    final bi a;

    private bp(bi bi1)
    {
        a = bi1;
        super();
    }

    bp(bi bi1, byte byte0)
    {
        this(bi1);
    }

    private void a(Boolean boolean1)
    {
        super.a(boolean1);
        if (a.E() != null)
        {
            if (boolean1.booleanValue())
            {
                double ad[] = a.a;
                int i = ad.length;
                for (int j = 0; j < i; j++)
                {
                    Double.valueOf(ad[j]);
                    ImageView imageview = new ImageView(a.n());
                    imageview.setBackgroundResource(au.trim_frame_bg);
                    imageview.setLayoutParams(new android.widget.LinearLayout.LayoutParams((int)com.instagram.creation.video.f.bi.g(a), (int)bi.h(a)));
                    imageview.setPadding(0, 0, 0, 0);
                    bi.i(a).addView(imageview);
                }

                com.instagram.creation.video.f.bi.a(a, br.b);
                View view = a.E().findViewById(av.scrollable_nux);
                byte byte0;
                double d;
                double d1;
                Animation animation;
                if (com.instagram.l.b.a.a().p())
                {
                    byte0 = 8;
                } else
                {
                    byte0 = 0;
                }
                view.setVisibility(byte0);
                f.c(bi.i(a), (int)((double)f.a(a.n()) - bi.j(a)));
                d = bi.b(a, bi.d(a).f());
                d1 = Math.min(com.instagram.creation.video.f.bi.k(a) - d, bi.b(a, bi.d(a).i()));
                com.instagram.creation.video.f.bi.c(a, (int)d1);
                bi.l(a).setVisibility(0);
                animation = AnimationUtils.loadAnimation(a.n(), aq.import_filmstrip_slide_in_right);
                animation.setAnimationListener(new bq(this, d));
                bi.n(a).startAnimation(animation);
            } else
            if (a.u())
            {
                e.a(az.unknown_error_occured);
                a.l().onBackPressed();
                return;
            }
        }
    }

    private transient Boolean c()
    {
        com.instagram.creation.video.f.bi.a(a, a.Y());
        c c1;
        List list;
        try
        {
            c1 = com.googlecode.mp4parser.a.b.a.a.a((new RandomAccessFile(com.instagram.creation.video.f.bi.e(a), "r")).getChannel());
        }
        catch (IOException ioexception)
        {
            return Boolean.valueOf(false);
        }
        list = c1.a();
        if (list.size() == 0)
        {
            return Boolean.valueOf(false);
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.googlecode.mp4parser.a.e e1 = (com.googlecode.mp4parser.a.e)iterator.next();
            if (e1.l().equals("vide"))
            {
                double ad[] = com.instagram.creation.video.l.f.a(e1);
                if (ad.length == 0)
                {
                    com.instagram.common.i.c.b("No data on sync sample times for this video", (new StringBuilder("Size: ")).append(com.instagram.creation.video.f.bi.e(a).length() / 1024L).append(" KB Duration: ").append(com.instagram.creation.video.f.bi.f(a)).append(" ms Path: ").append(com.instagram.creation.video.f.bi.e(a).getAbsolutePath()).toString());
                    return Boolean.valueOf(false);
                }
                a.a = g.a(ad, (int)(com.instagram.creation.video.f.bi.f(a) / 1000L));
            }
        } while (true);
        if (a.a.length == 0)
        {
            return Boolean.valueOf(false);
        } else
        {
            return Boolean.valueOf(true);
        }
    }

    protected final Object a(Object aobj[])
    {
        return c();
    }

    protected final volatile void a(Object obj)
    {
        a((Boolean)obj);
    }
}
