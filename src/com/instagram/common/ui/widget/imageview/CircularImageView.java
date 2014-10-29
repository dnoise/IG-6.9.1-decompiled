// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.imageview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.bb;

// Referenced classes of package com.instagram.common.ui.widget.imageview:
//            IgImageView, b, a, c

public class CircularImageView extends IgImageView
{

    private Drawable b;

    public CircularImageView(Context context)
    {
        super(context);
    }

    public CircularImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(attributeset);
    }

    public CircularImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(attributeset);
    }

    private static GradientDrawable a(int i)
    {
        GradientDrawable gradientdrawable = new GradientDrawable();
        gradientdrawable.setColor(i);
        gradientdrawable.setShape(1);
        return gradientdrawable;
    }

    private void a(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, bb.CircularImageView);
        int i = typedarray.getColor(bb.CircularImageView_strokeColor, 0);
        int j = typedarray.getDimensionPixelSize(bb.CircularImageView_strokeWidth, 0);
        typedarray.recycle();
        if (j != 0)
        {
            b = new b(j, i);
        }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (b != null)
        {
            b.draw(canvas);
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (b != null)
        {
            b.setBounds(0, 0, getWidth(), getHeight());
        }
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        a a1;
        if (bitmap != null)
        {
            a1 = new a(bitmap);
        } else
        {
            a1 = null;
        }
        super.setImageDrawable(a1);
    }

    public void setImageDrawable(Drawable drawable)
    {
        if (drawable instanceof BitmapDrawable)
        {
            setImageBitmap(((BitmapDrawable)drawable).getBitmap());
            return;
        }
        if (drawable instanceof c)
        {
            super.setImageDrawable(a(((c)drawable).a()));
            return;
        }
        if ((drawable instanceof a) || (drawable instanceof GradientDrawable) || drawable == null)
        {
            super.setImageDrawable(drawable);
            return;
        } else
        {
            throw new UnsupportedOperationException((new StringBuilder("This view doesn't support drawable type: ")).append(drawable.getClass()).toString());
        }
    }

    public void setImageResource(int i)
    {
        throw new UnsupportedOperationException("Use setImageDrawable or setImageBitmap");
    }

    public void setImageURI(Uri uri)
    {
        throw new UnsupportedOperationException("Use setImageDrawable or setImageBitmap");
    }

    public void setStrokeAlpha(int i)
    {
        if (b != null)
        {
            b.setAlpha(i);
        }
    }
}
