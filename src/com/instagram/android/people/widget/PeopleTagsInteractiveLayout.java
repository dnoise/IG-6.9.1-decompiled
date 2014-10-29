// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.facebook.az;
import com.instagram.model.people.PeopleTag;
import com.instagram.model.people.b;
import com.instagram.model.people.c;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.people.widget:
//            PeopleTagsLayout, g, f, c

public class PeopleTagsInteractiveLayout extends PeopleTagsLayout
    implements c
{

    private com.instagram.android.people.widget.c b;
    private boolean c;
    private boolean d;
    private GestureDetector e;
    private f f;
    private com.instagram.android.people.widget.c g;
    private b h;

    public PeopleTagsInteractiveLayout(Context context)
    {
        super(context);
        b = null;
        c = false;
        d = false;
        e = new GestureDetector(getContext(), new g(this, (byte)0));
    }

    public PeopleTagsInteractiveLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = null;
        c = false;
        d = false;
        e = new GestureDetector(getContext(), new g(this, (byte)0));
    }

    public PeopleTagsInteractiveLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = null;
        c = false;
        d = false;
        e = new GestureDetector(getContext(), new g(this, (byte)0));
    }

    static com.instagram.android.people.widget.c a(PeopleTagsInteractiveLayout peopletagsinteractivelayout)
    {
        return peopletagsinteractivelayout.b;
    }

    static com.instagram.android.people.widget.c a(PeopleTagsInteractiveLayout peopletagsinteractivelayout, com.instagram.android.people.widget.c c1)
    {
        peopletagsinteractivelayout.b = c1;
        return c1;
    }

    private void a(PointF pointf)
    {
        if (f != null)
        {
            f.a();
        }
        b(pointf);
    }

    static void a(PeopleTagsInteractiveLayout peopletagsinteractivelayout, PointF pointf)
    {
        peopletagsinteractivelayout.a(pointf);
    }

    static void a(PeopleTagsInteractiveLayout peopletagsinteractivelayout, com.instagram.android.people.widget.c c1, float f1, float f2)
    {
        peopletagsinteractivelayout.a(c1, f1, f2);
    }

    private void a(com.instagram.android.people.widget.c c1, float f1, float f2)
    {
        PointF pointf = c1.getAbsoluteTagPosition();
        c1.setPosition(new PointF(pointf.x - f1, pointf.y - f2));
        if (g != null)
        {
            b.a();
            b.invalidate();
            return;
        } else
        {
            c();
            return;
        }
    }

    static boolean a(PeopleTagsInteractiveLayout peopletagsinteractivelayout, boolean flag)
    {
        peopletagsinteractivelayout.c = flag;
        return flag;
    }

    private void b(PointF pointf)
    {
        e();
        a = false;
        g = a(getResources().getString(az.people_tagging_default_text), pointf);
        addView(g);
        if (f != null)
        {
            f.a(pointf);
        }
    }

    static void b(PeopleTagsInteractiveLayout peopletagsinteractivelayout)
    {
        peopletagsinteractivelayout.b(((com.instagram.android.people.widget.c) (null)));
    }

    private void b(com.instagram.android.people.widget.c c1)
    {
        int i = 0;
        do
        {
label0:
            {
                if (i < getChildCount())
                {
                    com.instagram.android.people.widget.c c2 = a(i);
                    if (c2 == null || !c2.d())
                    {
                        break label0;
                    }
                    c2.b();
                }
                return;
            }
            i++;
        } while (true);
    }

    static boolean b(PeopleTagsInteractiveLayout peopletagsinteractivelayout, boolean flag)
    {
        peopletagsinteractivelayout.d = flag;
        return flag;
    }

    static com.instagram.android.people.widget.c c(PeopleTagsInteractiveLayout peopletagsinteractivelayout)
    {
        return peopletagsinteractivelayout.g;
    }

    static b d(PeopleTagsInteractiveLayout peopletagsinteractivelayout)
    {
        return peopletagsinteractivelayout.h;
    }

    private void e()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.8F);
        alphaanimation.setFillAfter(true);
        for (int i = 0; i < getChildCount(); i++)
        {
            a(i).a(alphaanimation);
        }

    }

    static boolean e(PeopleTagsInteractiveLayout peopletagsinteractivelayout)
    {
        return peopletagsinteractivelayout.d;
    }

    private void f()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(0.8F, 1.0F);
        alphaanimation.setFillAfter(true);
        for (int i = 0; i < getChildCount(); i++)
        {
            a(i);
            a(i).b(alphaanimation);
        }

    }

    static boolean f(PeopleTagsInteractiveLayout peopletagsinteractivelayout)
    {
        return peopletagsinteractivelayout.c;
    }

    public final void a()
    {
        a = true;
        removeView(g);
        g = null;
        f();
        if (f != null)
        {
            f.b();
        }
    }

    public final void a(PeopleTag peopletag)
    {
        removeView(findViewWithTag(peopletag));
    }

    public final void a(a a1)
    {
        if (g != null)
        {
            h.a(new PeopleTag(a1, g.getNormalizedPosition()));
            a();
        }
    }

    public final void b()
    {
        if (h != null)
        {
            h.a(null);
        }
    }

    public final void b(PeopleTag peopletag)
    {
        a(peopletag, false);
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        if (parcelable instanceof UnnamedTagSavedState)
        {
            UnnamedTagSavedState unnamedtagsavedstate = (UnnamedTagSavedState)parcelable;
            super.onRestoreInstanceState(unnamedtagsavedstate.getSuperState());
            b(unnamedtagsavedstate.a);
            return;
        } else
        {
            super.onRestoreInstanceState(parcelable);
            return;
        }
    }

    protected Parcelable onSaveInstanceState()
    {
        Parcelable parcelable = super.onSaveInstanceState();
        if (g == null)
        {
            return parcelable;
        } else
        {
            UnnamedTagSavedState unnamedtagsavedstate = new UnnamedTagSavedState(parcelable);
            unnamedtagsavedstate.a = g.getNormalizedPosition();
            return unnamedtagsavedstate;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (b != null && motionevent.getAction() == 1)
        {
            f.b(b.getNormalizedPosition());
            if (b.getTag() != null)
            {
                ((PeopleTag)b.getTag()).a(b.getNormalizedPosition());
            }
        }
        return e.onTouchEvent(motionevent);
    }

    public void setEditListener(f f1)
    {
        f = f1;
    }

    public final void setPeopleTags$7d2216ca(b b1)
    {
        super.a(b1, false);
        h = b1;
        h.a(this);
    }

    private class UnnamedTagSavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new h();
        PointF a;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(a.x);
            parcel.writeFloat(a.y);
        }


        public UnnamedTagSavedState(Parcel parcel)
        {
            super(parcel);
            a = new PointF();
            a.x = parcel.readFloat();
            a.y = parcel.readFloat();
        }

        public UnnamedTagSavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

}
