// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.app.ProgressDialog;
import android.os.Handler;

// Referenced classes of package com.instagram.creation.photo.crop:
//            o, y

public final class n
{

    public static void a(y y1, String s, Runnable runnable, Handler handler)
    {
        (new Thread(new o(y1, runnable, ProgressDialog.show(y1.l(), null, s, true, false), handler))).start();
    }
}
