// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.support.v4.app.Fragment;
import android.support.v4.app.s;
import com.instagram.ui.b.a;

// Referenced classes of package com.instagram.android.fragment:
//            fc, ar, aq

final class fk extends a
{

    final fc a;

    public fk(fc fc1, s s)
    {
        a = fc1;
        super(s);
    }

    public final Fragment a(int i)
    {
        if (com.instagram.android.fragment.fc.a.equals(Integer.valueOf(i)))
        {
            return new ar();
        }
        if (fc.b.equals(Integer.valueOf(i)))
        {
            return new aq();
        } else
        {
            throw new IllegalArgumentException("Invalid position");
        }
    }

    public final int c()
    {
        return fc.c.intValue();
    }
}
