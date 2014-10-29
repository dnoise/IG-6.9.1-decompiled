// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.hardware.Camera;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.e.a.a;
import com.instagram.camera.h;
import com.instagram.camera.ui.FocusIndicatorView;
import com.instagram.camera.ui.RotateLayout;
import com.instagram.creation.video.gl.GLRootView;
import com.instagram.creation.video.l.b;
import com.instagram.creation.video.ui.CamcorderPreviewLayout;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.f:
//            a, k

final class j
    implements android.view.View.OnTouchListener
{

    final FocusIndicatorView a;
    final com.instagram.creation.video.f.a b;

    j(com.instagram.creation.video.f.a a1, FocusIndicatorView focusindicatorview)
    {
        b = a1;
        a = focusindicatorview;
        super();
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (!com.instagram.creation.video.f.a.y(b) && com.instagram.creation.video.f.a.z(b) != null && motionevent.getAction() == 1)
        {
            int i = (int)motionevent.getX();
            int l = (int)motionevent.getY();
            if (h.a(com.instagram.creation.video.f.a.A(b)).facing != 1)
            {
                int i1 = com.instagram.creation.video.f.a.a(b).getWidth();
                int j1 = com.instagram.creation.video.f.a.a(b).getHeight();
                int k1 = com.instagram.creation.video.f.a.k(b).getWidth();
                int l1 = com.instagram.creation.video.f.a.k(b).getHeight();
                if (com.instagram.creation.video.f.a.B(b) == null)
                {
                    com.instagram.creation.video.f.a.a(b, new ArrayList());
                    com.instagram.creation.video.f.a.B(b).add(new android.hardware.Camera.Area(new Rect(), 1));
                    com.instagram.creation.video.f.a.b(b, new ArrayList());
                    com.instagram.creation.video.f.a.C(b).add(new android.hardware.Camera.Area(new Rect(), 1));
                }
                if (com.instagram.creation.video.f.a.D(b) == null)
                {
                    com.instagram.creation.video.f.a.a(b, new Matrix());
                    Matrix matrix = new Matrix();
                    int j2 = com.instagram.creation.video.f.a.E(b).getWidth();
                    int k2 = com.instagram.creation.video.f.a.E(b).getHeight();
                    h.a(matrix, false, com.instagram.creation.video.l.b.a(com.instagram.creation.video.f.a.e(b), com.instagram.creation.video.f.a.A(b)), j2, k2);
                    matrix.invert(com.instagram.creation.video.f.a.D(b));
                }
                com.instagram.creation.video.f.a.a(b, i1, j1, 1.0F, i, l, k1, l1, ((android.hardware.Camera.Area)com.instagram.creation.video.f.a.B(b).get(0)).rect);
                com.instagram.creation.video.f.a.a(b, i1, j1, 1.5F, i, l, k1, l1, ((android.hardware.Camera.Area)com.instagram.creation.video.f.a.C(b).get(0)).rect);
                ((android.view.ViewGroup.MarginLayoutParams)com.instagram.creation.video.f.a.a(b).getLayoutParams()).setMargins(h.b(i - i1 / 2, k1 - i1), h.b(l - j1 / 2, l1 - j1), 0, 0);
                com.instagram.creation.video.f.a.a(b).requestLayout();
                int i2 = Math.min(com.instagram.creation.video.f.a.k(b).getWidth(), com.instagram.creation.video.f.a.k(b).getHeight()) / 4;
                android.view.ViewGroup.LayoutParams layoutparams = a.getLayoutParams();
                layoutparams.width = i2;
                layoutparams.height = i2;
                a.a();
                com.instagram.creation.video.f.a.a(b, com.instagram.creation.video.f.a.z(b).getParameters());
                com.instagram.creation.video.f.a.F(b).setFocusAreas(com.instagram.creation.video.f.a.B(b));
                com.instagram.creation.video.f.a.F(b).setMeteringAreas(com.instagram.creation.video.f.a.C(b));
                try
                {
                    com.instagram.creation.video.f.a.z(b).setParameters(com.instagram.creation.video.f.a.F(b));
                }
                catch (RuntimeException runtimeexception)
                {
                    com.facebook.e.a.a.a("CamcorderFragment", "Could not set parameters.", runtimeexception);
                }
                com.instagram.creation.video.f.a.a(b, false);
                com.instagram.creation.video.f.a.z(b).autoFocus(new k(this));
                return true;
            }
        }
        return true;
    }
}
