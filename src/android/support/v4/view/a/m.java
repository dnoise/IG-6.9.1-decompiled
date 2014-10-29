// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view.a;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v4.view.a:
//            s, j, a, l

final class m
    implements s
{

    final j a;
    final l b;

    m(l l, j j1)
    {
        b = l;
        a = j1;
        super();
    }

    public final boolean a()
    {
        j _tmp = a;
        return j.c();
    }

    public final List b()
    {
        j _tmp = a;
        j.d();
        ArrayList arraylist = new ArrayList();
        int i = null.size();
        for (int k = 0; k < i; k++)
        {
            arraylist.add(((a)null.get(k)).a());
        }

        return arraylist;
    }

    public final Object c()
    {
        j _tmp = a;
        j.b();
        return null;
    }
}
