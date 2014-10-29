// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.d;

import android.content.IntentFilter;
import com.facebook.e.a.a;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.instagram.common.d:
//            h, e, i, b

public final class d
    implements h
{

    final b a;
    private final i b;
    private final IntentFilter c;
    private boolean d;

    public d(b b1, Map map, IntentFilter intentfilter)
    {
        a = b1;
        super();
        d = false;
        b = new e(this, map, b1);
        c = intentfilter;
    }

    public final boolean a()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = d;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        this;
        JVM INSTR monitorenter ;
        if (!d) goto _L2; else goto _L1
_L1:
        com.facebook.e.a.a.a(a.getClass().getSimpleName(), "Called registerBroadcastReceiver twice.");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        IntentFilter intentfilter = c;
        if (intentfilter != null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        IntentFilter intentfilter1;
        intentfilter1 = new IntentFilter();
        for (Iterator iterator = b.b().iterator(); iterator.hasNext(); intentfilter1.addAction((String)iterator.next())) { }
        break MISSING_BLOCK_LABEL_90;
        Exception exception;
        exception;
        throw exception;
        intentfilter = intentfilter1;
        a.a(b, intentfilter);
        d = true;
          goto _L3
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        if (d)
        {
            a.a(b);
            d = false;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
