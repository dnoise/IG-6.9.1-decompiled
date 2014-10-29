// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.view.ak;
import android.support.v4.view.z;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.widget:
//            w, v, u, q, 
//            p, x, t, r

public final class SlidingPaneLayout extends ViewGroup
{

    static final t a;
    private int b;
    private int c;
    private Drawable d;
    private final int e;
    private boolean f;
    private View g;
    private float h;
    private float i;
    private int j;
    private boolean k;
    private int l;
    private float m;
    private float n;
    private r o;
    private final x p;
    private boolean q;
    private boolean r;
    private final Rect s;
    private final ArrayList t;

    static ArrayList a(SlidingPaneLayout slidingpanelayout)
    {
        return slidingpanelayout.t;
    }

    private void a()
    {
        int i1 = getChildCount();
        for (int j1 = 0; j1 < i1; j1++)
        {
            View view = getChildAt(j1);
            if (view.getVisibility() == 4)
            {
                view.setVisibility(0);
            }
        }

    }

    static void a(SlidingPaneLayout slidingpanelayout, View view)
    {
        slidingpanelayout.c(view);
    }

    private void a(View view)
    {
        int i1 = getPaddingLeft();
        int j1 = getWidth() - getPaddingRight();
        int k1 = getPaddingTop();
        int l1 = getHeight() - getPaddingBottom();
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        if (view != null && b(view))
        {
            l2 = view.getLeft();
            k2 = view.getRight();
            j2 = view.getTop();
            i2 = view.getBottom();
        } else
        {
            i2 = 0;
            j2 = 0;
            k2 = 0;
            l2 = 0;
        }
        i3 = getChildCount();
        j3 = 0;
        do
        {
            if (j3 >= i3)
            {
                break;
            }
            View view1 = getChildAt(j3);
            if (view1 == view)
            {
                break;
            }
            int k3 = Math.max(i1, view1.getLeft());
            int l3 = Math.max(k1, view1.getTop());
            int i4 = Math.min(j1, view1.getRight());
            int j4 = Math.min(l1, view1.getBottom());
            byte byte0;
            if (k3 >= l2 && l3 >= j2 && i4 <= k2 && j4 <= i2)
            {
                byte0 = 4;
            } else
            {
                byte0 = 0;
            }
            view1.setVisibility(byte0);
            j3++;
        } while (true);
    }

    private void a(View view, float f1, int i1)
    {
        q q1 = (q)view.getLayoutParams();
        if (f1 > 0.0F && i1 != 0)
        {
            int j1 = (int)(f1 * (float)((0xff000000 & i1) >>> 24)) << 24 | 0xffffff & i1;
            if (q1.d == null)
            {
                q1.d = new Paint();
            }
            q1.d.setColorFilter(new PorterDuffColorFilter(j1, android.graphics.PorterDuff.Mode.SRC_OVER));
            if (ak.e(view) != 2)
            {
                ak.a(view, 2, q1.d);
            }
            c(view);
        } else
        if (ak.e(view) != 0)
        {
            if (q1.d != null)
            {
                q1.d.setColorFilter(null);
            }
            p p1 = new p(this, view);
            t.add(p1);
            ak.a(this, p1);
            return;
        }
    }

    private boolean a(float f1)
    {
        if (!f)
        {
            return false;
        }
        q q1 = (q)g.getLayoutParams();
        int i1 = (int)((float)(getPaddingLeft() + q1.leftMargin) + f1 * (float)j);
        if (p.a(g, i1, g.getTop()))
        {
            a();
            ak.b(this);
            return true;
        } else
        {
            return false;
        }
    }

