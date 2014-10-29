// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.ag;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.ba;
import com.instagram.common.ui.widget.imageview.PunchedOverlayView;
import com.instagram.common.y.d;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.e;
import com.instagram.creation.base.ui.a;
import com.instagram.creation.video.l.g;
import com.instagram.creation.video.ui.r;
import com.instagram.creation.video.ui.s;
import com.instagram.ui.dialog.f;

// Referenced classes of package com.instagram.creation.video.f:
//            bf, ba, av, au, 
//            aw, bb, bi, am, 
//            ao, as

public final class ar extends bf
{

    private final com.instagram.creation.video.f.ba a = new com.instagram.creation.video.f.ba(this, (byte)0);
    private f b;
    private com.instagram.creation.video.f.av c;
    private com.instagram.creation.video.f.aw d;
    private final Handler e = new Handler();
    private r f;
    private PunchedOverlayView g;

    public ar()
    {
    }

    private void X()
    {
        View view = E().findViewById(av.creation_secondary_actions);
        ImageView imageview = (ImageView)view.findViewById(av.button_mode_trim);
        boolean flag;
        if (g != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (c == av.c || flag)
        {
            imageview.setImageResource(au.tab_trim_anim_on);
        } else
        {
            imageview.setImageResource(au.tab_trim_anim_off);
        }
        ((AnimationDrawable)imageview.getDrawable()).start();
        if (flag)
        {
            g.setOnClickListener(new com.instagram.creation.video.f.au(this));
            int ai[] = new int[2];
            imageview.getLocationOnScreen(ai);
            if (com.instagram.creation.base.ui.a.b(o()))
            {
                g.a(ai[0] + imageview.getWidth() / 2, ai[1] + imageview.getHeight() / 2, 0.4F * (float)view.getHeight());
                a(s.e, 81, E().getHeight() - ai[1]);
            } else
            {
                g.a(ai[0] + imageview.getWidth() / 2, ai[1] + imageview.getHeight() / 2, 0.36F * (float)view.getHeight());
                a(s.f, 49, (5 * view.getHeight()) / 6);
            }
            com.instagram.l.b.a.a().s();
        }
    }

    private void Y()
    {
        if (f != null)
        {
            f.dismiss();
            f = null;
        }
        if (g != null)
        {
            g.setVisibility(8);
            ImageView imageview = (ImageView)E().findViewById(av.button_mode_trim);
            imageview.setImageResource(au.tab_trim_off);
            imageview.invalidate();
            g = null;
        }
        e.removeCallbacksAndMessages(null);
    }

    private void Z()
    {
        if (d != null)
        {
            d.c(j());
            d.b();
            d = null;
        }
    }

    static PunchedOverlayView a(ar ar1, PunchedOverlayView punchedoverlayview)
    {
        ar1.g = punchedoverlayview;
        return punchedoverlayview;
    }

    private void a(int i)
    {
        if (i == com.instagram.creation.video.f.av.b.d)
        {
            c(false);
        } else
        if (i == av.c.d)
        {
            ab();
        } else
        {
            aa();
        }
        j().putInt("VideoEditFragment.EDIT_MODE", c.d);
    }

    public static void a(Bundle bundle, com.instagram.creation.video.f.av av1)
    {
        bundle.putInt("VideoEditFragment.EDIT_MODE", av1.d);
    }

    static void a(ar ar1)
    {
        ar1.ac();
    }

    static void a(ar ar1, int i)
    {
        ar1.a(i);
    }

    static void a(com.instagram.creation.video.f.av av1)
    {
        Intent intent = new Intent("VideoEditFragment.INTENT_ACTION_EDIT_MODE");
        intent.putExtra("VideoEditFragment.EDIT_MODE", av1.d);
        com.instagram.common.y.d.b(intent);
    }

    private void a(s s1, int i, int j)
    {
        if (f == null)
        {
            f = new r(l(), s1);
        }
        if (!f.isShowing())
        {
            f.setAnimationStyle(ba.Tooltip_Popup);
            f.showAtLocation(E(), i, 0, j);
        }
    }

    private void aa()
    {
        if (c == com.instagram.creation.video.f.av.a && d != null)
        {
            return;
        } else
        {
            Z();
            Bundle bundle = new Bundle(j());
            c = com.instagram.creation.video.f.av.a;
            d = new bb();
            d.g(bundle);
            q().a().b(av.video_edit_fragment_container_front, d).b();
            return;
        }
    }

    private void ab()
    {
        if (c == av.c && d != null)
        {
            return;
        } else
        {
            Z();
            Bundle bundle = new Bundle(j());
            c = av.c;
            d = new bi();
            d.g(bundle);
            q().a().b(av.video_edit_fragment_container_front, d).b();
            return;
        }
    }

    private void ac()
    {
        Z();
        android.support.v4.app.s s1 = q();
        android.support.v4.app.Fragment fragment = s1.a(av.video_edit_fragment_container_back);
        if (fragment != null)
        {
            s1.a().a(fragment).b();
        }
        android.support.v4.app.Fragment fragment1 = s1.a(av.video_edit_fragment_container_front);
        if (fragment1 != null)
        {
            s1.a().a(fragment1).b();
        }
        if (b != null)
        {
            b.dismiss();
            b = null;
        }
        b b1 = W();
        ((com.instagram.creation.video.k.a)l()).d(b1);
        ((com.instagram.creation.base.a)l()).a(b1.a(), ad());
    }

    private boolean ad()
    {
        Bundle bundle = j();
        boolean flag = false;
        if (bundle != null)
        {
            boolean flag1 = j().getBoolean("directShare", false);
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        return flag;
    }

    static void b()
    {
        com.instagram.common.y.d.b(new Intent("VideoEditFragment.INTENT_ACTION_START_SHARE_SCREEN"));
    }

    static void b(ar ar1)
    {
        ar1.X();
    }

    static Handler c(ar ar1)
    {
        return ar1.e;
    }

    private void c(boolean flag)
    {
        if (c == com.instagram.creation.video.f.av.b && d != null)
        {
            return;
        }
        Z();
        Bundle bundle = new Bundle(j());
        bundle.putBoolean("VideoCoverFragmentBase.SAVE_AND_FINISH", flag);
        c = com.instagram.creation.video.f.av.b;
        int i;
        if (com.instagram.creation.c.a.e())
        {
            d = new am();
        } else
        {
            d = new ao();
        }
        d.g(bundle);
        if (flag)
        {
            i = av.video_edit_fragment_container_back;
        } else
        {
            i = av.video_edit_fragment_container_front;
        }
        q().a().b(i, d).b();
    }

    static void d(ar ar1)
    {
        ar1.Y();
    }

    public final void F()
    {
        super.F();
        l().setRequestedOrientation(1);
        l().getWindow().addFlags(1024);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("VideoEditFragment.INTENT_ACTION_EDIT_MODE");
        intentfilter.addAction("VideoEditFragment.INTENT_ACTION_START_SHARE_SCREEN");
        com.instagram.common.y.d.a(a, intentfilter);
    }

    public final void G()
    {
        super.G();
        com.instagram.common.y.d.a(a);
        Y();
    }

    public final String V()
    {
        return o().getString(az.edit);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_video_edit, viewgroup, false);
        FrameLayout framelayout = (FrameLayout)view.findViewById(av.video_edit_actionbar_container);
        int i;
        if (com.instagram.creation.base.ui.a.b(o()))
        {
            i = aw.action_bar_video;
        } else
        {
            i = aw.action_bar_video_small;
        }
        framelayout.addView(layoutinflater.inflate(i, viewgroup, false));
        return view;
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        if (com.instagram.creation.video.l.g.a(j()))
        {
            ((e)l()).a(new as(this));
            return;
        } else
        {
            a(j().getInt("VideoEditFragment.EDIT_MODE", com.instagram.creation.video.f.av.a.d));
            return;
        }
    }

    public final void c()
    {
        b b1 = W();
        if (b1 != null)
        {
            com.instagram.creation.video.c.b.a(b1.L(), n());
        }
        l().onBackPressed();
    }

    public final void d()
    {
        String s1 = c(az.processing);
        b = new f(n());
        b.a(s1);
        b.show();
        if (c == com.instagram.creation.video.f.av.a || c == av.c)
        {
            c(true);
        } else
        if (c == com.instagram.creation.video.f.av.b)
        {
            Z();
            com.instagram.common.y.d.b("VideoCoverFragmentBase.INTENT_ACTION_SAVE_COVER_FRAME");
            return;
        }
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        if (d != null)
        {
            d.c(j());
        }
        bundle.putAll(j());
    }

    public final String j_()
    {
        return "video_edit";
    }

    public final void m_()
    {
        super.m_();
    }
}
