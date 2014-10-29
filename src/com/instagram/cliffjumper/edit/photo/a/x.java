// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.app.Dialog;
import android.os.AsyncTask;
import com.facebook.az;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.common.i.c;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a, y

final class x extends AsyncTask
{

    final a a;

    private x(a a1)
    {
        a = a1;
        super();
    }

    x(a a1, byte byte0)
    {
        this(a1);
    }

    private static transient Boolean a()
    {
        return Boolean.valueOf(ShaderBridge.a());
    }

    private void a(Boolean boolean1)
    {
        if (!a.v())
        {
            return;
        }
        if (!boolean1.booleanValue())
        {
            c.b("failed_to_load_library_filter_fragment", "failed_to_load_library_filter_fragment");
            (new b(a.l())).a(az.error).a(false).b(az.not_installed_correctly).b(az.ok, new y(this)).c().show();
            return;
        } else
        {
            com.instagram.cliffjumper.edit.photo.a.a.q(a);
            return;
        }
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }
}