    private void b(float f1)
    {
        int i1 = 0;
        q q1 = (q)g.getLayoutParams();
        boolean flag;
        int j1;
        if (q1.c && q1.leftMargin <= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        for (j1 = getChildCount(); i1 < j1; i1++)
        {
            View view = getChildAt(i1);
            if (view == g)
            {
                continue;
            }
            int k1 = (int)((1.0F - i) * (float)l);
            i = f1;
            view.offsetLeftAndRight(k1 - (int)((1.0F - f1) * (float)l));
            if (flag)
            {
                a(view, 1.0F - i, c);
            }
        }

    }

    private boolean b()
    {
        boolean flag;
label0:
        {
            if (!r)
            {
                boolean flag1 = a(0.0F);
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            q = false;
            flag = true;
        }
        return flag;
    }

    private static boolean b(View view)
    {
        Drawable drawable = view.getBackground();
        boolean flag = false;
        if (drawable != null)
        {
            int i1 = drawable.getOpacity();
            flag = false;
            if (i1 == -1)
            {
                flag = true;
            }
        }
        return flag;
    }

    private void c(View view)
    {
        a.a(this, view);
    }

    private boolean c()
    {
        if (r || a(1.0F))
        {
            q = true;
            return true;
        } else
        {
            return false;
        }
    }

    private boolean d()
    {
        View _tmp = g;
        return c();
    }

    private boolean d(View view)
    {
        if (view == null)
        {
            return false;
        }
        q q1 = (q)view.getLayoutParams();
        return f && q1.c && h > 0.0F;
    }

    private boolean e()
    {
        View _tmp = g;
        return b();
    }

    private boolean f()
    {
        return !f || h == 1.0F;
    }

    private boolean g()
    {
        return f;
    }

    protected final boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof q) && super.checkLayoutParams(layoutparams);
    }

    public final void computeScroll()
    {
label0:
        {
            if (p.g())
            {
                if (f)
                {
                    break label0;
                }
                p.f();
            }
            return;
        }
        ak.b(this);
    }

    public final void draw(Canvas canvas)
    {
        super.draw(canvas);
        View view;
        if (getChildCount() > 1)
        {
            view = getChildAt(1);
        } else
        {
            view = null;
        }
        if (view == null || d == null)
        {
            return;
        } else
        {
            int i1 = d.getIntrinsicWidth();
            int j1 = view.getLeft();
            int k1 = view.getTop();
            int l1 = view.getBottom();
            int i2 = j1 - i1;
            d.setBounds(i2, k1, j1, l1);
            d.draw(canvas);
            return;
        }
    }

    protected final boolean drawChild(Canvas canvas, View view, long l1)
    {
        q q1;
        int i1;
        q1 = (q)view.getLayoutParams();
        i1 = canvas.save(2);
        if (f && !q1.b && g != null)
        {
            canvas.getClipBounds(s);
            s.right = Math.min(s.right, g.getLeft());
            canvas.clipRect(s);
        }
        if (android.os.Build.VERSION.SDK_INT >= 11) goto _L2; else goto _L1
_L1:
        if (!q1.c || h <= 0.0F) goto _L4; else goto _L3
_L3:
        android.graphics.Bitmap bitmap;
        if (!view.isDrawingCacheEnabled())
        {
            view.setDrawingCacheEnabled(true);
        }
        bitmap = view.getDrawingCache();
        if (bitmap == null) goto _L6; else goto _L5
_L5:
        boolean flag;
        canvas.drawBitmap(bitmap, view.getLeft(), view.getTop(), q1.d);
        flag = false;
_L7:
        canvas.restoreToCount(i1);
        return flag;
_L6:
        Log.e("SlidingPaneLayout", (new StringBuilder("drawChild: child view ")).append(view).append(" returned null drawing cache").toString());
_L2:
        flag = super.drawChild(canvas, view, l1);
        if (true) goto _L7; else goto _L4
_L4:
        if (view.isDrawingCacheEnabled())
        {
            view.setDrawingCacheEnabled(false);
        }
          goto _L2
    }

    protected final android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new q();
    }

    public final android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new q(getContext(), attributeset);
    }

    protected final android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
        {
            return new q((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        } else
        {
            return new q(layoutparams);
        }
    }

    public final int getCoveredFadeColor()
    {
        return c;
    }

    public final int getParallaxDistance()
    {
        return l;
    }

    public final int getSliderFadeColor()
    {
        return b;
    }

    protected final void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        r = true;
    }

    protected final void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        r = true;
        int i1 = t.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ((p)t.get(j1)).run();
        }

        t.clear();
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i1;
        boolean flag;
        i1 = z.a(motionevent);
        if (!f && i1 == 0 && getChildCount() > 1)
        {
            View view = getChildAt(1);
            if (view != null)
            {
                p;
                boolean flag2;
                if (!x.b(view, (int)motionevent.getX(), (int)motionevent.getY()))
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                q = flag2;
            }
        }
        if (f && (!k || i1 == 0)) goto _L2; else goto _L1
_L1:
        p.e();
        flag = super.onInterceptTouchEvent(motionevent);
_L7:
        return flag;
