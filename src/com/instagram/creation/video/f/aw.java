// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Bundle;
import android.support.v4.app.k;
import android.widget.ImageView;
import com.facebook.av;
import com.instagram.base.a.b;
import com.instagram.creation.b.d.a;
import com.instagram.creation.video.l.c;

// Referenced classes of package com.instagram.creation.video.f:
//            av, ax, ay, az

abstract class aw extends b
{

    aw()
    {
    }

    protected final com.instagram.creation.b.a.b Y()
    {
        String s = j().getString("pendingMediaKey");
        return com.instagram.creation.b.d.a.a().a(s);
    }

    protected final void a(com.instagram.creation.video.f.av av1)
    {
        ImageView imageview = (ImageView)l().findViewById(av.button_mode_filter);
        ImageView imageview1;
        ImageView imageview2;
        if (av1 == com.instagram.creation.video.f.av.a)
        {
            imageview.setSelected(true);
        } else
        {
            imageview.setSelected(false);
            imageview.setOnClickListener(new ax(this));
        }
        imageview1 = (ImageView)l().findViewById(av.button_mode_trim);
        if (com.instagram.creation.video.l.c.b(Y().K()))
        {
            if (av1 == com.instagram.creation.video.f.av.c)
            {
                imageview1.setSelected(true);
            } else
            {
                imageview1.setSelected(false);
                imageview1.setOnClickListener(new ay(this));
            }
        } else
        {
            imageview1.setVisibility(8);
        }
        imageview2 = (ImageView)l().findViewById(av.button_mode_cover);
        if (av1 == com.instagram.creation.video.f.av.b)
        {
            imageview2.setSelected(true);
            return;
        } else
        {
            imageview2.setSelected(false);
            imageview2.setOnClickListener(new az(this));
            return;
        }
    }

    abstract void b();

    abstract void c(Bundle bundle);
}
