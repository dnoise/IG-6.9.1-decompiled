// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.s;
import com.facebook.az;
import com.facebook.b.b;
import com.instagram.a.c;
import com.instagram.base.a.a.a;
import com.instagram.ui.menu.e;
import com.instagram.ui.menu.f;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            bw, bv, fx, bq, 
//            br, bs, bt, bu

public class bp extends e
    implements c
{

    private static final Class i = com/instagram/android/fragment/bp;
    private Handler aa;
    private final bw ab = new bw(this, (byte)0);

    public bp()
    {
        aa = new Handler();
    }

    private void V()
    {
        aa.post(new bv(this));
    }

    static bw a(bp bp1)
    {
        return bp1.ab;
    }

    static void a(bp bp1, String s1)
    {
        bp1.a(s1);
    }

    private void a(String s1)
    {
        new fx();
        com.instagram.android.fragment.fx.a(p(), s1, null, false).a();
    }

    static void b(bp bp1, String s1)
    {
        bp1.b(s1);
    }

    private void b(String s1)
    {
        new fx();
        com.instagram.android.fragment.fx.a(p(), s1, null, false, false).a();
    }

    static Class d()
    {
        return i;
    }

    public final void a(int j, int k, Intent intent)
    {
        if (k != -1) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR tableswitch 5 5: default 24
    //                   5 54;
           goto _L3 _L4
_L3:
        b b1 = com.instagram.share.b.a.a();
        b1.a(ab);
        b1.a(j, k, intent);
_L2:
        super.a(j, k, intent);
        return;
_L4:
        V();
        if (true) goto _L2; else goto _L5
_L5:
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        ArrayList arraylist = new ArrayList();
        arraylist.add(new f(az.find_friends_item_from_my_contact_list, new bq(this)));
        if (com.instagram.share.vkontakte.a.a(n()))
        {
            arraylist.add(new f(az.find_friends_item_vkontakte_friends, new br(this)));
        }
        arraylist.add(new f(az.find_friends_item_facebook_friends, new bs(this)));
        arraylist.add(new f(az.find_friends_item_suggested_users, new bt(this)));
        arraylist.add(new f(az.find_friends_follow_people, new bu(this)));
        a(((java.util.Collection) (arraylist)));
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.find_friends_menu_label);
        boolean flag;
        if (p().g() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b1.a(flag);
    }

    public final String j_()
    {
        return "find_friends";
    }

}