_L2:
        if (i1 == 3 || i1 == 1)
        {
            p.e();
            return false;
        }
        i1;
        JVM INSTR tableswitch 0 2: default 152
    //                   0 175
    //                   1 152
    //                   2 242;
           goto _L3 _L4 _L3 _L5
_L3:
        boolean flag1 = false;
_L9:
        if (p.a(motionevent))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = false;
        if (!flag1) goto _L7; else goto _L6
_L6:
        return true;
_L4:
        float f5;
        float f6;
        k = false;
        f5 = motionevent.getX();
        f6 = motionevent.getY();
        m = f5;
        n = f6;
        p;
        if (!x.b(g, (int)f5, (int)f6) || !d(g)) goto _L3; else goto _L8
_L8:
        flag1 = true;
          goto _L9
_L5:
        float f1 = motionevent.getX();
        float f2 = motionevent.getY();
        float f3 = Math.abs(f1 - m);
        float f4 = Math.abs(f2 - n);
        if (f3 > (float)p.d() && f4 > f3)
        {
            p.e();
            k = true;
            return false;
        }
          goto _L3
    }

    protected final void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        int i2 = k1 - i1;
        int j2 = getPaddingLeft();
        int k2 = getPaddingRight();
        int l2 = getPaddingTop();
        int i3 = getChildCount();
        int k3;
        if (r)
        {
            int j3;
            View view;
            q q1;
            int j4;
            int i5;
            int j5;
            int k5;
            float f1;
            if (f && q)
            {
                f1 = 1.0F;
            } else
            {
                f1 = 0.0F;
            }
            h = f1;
        }
        j3 = 0;
        k3 = j2;
        while (j3 < i3) 
        {
            view = getChildAt(j3);
            int i4;
            if (view.getVisibility() != 8)
            {
                q1 = (q)view.getLayoutParams();
                j4 = view.getMeasuredWidth();
                int k4 = 0;
                if (q1.b)
                {
                    j5 = q1.leftMargin + q1.rightMargin;
                    k5 = Math.min(k3, i2 - k2 - e) - j2 - j5;
                    j = k5;
                    boolean flag1;
                    if (k5 + (j2 + q1.leftMargin) + j4 / 2 > i2 - k2)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    q1.c = flag1;
                    i4 = j2 + ((int)((float)k5 * h) + q1.leftMargin);
                } else
                {
                    int l3;
                    int l4;
                    if (f && l != 0)
                    {
                        l4 = (int)((1.0F - h) * (float)l);
                    } else
                    {
                        l4 = 0;
                    }
                    k4 = l4;
                    i4 = k3;
                }
                i5 = i4 - k4;
                view.layout(i5, l2, i5 + j4, l2 + view.getMeasuredHeight());
                k3 += view.getWidth();
            } else
            {
                i4 = j2;
            }
            j3++;
            j2 = i4;
        }
        if (r)
        {
            if (f)
            {
                if (l != 0)
                {
                    b(h);
                }
                if (((q)g.getLayoutParams()).c)
                {
                    a(g, h, b);
                }
            } else
            {
                l3 = 0;
                while (l3 < i3) 
                {
                    a(getChildAt(l3), 0.0F, b);
                    l3++;
                }
            }
            a(g);
        }
        r = false;
    }

    protected final void onMeasure(int i1, int j1)
    {
        int k1;
        int l1;
        int i2;
        int j2;
        k1 = android.view.View.MeasureSpec.getMode(i1);
        l1 = android.view.View.MeasureSpec.getSize(i1);
        i2 = android.view.View.MeasureSpec.getMode(j1);
        j2 = android.view.View.MeasureSpec.getSize(j1);
        if (k1 == 0x40000000) goto _L2; else goto _L1
_L1:
        if (!isInEditMode()) goto _L4; else goto _L3
_L3:
        if (k1 == 0x80000000 || k1 != 0) goto _L6; else goto _L5
_L5:
        int k2;
        int l2;
        int i3;
        k2 = i2;
        l2 = 300;
        i3 = j2;
_L21:
        k2;
        JVM INSTR lookupswitch 2: default 88
    //                   -2147483648: 304
    //                   1073741824: 283;
           goto _L7 _L8 _L9
_L7:
        int j3;
        int k3;
        k3 = 0;
        j3 = -1;
_L15:
        boolean flag;
        int l3;
        int i4;
        int j4;
        int k4;
        float f1;
        flag = false;
        l3 = l2 - getPaddingLeft() - getPaddingRight();
        i4 = getChildCount();
        if (i4 > 2)
        {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        g = null;
        j4 = 0;
        k4 = k3;
        f1 = 0.0F;
_L14:
        if (j4 >= i4) goto _L11; else goto _L10
_L10:
        View view1;
        q q2;
        view1 = getChildAt(j4);
        q2 = (q)view1.getLayoutParams();
        if (view1.getVisibility() != 8) goto _L13; else goto _L12
_L12:
        int j8;
        float f2;
        boolean flag4;
        int k8;
        q2.c = false;
        j8 = l3;
        k8 = k4;
        f2 = f1;
        flag4 = flag;
_L19:
        j4++;
        flag = flag4;
        k4 = k8;
        l3 = j8;
        f1 = f2;
          goto _L14
_L4:
        throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
_L2:
        if (i2 == 0)
        {
            if (isInEditMode())
            {
                if (i2 == 0)
                {
                    k2 = 0x80000000;
                    l2 = l1;
                    i3 = 300;
                    continue; /* Loop/switch isn't completed */
                }
            } else
            {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            }
        }
          goto _L6
_L9:
        k3 = i3 - getPaddingTop() - getPaddingBottom();
        j3 = k3;
          goto _L15
_L8:
        j3 = i3 - getPaddingTop() - getPaddingBottom();
        k3 = 0;
          goto _L15
_L13:
        if (q2.a <= 0.0F) goto _L17; else goto _L16
_L16:
        f1 += q2.a;
        if (q2.width == 0) goto _L18; else goto _L17
_L17:
        int l6 = q2.leftMargin + q2.rightMargin;
        int i7;
        int j7;
        int k7;
        int l7;
        int i8;
        boolean flag2;
        boolean flag3;
        if (q2.width == -2)
        {
            i7 = android.view.View.MeasureSpec.makeMeasureSpec(l2 - l6, 0x80000000);
        } else
        if (q2.width == -1)
        {
            i7 = android.view.View.MeasureSpec.makeMeasureSpec(l2 - l6, 0x40000000);
        } else
        {
            i7 = android.view.View.MeasureSpec.makeMeasureSpec(q2.width, 0x40000000);
        }
        if (q2.height == -2)
        {
            j7 = android.view.View.MeasureSpec.makeMeasureSpec(j3, 0x80000000);
        } else
        if (q2.height == -1)
        {
            j7 = android.view.View.MeasureSpec.makeMeasureSpec(j3, 0x40000000);
        } else
        {
            j7 = android.view.View.MeasureSpec.makeMeasureSpec(q2.height, 0x40000000);
        }
        view1.measure(i7, j7);
        k7 = view1.getMeasuredWidth();
        l7 = view1.getMeasuredHeight();
        if (k2 == 0x80000000 && l7 > k4)
        {
            k4 = Math.min(l7, j3);
        }
        i8 = l3 - k7;
        if (i8 < 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        q2.b = flag2;
        flag3 = flag2 | flag;
        if (q2.b)
        {
            g = view1;
        }
        j8 = i8;
        f2 = f1;
        flag4 = flag3;
        k8 = k4;
          goto _L19
_L11:
        if (flag || f1 > 0.0F)
        {
            int l4 = l2 - e;
            int i5 = 0;
            while (i5 < i4) 
            {
                View view = getChildAt(i5);
                if (view.getVisibility() == 8)
                {
                    continue;
                }
                q q1 = (q)view.getLayoutParams();
                if (view.getVisibility() != 8)
                {
                    boolean flag1;
                    int j5;
                    if (q1.width == 0 && q1.a > 0.0F)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    if (flag1)
                    {
                        j5 = 0;
                    } else
                    {
                        j5 = view.getMeasuredWidth();
                    }
                    if (flag && view != g)
                    {
                        if (q1.width < 0 && (j5 > l4 || q1.a > 0.0F))
                        {
                            int k6;
                            if (flag1)
                            {
                                if (q1.height == -2)
                                {
                                    k6 = android.view.View.MeasureSpec.makeMeasureSpec(j3, 0x80000000);
                                } else
                                if (q1.height == -1)
                                {
                                    k6 = android.view.View.MeasureSpec.makeMeasureSpec(j3, 0x40000000);
                                } else
                                {
                                    k6 = android.view.View.MeasureSpec.makeMeasureSpec(q1.height, 0x40000000);
                                }
                            } else
                            {
                                k6 = android.view.View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0x40000000);
                            }
                            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l4, 0x40000000), k6);
                        }
                    } else
                    if (q1.a > 0.0F)
                    {
                        int k5;
                        if (q1.width == 0)
                        {
                            if (q1.height == -2)
                            {
                                k5 = android.view.View.MeasureSpec.makeMeasureSpec(j3, 0x80000000);
                            } else
                            if (q1.height == -1)
                            {
                                k5 = android.view.View.MeasureSpec.makeMeasureSpec(j3, 0x40000000);
                            } else
                            {
                                k5 = android.view.View.MeasureSpec.makeMeasureSpec(q1.height, 0x40000000);
                            }
                        } else
                        {
                            k5 = android.view.View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0x40000000);
                        }
                        if (flag)
                        {
                            int i6 = l2 - (q1.leftMargin + q1.rightMargin);
                            int j6 = android.view.View.MeasureSpec.makeMeasureSpec(i6, 0x40000000);
                            if (j5 != i6)
                            {
                                view.measure(j6, k5);
                            }
                        } else
                        {
                            int l5 = Math.max(0, l3);
                            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(j5 + (int)((q1.a * (float)l5) / f1), 0x40000000), k5);
                        }
                    }
                }
                i5++;
            }
        }
        setMeasuredDimension(l2, k4);
        f = flag;
        if (p.a() != 0 && !flag)
        {
            p.f();
        }
        return;
