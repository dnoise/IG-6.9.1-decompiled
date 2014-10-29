// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.az;
import com.facebook.b.b;
import com.instagram.a.c;
import com.instagram.android.a.b.f;
import com.instagram.android.a.m;
import com.instagram.android.a.n;
import com.instagram.android.widget.e;
import com.instagram.share.b.a;

// Referenced classes of package com.instagram.android.fragment:
//            ey, ce

public final class cd extends ey
    implements c, f
{

    private e ac;

    public cd()
    {
    }

    public final void W()
    {
    }

    public final void X()
    {
    }

    public final boolean Y()
    {
        return false;
    }

    protected final m Z()
    {
        if (i == null)
        {
            i = (new n(l())).a(z()).a(p()).a(4).a(aa).a(this).e();
        }
        return i;
    }

    public final void a(int i, int j, Intent intent)
    {
        if (j != -1)
        {
            return;
        }
        b b1;
        switch (i)
        {
        default:
            return;

        case 32665: 
            b1 = com.instagram.share.b.a.a();
            break;
        }
        b1.a(ac.d());
        b1.a(i, j, intent);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        ac = new e(n(), this, Z());
        aa();
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.people);
        b1.a(true);
        b1.a(new ce(this));
    }

    public final e b()
    {
        return ac;
    }

    public final String j_()
    {
        return "follow_destination";
    }
}
