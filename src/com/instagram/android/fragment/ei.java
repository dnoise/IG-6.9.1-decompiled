// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.android.a.b;
import com.instagram.api.j.f;
import java.util.ArrayList;

// Referenced classes of package com.instagram.android.fragment:
//            eh

final class ei extends f
{

    final eh a;

    ei(eh eh1)
    {
        a = eh1;
        super();
    }

    private void a(ArrayList arraylist)
    {
        eh.a(a).d(arraylist);
        a.Z();
        a.aa();
    }

    public final void a()
    {
        a.d(true);
        a.c(true);
    }

    protected final volatile void a(Object obj)
    {
        a((ArrayList)obj);
    }

    public final void b()
    {
        a.d(false);
        a.c(false);
    }
}
