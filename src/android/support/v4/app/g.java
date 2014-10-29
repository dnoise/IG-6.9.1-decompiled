// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Dialog;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.view.Window;

// Referenced classes of package android.support.v4.app:
//            k, f, Fragment, u

final class g extends k
{

    private final Fragment p;

    public final ComponentName getComponentName()
    {
        Intent intent = getPackageManager().getLaunchIntentForPackage(getPackageName());
        if (intent != null)
        {
            return intent.getComponent();
        } else
        {
            return null;
        }
    }

    public final Window getWindow()
    {
        for (Fragment fragment = p; fragment != null; fragment = fragment.C.q)
        {
            if (fragment instanceof f)
            {
                return ((f)fragment).f.getWindow();
            }
        }

        return null;
    }
}
