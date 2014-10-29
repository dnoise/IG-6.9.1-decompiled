// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.people.b.a;
import com.instagram.android.people.b.l;
import com.instagram.base.activity.d;
import com.instagram.model.people.b;

public class PeopleTagActivity extends d
    implements l
{

    private b p;

    public PeopleTagActivity()
    {
    }

    public final void a(com.instagram.user.c.a a1)
    {
        a a2 = (a)d().a("PeopleTagFragment");
        if (a2 != null)
        {
            a2.a(a1);
        }
    }

    public final void g()
    {
        a a1 = (a)d().a("PeopleTagFragment");
        if (a1 != null)
        {
            a1.b();
        }
    }

    public final b h()
    {
        return p;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a a1;
        if (bundle != null)
        {
            p = new b(bundle.getParcelableArrayList("people_tags"));
        } else
        {
            java.util.ArrayList arraylist = getIntent().getParcelableArrayListExtra("people_tags");
            if (arraylist == null)
            {
                p = new b();
            } else
            {
                p = new b(arraylist);
            }
        }
        setContentView(aw.activity_single_container);
        a1 = new a();
        a1.g(getIntent().getExtras());
        if (d().a(av.layout_container_main) == null)
        {
            ag ag1 = d().a();
            ag1.b(av.layout_container_main, a1, "PeopleTagFragment");
            ag1.b();
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArrayList("people_tags", p);
    }
}
