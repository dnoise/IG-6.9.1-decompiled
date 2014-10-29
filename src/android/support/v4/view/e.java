// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.j;
import android.view.View;

// Referenced classes of package android.support.v4.view:
//            b, k, f, a

final class e extends b
{

    e()
    {
    }

    public final j a(Object obj, View view)
    {
        Object obj1 = k.a(obj, view);
        if (obj1 != null)
        {
            return new j(obj1);
        } else
        {
            return null;
        }
    }

    public final Object a(a a1)
    {
        return k.a(new f(this, a1));
    }

    public final boolean a(Object obj, View view, int i, Bundle bundle)
    {
        return k.a(obj, view, i, bundle);
    }
}
