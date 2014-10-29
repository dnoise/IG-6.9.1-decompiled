// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Bundle;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.base.a.a.a;
import com.instagram.base.a.b;
import com.instagram.creation.b.a.e;
import com.instagram.creation.video.l.h;
import com.instagram.creation.video.ui.LivePreviewTextureView;

// Referenced classes of package com.instagram.creation.video.f:
//            aa, ab, ac, z

public final class y extends b
{

    private com.instagram.creation.b.a.b a;
    private LivePreviewTextureView b;
    private h c;

    public y()
    {
    }

    static com.instagram.creation.b.a.b a(y y1, com.instagram.creation.b.a.b b1)
    {
        y1.a = b1;
        return b1;
    }

    public static void a(s s, String s1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("pendingMediaKey", s1);
        (new a(s)).a(new y(), bundle).a();
    }

    static void a(y y1)
    {
        y1.b();
    }

    static h b(y y1)
    {
        return y1.c;
    }

    private void b()
    {
        l().onBackPressed();
    }

    static com.instagram.creation.b.a.b c(y y1)
    {
        return y1.a;
    }

    static LivePreviewTextureView d(y y1)
    {
        return y1.b;
    }

    public final void F()
    {
        super.F();
        c.e();
    }

    public final void G()
    {
        c.d();
        super.G();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_thumbnail_video_preview, viewgroup, false);
        view.setOnClickListener(new aa(this));
        b = (LivePreviewTextureView)view.findViewById(av.square_texture_view);
        com.instagram.creation.video.ui.a.a a1 = (new com.instagram.creation.video.ui.a.a()).a(view.findViewById(av.play_button)).b(view.findViewById(av.seek_frame_indicator));
        c = new h(n(), a1, true);
        b.setDelegate(c);
        c.a(new ab(this));
        ((e)l()).a(new ac(this));
        return view;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        ((e)l()).a(new z(this));
    }

    public final String j_()
    {
        return "metadata_thumbnail_video_preview";
    }
}
