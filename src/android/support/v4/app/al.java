// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.widget.ListView;

// Referenced classes of package android.support.v4.app:
//            ak

final class al
    implements Runnable
{

    final ak a;

    al(ak ak1)
    {
        a = ak1;
        super();
    }

    public final void run()
    {
        a.b.focusableViewAvailable(a.b);
    }
}
