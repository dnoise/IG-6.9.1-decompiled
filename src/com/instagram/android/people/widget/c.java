// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.instagram.common.h.a;
import com.instagram.common.y.d;
import com.instagram.common.y.f;
import com.instagram.model.people.PeopleTag;

// Referenced classes of package com.instagram.android.people.widget:
//            PeopleTagsLayout

public final class c extends ViewGroup
{

    protected static final int a = e(9);
    protected static final int b = e(7);
    protected static final int c = e(7);
    protected static final int d = e(6);
    protected static final int e = e(60);
    protected static final int f;
    protected static final int g;
    protected static final int h;
    protected static final int i = e(20);
    protected static final int j = e(5);
    protected TextView k;
    protected ImageView l;
    protected ImageView m;
    protected ImageView n;
    private boolean o;
    private int p;
    private Rect q;
    private Rect r;
    private Rect s;
    private boolean t;
    private PointF u;
    private PointF v;

    public c(Context context)
    {
        super(context);
        o = true;
        p = 0;
        q = new Rect(0, 0, 0, 0);
        r = new Rect(0, 0, 0, 0);
        s = new Rect(0, 0, 0, 0);
        t = false;
        v = new PointF(0.0F, 0.0F);
        e();
    }

    private PointF a(PointF pointf)
    {
        pointf.x = Math.max(pointf.x, i);
        pointf.x = Math.min(pointf.x, getMeasuredWidth() - i);
        pointf.y = Math.max(pointf.y, j);
        pointf.y = Math.min(pointf.y, getMeasuredHeight() - j);
        return pointf;
    }

    private void d(int i1)
    {
        if (u == null)
        {
            return;
        } else
        {
            p = i1;
            PointF pointf = new PointF();
            pointf.x = u.x * (float)p;
            pointf.y = u.y * (float)p;
            setPosition(pointf);
            return;
        }
    }

    private static int e(int i1)
    {
        return (int)(0.5F + com.instagram.common.y.f.a(com.instagram.common.h.a.a().getResources().getDisplayMetrics(), i1));
    }

