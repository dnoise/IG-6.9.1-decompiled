// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.OvershootInterpolator;
import android.view.animation.ScaleAnimation;
import com.instagram.common.y.f;
import com.instagram.feed.d.l;
import com.instagram.model.people.PeopleTag;
import com.instagram.service.a.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.people.widget:
//            j, c, i, k, 
//            m

public class PeopleTagsLayout extends ViewGroup
{

    protected boolean a;
    private m b;

    public PeopleTagsLayout(Context context)
    {
        super(context);
        a = true;
    }

    public PeopleTagsLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = true;
    }

    public PeopleTagsLayout(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a = true;
    }

    private void a()
    {
        List list = getOverlaps();
        int ai[] = new int[20];
        int ai1[] = new int[21];
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            List list1 = (List)iterator.next();
            Collections.sort(list1, new j(this));
            ai1[0] = -1;
            int i1 = 0;
            while (i1 < list1.size()) 
            {
                int ai2[] = a(list1, i1, i1);
                int j1;
                for (j1 = i1; ai2[0] < ai1[j1]; ai2 = a(list1, j1, i1))
                {
                    j1 = ai[j1 - 1];
                }

                ai1[i1 + 1] = ai2[0] + ai2[1];
                ai[i1] = j1;
                i1++;
            }
        }

    }

    static void a(PeopleTagsLayout peopletagslayout)
    {
        peopletagslayout.setTagsLayoutListener(null);
    }

    protected static void a(c c1, boolean flag)
    {
        PointF pointf = c1.getAbsoluteTagPosition();
        ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, pointf.x, pointf.y);
        if (flag)
        {
            scaleanimation.setInterpolator(new OvershootInterpolator());
        } else
        {
            scaleanimation.setInterpolator(new AccelerateDecelerateInterpolator());
        }
        scaleanimation.setDuration(200L);
        c1.startAnimation(scaleanimation);
    }

    private void a(List list, l l1, boolean flag)
    {
        LinkedList linkedlist = new LinkedList();
        String s = com.instagram.service.a.a.a().b().g();
        c c1 = null;
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            PeopleTag peopletag = (PeopleTag)iterator.next();
            boolean flag1;
            c c2;
            c c3;
            if (l1 != null)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            c2 = a(peopletag, flag1);
            if (l1 != null)
            {
                c2.setMediaId(l1.d());
            }
            linkedlist.add(c2);
            if (peopletag.d().equals(s))
            {
                c3 = c2;
            } else
            {
                c3 = c1;
            }
            c1 = c3;
        }
        if (c1 != null)
        {
            c1.bringToFront();
        }
        if (flag)
        {
            setTagsLayoutListener(new i(this, linkedlist, list));
        }
        requestLayout();
    }

    private int[] a(List list, int i1, int j1)
    {
        int k1 = getMeasuredWidth();
        int l1 = ((c)list.get(i1)).a(k1);
        int i2 = (((c)list.get(j1)).b(k1) + ((c)list.get(j1)).getBubbleWidth()) - l1;
        int j2 = i1;
        int k2 = 0;
        for (; j2 <= j1; j2++)
        {
            k2 += ((c)list.get(j2)).getBubbleWidth();
        }

        int l2;
        int i3;
        int j3;
        if (k2 <= i2)
        {
            int j4 = (k2 + ((c)list.get(i1)).getPreferredBounds().left) - ((c)list.get(j1)).getPreferredBounds().right;
            l2 = ((c)list.get(i1)).getPreferredBounds().left - j4 / 2;
            i3 = k2;
        } else
        {
            l2 = l1;
            i3 = i2;
        }
        j3 = Math.max(0, l2);
        int i4;
        for (int k3 = 0; i1 <= j1; k3 = i4)
        {
            int l3 = (i3 * ((c)list.get(i1)).getBubbleWidth()) / k2;
            ((c)list.get(i1)).c(j3 + k3 + l3 / 2);
            i4 = k3 + l3;
            i1++;
        }

        return (new int[] {
            j3, i3
        });
    }

    private void b(c c1)
    {
        PointF pointf = c1.getAbsoluteTagPosition();
        ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, 0.0F, 1.0F, 0.0F, pointf.x, pointf.y);
        scaleanimation.setInterpolator(new AccelerateDecelerateInterpolator());
        scaleanimation.setDuration(200L);
        scaleanimation.setAnimationListener(new k(this, c1));
        c1.startAnimation(scaleanimation);
    }

    private List getOverlaps()
    {
        LinkedList linkedlist = new LinkedList();
        HashSet hashset = new HashSet();
        int i1 = getChildCount();
        for (int j1 = 0; j1 < i1; j1++)
        {
            if (hashset.contains(Integer.valueOf(j1)))
            {
                continue;
            }
            hashset.add(Integer.valueOf(j1));
            ArrayList arraylist = new ArrayList(8);
            linkedlist.add(arraylist);
            arraylist.add(a(j1));
            Rect rect = new Rect(a(j1).getMaxBounds());
            for (int k1 = j1 + 1; k1 < i1; k1++)
            {
                if (a(k1).c() && Rect.intersects(rect, a(k1).getMaxBounds()))
                {
                    rect.union(a(k1).getMaxBounds());
                    hashset.add(Integer.valueOf(k1));
                    arraylist.add(a(k1));
                }
            }

        }

        return linkedlist;
    }

    private void setTagsLayoutListener(m m1)
    {
        b = m1;
    }

    protected final c a(int i1)
    {
        return (c)getChildAt(i1);
    }

    protected final c a(PeopleTag peopletag, boolean flag)
    {
        c c1 = a(peopletag.c(), peopletag.b());
        c1.setTag(peopletag);
        c1.setClickable(flag);
        addView(c1);
        return c1;
    }

    protected final c a(String s, PointF pointf)
    {
        c c1 = new c(getContext());
        c1.setText(s);
        c1.setNormalizedPosition(pointf);
        return c1;
    }

    public final void a(l l1, boolean flag)
    {
        a(((List) (l1.V())), l1, flag);
    }

    public final void a(List list, boolean flag)
    {
        a(list, ((l) (null)), false);
    }

    final boolean a(c c1)
    {
        int i1 = getChildCount();
        int j1;
        for (j1 = 0; j1 < i1 && getChildAt(j1) != c1; j1++) { }
        Rect rect = new Rect(c1.getDrawingBounds());
        rect.inset(com.instagram.android.people.widget.c.f, com.instagram.android.people.widget.c.f);
        Rect rect1 = new Rect();
        int k1 = (int)f.a(getResources().getDisplayMetrics(), 250);
        int l1 = j1 + 1;
        do
        {
label0:
            {
                boolean flag = false;
                if (l1 < i1)
                {
                    if (!rect1.setIntersect(a(l1).getDrawingBounds(), rect))
                    {
                        break label0;
                    }
                    rect1.inset(com.instagram.android.people.widget.c.f, com.instagram.android.people.widget.c.f);
                    if (rect1.isEmpty() || rect1.width() * rect1.height() < k1)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            l1++;
        } while (true);
    }

    protected final void c()
    {
        if (a)
        {
            a();
        }
        for (int i1 = 0; i1 < getChildCount(); i1++)
        {
            a(i1).a();
        }

    }

    public final void d()
    {
        int i1 = getChildCount();
        for (int j1 = 0; j1 < i1; j1++)
        {
            b(a(j1));
        }

        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setFillAfter(false);
            alphaanimation.setDuration(200L);
            alphaanimation.setInterpolator(new AccelerateDecelerateInterpolator());
            startAnimation(alphaanimation);
        }
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        for (int i2 = 0; i2 < getChildCount(); i2++)
        {
            getChildAt(i2).layout(0, 0, k1 - i1, l1 - j1);
        }

        c();
        if (b != null)
        {
            b.a();
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1 = android.view.View.MeasureSpec.getSize(i1);
        for (int l1 = 0; l1 < getChildCount(); l1++)
        {
            getChildAt(l1).measure(i1, i1);
        }

        setMeasuredDimension(k1, k1);
    }
}
