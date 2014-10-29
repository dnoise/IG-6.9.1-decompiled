// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import java.util.Comparator;

// Referenced classes of package android.support.v4.view:
//            bi

final class be
    implements Comparator
{

    be()
    {
    }

    private static int a(bi bi1, bi bi2)
    {
        return bi1.b - bi2.b;
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((bi)obj, (bi)obj1);
    }
}
