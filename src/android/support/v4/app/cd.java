// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;

// Referenced classes of package android.support.v4.app:
//            ch, ah

final class cd
    implements ch
{

    final String a;
    final int b;
    final String c;
    final Notification d;

    public cd(String s, int i, String s1, Notification notification)
    {
        a = s;
        b = i;
        c = s1;
        d = notification;
    }

    public final void a(ah ah1)
    {
        ah1.a(a, b, c, d);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("NotifyTask[");
        stringbuilder.append("packageName:").append(a);
        stringbuilder.append(", id:").append(b);
        stringbuilder.append(", tag:").append(c);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
