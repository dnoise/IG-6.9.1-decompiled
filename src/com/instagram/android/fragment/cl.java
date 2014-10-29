// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.widget.x;
import com.instagram.share.b.a;
import com.instagram.ui.dialog.b;
import com.instagram.ui.menu.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            co, cn, cm

public final class cl extends e
    implements c
{

    private co i;

    public cl()
    {
        i = new co(this, (byte)0);
    }

    static co a(cl cl1)
    {
        return cl1.i;
    }

    private void a(View view, x x1)
    {
        b b1 = new b(n());
        String s = c(az.unlink_account);
        Object aobj[] = new Object[1];
        aobj[0] = x1.a(n());
        b1.b(com.instagram.common.y.e.a(s, aobj)).c(az.cancel, null).b(az.unlink, new cn(this, x1, view)).c().show();
    }

    static void a(cl cl1, View view, x x1)
    {
        cl1.a(view, x1);
    }

    static void a(cl cl1, Collection collection)
    {
        cl1.a(collection);
    }

    static List b(cl cl1)
    {
        return cl1.d();
    }

    private List d()
    {
        ArrayList arraylist = new ArrayList();
        x x1;
        for (Iterator iterator = x.b(n()).iterator(); iterator.hasNext(); arraylist.add(new com.instagram.ui.menu.b(x1.a(), x1.b(), x1.c(), new cm(this, x1))))
        {
            x1 = (x)iterator.next();
        }

        return arraylist;
    }

    public final void F()
    {
        super.F();
        a(d());
    }

    public final void a(int j, int k, Intent intent)
    {
        if (k != -1)
        {
            return;
        }
        com.facebook.b.b b1;
        switch (j)
        {
        default:
            return;

        case 32665: 
            b1 = com.instagram.share.b.a.a();
            break;
        }
        b1.a(i);
        b1.a(j, k, intent);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.linked_accounts);
        b1.a(true);
    }

    public final String j_()
    {
        return "sharing_settings";
    }
}
