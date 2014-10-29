// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.os.Bundle;
import com.instagram.base.a.b;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.instagram.creation.photo.crop:
//            aa

public abstract class y extends b
{

    private final ArrayList a = new ArrayList();

    public y()
    {
    }

    public final void H()
    {
        super.H();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((aa)iterator.next()).a()) { }
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        for (Iterator iterator = a.iterator(); iterator.hasNext(); iterator.next()) { }
    }

    public final void a(aa aa1)
    {
        if (a.contains(aa1))
        {
            return;
        } else
        {
            a.add(aa1);
            return;
        }
    }

    public final void b(aa aa1)
    {
        a.remove(aa1);
    }

    public final void k_()
    {
        super.k_();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((aa)iterator.next()).c()) { }
    }

    public final void l_()
    {
        super.l_();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((aa)iterator.next()).b()) { }
    }
}
