// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package android.support.v4.app:
//            Fragment, r

public final class e extends LayoutInflater
{

    private static final String a[] = {
        "android.widget.", "android.webkit."
    };
    private LayoutInflater b;
    private Fragment c;

    public e(LayoutInflater layoutinflater, Fragment fragment)
    {
        super(layoutinflater.getContext());
        b = layoutinflater;
        c = fragment;
    }

    public final LayoutInflater cloneInContext(Context context)
    {
        return new e(b.cloneInContext(context), c);
    }

    public final Context getContext()
    {
        return b.getContext();
    }

    public final android.view.LayoutInflater.Filter getFilter()
    {
        return b.getFilter();
    }

    public final View inflate(XmlPullParser xmlpullparser, ViewGroup viewgroup, boolean flag)
    {
        r r1 = c.m();
        s s = r1.i();
        r1.a(c.q());
        View view = b.inflate(xmlpullparser, viewgroup, flag);
        r1.a(s);
        return view;
    }

    protected final View onCreateView(String s, AttributeSet attributeset)
    {
        String as[];
        int i;
        int j;
        as = a;
        i = as.length;
        j = 0;
_L3:
        if (j >= i) goto _L2; else goto _L1
_L1:
        String s1 = as[j];
        View view = b.createView(s, s1, attributeset);
        if (view != null)
        {
            return view;
        }
        continue; /* Loop/switch isn't completed */
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        j++;
          goto _L3
_L2:
        return super.onCreateView(s, attributeset);
    }

    public final void setFactory(android.view.LayoutInflater.Factory factory)
    {
        super.setFactory(factory);
        b.setFactory(factory);
    }

    public final void setFactory2(android.view.LayoutInflater.Factory2 factory2)
    {
        super.setFactory2(factory2);
        b.setFactory2(factory2);
    }

    public final void setFilter(android.view.LayoutInflater.Filter filter)
    {
        super.setFilter(filter);
        b.setFilter(filter);
    }

}
