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
//            q, ap, Fragment, s, 
//            u

public abstract class r
    implements q
{

    public r()
    {
    }

    public abstract Context a();

    abstract ap a(String s, boolean flag, boolean flag1);

    abstract void a(Fragment fragment);

    abstract void a(Fragment fragment, Intent intent, int k);

    abstract void a(s s);

    abstract void a(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo);

    abstract void a(String s);

    abstract void a(String s, PrintWriter printwriter, String as[]);

    public abstract Handler b();

    public abstract Window c();

    public abstract Resources d();

    public abstract LayoutInflater e();

    public abstract boolean f();

    abstract u g();

    abstract boolean h();

    abstract s i();

    abstract void j();
}
