// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.imagebutton;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.a.a;
import com.instagram.common.ui.widget.imageview.ConstrainedImageView;

// Referenced classes of package com.instagram.ui.widget.imagebutton:
//            b, a

public class IgImageButton extends FrameLayout
{

    private final b a;
    private ConstrainedImageView b;
    private View c;
    private View d;
    private AlphaAnimation e;
    private a f;
    private boolean g;

    public IgImageButton(Context context)
    {
        this(context, null);
    }

    public IgImageButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public IgImageButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new b(this, (byte)0);
        g = true;
        LayoutInflater.from(getContext()).inflate(aw.layout_imagebutton, this, true);
        d();
        b = (ConstrainedImageView)findViewById(av.image_button_image_view);
        b.setOnTouchListener(new com.instagram.ui.widget.imagebutton.a(this));
        int _tmp = au.grid_camera_icon;
        c = findViewById(av.touch_overlay);
        d = findViewById(av.video_overlay);
        b();
    }

    private void a()
    {
        c.clearAnimation();
        f.a(c);
    }

    static boolean a(IgImageButton igimagebutton)
    {
        return igimagebutton.g;
    }

    static b b(IgImageButton igimagebutton)
    {
        return igimagebutton.a;
    }

    private void b()
    {
        f.b(c);
    }

    private void c()
    {
        c.startAnimation(e);
    }

    static void c(IgImageButton igimagebutton)
    {
        igimagebutton.c();
    }

    private void d()
    {
        f = new a();
        e = new AlphaAnimation(1.0F, 0.0F);
        e.setDuration(400L);
        e.setFillAfter(true);
    }

    static void d(IgImageButton igimagebutton)
    {
        igimagebutton.a();
    }

    public ConstrainedImageView getImageView()
    {
        return b;
    }

    public View getVideoOverlayView()
    {
        return d;
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        int k = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - b.getPaddingLeft() - b.getPaddingRight(), 0x40000000);
        int l = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - b.getPaddingTop() - b.getPaddingBottom(), 0x40000000);
        c.measure(k, l);
    }

    public void setEnableTouchOverlay(boolean flag)
    {
        g = flag;
    }
}
