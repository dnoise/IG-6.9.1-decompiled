// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.f;

import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.instagram.android.widget.q;
import com.instagram.common.y.d;
import com.instagram.feed.d.l;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.directshare.f:
//            d

public class c
{

    private static final Class a = com/instagram/android/directshare/f/c;

    public c()
    {
    }

    public static int a(l l1)
    {
        if (l1.ak())
        {
            if (l1.an() == 0L)
            {
                return com.instagram.android.directshare.f.d.a;
            }
            if (l1.ao() > l1.an())
            {
                return d.c;
            } else
            {
                return d.b;
            }
        } else
        {
            return com.instagram.android.directshare.f.d.d;
        }
    }

    static long a()
    {
        return com.instagram.l.b.a.a().A();
    }

    public static void a(int i, long l1)
    {
        com.instagram.common.x.a.a().b();
        int j = b();
        long l2 = a();
        if (l1 >= l2)
        {
            Class _tmp = a;
            Integer.valueOf(i);
            Long.valueOf(l1);
            com.instagram.l.b.a.a().a(i, l1);
            if (j != i)
            {
                c();
            }
            return;
        } else
        {
            Class _tmp1 = a;
            Long.valueOf(l2);
            Long.valueOf(l1);
            return;
        }
    }

    public static void a(long l1)
    {
        com.instagram.common.x.a.a().b();
        a(0, l1);
    }

    public static void a(View view)
    {
        if (view == null)
        {
            return;
        }
        int i = b();
        TextView textview = (TextView)view.findViewById(av.action_bar_inbox_new_share_count);
        if (i == 0 || i == -1)
        {
            textview.setVisibility(8);
            return;
        }
        String s;
        if (i < 10)
        {
            s = Integer.toString(i);
        } else
        {
            s = "9+";
        }
        q.a(textview, s);
        textview.setVisibility(0);
    }

    public static void a(com.instagram.f.b.a a1)
    {
        a(a1.b(), a1.a());
    }

    public static int b()
    {
        com/instagram/android/directshare/f/c;
        JVM INSTR monitorenter ;
        int i = com.instagram.l.b.a.a().z();
        com/instagram/android/directshare/f/c;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    private static void c()
    {
        d.a("INTENT_ACTION_UPDATE_INBOX_BADGE");
    }

}
