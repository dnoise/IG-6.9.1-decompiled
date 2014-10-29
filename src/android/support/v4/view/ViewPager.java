// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.widget.e;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

// Referenced classes of package android.support.v4.view:
//            be, bf, bq, bi, 
//            bg, ae, bj, ak, 
//            bm, z, s, az, 
//            bk, bh, af, bo, 
//            bl, bn

public class ViewPager extends ViewGroup
{

    private static final int a[] = {
        0x10100b3
    };
    private static final bq aj = new bq();
    private static final Comparator e = new be();
    private static final Interpolator f = new bf();
    private boolean A;
    private int B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private int H;
    private float I;
    private float J;
    private float K;
    private float L;
    private int M;
    private VelocityTracker N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private boolean S;
    private e T;
    private e U;
    private boolean V;
    private boolean W;
    private boolean Z;
    private int aa;
    private boolean ab;
    private bm ac;
    private bm ad;
    private bl ae;
    private bn af;
    private Method ag;
    private int ah;
    private ArrayList ai;
    private final Runnable ak;
    private int al;
    private int b;
    private int c;
    private float d;
    private final ArrayList g;
    private final bi h;
    private final Rect i;
    private ae j;
    private int k;
    private int l;
    private Parcelable m;
    private ClassLoader n;
    private Scroller o;
    private bo p;
    private int q;
    private Drawable r;
    private int s;
    private int t;
    private float u;
    private float v;
    private int w;
    private int x;
    private boolean y;
    private boolean z;

    public ViewPager(Context context)
    {
        super(context);
        g = new ArrayList();
        h = new bi();
        i = new Rect();
        l = -1;
        m = null;
        n = null;
        u = -3.402823E+38F;
        v = 3.402823E+38F;
        B = 1;
        M = -1;
        V = true;
        W = false;
        ab = true;
        ak = new bg(this);
        al = 0;
        d();
    }

