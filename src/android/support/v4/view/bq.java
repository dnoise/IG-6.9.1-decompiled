// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.view.View;
import java.util.Comparator;

// Referenced classes of package android.support.v4.view:
//            bj

final class bq
    implements Comparator
{

    bq()
    {
    }

    private static int a(View view, View view1)
    {
        bj bj1 = (bj)view.getLayoutParams();
        bj bj2 = (bj)view1.getLayoutParams();
        if (bj1.a != bj2.a)
        {
            return !bj1.a ? -1 : 1;
        } else
        {
            return bj1.e - bj2.e;
        }
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((View)obj, (View)obj1);
    }
}
