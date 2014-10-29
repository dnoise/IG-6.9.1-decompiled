// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.l.a.f;
import com.instagram.common.y.d;
import com.instagram.creation.b.a.a;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.e;
import com.instagram.creation.video.gl.y;
import com.instagram.creation.video.widget.PreviewTextureView;
import com.instagram.creation.video.widget.c;

// Referenced classes of package com.instagram.creation.video.f:
//            aw, ag, ae, ah, 
//            af, av

public abstract class ad extends com.instagram.creation.video.f.aw
    implements android.widget.SeekBar.OnSeekBarChangeListener, y
{

    protected a a;
    private View aa;
    private c ab;
    private SeekBar ac;
    private boolean ad;
    private Handler ae;
    protected boolean b;
    protected boolean c;
    protected volatile boolean d;
    protected final Object e = new Object();
    private final IntentFilter f = new IntentFilter("VideoCoverFragmentBase.INTENT_ACTION_SAVE_COVER_FRAME");
    private final ag g = new ag(this, (byte)0);
    private int h;
    private PreviewTextureView i;

    public ad()
    {
        b = false;
        c = false;
        d = false;
        ae = new Handler(Looper.getMainLooper(), new ae(this));
    }

    protected static transient void W()
    {
    }

    private void Z()
    {
label0:
        {
            if (V() != null)
            {
                ad = true;
                ac.setEnabled(false);
                if (!b)
                {
                    break label0;
                }
                V().k();
            }
            return;
        }
        c = true;
    }

    static View a(ad ad1)
    {
        return ad1.aa;
    }

    private void a(int j)
    {
        if (V() != null)
        {
            h = a.f() + (j * a.i()) / 100;
            V().a(h);
            Y().f(h);
        }
    }

    static void b(ad ad1)
    {
        ad1.Z();
    }

    static int c(ad ad1)
    {
        return ad1.h;
    }

    static boolean d(ad ad1)
    {
        return ad1.ad;
    }

    static Handler e(ad ad1)
    {
        return ad1.ae;
    }

    static c f(ad ad1)
    {
        return ad1.ab;
    }

    static SeekBar g(ad ad1)
    {
        return ad1.ac;
    }

    static PreviewTextureView h(ad ad1)
    {
        return ad1.i;
    }

    public final void F()
    {
        super.F();
        i.setDependent(this);
        i.c();
        if (!j().getBoolean("VideoCoverFragmentBase.SAVE_AND_FINISH", false))
        {
            com.instagram.common.y.d.a(g, f);
        }
    }

    public final void G()
    {
        super.G();
        i.b();
        com.instagram.common.y.d.a(g);
    }

    public void H()
    {
        super.H();
        ae.removeCallbacksAndMessages(null);
    }

    protected abstract ah V();

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        a = Y().K();
        com.instagram.common.l.a.f.a(a);
        h = Y().Q();
        int j;
        if (h < a.f())
        {
            h = a.f();
        } else
        if (h > a.g())
        {
            h = a.g();
        }
        if (com.instagram.creation.base.ui.a.b(o()))
        {
            j = aw.fragment_video_cover;
        } else
        {
            j = aw.fragment_video_cover_small;
        }
        return layoutinflater.inflate(j, viewgroup, false);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        com.instagram.creation.base.ui.a.a(view);
        int j = o().getDimensionPixelSize(at.row_padding);
        view.findViewById(av.creation_main_actions).setPadding(j, 0, j, 0);
        i = (PreviewTextureView)view.findViewById(av.scrubber_preview_texture);
        i.setDependent(this);
        aa = view.findViewById(av.scrubber_progressbar);
        ac = (SeekBar)view.findViewById(av.scrubber_seekbar);
        ac.setOnSeekBarChangeListener(this);
        int k;
        int l;
        if (a.i() > 0)
        {
            k = (100 * (h - a.f())) / a.i();
        } else
        {
            k = 0;
        }
        ac.setProgress(k);
        ab = new c(o());
        l = ac.getLayoutParams().height;
        ab.a(l, l);
        ac.setThumb(ab);
        ((e)l()).a(new af(this));
        a(com.instagram.creation.video.f.av.b);
        com.instagram.creation.base.ui.a.a(view);
    }

    public final void b()
    {
    }

    protected final void c()
    {
        ae.sendEmptyMessage(6);
    }

    public final void c(Bundle bundle)
    {
    }

    protected final void d()
    {
        ae.sendEmptyMessage(5);
    }

    public final String j_()
    {
        return "video_scrubber";
    }

    public final void m_()
    {
        super.m_();
        ab = null;
        aa = null;
        i = null;
        ac = null;
    }

    public void onProgressChanged(SeekBar seekbar, int j, boolean flag)
    {
        if (flag)
        {
            a(j);
        }
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
    }
}
