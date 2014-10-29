// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.imageview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.facebook.bb;
import com.instagram.common.g.b.c;
import com.instagram.common.g.b.k;

// Referenced classes of package com.instagram.common.ui.widget.imageview:
//            e, c, f, g

public class IgImageView extends ImageView
{

    protected boolean a;
    private String b;
    private Drawable c;
    private boolean d;
    private f e;
    private g f;
    private k g;

    public IgImageView(Context context)
    {
        super(context);
        a = false;
        d = false;
        g = new e(this);
    }

    public IgImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        d = false;
        g = new e(this);
        a(attributeset);
    }

    public IgImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = false;
        d = false;
        g = new e(this);
        a(attributeset);
    }

    static String a(IgImageView igimageview)
    {
        return igimageview.b;
    }

    private void a(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, bb.IgImageView);
        int i = typedarray.getColor(bb.IgImageView_placeholder, 0);
        if (i != 0)
        {
            c = new com.instagram.common.ui.widget.imageview.c(i);
        }
        typedarray.recycle();
    }

    private void a(String s, boolean flag)
    {
        b(s, flag);
    }

    static f b(IgImageView igimageview)
    {
        return igimageview.e;
    }

    private void b(String s, boolean flag)
    {
        a = false;
        b = s;
        (new c(s, g)).a(d).a().b(flag).b();
    }

    static Drawable c(IgImageView igimageview)
    {
        return igimageview.c;
    }

    static g d(IgImageView igimageview)
    {
        return igimageview.f;
    }

    public final void b()
    {
        a(b, true);
    }

    public final boolean c()
    {
        return a;
    }

    public String getUrl()
    {
        return b;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
    }

    public void setOnLoadListener(f f1)
    {
        e = f1;
    }

    public void setProgressListener(g g1)
    {
        f = g1;
    }

    public void setReportProgress(boolean flag)
    {
        d = flag;
    }

    public void setUrl(String s)
    {
        a(s, false);
    }
}