    public ViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = new ArrayList();
        h = new bi();
        i = new Rect();
        l = -1;
        m = null;
        n = null;
        u = -3.402823E+38F;
        v = 3.402823E+38F;
        B = 1;
        M = -1;
        V = true;
        W = false;
        ab = true;
        ak = new bg(this);
        al = 0;
        d();
    }

    private static float a(float f1)
    {
        return (float)Math.sin((float)(0.4712389167638204D * (double)(f1 - 0.5F)));
    }

    private int a(int i1, float f1, int j1, int k1)
    {
        if (Math.abs(k1) > Q && Math.abs(j1) > O)
        {
            if (j1 <= 0)
            {
                i1++;
            }
        } else
        {
            float f2;
            if (i1 >= k)
            {
                f2 = 0.4F;
            } else
            {
                f2 = 0.6F;
            }
            i1 = (int)(f2 + (f1 + (float)i1));
        }
        if (g.size() > 0)
        {
            bi bi1 = (bi)g.get(0);
            bi bi2 = (bi)g.get(-1 + g.size());
            i1 = Math.max(bi1.b, Math.min(i1, bi2.b));
        }
        return i1;
    }

    private Rect a(Rect rect, View view)
    {
        Rect rect1;
        if (rect == null)
        {
            rect1 = new Rect();
        } else
        {
            rect1 = rect;
        }
        if (view == null)
        {
            rect1.set(0, 0, 0, 0);
            return rect1;
        }
        rect1.left = view.getLeft();
        rect1.right = view.getRight();
        rect1.top = view.getTop();
        rect1.bottom = view.getBottom();
        ViewGroup viewgroup;
        for (ViewParent viewparent = view.getParent(); (viewparent instanceof ViewGroup) && viewparent != this; viewparent = viewgroup.getParent())
        {
            viewgroup = (ViewGroup)viewparent;
            rect1.left = rect1.left + viewgroup.getLeft();
            rect1.right = rect1.right + viewgroup.getRight();
            rect1.top = rect1.top + viewgroup.getTop();
            rect1.bottom = rect1.bottom + viewgroup.getBottom();
        }

        return rect1;
    }

    private bi a(View view)
    {
        for (int i1 = 0; i1 < g.size(); i1++)
        {
            bi bi1 = (bi)g.get(i1);
            if (j.a(view, bi1.a))
            {
                return bi1;
            }
        }

        return null;
    }

    private void a(int i1)
    {
        byte byte0;
        bi bi1;
        int k1;
        int l1;
        int i2;
        int j2;
        bi bi2;
        bi bi3;
        bi bi7;
        int k3;
        int l3;
        int i4;
        float f2;
        int k4;
        int l4;
        int i5;
        float f3;
        int j5;
        int l5;
        int i6;
        bi bi10;
        bi bi11;
        float f6;
        android.content.res.Resources.NotFoundException notfoundexception;
        String s1;
        String s2;
        if (k != i1)
        {
            byte byte1;
            bi bi16;
            if (k < i1)
            {
                byte1 = 66;
            } else
            {
                byte1 = 17;
            }
            bi16 = b(k);
            k = i1;
            bi1 = bi16;
            byte0 = byte1;
        } else
        {
            byte0 = 2;
            bi1 = null;
        }
        if (j != null) goto _L2; else goto _L1
_L1:
        f();
_L4:
        return;
_L2:
        if (A)
        {
            f();
            return;
        }
        if (getWindowToken() == null) goto _L4; else goto _L3
_L3:
        j.a();
        int j1 = B;
        k1 = Math.max(0, k - j1);
        l1 = j.c();
        i2 = Math.min(l1 - 1, j1 + k);
        if (l1 == b) goto _L6; else goto _L5
_L5:
        s2 = getResources().getResourceName(getId());
        s1 = s2;
_L7:
        throw new IllegalStateException((new StringBuilder("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ")).append(b).append(", found: ").append(l1).append(" Pager id: ").append(s1).append(" Pager class: ").append(getClass()).append(" Problematic adapter: ").append(j.getClass()).toString());
        notfoundexception;
        s1 = Integer.toHexString(getId());
        if (true) goto _L7; else goto _L6
_L6:
        j2 = 0;
_L17:
        if (j2 >= g.size())
        {
            break MISSING_BLOCK_LABEL_1352;
        }
        bi2 = (bi)g.get(j2);
        if (bi2.b < k) goto _L9; else goto _L8
_L8:
        if (bi2.b != k)
        {
            break MISSING_BLOCK_LABEL_1352;
        }
_L34:
        if (bi2 == null && l1 > 0)
        {
            bi3 = b(k, j2);
        } else
        {
            bi3 = bi2;
        }
        if (bi3 == null) goto _L11; else goto _L10
_L10:
        int j3 = j2 - 1;
        float f1;
        int j4;
        if (j3 >= 0)
        {
            bi7 = (bi)g.get(j3);
        } else
        {
            bi7 = null;
        }
        k3 = getClientWidth();
        if (k3 <= 0)
        {
            f1 = 0.0F;
        } else
        {
            f1 = (2.0F - bi3.d) + (float)getPaddingLeft() / (float)k3;
        }
        if (C)
        {
            l3 = Math.max(0, -1 + k);
        } else
        {
            l3 = k1;
        }
        if (C)
        {
            i4 = Math.min(l1 - 1, 1 + k);
        } else
        {
            i4 = i2;
        }
        j4 = -1 + k;
        f2 = 0.0F;
        k4 = j4;
        l4 = j2;
        i5 = j3;
        if (k4 < 0) goto _L13; else goto _L12
_L12:
        if (f2 < f1 || k4 >= k1) goto _L15; else goto _L14
_L14:
        if (bi7 == null) goto _L13; else goto _L16
_L16:
        if (k4 == bi7.b && !bi7.c)
        {
            g.remove(i5);
            j.a(bi7.a);
            i5--;
            l4--;
            if (i5 >= 0)
            {
                bi7 = (bi)g.get(i5);
            } else
            {
                bi7 = null;
            }
        }
_L18:
        k4--;
        break MISSING_BLOCK_LABEL_432;
_L9:
        j2++;
          goto _L17
_L15:
        if (bi7 != null && k4 == bi7.b)
        {
            f2 += bi7.d;
            if (--i5 >= 0)
            {
                bi7 = (bi)g.get(i5);
            } else
            {
                bi7 = null;
            }
        } else
        if (k4 >= l3)
        {
            f2 += b(k4, i5 + 1).d;
            l4++;
            if (i5 >= 0)
            {
                bi7 = (bi)g.get(i5);
            } else
            {
                bi7 = null;
            }
        }
          goto _L18
_L13:
        f3 = bi3.d;
        j5 = l4 + 1;
        if (f3 >= 2.0F) goto _L20; else goto _L19
_L19:
        bi bi8;
        float f4;
        int k5;
        bi bi9;
        float f7;
        float f10;
        if (j5 < g.size())
        {
            bi8 = (bi)g.get(j5);
        } else
        {
            bi8 = null;
        }
        if (k3 <= 0)
        {
            f4 = 0.0F;
        } else
        {
            f4 = 2.0F + (float)getPaddingRight() / (float)k3;
        }
        k5 = 1 + k;
        bi9 = bi8;
        l5 = j5;
        i6 = k5;
        bi10 = bi9;
        if (i6 >= l1) goto _L20; else goto _L21
_L21:
        if (f3 < f4 || i6 <= i2) goto _L23; else goto _L22
_L22:
        if (bi10 == null) goto _L20; else goto _L24
_L24:
        if (i6 != bi10.b || bi10.c) goto _L26; else goto _L25
_L25:
        g.remove(l5);
        j.a(bi10.a);
        bi bi15;
        if (l5 < g.size())
        {
            bi15 = (bi)g.get(l5);
        } else
        {
            bi15 = null;
        }
        f10 = f3;
        bi11 = bi15;
        f6 = f10;
_L27:
        i6++;
        f7 = f6;
        bi10 = bi11;
        f3 = f7;
        break MISSING_BLOCK_LABEL_772;
_L23:
label0:
        {
            if (bi10 == null || i6 != bi10.b)
            {
                break label0;
            }
            float f9 = f3 + bi10.d;
            bi bi14;
            if (++l5 < g.size())
            {
                bi14 = (bi)g.get(l5);
            } else
            {
                bi14 = null;
            }
            bi11 = bi14;
            f6 = f9;
        }
          goto _L27
        if (i6 > i4) goto _L26; else goto _L28
_L28:
        bi bi12 = b(i6, l5);
        l5++;
        float f8 = f3 + bi12.d;
        bi bi13;
        if (l5 < g.size())
        {
            bi13 = (bi)g.get(l5);
        } else
        {
            bi13 = null;
        }
        bi11 = bi13;
        f6 = f8;
          goto _L27
_L20:
        a(bi3, l4, bi1);
_L11:
        ae ae1 = j;
        k;
        Object obj;
        int k2;
        if (bi3 != null)
        {
            obj = bi3.a;
        } else
        {
            obj = null;
        }
        ae1.b(obj);
        j.b();
        k2 = getChildCount();
        for (int l2 = 0; l2 < k2; l2++)
        {
            View view2 = getChildAt(l2);
            bj bj1 = (bj)view2.getLayoutParams();
            bj1.f = l2;
            if (bj1.a || bj1.c != 0.0F)
            {
                continue;
            }
            bi bi6 = a(view2);
            if (bi6 != null)
            {
                bj1.c = bi6.d;
                bj1.e = bi6.b;
            }
        }

        f();
        if (!hasFocus()) goto _L4; else goto _L29
_L29:
        View view = findFocus();
        bi bi4;
        int i3;
        View view1;
        bi bi5;
        if (view != null)
        {
            bi4 = b(view);
        } else
        {
            bi4 = null;
        }
        if (bi4 != null && bi4.b == k) goto _L4; else goto _L30
_L30:
        i3 = 0;
_L33:
        if (i3 >= getChildCount()) goto _L4; else goto _L31
_L31:
        view1 = getChildAt(i3);
        bi5 = a(view1);
        if (bi5 != null && bi5.b == k && view1.requestFocus(byte0)) goto _L4; else goto _L32
_L32:
        i3++;
          goto _L33
_L26:
        float f5 = f3;
        bi11 = bi10;
        f6 = f5;
          goto _L27
        bi2 = null;
          goto _L34
    }

    private void a(int i1, float f1)
    {
        if (aa <= 0) goto _L2; else goto _L1
_L1:
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        l1 = getScrollX();
        i2 = getPaddingLeft();
        j2 = getPaddingRight();
        k2 = getWidth();
        l2 = getChildCount();
        i3 = 0;
_L8:
        if (i3 >= l2) goto _L2; else goto _L3
_L3:
        View view1;
        bj bj1;
        view1 = getChildAt(i3);
        bj1 = (bj)view1.getLayoutParams();
        if (!bj1.a)
        {
            break MISSING_BLOCK_LABEL_382;
        }
        7 & bj1.b;
        JVM INSTR tableswitch 1 5: default 116
    //                   1 204
    //                   2 116
    //                   3 175
    //                   4 116
    //                   5 236;
           goto _L4 _L5 _L4 _L6 _L4 _L7
_L4:
        int k3;
        int l3;
        int j4;
        j4 = i2;
        int l5 = j2;
        k3 = i2;
        l3 = l5;
_L9:
        int l4 = (j4 + l1) - view1.getLeft();
        if (l4 != 0)
        {
            view1.offsetLeftAndRight(l4);
        }
_L10:
        i3++;
        int i4 = l3;
        i2 = k3;
        j2 = i4;
          goto _L8
_L6:
        int j5 = i2 + view1.getWidth();
        int k5 = i2;
        l3 = j2;
        k3 = j5;
        j4 = k5;
          goto _L9
_L5:
        j4 = Math.max((k2 - view1.getMeasuredWidth()) / 2, i2);
        int i5 = j2;
        k3 = i2;
        l3 = i5;
          goto _L9
_L7:
        j4 = k2 - j2 - view1.getMeasuredWidth();
        int k4 = j2 + view1.getMeasuredWidth();
        k3 = i2;
        l3 = k4;
          goto _L9
_L2:
        c = i1;
        d = f1;
        if (ac != null)
        {
            ac;
        }
        if (ad != null)
        {
            ad;
        }
        if (af != null)
        {
            getScrollX();
            int j1 = getChildCount();
            for (int k1 = 0; k1 < j1; k1++)
            {
                View view = getChildAt(k1);
                if (!((bj)view.getLayoutParams()).a)
                {
                    view.getLeft();
                    getClientWidth();
                    af;
                }
            }

        }
        Z = true;
        return;
        int j3 = j2;
        k3 = i2;
        l3 = j3;
          goto _L10
    }

    private void a(int i1, int j1)
    {
        if (getChildCount() == 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        int k1 = getScrollX();
        int l1 = getScrollY();
        int i2 = i1 - k1;
        int j2 = 0 - l1;
        if (i2 == 0 && j2 == 0)
        {
            a(false);
            b();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int k2 = getClientWidth();
        int l2 = k2 / 2;
        float f1 = Math.min(1.0F, (1.0F * (float)Math.abs(i2)) / (float)k2);
        float f2 = (float)l2 + (float)l2 * a(f1);
        int i3 = Math.abs(j1);
        int j3;
        int k3;
        if (i3 > 0)
        {
            j3 = 4 * Math.round(1000F * Math.abs(f2 / (float)i3));
        } else
        {
            float f3 = k2;
            ae _tmp = j;
            int _tmp1 = k;
            float f4 = f3 * 1.0F;
            j3 = (int)(100F * (1.0F + (float)Math.abs(i2) / (f4 + (float)q)));
        }
        k3 = Math.min(j3, 600);
        o.startScroll(k1, l1, i2, j2, k3);
        android.support.v4.view.ak.b(this);
    }

    private void a(int i1, int j1, int k1, int l1)
    {
        if (j1 > 0 && !g.isEmpty())
        {
            int j2 = k1 + (i1 - getPaddingLeft() - getPaddingRight());
            int k2 = l1 + (j1 - getPaddingLeft() - getPaddingRight());
            int l2 = (int)(((float)getScrollX() / (float)k2) * (float)j2);
            scrollTo(l2, getScrollY());
            if (!o.isFinished())
            {
                int i3 = o.getDuration() - o.timePassed();
                bi bi2 = b(k);
                o.startScroll(l2, 0, (int)(bi2.e * (float)i1), 0, i3);
            }
        } else
        {
            bi bi1 = b(k);
            float f1;
            int i2;
            if (bi1 != null)
            {
                f1 = Math.min(bi1.e, v);
            } else
            {
                f1 = 0.0F;
            }
            i2 = (int)(f1 * (float)(i1 - getPaddingLeft() - getPaddingRight()));
            if (i2 != getScrollX())
            {
                a(false);
                scrollTo(i2, getScrollY());
                return;
            }
        }
    }

    private void a(int i1, boolean flag, int j1, boolean flag1)
    {
        bi bi1 = b(i1);
        int k1;
        if (bi1 != null)
        {
            k1 = (int)((float)getClientWidth() * Math.max(u, Math.min(bi1.e, v)));
        } else
        {
            k1 = 0;
        }
        if (flag)
        {
            a(k1, j1);
            if (flag1 && ac != null)
            {
                ac.a(i1);
            }
            if (flag1 && ad != null)
            {
                ad.a(i1);
            }
            return;
        }
        if (flag1 && ac != null)
        {
            ac.a(i1);
        }
        if (flag1 && ad != null)
        {
            ad.a(i1);
        }
        a(false);
        scrollTo(k1, 0);
    }

    private void a(int i1, boolean flag, boolean flag1)
    {
        a(i1, flag, flag1, 0);
    }

    private void a(int i1, boolean flag, boolean flag1, int j1)
    {
        if (j == null || j.c() <= 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!flag1 && k == i1 && g.size() != 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i1 >= 0) goto _L2; else goto _L1
_L1:
        i1 = 0;
_L4:
        int k1 = B;
        if (i1 > k1 + k || i1 < k - k1)
        {
            for (int l1 = 0; l1 < g.size(); l1++)
            {
                ((bi)g.get(l1)).c = true;
            }

        }
        break; /* Loop/switch isn't completed */
_L2:
        if (i1 >= j.c())
        {
            i1 = -1 + j.c();
        }
        if (true) goto _L4; else goto _L3
_L3:
        int i2 = k;
        boolean flag2 = false;
        if (i2 != i1)
        {
            flag2 = true;
        }
        if (V)
        {
            k = i1;
            if (flag2 && ac != null)
            {
                ac.a(i1);
            }
            if (flag2 && ad != null)
            {
                ad.a(i1);
            }
            requestLayout();
            return;
        } else
        {
            a(i1);
            a(i1, flag, j1, flag2);
            return;
        }
    }

    static void a(ViewPager viewpager)
    {
        viewpager.setScrollState(0);
    }

    private void a(bi bi1, int i1, bi bi2)
    {
        float f12;
        int i6;
        float f13;
        int k6;
        int j1 = j.c();
        int k1 = getClientWidth();
        float f1;
        if (k1 > 0)
        {
            f1 = (float)q / (float)k1;
        } else
        {
            f1 = 0.0F;
        }
        if (bi2 != null)
        {
            int k3 = bi2.b;
            if (k3 < bi1.b)
            {
                float f11 = f1 + (bi2.e + bi2.d);
                int k5 = k3 + 1;
                f12 = f11;
                int l5 = 0;
                i6 = k5;
                bi bi6;
                float f14;
                int l6;
                float f15;
                do
                {
                    if (i6 > bi1.b || l5 >= g.size())
                    {
                        break;
                    }
                    for (bi6 = (bi)g.get(l5); i6 > bi6.b && l5 < -1 + g.size(); bi6 = (bi)g.get(l5))
                    {
                        l5++;
                    }

                    break MISSING_BLOCK_LABEL_766;
                } while (true);
            } else
            if (k3 > bi1.b)
            {
                int l3 = -1 + g.size();
                float f6 = bi2.e;
                int i4 = k3 - 1;
                int j4 = l3;
                float f7 = f6;
                int k4 = i4;
                do
                {
                    if (k4 < bi1.b || j4 < 0)
                    {
                        break;
                    }
                    int l1;
                    float f2;
                    int i2;
                    float f3;
                    float f4;
                    int j2;
                    float f5;
                    int k2;
                    int l2;
                    bi bi3;
                    int i3;
                    bi bi4;
                    int j3;
                    bi bi5;
                    float f8;
                    int i5;
                    float f9;
                    int j5;
                    for (bi5 = (bi)g.get(j4); k4 < bi5.b && j4 > 0; bi5 = (bi)g.get(j4))
                    {
                        j4--;
                    }

                    int l4 = k4;
                    f8 = f7;
                    i5 = l4;
                    while (i5 > bi5.b) 
                    {
                        j;
                        float f10 = f8 - (1.0F + f1);
                        i5--;
                        f8 = f10;
                    }
                    f9 = f8 - (f1 + bi5.d);
                    bi5.e = f9;
                    j5 = i5 - 1;
                    f7 = f9;
                    k4 = j5;
                } while (true);
            }
        }
        l1 = g.size();
        f2 = bi1.e;
        i2 = -1 + bi1.b;
        if (bi1.b == 0)
        {
            f3 = bi1.e;
        } else
        {
            f3 = -3.402823E+38F;
        }
        u = f3;
        if (bi1.b == j1 - 1)
        {
            f4 = (bi1.e + bi1.d) - 1.0F;
        } else
        {
            f4 = 3.402823E+38F;
        }
        v = f4;
        for (j2 = i1 - 1; j2 >= 0; j2 = j3)
        {
            for (bi4 = (bi)g.get(j2); i2 > bi4.b;)
            {
                j;
                i2--;
                f2 -= 1.0F + f1;
            }

            f2 -= f1 + bi4.d;
            bi4.e = f2;
            if (bi4.b == 0)
            {
                u = f2;
            }
            j3 = j2 - 1;
            i2--;
        }

        f5 = f1 + (bi1.e + bi1.d);
        k2 = 1 + bi1.b;
        for (l2 = i1 + 1; l2 < l1; l2 = i3)
        {
            for (bi3 = (bi)g.get(l2); k2 < bi3.b;)
            {
                j;
                k2++;
                f5 += 1.0F + f1;
            }

            if (bi3.b == j1 - 1)
            {
                v = (f5 + bi3.d) - 1.0F;
            }
            bi3.e = f5;
            f5 += f1 + bi3.d;
            i3 = l2 + 1;
            k2++;
        }

        W = false;
        return;
        int j6 = i6;
        f13 = f12;
        k6 = j6;
        while (k6 < bi6.b) 
        {
            j;
            f15 = f13 + (1.0F + f1);
            k6++;
            f13 = f15;
        }
        bi6.e = f13;
        f14 = f13 + (f1 + bi6.d);
        l6 = k6 + 1;
        f12 = f14;
        i6 = l6;
        continue;
    }

    private void a(MotionEvent motionevent)
    {
        int i1 = android.support.v4.view.z.b(motionevent);
        if (android.support.v4.view.z.b(motionevent, i1) == M)
        {
            int j1;
            if (i1 == 0)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            I = android.support.v4.view.z.c(motionevent, j1);
            M = android.support.v4.view.z.b(motionevent, j1);
            if (N != null)
            {
                N.clear();
            }
        }
    }

    private void a(boolean flag)
    {
label0:
        {
            boolean flag1;
            int i1;
            boolean flag2;
            if (al == 2)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag1)
            {
                setScrollingCacheEnabled(false);
                o.abortAnimation();
                int j1 = getScrollX();
                int k1 = getScrollY();
                int l1 = o.getCurrX();
                int i2 = o.getCurrY();
                if (j1 != l1 || k1 != i2)
                {
                    scrollTo(l1, i2);
                }
            }
            A = false;
            i1 = 0;
            flag2 = flag1;
            for (; i1 < g.size(); i1++)
            {
                bi bi1 = (bi)g.get(i1);
                if (bi1.c)
                {
                    bi1.c = false;
                    flag2 = true;
                }
            }

            if (flag2)
            {
                if (!flag)
                {
                    break label0;
                }
                android.support.v4.view.ak.a(this, ak);
            }
            return;
        }
        ak.run();
    }

    private boolean a(float f1, float f2)
    {
        return f1 < (float)G && f2 > 0.0F || f1 > (float)(getWidth() - G) && f2 < 0.0F;
    }

    private boolean a(KeyEvent keyevent)
    {
        if (keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        keyevent.getKeyCode();
        JVM INSTR lookupswitch 3: default 44
    //                   21: 46
    //                   22: 53
    //                   61: 60;
           goto _L2 _L3 _L4 _L5
_L2:
        return false;
_L3:
        return d(17);
_L4:
        return d(66);
_L5:
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            if (android.support.v4.view.s.b(keyevent))
            {
                return d(2);
            }
            if (android.support.v4.view.s.a(keyevent))
            {
                return d(1);
            }
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    private boolean a(View view, boolean flag, int i1, int j1, int k1)
    {
        if (!(view instanceof ViewGroup)) goto _L2; else goto _L1
_L1:
        ViewGroup viewgroup;
        int l1;
        int i2;
        int j2;
        viewgroup = (ViewGroup)view;
        l1 = view.getScrollX();
        i2 = view.getScrollY();
        j2 = -1 + viewgroup.getChildCount();
_L8:
        if (j2 < 0) goto _L2; else goto _L3
_L3:
        View view1 = viewgroup.getChildAt(j2);
        if (j1 + l1 < view1.getLeft() || j1 + l1 >= view1.getRight() || k1 + i2 < view1.getTop() || k1 + i2 >= view1.getBottom() || !a(view1, true, i1, (j1 + l1) - view1.getLeft(), (k1 + i2) - view1.getTop())) goto _L5; else goto _L4
_L4:
        return true;
_L5:
        j2--;
        continue; /* Loop/switch isn't completed */
_L2:
        if (flag && android.support.v4.view.ak.a(view, -i1)) goto _L4; else goto _L6
_L6:
        return false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    static ae b(ViewPager viewpager)
    {
        return viewpager.j;
    }

    private bi b(int i1)
    {
        for (int j1 = 0; j1 < g.size(); j1++)
        {
            bi bi1 = (bi)g.get(j1);
            if (bi1.b == i1)
            {
                return bi1;
            }
        }

        return null;
    }

    private bi b(int i1, int j1)
    {
        bi bi1 = new bi();
        bi1.b = i1;
        bi1.a = j.a(this, i1);
        ae _tmp = j;
        bi1.d = 1.0F;
        if (j1 < 0 || j1 >= g.size())
        {
            g.add(bi1);
            return bi1;
        } else
        {
            g.add(j1, bi1);
            return bi1;
        }
    }

    private bi b(View view)
    {
        do
        {
            ViewParent viewparent = view.getParent();
            if (viewparent != this)
            {
                if (viewparent == null || !(viewparent instanceof View))
                {
                    return null;
                }
                view = (View)viewparent;
            } else
            {
                return a(view);
            }
        } while (true);
    }

    private void b(boolean flag)
    {
        int i1 = getChildCount();
        int j1 = 0;
        while (j1 < i1) 
        {
            byte byte0;
            if (flag)
            {
                byte0 = 2;
            } else
            {
                byte0 = 0;
            }
            android.support.v4.view.ak.a(getChildAt(j1), byte0, null);
            j1++;
        }
    }

    private boolean b(float f1)
    {
        boolean flag = true;
        float f2 = I - f1;
        I = f1;
        float f3 = f2 + (float)getScrollX();
        int i1 = getClientWidth();
        float f4 = (float)i1 * u;
        float f5 = (float)i1 * v;
        bi bi1 = (bi)g.get(0);
        bi bi2 = (bi)g.get(-1 + g.size());
        boolean flag1;
        float f6;
        boolean flag2;
        if (bi1.b != 0)
        {
            f4 = bi1.e * (float)i1;
            flag1 = false;
        } else
        {
            flag1 = flag;
        }
        if (bi2.b != -1 + j.c())
        {
            f6 = bi2.e * (float)i1;
            flag = false;
        } else
        {
            f6 = f5;
        }
        if (f3 < f4)
        {
            flag2 = false;
            if (flag1)
            {
                float f7 = f4 - f3;
                flag2 = T.a(Math.abs(f7) / (float)i1);
            }
        } else
        if (f3 > f6)
        {
            flag2 = false;
            if (flag)
            {
                float f8 = f3 - f6;
                flag2 = U.a(Math.abs(f8) / (float)i1);
            }
            f4 = f6;
        } else
        {
            f4 = f3;
            flag2 = false;
        }
        I = I + (f4 - (float)(int)f4);
        scrollTo((int)f4, getScrollY());
        c((int)f4);
        return flag2;
    }

    static int c(ViewPager viewpager)
    {
        return viewpager.k;
    }

    private boolean c(int i1)
    {
        boolean flag;
        if (g.size() == 0)
        {
            Z = false;
            a(0, 0.0F);
            boolean flag1 = Z;
            flag = false;
            if (!flag1)
            {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
        } else
        {
            bi bi1 = g();
            int j1 = getClientWidth();
            int _tmp = q;
            float f1 = (float)q / (float)j1;
            int k1 = bi1.b;
            float f2 = ((float)i1 / (float)j1 - bi1.e) / (f1 + bi1.d);
            Z = false;
            a(k1, f2);
            if (!Z)
            {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            flag = true;
        }
        return flag;
    }

    static int[] c()
    {
        return a;
    }

    private void d()
    {
        setWillNotDraw(false);
        setDescendantFocusability(0x40000);
        setFocusable(true);
        Context context = getContext();
        o = new Scroller(context, f);
        ViewConfiguration viewconfiguration = ViewConfiguration.get(context);
        float f1 = context.getResources().getDisplayMetrics().density;
        H = az.a(viewconfiguration);
        O = (int)(400F * f1);
        P = viewconfiguration.getScaledMaximumFlingVelocity();
        T = new e(context);
        U = new e(context);
        Q = (int)(25F * f1);
        R = (int)(2.0F * f1);
        F = (int)(16F * f1);
        android.support.v4.view.ak.a(this, new bk(this));
        if (android.support.v4.view.ak.c(this) == 0)
        {
            android.support.v4.view.ak.d(this);
        }
    }

    private boolean d(int i1)
    {
        View view = findFocus();
        if (view != this) goto _L2; else goto _L1
_L1:
        View view1 = null;
_L13:
        View view2 = FocusFinder.getInstance().findNextFocus(this, view1, i1);
        if (view2 == null || view2 == view1) goto _L4; else goto _L3
_L3:
        if (i1 != 17) goto _L6; else goto _L5
_L5:
        boolean flag;
        boolean flag1;
        int l1 = a(i, view2).left;
        int i2 = a(i, view1).left;
        ViewParent viewparent;
        StringBuilder stringbuilder;
        ViewParent viewparent1;
        if (view1 != null && l1 >= i2)
        {
            flag = i();
        } else
        {
            flag = view2.requestFocus();
        }
_L18:
        if (flag)
        {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i1));
        }
        return flag;
_L2:
        if (view == null) goto _L8; else goto _L7
_L7:
        viewparent = view.getParent();
_L12:
        if (!(viewparent instanceof ViewGroup))
        {
            break MISSING_BLOCK_LABEL_364;
        }
        if (viewparent != this) goto _L10; else goto _L9
_L9:
        flag1 = true;
_L19:
        if (flag1) goto _L8; else goto _L11
_L10:
        viewparent = viewparent.getParent();
          goto _L12
_L11:
        stringbuilder = new StringBuilder();
        stringbuilder.append(view.getClass().getSimpleName());
        for (viewparent1 = view.getParent(); viewparent1 instanceof ViewGroup; viewparent1 = viewparent1.getParent())
        {
            stringbuilder.append(" => ").append(viewparent1.getClass().getSimpleName());
        }

        Log.e("ViewPager", (new StringBuilder("arrowScroll tried to find focus based on non-child current focused view ")).append(stringbuilder.toString()).toString());
        view1 = null;
          goto _L13
_L6:
        if (i1 != 66) goto _L15; else goto _L14
_L14:
        int j1;
        int k1;
        j1 = a(i, view2).left;
        k1 = a(i, view1).left;
        if (view1 != null && j1 <= k1) goto _L17; else goto _L16
_L16:
        flag = view2.requestFocus();
          goto _L18
_L4:
label0:
        {
            if (i1 != 17 && i1 != 1)
            {
                break label0;
            }
            flag = i();
        }
          goto _L18
        if (i1 != 66 && i1 != 2) goto _L15; else goto _L17
_L17:
        flag = j();
          goto _L18
_L15:
        flag = false;
          goto _L18
_L8:
        view1 = view;
          goto _L13
        flag1 = false;
          goto _L19
    }

    private void e()
    {
        for (int i1 = 0; i1 < getChildCount(); i1++)
        {
            if (!((bj)getChildAt(i1).getLayoutParams()).a)
            {
                removeViewAt(i1);
                i1--;
            }
        }

    }

    private void f()
    {
        if (ah != 0)
        {
            int i1;
            if (ai == null)
            {
                ai = new ArrayList();
            } else
            {
                ai.clear();
            }
            i1 = getChildCount();
            for (int j1 = 0; j1 < i1; j1++)
            {
                View view = getChildAt(j1);
                ai.add(view);
            }

            Collections.sort(ai, aj);
        }
    }

    private bi g()
    {
        int i1 = getClientWidth();
        float f1;
        float f2;
        float f3;
        float f4;
        int j1;
        int k1;
        boolean flag;
        bi bi1;
        if (i1 > 0)
        {
            f1 = (float)getScrollX() / (float)i1;
        } else
        {
            f1 = 0.0F;
        }
        if (i1 > 0)
        {
            f2 = (float)q / (float)i1;
        } else
        {
            f2 = 0.0F;
        }
        f3 = 0.0F;
        f4 = 0.0F;
        j1 = -1;
        k1 = 0;
        flag = true;
        bi1 = null;
        do
        {
label0:
            {
                if (k1 < g.size())
                {
                    bi bi2 = (bi)g.get(k1);
                    int l1;
                    bi bi3;
                    float f5;
                    float f6;
                    int i2;
                    float f7;
                    int j2;
                    if (!flag && bi2.b != j1 + 1)
                    {
                        bi bi4 = h;
                        bi4.e = f2 + (f3 + f4);
                        bi4.b = j1 + 1;
                        ae _tmp = j;
                        int _tmp1 = bi4.b;
                        bi4.d = 1.0F;
                        l1 = k1 - 1;
                        bi3 = bi4;
                    } else
                    {
                        l1 = k1;
                        bi3 = bi2;
                    }
                    f5 = bi3.e;
                    f6 = f2 + (f5 + bi3.d);
                    if (flag || f1 >= f5)
                    {
                        if (f1 >= f6 && l1 != -1 + g.size())
                        {
                            break label0;
                        }
                        bi1 = bi3;
                    }
                }
                return bi1;
            }
            i2 = bi3.b;
            f7 = bi3.d;
            j2 = l1 + 1;
            f4 = f5;
            j1 = i2;
            f3 = f7;
            bi1 = bi3;
            k1 = j2;
            flag = false;
        } while (true);
    }

    private int getClientWidth()
    {
        return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
    }

    private void h()
    {
        D = false;
        E = false;
        if (N != null)
        {
            N.recycle();
            N = null;
        }
    }

    private boolean i()
    {
        if (k > 0)
        {
            a(-1 + k, true);
            return true;
        } else
        {
            return false;
        }
    }

    private boolean j()
    {
        if (j != null && k < -1 + j.c())
        {
            a(1 + k, true);
            return true;
        } else
        {
            return false;
        }
    }

    private void setScrollState(int i1)
    {
        if (al != i1)
        {
            al = i1;
            if (af != null)
            {
                boolean flag;
                if (i1 != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                b(flag);
            }
            if (ac != null)
            {
                ac.b(i1);
                return;
            }
        }
    }

    private void setScrollingCacheEnabled(boolean flag)
    {
        if (z != flag)
        {
            z = flag;
        }
    }

    final void a()
    {
        int i1 = j.c();
        b = i1;
        boolean flag;
        int j1;
        if (g.size() < 1 + 2 * B && g.size() < i1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j1 = k;
        for (int k1 = 0; k1 < g.size(); k1++)
        {
            bi bi1 = (bi)g.get(k1);
            ae _tmp = j;
            Object _tmp1 = bi1.a;
        }

        Collections.sort(g, e);
        if (flag)
        {
            int l1 = getChildCount();
            for (int i2 = 0; i2 < l1; i2++)
            {
                bj bj1 = (bj)getChildAt(i2).getLayoutParams();
                if (!bj1.a)
                {
                    bj1.c = 0.0F;
                }
            }

            a(j1, false, true);
            requestLayout();
        }
    }

    public final void a(int i1, boolean flag)
    {
        A = false;
        a(i1, flag, false);
    }

    public void addFocusables(ArrayList arraylist, int i1, int j1)
    {
        int k1 = arraylist.size();
        int l1 = getDescendantFocusability();
        if (l1 != 0x60000)
        {
            for (int i2 = 0; i2 < getChildCount(); i2++)
            {
                View view = getChildAt(i2);
                if (view.getVisibility() == 0)
                {
                    bi bi1 = a(view);
                    if (bi1 != null && bi1.b == k)
                    {
                        view.addFocusables(arraylist, i1, j1);
                    }
                }
            }

        }
        while (l1 == 0x40000 && k1 != arraylist.size() || !isFocusable() || (j1 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode() || arraylist == null) 
        {
            return;
        }
        arraylist.add(this);
    }

    public void addTouchables(ArrayList arraylist)
    {
        for (int i1 = 0; i1 < getChildCount(); i1++)
        {
            View view = getChildAt(i1);
            if (view.getVisibility() != 0)
            {
                continue;
            }
            bi bi1 = a(view);
            if (bi1 != null && bi1.b == k)
            {
                view.addTouchables(arraylist);
            }
        }

    }

    public void addView(View view, int i1, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (!checkLayoutParams(layoutparams))
        {
            layoutparams = generateLayoutParams(layoutparams);
        }
        bj bj1 = (bj)layoutparams;
        bj1.a = bj1.a | (view instanceof bh);
        if (y)
        {
            if (bj1 != null && bj1.a)
            {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            } else
            {
                bj1.d = true;
                addViewInLayout(view, i1, layoutparams);
                return;
            }
        } else
        {
            super.addView(view, i1, layoutparams);
            return;
        }
    }

    final void b()
    {
        a(k);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof bj) && super.checkLayoutParams(layoutparams);
    }

    public void computeScroll()
    {
        if (!o.isFinished() && o.computeScrollOffset())
        {
            int i1 = getScrollX();
            int j1 = getScrollY();
            int k1 = o.getCurrX();
            int l1 = o.getCurrY();
            if (i1 != k1 || j1 != l1)
            {
                scrollTo(k1, l1);
                if (!c(k1))
                {
                    o.abortAnimation();
                    scrollTo(0, l1);
                }
            }
            android.support.v4.view.ak.b(this);
            return;
        } else
        {
            a(true);
            return;
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        return super.dispatchKeyEvent(keyevent) || a(keyevent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        if (accessibilityevent.getEventType() != 4096) goto _L2; else goto _L1
_L1:
        boolean flag = super.dispatchPopulateAccessibilityEvent(accessibilityevent);
_L4:
        return flag;
_L2:
        int i1 = getChildCount();
        int j1 = 0;
        do
        {
            flag = false;
            if (j1 >= i1)
            {
                continue;
            }
            View view = getChildAt(j1);
            if (view.getVisibility() == 0)
            {
                bi bi1 = a(view);
                if (bi1 != null && bi1.b == k && view.dispatchPopulateAccessibilityEvent(accessibilityevent))
                {
                    return true;
                }
            }
            j1++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        int i1 = android.support.v4.view.ak.a(this);
        boolean flag1;
        if (i1 == 0 || i1 == 1 && j != null && j.c() > 1)
        {
            boolean flag = T.a();
            flag1 = false;
            if (!flag)
            {
                int i2 = canvas.save();
                int j2 = getHeight() - getPaddingTop() - getPaddingBottom();
                int k2 = getWidth();
                canvas.rotate(270F);
                canvas.translate(-j2 + getPaddingTop(), u * (float)k2);
                T.a(j2, k2);
                flag1 = false | T.a(canvas);
                canvas.restoreToCount(i2);
            }
            if (!U.a())
            {
                int j1 = canvas.save();
                int k1 = getWidth();
                int l1 = getHeight() - getPaddingTop() - getPaddingBottom();
                canvas.rotate(90F);
                canvas.translate(-getPaddingTop(), -(1.0F + v) * (float)k1);
                U.a(l1, k1);
                flag1 |= U.a(canvas);
                canvas.restoreToCount(j1);
            }
        } else
        {
            T.b();
            U.b();
            flag1 = false;
        }
        if (flag1)
        {
            android.support.v4.view.ak.b(this);
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        Drawable drawable = r;
        if (drawable != null && drawable.isStateful())
        {
            drawable.setState(getDrawableState());
        }
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new bj();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new bj(getContext(), attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateDefaultLayoutParams();
    }

    public ae getAdapter()
    {
        return j;
    }

    protected int getChildDrawingOrder(int i1, int j1)
    {
        if (ah == 2)
        {
            j1 = i1 - 1 - j1;
        }
        return ((bj)((View)ai.get(j1)).getLayoutParams()).f;
    }

    public int getCurrentItem()
    {
        return k;
    }

    public int getOffscreenPageLimit()
    {
        return B;
    }

    public boolean getOnlyCreatePagesImmediatelyOffscreen()
    {
        return C;
    }

    public int getPageMargin()
    {
        return q;
    }

    public float getScrollOffset()
    {
        return d;
    }

    public int getScrollPosition()
    {
        return c;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        V = true;
    }

    protected void onDetachedFromWindow()
    {
        removeCallbacks(ak);
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (q > 0 && r != null && g.size() > 0 && j != null)
        {
            int i1 = getScrollX();
            int j1 = getWidth();
            float f1 = (float)q / (float)j1;
            bi bi1 = (bi)g.get(0);
            float f2 = bi1.e;
            int k1 = g.size();
            int l1 = bi1.b;
            int i2 = ((bi)g.get(k1 - 1)).b;
            int j2 = 0;
            int k2 = l1;
            do
            {
                if (k2 >= i2)
                {
                    break;
                }
                ArrayList arraylist;
                for (; k2 > bi1.b && j2 < k1; bi1 = (bi)arraylist.get(j2))
                {
                    arraylist = g;
                    j2++;
                }

                float f3;
                if (k2 == bi1.b)
                {
                    f3 = (bi1.e + bi1.d) * (float)j1;
                    f2 = f1 + (bi1.e + bi1.d);
                } else
                {
                    ae _tmp = j;
                    f3 = (1.0F + f2) * (float)j1;
                    f2 += 1.0F + f1;
                }
                if (f3 + (float)q > (float)i1)
                {
                    r.setBounds((int)f3, s, (int)(0.5F + (f3 + (float)q)), t);
                    r.draw(canvas);
                }
                if (f3 > (float)(i1 + j1))
                {
                    break;
                }
                k2++;
            } while (true);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i1 = 0xff & motionevent.getAction();
        if (i1 != 3 && i1 != 1) goto _L2; else goto _L1
_L1:
        D = false;
        E = false;
        M = -1;
        if (N != null)
        {
            N.recycle();
            N = null;
        }
_L4:
        return false;
_L2:
        if (i1 == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (D)
        {
            return true;
        }
        if (E) goto _L4; else goto _L3
_L3:
        i1;
        JVM INSTR lookupswitch 3: default 112
    //                   0: 385
    //                   2: 139
    //                   6: 522;
           goto _L5 _L6 _L7 _L8
_L5:
        if (N == null)
        {
            N = VelocityTracker.obtain();
        }
        N.addMovement(motionevent);
        return D;
_L7:
        int j1 = M;
        if (j1 == -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        int k1 = android.support.v4.view.z.a(motionevent, j1);
        float f3 = android.support.v4.view.z.c(motionevent, k1);
        float f4 = f3 - I;
        float f5 = Math.abs(f4);
        float f6 = android.support.v4.view.z.d(motionevent, k1);
        float f7 = Math.abs(f6 - L);
        if (f4 != 0.0F && !a(I, f4) && a(this, false, (int)f4, (int)f3, (int)f6))
        {
            I = f3;
            J = f6;
            E = true;
            return false;
        }
        if (f5 > (float)H && 0.5F * f5 > f7)
        {
            D = true;
            setScrollState(1);
            float f8;
            if (f4 > 0.0F)
            {
                f8 = K + (float)H;
            } else
            {
                f8 = K - (float)H;
            }
            I = f8;
            J = f6;
            setScrollingCacheEnabled(true);
        } else
        if (f7 > (float)H)
        {
            E = true;
        }
        if (D && b(f3))
        {
            android.support.v4.view.ak.b(this);
        }
        continue; /* Loop/switch isn't completed */
_L6:
        float f1 = motionevent.getX();
        K = f1;
        I = f1;
        float f2 = motionevent.getY();
        L = f2;
        J = f2;
        M = android.support.v4.view.z.b(motionevent, 0);
        E = false;
        o.computeScrollOffset();
        if (al == 2 && Math.abs(o.getFinalX() - o.getCurrX()) > R)
        {
            o.abortAnimation();
            A = false;
            b();
            if (ab)
            {
                D = true;
                setScrollState(1);
            }
        } else
        {
            a(false);
            D = false;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        a(motionevent);
        if (true) goto _L5; else goto _L9
_L9:
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        i2 = getChildCount();
        j2 = k1 - i1;
        k2 = l1 - j1;
        l2 = getPaddingLeft();
        i3 = getPaddingTop();
        j3 = getPaddingRight();
        k3 = getPaddingBottom();
        l3 = getScrollX();
        i4 = 0;
        j4 = 0;
_L14:
        if (j4 >= i2) goto _L2; else goto _L1
_L1:
        View view1 = getChildAt(j4);
        if (view1.getVisibility() == 8) goto _L4; else goto _L3
_L3:
        bj bj2 = (bj)view1.getLayoutParams();
        if (!bj2.a) goto _L4; else goto _L5
_L5:
        int j6;
        int k6;
        j6 = 7 & bj2.b;
        k6 = 0x70 & bj2.b;
        j6;
        JVM INSTR tableswitch 1 5: default 152
    //                   1 305
    //                   2 152
    //                   3 284
    //                   4 152
    //                   5 325;
           goto _L6 _L7 _L6 _L8 _L6 _L9
_L6:
        int i7 = l2;
_L15:
        k6;
        JVM INSTR lookupswitch 3: default 192
    //                   16: 384
    //                   48: 355
    //                   80: 416;
           goto _L10 _L11 _L12 _L13
_L10:
        int j7;
        int l7;
        int i8;
        j7 = i3;
        int j9 = k3;
        l7 = i3;
        i8 = j9;
_L16:
        int j5;
        int k5;
        int l5;
        int i6;
        int j8 = i7 + l3;
        view1.layout(j8, j7, j8 + view1.getMeasuredWidth(), j7 + view1.getMeasuredHeight());
        j5 = i4 + 1;
        k5 = l7;
        k3 = i8;
        l5 = j3;
        i6 = l2;
_L17:
        j4++;
        l2 = i6;
        j3 = l5;
        i3 = k5;
        i4 = j5;
          goto _L14
_L8:
        int k9 = l2 + view1.getMeasuredWidth();
        i7 = l2;
        l2 = k9;
          goto _L15
_L7:
        i7 = Math.max((j2 - view1.getMeasuredWidth()) / 2, l2);
          goto _L15
_L9:
        int l6 = j2 - j3 - view1.getMeasuredWidth();
        j3 += view1.getMeasuredWidth();
        i7 = l6;
          goto _L15
_L12:
        int l8 = i3 + view1.getMeasuredHeight();
        int i9 = i3;
        i8 = k3;
        l7 = l8;
        j7 = i9;
          goto _L16
_L11:
        j7 = Math.max((k2 - view1.getMeasuredHeight()) / 2, i3);
        int k8 = k3;
        l7 = i3;
        i8 = k8;
          goto _L16
_L13:
        j7 = k2 - k3 - view1.getMeasuredHeight();
        int k7 = k3 + view1.getMeasuredHeight();
        l7 = i3;
        i8 = k7;
          goto _L16
_L2:
        int k4 = j2 - l2 - j3;
        for (int l4 = 0; l4 < i2; l4++)
        {
            View view = getChildAt(l4);
            if (view.getVisibility() == 8)
            {
                continue;
            }
            bj bj1 = (bj)view.getLayoutParams();
            if (bj1.a)
            {
                continue;
            }
            bi bi1 = a(view);
            if (bi1 == null)
            {
                continue;
            }
            int i5 = l2 + (int)((float)k4 * bi1.e);
            if (bj1.d)
            {
                bj1.d = false;
                view.measure(android.view.View.MeasureSpec.makeMeasureSpec((int)((float)k4 * bj1.c), 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(k2 - i3 - k3, 0x40000000));
            }
            view.layout(i5, i3, i5 + view.getMeasuredWidth(), i3 + view.getMeasuredHeight());
        }

        s = i3;
        t = k2 - k3;
        aa = i4;
        if (V)
        {
            a(k, false, 0, false);
        }
        V = false;
        return;
_L4:
        j5 = i4;
        k5 = i3;
        l5 = j3;
        i6 = l2;
          goto _L17
    }

    protected void onMeasure(int i1, int j1)
    {
        int l1;
        int i2;
        int j2;
        int k2;
        setMeasuredDimension(getDefaultSize(0, i1), getDefaultSize(0, j1));
        int k1 = getMeasuredWidth();
        G = Math.min(k1 / 10, F);
        l1 = k1 - getPaddingLeft() - getPaddingRight();
        i2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
        j2 = getChildCount();
        k2 = 0;
_L3:
        if (k2 >= j2) goto _L2; else goto _L1
_L1:
        View view1 = getChildAt(k2);
        if (view1.getVisibility() == 8)
        {
            continue; /* Loop/switch isn't completed */
        }
        bj bj2 = (bj)view1.getLayoutParams();
        if (bj2 == null || !bj2.a)
        {
            continue; /* Loop/switch isn't completed */
        }
        int j3 = 7 & bj2.b;
        int k3 = 0x70 & bj2.b;
        int l3 = 0x80000000;
        int i4 = 0x80000000;
        boolean flag;
        boolean flag1;
        int j4;
        int k4;
        if (k3 == 48 || k3 == 80)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (j3 == 3 || j3 == 5)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag)
        {
            l3 = 0x40000000;
        } else
        if (flag1)
        {
            i4 = 0x40000000;
        }
        if (bj2.width != -2)
        {
            j4 = 0x40000000;
            int l2;
            int i3;
            View view;
            bj bj1;
            int l4;
            if (bj2.width != -1)
            {
                k4 = bj2.width;
            } else
            {
                k4 = l1;
            }
        } else
        {
            j4 = l3;
            k4 = l1;
        }
        if (bj2.height == -2)
        {
            break MISSING_BLOCK_LABEL_464;
        }
        i4 = 0x40000000;
        if (bj2.height == -1)
        {
            break MISSING_BLOCK_LABEL_464;
        }
        l4 = bj2.height;
        view1.measure(android.view.View.MeasureSpec.makeMeasureSpec(k4, j4), android.view.View.MeasureSpec.makeMeasureSpec(l4, i4));
        if (flag)
        {
            i2 -= view1.getMeasuredHeight();
        } else
        if (flag1)
        {
            l1 -= view1.getMeasuredWidth();
        }
        k2++;
          goto _L3
_L2:
        w = android.view.View.MeasureSpec.makeMeasureSpec(l1, 0x40000000);
        x = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x40000000);
        y = true;
        b();
        y = false;
        l2 = getChildCount();
        for (i3 = 0; i3 < l2; i3++)
        {
            view = getChildAt(i3);
            if (view.getVisibility() == 8)
            {
                continue;
            }
            bj1 = (bj)view.getLayoutParams();
            if (bj1 == null || !bj1.a)
            {
                view.measure(android.view.View.MeasureSpec.makeMeasureSpec((int)((float)l1 * bj1.c), 0x40000000), x);
            }
        }

        return;
        l4 = i2;
        break MISSING_BLOCK_LABEL_254;
    }

    protected boolean onRequestFocusInDescendants(int i1, Rect rect)
    {
        byte byte0 = -1;
        int j1 = getChildCount();
        int k1;
        if ((i1 & 2) != 0)
        {
            byte0 = 1;
            k1 = 0;
        } else
        {
            k1 = j1 - 1;
            j1 = byte0;
        }
        for (; k1 != j1; k1 += byte0)
        {
            View view = getChildAt(k1);
            if (view.getVisibility() != 0)
            {
                continue;
            }
            bi bi1 = a(view);
            if (bi1 != null && bi1.b == k && view.requestFocus(i1, rect))
            {
                return true;
            }
        }

        return false;
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!(parcelable instanceof SavedState))
        {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        if (j != null)
        {
            ae _tmp = j;
            Parcelable _tmp1 = savedstate.b;
            ClassLoader _tmp2 = savedstate.c;
            a(savedstate.a, false, true);
            return;
        } else
        {
            l = savedstate.a;
            m = savedstate.b;
            n = savedstate.c;
            return;
        }
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = k;
        if (j != null)
        {
            ae _tmp = j;
            savedstate.b = null;
        }
        return savedstate;
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        if (i1 != k1)
        {
            a(i1, k1, q, q);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1;
        boolean flag;
        if (S)
        {
            return true;
        }
        if (motionevent.getAction() == 0 && motionevent.getEdgeFlags() != 0)
        {
            return false;
        }
        if (j == null || j.c() == 0)
        {
            return false;
        }
        if (N == null)
        {
            N = VelocityTracker.obtain();
        }
        N.addMovement(motionevent);
        i1 = 0xff & motionevent.getAction();
        flag = false;
        i1;
        JVM INSTR tableswitch 0 6: default 120
    //                   0 130
    //                   1 390
    //                   2 213
    //                   3 541
    //                   4 120
    //                   5 593
    //                   6 624;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7
_L1:
        if (flag)
        {
            android.support.v4.view.ak.b(this);
        }
        return true;
_L2:
        o.abortAnimation();
        A = false;
        b();
        if (ab)
        {
            D = true;
            setScrollState(1);
        }
        float f6 = motionevent.getX();
        K = f6;
        I = f6;
        float f7 = motionevent.getY();
        L = f7;
        J = f7;
        M = android.support.v4.view.z.b(motionevent, 0);
        flag = false;
        continue; /* Loop/switch isn't completed */
_L4:
        if (!D)
        {
            int j2 = android.support.v4.view.z.a(motionevent, M);
            float f1 = android.support.v4.view.z.c(motionevent, j2);
            float f2 = Math.abs(f1 - I);
            float f3 = android.support.v4.view.z.d(motionevent, j2);
            float f4 = Math.abs(f3 - J);
            if (f2 > (float)H && f2 > f4)
            {
                D = true;
                boolean flag3;
                float f5;
                if (f1 - K > 0.0F)
                {
                    f5 = K + (float)H;
                } else
                {
                    f5 = K - (float)H;
                }
                I = f5;
                J = f3;
                setScrollState(1);
                setScrollingCacheEnabled(true);
            }
        }
        flag3 = D;
        flag = false;
        if (flag3)
        {
            flag = false | b(android.support.v4.view.z.c(motionevent, android.support.v4.view.z.a(motionevent, M)));
        }
        continue; /* Loop/switch isn't completed */
_L3:
        boolean flag2 = D;
        flag = false;
        if (flag2)
        {
            VelocityTracker velocitytracker = N;
            velocitytracker.computeCurrentVelocity(1000, P);
            int k1 = (int)android.support.v4.view.af.a(velocitytracker, M);
            A = true;
            int l1 = getClientWidth();
            int i2 = getScrollX();
            bi bi1 = g();
            a(a(bi1.b, ((float)i2 / (float)l1 - bi1.e) / bi1.d, k1, (int)(android.support.v4.view.z.c(motionevent, android.support.v4.view.z.a(motionevent, M)) - K)), true, true, k1);
            M = -1;
            h();
            flag = T.c() | U.c();
        }
        continue; /* Loop/switch isn't completed */
_L5:
        boolean flag1 = D;
        flag = false;
        if (flag1)
        {
            a(k, true, 0, false);
            M = -1;
            h();
            flag = T.c() | U.c();
        }
        continue; /* Loop/switch isn't completed */
_L6:
        int j1 = android.support.v4.view.z.b(motionevent);
        I = android.support.v4.view.z.c(motionevent, j1);
        M = android.support.v4.view.z.b(motionevent, j1);
        flag = false;
        continue; /* Loop/switch isn't completed */
_L7:
        a(motionevent);
        I = android.support.v4.view.z.c(motionevent, android.support.v4.view.z.a(motionevent, M));
        flag = false;
        if (true) goto _L1; else goto _L8
_L8:
    }

    public void removeView(View view)
    {
        if (y)
        {
            removeViewInLayout(view);
            return;
        } else
        {
            super.removeView(view);
            return;
        }
    }

    public void setAdapter(ae ae1)
    {
        if (j != null)
        {
            j.b(p);
            j.a();
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                bi bi1 = (bi)g.get(i1);
                ae ae3 = j;
                int _tmp = bi1.b;
                ae3.a(bi1.a);
            }

            j.b();
            g.clear();
            e();
            k = 0;
            scrollTo(0, 0);
        }
        ae ae2 = j;
        j = ae1;
        b = 0;
        if (j != null)
        {
            if (p == null)
            {
                p = new bo(this, (byte)0);
            }
            j.a(p);
            A = false;
            boolean flag = V;
            V = true;
            b = j.c();
            if (l >= 0)
            {
                ae _tmp1 = j;
                Parcelable _tmp2 = m;
                ClassLoader _tmp3 = n;
                a(l, false, true);
                l = -1;
                m = null;
                n = null;
            } else
            if (!flag)
            {
                b();
            } else
            {
                requestLayout();
            }
        }
        if (ae != null && ae2 != ae1)
        {
            bl _tmp4 = ae;
        }
    }

    void setChildrenDrawingOrderEnabledCompat(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 7)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        Method method;
        Object aobj[];
        if (ag == null)
        {
            try
            {
                Class aclass[] = new Class[1];
                aclass[0] = Boolean.TYPE;
                ag = android/view/ViewGroup.getDeclaredMethod("setChildrenDrawingOrderEnabled", aclass);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", nosuchmethodexception);
            }
        }
        method = ag;
        aobj = new Object[1];
        aobj[0] = Boolean.valueOf(flag);
        method.invoke(this, aobj);
        return;
        Exception exception;
        exception;
        Log.e("ViewPager", "Error changing children drawing order", exception);
        return;
    }

    public void setCurrentItem(int i1)
    {
        A = false;
        boolean flag;
        if (!V)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(i1, flag, false);
    }

    protected void setIgnoreTouchSlop(boolean flag)
    {
        ab = flag;
    }

    public void setOffscreenPageLimit(int i1)
    {
        if (i1 <= 0)
        {
            (new StringBuilder("Requested offscreen page limit ")).append(i1).append(" too small; defaulting to 1");
            i1 = 1;
        }
        if (i1 != B)
        {
            B = i1;
            b();
        }
    }

    void setOnAdapterChangeListener(bl bl)
    {
        ae = bl;
    }

    public void setOnPageChangeListener(bm bm1)
    {
        ac = bm1;
    }

    public void setOnlyCreatePagesImmediatelyOffscreen(boolean flag)
    {
        if (flag != C)
        {
            C = flag;
            b();
        }
    }

    public void setPageMargin(int i1)
    {
        int j1 = q;
        q = i1;
        int k1 = getWidth();
        a(k1, k1, i1, j1);
        requestLayout();
    }

    public void setPageMarginDrawable(int i1)
    {
        setPageMarginDrawable(getContext().getResources().getDrawable(i1));
    }

    public void setPageMarginDrawable(Drawable drawable)
    {
        r = drawable;
        if (drawable != null)
        {
            refreshDrawableState();
        }
        boolean flag;
        if (drawable == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWillNotDraw(flag);
        invalidate();
    }

    protected boolean verifyDrawable(Drawable drawable)
    {
        return super.verifyDrawable(drawable) || drawable == r;
    }


    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = android.support.v4.b.a.a(new bp());
        int a;
        Parcelable b;
        ClassLoader c;

        public String toString()
        {
            return (new StringBuilder("FragmentPager.SavedState{")).append(Integer.toHexString(System.identityHashCode(this))).append(" position=").append(a).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeInt(a);
            parcel.writeParcelable(b, i1);
        }


        SavedState(Parcel parcel, ClassLoader classloader)
        {
            super(parcel);
            if (classloader == null)
            {
                classloader = getClass().getClassLoader();
            }
            a = parcel.readInt();
            b = parcel.readParcelable(classloader);
            c = classloader;
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

}
