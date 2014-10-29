// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

public abstract class ae
{

    private DataSetObservable a;

    public ae()
    {
        a = new DataSetObservable();
    }

    private static Object d()
    {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    private static void e()
    {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public Object a(ViewGroup viewgroup, int i)
    {
        return d();
    }

    public void a()
    {
    }

    public final void a(DataSetObserver datasetobserver)
    {
        a.registerObserver(datasetobserver);
    }

    public void a(Object obj)
    {
        e();
    }

    public abstract boolean a(View view, Object obj);

    public void b()
    {
    }

    public final void b(DataSetObserver datasetobserver)
    {
        a.unregisterObserver(datasetobserver);
    }

    public void b(Object obj)
    {
    }

    public abstract int c();
}
