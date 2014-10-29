// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.model.people.b;

// Referenced classes of package com.instagram.android.people.widget:
//            PeopleTagsInteractiveLayout, c

final class g extends android.view.GestureDetector.SimpleOnGestureListener
{

    final PeopleTagsInteractiveLayout a;

    private g(PeopleTagsInteractiveLayout peopletagsinteractivelayout)
    {
        a = peopletagsinteractivelayout;
        super();
    }

    g(PeopleTagsInteractiveLayout peopletagsinteractivelayout, byte byte0)
    {
        this(peopletagsinteractivelayout);
    }

    private c a(int i, int j)
    {
        for (int k = -1 + a.getChildCount(); k >= 0; k--)
        {
            c c1 = a.a(k);
            if (c1.c() && c1.a(i, j))
            {
                return c1;
            }
        }

        return null;
    }

    public final boolean onDown(MotionEvent motionevent)
    {
        PeopleTagsInteractiveLayout.a(a, a((int)motionevent.getX(), (int)motionevent.getY()));
        if (PeopleTagsInteractiveLayout.a(a) != null)
        {
            PeopleTagsInteractiveLayout.a(a).bringToFront();
            PeopleTagsInteractiveLayout peopletagsinteractivelayout = a;
            boolean flag;
            if (!PeopleTagsInteractiveLayout.a(a).d())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            PeopleTagsInteractiveLayout.a(peopletagsinteractivelayout, flag);
            com.instagram.android.people.widget.PeopleTagsInteractiveLayout.b(a, PeopleTagsInteractiveLayout.a(a).b((int)motionevent.getX(), (int)motionevent.getY()));
            PeopleTagsInteractiveLayout.a(a, a.a(-1 + a.getChildCount()));
            a.invalidate();
        }
        com.instagram.android.people.widget.PeopleTagsInteractiveLayout.b(a);
        return true;
    }

    public final boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        if (PeopleTagsInteractiveLayout.a(a) != null)
        {
            PeopleTagsInteractiveLayout.a(a, PeopleTagsInteractiveLayout.a(a), f, f1);
        }
        return true;
    }

    public final boolean onSingleTapUp(MotionEvent motionevent)
    {
        if (PeopleTagsInteractiveLayout.c(a) != null)
        {
            a.a();
        } else
        {
            if (PeopleTagsInteractiveLayout.a(a) == null)
            {
                if (PeopleTagsInteractiveLayout.d(a).size() < 20)
                {
                    PeopleTagsInteractiveLayout.a(a, new PointF(motionevent.getX() / (float)a.getWidth(), motionevent.getY() / (float)a.getHeight()));
                    return true;
                } else
                {
                    Toast.makeText(a.getContext(), az.people_tagging_add_people_limit_reached, 0).show();
                    return true;
                }
            }
            if (PeopleTagsInteractiveLayout.e(a))
            {
                PeopleTagsInteractiveLayout.d(a).remove(PeopleTagsInteractiveLayout.a(a).getTag());
            }
            if (PeopleTagsInteractiveLayout.f(a))
            {
                PeopleTagsInteractiveLayout.a(a).b();
                return true;
            }
        }
        return true;
    }
}
