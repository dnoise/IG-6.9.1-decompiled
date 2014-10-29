// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

// Referenced classes of package android.support.v4.app:
//            Fragment, s, ag, r, 
//            e

public class f extends Fragment
    implements android.content.DialogInterface.OnCancelListener, android.content.DialogInterface.OnDismissListener
{

    int a;
    int b;
    boolean c;
    boolean d;
    int e;
    Dialog f;
    boolean g;
    boolean h;
    boolean i;

    public f()
    {
        a = 0;
        b = 0;
        c = true;
        d = true;
        e = -1;
    }

    private void c(boolean flag)
    {
        if (h)
        {
            return;
        }
        h = true;
        i = false;
        if (f != null)
        {
            f.dismiss();
            f = null;
        }
        g = true;
        if (e >= 0)
        {
            p().b(e);
            e = -1;
            return;
        }
        ag ag1 = p().a();
        ag1.a(this);
        if (flag)
        {
            ag1.c();
            return;
        } else
        {
            ag1.b();
            return;
        }
    }

    public final int a(ag ag1, String s1)
    {
        h = false;
        i = true;
        ag1.a(this, s1);
        g = false;
        e = ag1.c();
        return e;
    }

    public final void a()
    {
        c(false);
    }

    public final void a(int j)
    {
        a = 2;
        if (a == 2 || a == 3)
        {
            b = 0x1030059;
        }
        if (j != 0)
        {
            b = j;
        }
    }

    public final void a(Context context)
    {
        super.a(context);
        if (!i)
        {
            h = false;
        }
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        boolean flag;
        if (H == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
        if (bundle != null)
        {
            a = bundle.getInt("android:style", 0);
            b = bundle.getInt("android:theme", 0);
            c = bundle.getBoolean("android:cancelable", true);
            d = bundle.getBoolean("android:showsDialog", d);
            e = bundle.getInt("android:backStackId", -1);
        }
    }

    public final void a(s s1, String s2)
    {
        h = false;
        i = true;
        ag ag1 = s1.a();
        ag1.a(this, s2);
        ag1.b();
    }

    public final LayoutInflater b(Bundle bundle)
    {
        if (!d)
        {
            return super.b(bundle);
        }
        f = c(bundle);
        a;
        JVM INSTR tableswitch 1 3: default 52
    //                   1 101
    //                   2 101
    //                   3 89;
           goto _L1 _L2 _L2 _L3
_L1:
        LayoutInflater layoutinflater = D.e();
        if (f != null)
        {
            layoutinflater = layoutinflater.cloneInContext(f.getContext());
        }
        return new e(layoutinflater, this);
_L3:
        f.getWindow().addFlags(24);
_L2:
        f.requestWindowFeature(1);
        if (true) goto _L1; else goto _L4
_L4:
    }

    public final void b()
    {
        c(true);
    }

    public final Dialog c()
    {
        return f;
    }

    public Dialog c(Bundle bundle)
    {
        return new Dialog(n(), d());
    }

    public final int d()
    {
        return b;
    }

    public void d(Bundle bundle)
    {
        super.d(bundle);
        if (d)
        {
            View view = E();
            if (view != null)
            {
                if (view.getParent() != null)
                {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                f.setContentView(view);
            }
            Context context = n();
            if (context instanceof Activity)
            {
                f.setOwnerActivity((Activity)context);
            }
            f.setCancelable(c);
            f.setOnCancelListener(this);
            f.setOnDismissListener(this);
            if (bundle != null)
            {
                Bundle bundle1 = bundle.getBundle("android:savedDialogState");
                if (bundle1 != null)
                {
                    f.onRestoreInstanceState(bundle1);
                    return;
                }
            }
        }
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        if (f != null)
        {
            Bundle bundle1 = f.onSaveInstanceState();
            if (bundle1 != null)
            {
                bundle.putBundle("android:savedDialogState", bundle1);
            }
        }
        if (a != 0)
        {
            bundle.putInt("android:style", a);
        }
        if (b != 0)
        {
            bundle.putInt("android:theme", b);
        }
        if (!c)
        {
            bundle.putBoolean("android:cancelable", c);
        }
        if (!d)
        {
            bundle.putBoolean("android:showsDialog", d);
        }
        if (e != -1)
        {
            bundle.putInt("android:backStackId", e);
        }
    }

    public final void k_()
    {
        super.k_();
        if (f != null)
        {
            g = false;
            f.show();
        }
    }

    public final void l_()
    {
        super.l_();
        if (f != null)
        {
            f.hide();
        }
    }

    public final void m_()
    {
        super.m_();
        if (f != null)
        {
            g = true;
            f.dismiss();
            f = null;
        }
    }

    public void onCancel(DialogInterface dialoginterface)
    {
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        if (!g)
        {
            c(true);
        }
    }

    public final void r_()
    {
        super.r_();
        if (!i && !h)
        {
            h = true;
        }
    }
}
