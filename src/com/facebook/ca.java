// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.support.v4.app.Fragment;
import java.util.List;

// Referenced classes of package com.facebook:
//            bu, cf, cg

public final class ca extends bu
{

    public ca(Activity activity)
    {
        super(activity);
    }

    public ca(Fragment fragment)
    {
        super(fragment);
    }

    public final bu a(cf cf)
    {
        return b(cf);
    }

    public final bu a(cg cg)
    {
        return b(cg);
    }

    public final bu a(List list)
    {
        return b(list);
    }

    public final ca b(cf cf)
    {
        super.a(cf);
        return this;
    }

    public final ca b(cg cg)
    {
        super.a(cg);
        return this;
    }

    public final ca b(List list)
    {
        super.a(list);
        return this;
    }
}
