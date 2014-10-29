// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.support.v4.view.a.a;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v4.view:
//            g, h, c, a

class b extends g
{

    b()
    {
    }

    public final Object a()
    {
        return android.support.v4.view.h.a();
    }

    public Object a(android.support.v4.view.a a1)
    {
        return android.support.v4.view.h.a(new c(this, a1));
    }

    public final void a(Object obj, View view, int i)
    {
        android.support.v4.view.h.a(obj, view, i);
    }

    public final void a(Object obj, View view, a a1)
    {
        android.support.v4.view.h.a(obj, view, a1.a());
    }

    public final boolean a(Object obj, View view, AccessibilityEvent accessibilityevent)
    {
        return android.support.v4.view.h.a(obj, view, accessibilityevent);
    }

    public final boolean a(Object obj, ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        return android.support.v4.view.h.a(obj, viewgroup, view, accessibilityevent);
    }

    public final void b(Object obj, View view, AccessibilityEvent accessibilityevent)
    {
        h.b(obj, view, accessibilityevent);
    }

    public final void c(Object obj, View view, AccessibilityEvent accessibilityevent)
    {
        h.c(obj, view, accessibilityevent);
    }

    public final void d(Object obj, View view, AccessibilityEvent accessibilityevent)
    {
        h.d(obj, view, accessibilityevent);
    }
}