_L18:
        j8 = l3;
        k8 = k4;
        f2 = f1;
        flag4 = flag;
          goto _L19
_L6:
        k2 = i2;
        l2 = l1;
        i3 = j2;
        if (true) goto _L21; else goto _L20
_L20:
    }

    protected final void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        if (savedstate.a)
        {
            d();
        } else
        {
            e();
        }
        q = savedstate.a;
    }

    protected final Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        boolean flag;
        if (g())
        {
            flag = f();
        } else
        {
            flag = q;
        }
        savedstate.a = flag;
        return savedstate;
    }

    protected final void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        if (i1 != k1)
        {
            r = true;
        }
    }

    public final boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!f)
        {
            return super.onTouchEvent(motionevent);
        }
        p.b(motionevent);
        0xff & motionevent.getAction();
        JVM INSTR tableswitch 0 1: default 52
    //                   0 54
    //                   1 81;
           goto _L1 _L2 _L3
_L1:
        return true;
_L2:
        float f5 = motionevent.getX();
        float f6 = motionevent.getY();
        m = f5;
        n = f6;
        continue; /* Loop/switch isn't completed */
_L3:
        if (d(g))
        {
            float f1 = motionevent.getX();
            float f2 = motionevent.getY();
            float f3 = f1 - m;
            float f4 = f2 - n;
            int i1 = p.d();
            if (f3 * f3 + f4 * f4 < (float)(i1 * i1))
            {
                p;
                if (x.b(g, (int)f1, (int)f2))
                {
                    g;
                    b();
                }
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public final void requestChildFocus(View view, View view1)
    {
        super.requestChildFocus(view, view1);
        if (!isInTouchMode() && !f)
        {
            boolean flag;
            if (view == g)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            q = flag;
        }
    }

    public final void setCoveredFadeColor(int i1)
    {
        c = i1;
    }

    public final void setPanelSlideListener(r r1)
    {
        o = r1;
    }

    public final void setParallaxDistance(int i1)
    {
        l = i1;
        requestLayout();
    }

    public final void setShadowDrawable(Drawable drawable)
    {
        d = drawable;
    }

    public final void setShadowResource(int i1)
    {
        setShadowDrawable(getResources().getDrawable(i1));
    }

    public final void setSliderFadeColor(int i1)
    {
        b = i1;
    }

    static 
    {
        int i1 = android.os.Build.VERSION.SDK_INT;
        if (i1 >= 17)
        {
            a = new w();
        } else
        if (i1 >= 16)
        {
            a = new v();
        } else
        {
            a = new u();
        }
    }

    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new s();
        boolean a;

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            int j1;
            if (a)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            parcel.writeInt(j1);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        SavedState(Parcel parcel, byte byte0)
        {
            this(parcel);
        }

        SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

}