    private void e()
    {
        android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-2, -2);
        k = f();
        m = g();
        n = h();
        l = i();
        addView(k, layoutparams);
        addView(m, layoutparams);
        addView(n, layoutparams);
        addView(l, layoutparams);
    }

    private TextView f()
    {
        TextView textview = new TextView(getContext());
        textview.setBackgroundResource(au.tag_bubble_bg);
        textview.setPadding(h, 0, h, 0);
        textview.setTypeface(null, 1);
        textview.setTextSize(2, 14F);
        textview.setMinimumWidth(e);
        textview.setGravity(17);
        textview.setTextColor(getResources().getColor(0x106000b));
        return textview;
    }

    private ImageView g()
    {
        ImageView imageview = new ImageView(getContext());
        imageview.setImageResource(au.carrot_up_bg);
        return imageview;
    }

    private ImageView h()
    {
        ImageView imageview = new ImageView(getContext());
        imageview.setImageResource(au.carrot_down_bg);
        return imageview;
    }

    private ImageView i()
    {
        ImageView imageview = new ImageView(getContext());
        imageview.setImageResource(au.tag_close_bg);
        imageview.setVisibility(8);
        return imageview;
    }

    private void j()
    {
        int i1 = getArrowXPosition();
        int j1 = getArrowYPosition();
        int k1 = k.getMeasuredWidth() / 2 - f;
        int l1 = m.getMeasuredWidth() / 2;
        if ((j1 - b - a) + m.getMeasuredHeight() + k.getMeasuredHeight() > p)
        {
            l();
            n.layout(i1 - l1, (j1 + c) - n.getMeasuredHeight(), l1 + i1, j1 + c);
            q.set(i1 - k1, (n.getTop() + a) - k.getMeasuredHeight(), i1 + k1, n.getTop() + a);
        } else
        {
            k();
            m.layout(i1 - l1, j1 - b, l1 + i1, (j1 - b) + m.getMeasuredHeight());
            q.set(i1 - k1, m.getBottom() - a, i1 + k1, (m.getBottom() - a) + k.getMeasuredHeight());
        }
        s.set(((q.left - k1) + i) - f, q.top, ((k1 + q.right) - i) + f, q.bottom);
    }

    private void k()
    {
        m.setVisibility(0);
        n.setVisibility(8);
    }

    private void l()
    {
        m.setVisibility(8);
        n.setVisibility(0);
    }

    final int a(int i1)
    {
        return Math.max(Math.min(0, b(i1)), s.left);
    }

    public final void a()
    {
label0:
        {
            k.layout(r.left, r.top, r.right, r.bottom);
            if (d())
            {
                if (r.right + d <= getMeasuredWidth())
                {
                    break label0;
                }
                l.layout(r.left - d, r.top - d, (r.left - d) + l.getMeasuredWidth(), (r.top - d) + l.getMeasuredHeight());
            }
            return;
        }
        l.layout((r.right + d) - l.getMeasuredWidth(), r.top - d, r.right + d, (r.top - d) + l.getMeasuredHeight());
    }

    final void a(Animation animation)
    {
        setAnimation(animation);
        o = false;
    }

    public final boolean a(int i1, int j1)
    {
        Rect rect = new Rect();
        int k1 = 0;
        do
        {
label0:
            {
                int l1 = getChildCount();
                boolean flag = false;
                if (k1 < l1)
                {
                    View view = getChildAt(k1);
                    if (view.getVisibility() != 0)
                    {
                        break label0;
                    }
                    view.getHitRect(rect);
                    if (!rect.contains(i1, j1))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            k1++;
        } while (true);
    }

    final int b(int i1)
    {
        return Math.min(i1 - k.getMeasuredWidth(), getArrowXPosition() - g);
    }

    public final void b()
    {
        if (l.getVisibility() == 0)
        {
            l.setVisibility(8);
        } else
        if (l.getVisibility() == 8)
        {
            l.setVisibility(0);
            return;
        }
    }

    final void b(Animation animation)
    {
        startAnimation(animation);
        o = true;
    }

    protected final boolean b(int i1, int j1)
    {
        if (!c() || !d())
        {
            return false;
        } else
        {
            Rect rect = new Rect();
            l.getHitRect(rect);
            return rect.contains(i1, j1);
        }
    }

    final void c(int i1)
    {
        int j1 = i1 - q.width() / 2;
        int k1 = Math.max(f, Math.min(getMeasuredWidth() - q.width() - f, j1));
        int l1 = Math.max(s.left, Math.min((getArrowXPosition() - i) + f, k1));
        r.set(l1 - f, q.top, (l1 - f) + k.getMeasuredWidth(), q.bottom);
    }

    public final boolean c()
    {
        return o;
    }

    protected final boolean d()
    {
        return l.getVisibility() == 0;
    }

    protected final PointF getAbsoluteTagPosition()
    {
        return v;
    }

    protected final int getArrowXPosition()
    {
        return (int)v.x;
    }

    protected final int getArrowYPosition()
    {
        return (int)v.y;
    }

    final int getBubbleWidth()
    {
        return q.width();
    }

    final Rect getDrawingBounds()
    {
        return r;
    }

    final Rect getMaxBounds()
    {
        return s;
    }

    public final String getMediaId()
    {
        return (String)getTag(av.key_media_id);
    }

    protected final PointF getNormalizedPosition()
    {
        return u;
    }

    final Rect getPreferredBounds()
    {
        return q;
    }

    public final String getTaggedUserId()
    {
        return ((PeopleTag)getTag()).d();
    }

    public final CharSequence getText()
    {
        return k.getText();
    }

    protected final void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
    }

    protected final void onMeasure(int i1, int j1)
    {
        for (int k1 = 0; k1 < getChildCount(); k1++)
        {
            getChildAt(k1).measure(0, 0);
        }

        setMeasuredDimension(android.view.View.MeasureSpec.getSize(i1), android.view.View.MeasureSpec.getSize(j1));
        int l1 = getMeasuredWidth();
        if (p != l1)
        {
            d(l1);
        }
    }

    public final boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        boolean flag1;
        flag = isClickable();
        flag1 = false;
        if (!flag) goto _L2; else goto _L1
_L1:
        if (!a((int)motionevent.getX(), (int)motionevent.getY())) goto _L4; else goto _L3
_L3:
        if (motionevent.getAction() != 0) goto _L6; else goto _L5
_L5:
        t = true;
_L9:
        android.view.ViewParent viewparent = getParent();
        if (viewparent != null && (viewparent instanceof PeopleTagsLayout))
        {
            if (((PeopleTagsLayout)viewparent).a(this))
            {
                if (motionevent.getAction() == 1)
                {
                    bringToFront();
                    ((PeopleTagsLayout)viewparent).invalidate();
                }
            } else
            if (motionevent.getAction() == 0)
            {
                setPressed(true);
            } else
            if (motionevent.getAction() == 1)
            {
                performClick();
            }
        }
        flag1 = true;
_L2:
        return flag1;
_L6:
        if (motionevent.getAction() == 1)
        {
            t = false;
            setPressed(false);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        boolean flag2;
        flag2 = t;
        flag1 = false;
        if (!flag2) goto _L2; else goto _L7
_L7:
        motionevent.setAction(3);
        setPressed(false);
        t = false;
        return true;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public final boolean performClick()
    {
        Intent intent = new Intent("PeopleTag.BROADCAST_TAG_CLICKED");
        intent.putExtra("PeopleTag.INTENT_EXTRA_USER_ID", getTaggedUserId());
        intent.putExtra("PeopleTag.INTENT_EXTRA_MEDIA_ID", getMediaId());
        com.instagram.common.y.d.a(intent);
        return super.performClick();
    }

    public final void setMediaId(String s1)
    {
        setTag(av.key_media_id, s1);
    }

    public final void setNormalizedPosition(PointF pointf)
    {
        u = pointf;
    }

    public final void setPosition(PointF pointf)
    {
        PointF pointf1 = a(pointf);
        v.set(pointf1);
        u.set(pointf1.x / (float)p, pointf1.y / (float)p);
        j();
        c(getArrowXPosition());
    }

    public final void setText(CharSequence charsequence)
    {
        k.setText(charsequence);
        k.measure(0, 0);
        int i1 = k.getMeasuredWidth() / 2 - f;
        q.left = (int)v.x - i1;
        q.right = q.left + k.getMeasuredWidth();
        s.set(((q.left - i1) + i) - f, q.top, ((i1 + q.right) - i) + f, q.bottom);
    }

    static 
    {
        f = e(10);
        g = e(10);
        h = f + g;
    }
}
