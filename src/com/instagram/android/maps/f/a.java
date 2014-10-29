// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.f;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import com.facebook.az;
import com.instagram.android.maps.DedicatedMapActivity;
import com.instagram.o.f.c;
import com.instagram.ui.dialog.b;

public final class a
    implements c
{

    public a()
    {
    }

    public static boolean a()
    {
        try
        {
            Class.forName("com.google.android.maps.MapActivity");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return false;
        }
        return true;
    }

    public final void a(Activity activity, String s)
    {
        if (!a())
        {
            (new b(activity)).b(az.photo_maps_unavailable_on_device).b(az.ok, null).c().show();
            return;
        } else
        {
            com.instagram.b.c.a.a().a(activity);
            Intent intent = new Intent(activity, com/instagram/android/maps/DedicatedMapActivity);
            intent.setAction(s);
            activity.startActivity(intent);
            return;
        }
    }
}
