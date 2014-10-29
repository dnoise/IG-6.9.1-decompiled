// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.content.Context;
import android.os.Parcelable;
import android.widget.TabHost;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.app:
//            af, s, ag, Fragment

public final class FragmentTabHost extends TabHost
    implements android.widget.TabHost.OnTabChangeListener
{

    private final ArrayList a;
    private Context b;
    private s c;
    private int d;
    private android.widget.TabHost.OnTabChangeListener e;
    private af f;
    private boolean g;

    private ag a(String s1, ag ag1)
    {
        af af1 = null;
        int i = 0;
        while (i < a.size()) 
        {
            af af2 = (af)a.get(i);
            if (!af.b(af2).equals(s1))
            {
                af2 = af1;
            }
            i++;
            af1 = af2;
        }
        if (af1 == null)
        {
            throw new IllegalStateException((new StringBuilder("No tab known for tag ")).append(s1).toString());
        }
        if (f != af1)
        {
            if (ag1 == null)
            {
                ag1 = c.a();
            }
            if (f != null && af.a(f) != null)
            {
                ag1.b(af.a(f));
            }
            if (af1 != null)
            {
                if (af.a(af1) == null)
                {
                    af.a(af1, Fragment.a(b, af.c(af1).getName(), af.d(af1)));
                    ag1.a(d, af.a(af1), af.b(af1));
                } else
                {
                    ag1.c(af.a(af1));
                }
            }
            f = af1;
        }
        return ag1;
    }

    protected final void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        String s1 = getCurrentTabTag();
        ag ag1 = null;
        int i = 0;
        while (i < a.size()) 
        {
            af af1 = (af)a.get(i);
            af.a(af1, c.a(af.b(af1)));
            if (af.a(af1) != null && !af.a(af1).t())
            {
                if (af.b(af1).equals(s1))
                {
                    f = af1;
                } else
                {
                    if (ag1 == null)
                    {
                        ag1 = c.a();
                    }
                    ag1.b(af.a(af1));
                }
            }
            i++;
        }
        g = true;
        ag ag2 = a(s1, ag1);
        if (ag2 != null)
        {
            ag2.b();
            c.b();
        }
    }

    protected final void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        g = false;
    }

    protected final void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        setCurrentTabByTag(savedstate.a);
    }

    protected final Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = getCurrentTabTag();
        return savedstate;
    }

    public final void onTabChanged(String s1)
    {
        if (g)
        {
            ag ag1 = a(s1, null);
            if (ag1 != null)
            {
                ag1.b();
            }
        }
        if (e != null)
        {
            e.onTabChanged(s1);
        }
    }

    public final void setOnTabChangedListener(android.widget.TabHost.OnTabChangeListener ontabchangelistener)
    {
        e = ontabchangelistener;
    }

    public final void setup()
    {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new ae();
        String a;

        public String toString()
        {
            return (new StringBuilder("FragmentTabHost.SavedState{")).append(Integer.toHexString(System.identityHashCode(this))).append(" curTab=").append(a).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeString(a);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            a = parcel.readString();
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
