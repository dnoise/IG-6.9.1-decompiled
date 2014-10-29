// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view.a;

import android.graphics.Rect;

// Referenced classes of package android.support.v4.view.a:
//            f, e, d, b, 
//            g, c

public final class a
{

    private static final c a;
    private final Object b;

    public a(Object obj)
    {
        b = obj;
    }

    private void a(Rect rect)
    {
        a.a(b, rect);
    }

    private int b()
    {
        return a.a(b);
    }

    private static String b(int i1)
    {
        switch (i1)
        {
        default:
            return "ACTION_UNKNOWN";

        case 1: // '\001'
            return "ACTION_FOCUS";

        case 2: // '\002'
            return "ACTION_CLEAR_FOCUS";

        case 4: // '\004'
            return "ACTION_SELECT";

        case 8: // '\b'
            return "ACTION_CLEAR_SELECTION";

        case 16: // '\020'
            return "ACTION_CLICK";

        case 32: // ' '
            return "ACTION_LONG_CLICK";

        case 64: // '@'
            return "ACTION_ACCESSIBILITY_FOCUS";

        case 128: 
            return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";

        case 256: 
            return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";

        case 512: 
            return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";

        case 1024: 
            return "ACTION_NEXT_HTML_ELEMENT";

        case 2048: 
            return "ACTION_PREVIOUS_HTML_ELEMENT";

        case 4096: 
            return "ACTION_SCROLL_FORWARD";

        case 8192: 
            return "ACTION_SCROLL_BACKWARD";

        case 65536: 
            return "ACTION_CUT";

        case 16384: 
            return "ACTION_COPY";

        case 32768: 
            return "ACTION_PASTE";

        case 131072: 
            return "ACTION_SET_SELECTION";
        }
    }

    private void b(Rect rect)
    {
        a.b(b, rect);
    }

    private boolean c()
    {
        return a.f(b);
    }

    private boolean d()
    {
        return a.g(b);
    }

    private boolean e()
    {
        return a.j(b);
    }

    private boolean f()
    {
        return a.k(b);
    }

    private boolean g()
    {
        return a.o(b);
    }

    private boolean h()
    {
        return a.h(b);
    }

    private boolean i()
    {
        return a.l(b);
    }

    private boolean j()
    {
        return a.i(b);
    }

    private boolean k()
    {
        return a.m(b);
    }

    private boolean l()
    {
        return a.n(b);
    }

    private CharSequence m()
    {
        return a.d(b);
    }

    private CharSequence n()
    {
        return a.b(b);
    }

    private CharSequence o()
    {
        return a.e(b);
    }

    private CharSequence p()
    {
        return a.c(b);
    }

    private String q()
    {
        return a.p(b);
    }

    public final Object a()
    {
        return b;
    }

    public final void a(int i1)
    {
        a.a(b, i1);
    }

    public final void a(CharSequence charsequence)
    {
        a.a(b, charsequence);
    }

    public final void a(boolean flag)
    {
        a.a(b, flag);
    }

    public final boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        a a1;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        a1 = (a)obj;
        if (b != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (a1.b == null) goto _L1; else goto _L3
_L3:
        return false;
        if (b.equals(a1.b)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public final int hashCode()
    {
        if (b == null)
        {
            return 0;
        } else
        {
            return b.hashCode();
        }
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        stringbuilder.append((new StringBuilder("; boundsInParent: ")).append(rect).toString());
        b(rect);
        stringbuilder.append((new StringBuilder("; boundsInScreen: ")).append(rect).toString());
        stringbuilder.append("; packageName: ").append(m());
        stringbuilder.append("; className: ").append(n());
        stringbuilder.append("; text: ").append(o());
        stringbuilder.append("; contentDescription: ").append(p());
        stringbuilder.append("; viewId: ").append(q());
        stringbuilder.append("; checkable: ").append(c());
        stringbuilder.append("; checked: ").append(d());
        stringbuilder.append("; focusable: ").append(e());
        stringbuilder.append("; focused: ").append(f());
        stringbuilder.append("; selected: ").append(g());
        stringbuilder.append("; clickable: ").append(h());
        stringbuilder.append("; longClickable: ").append(i());
        stringbuilder.append("; enabled: ").append(j());
        stringbuilder.append("; password: ").append(k());
        stringbuilder.append((new StringBuilder("; scrollable: ")).append(l()).toString());
        stringbuilder.append("; [");
        int i1 = b();
        do
        {
            if (i1 == 0)
            {
                break;
            }
            int j1 = 1 << Integer.numberOfTrailingZeros(i1);
            i1 &= ~j1;
            stringbuilder.append(b(j1));
            if (i1 != 0)
            {
                stringbuilder.append(", ");
            }
        } while (true);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new f();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            a = new e();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new d();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a = new b();
        } else
        {
            a = new g();
        }
    }
}
