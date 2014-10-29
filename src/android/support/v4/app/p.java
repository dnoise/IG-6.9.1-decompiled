// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import java.io.PrintWriter;

// Referenced classes of package android.support.v4.app:
//            r, k, ap, Fragment, 
//            s, u

public final class p extends r
{

    private final k a;

    public p(k k1)
    {
        a = k1;
    }

    public final Context a()
    {
        return a;
    }

    final ap a(String s, boolean flag, boolean flag1)
    {
        return a.a(s, flag, flag1);
    }

    public final View a(int l)
    {
        return a.findViewById(l);
    }

    final void a(Fragment fragment)
    {
        a.a(fragment);
    }

    final void a(Fragment fragment, Intent intent, int l)
    {
        a.a(fragment, intent, l);
    }

    final void a(s s)
    {
        a.a(s);
    }

    final void a(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        a.onCreateContextMenu(contextmenu, view, contextmenuinfo);
    }

    final void a(String s)
    {
        a.a(s);
    }

    final void a(String s, PrintWriter printwriter, String as[])
    {
        a.dump(s, null, printwriter, as);
    }

    public final Handler b()
    {
        return a.a;
    }

    public final Window c()
    {
        return a.getWindow();
    }

    public final Resources d()
    {
        return a.getResources();
    }

    public final LayoutInflater e()
    {
        return a.getLayoutInflater();
    }

    public final boolean f()
    {
        return a.isFinishing();
    }

    final u g()
    {
        return a.b;
    }

    final boolean h()
    {
        return a.i;
    }

    final s i()
    {
        return a.b_();
    }

    final void j()
    {
        a.c();
    }
}
