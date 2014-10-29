// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.facebook:
//            bl, bc, cj

public class bk extends AsyncTask
{

    private static final String a = com/facebook/bk.getCanonicalName();
    private static Method b;
    private final HttpURLConnection c;
    private final bl d;
    private Exception e;

    public bk(bl bl1)
    {
        this(bl1, (byte)0);
    }

    private bk(bl bl1, byte byte0)
    {
        d = bl1;
        c = null;
    }

    private void a(List list)
    {
        super.onPostExecute(list);
        if (e != null)
        {
            String _tmp = a;
            Object aobj[] = new Object[1];
            aobj[0] = e.getMessage();
            String.format("onPostExecute: exception encountered during request: %s", aobj);
        }
    }

    private transient List b()
    {
        List list;
        try
        {
            if (c == null)
            {
                return d.g();
            }
            list = bc.a(c, d);
        }
        catch (Exception exception)
        {
            e = exception;
            return null;
        }
        return list;
    }

    final bk a()
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        Method method = b;
        Object aobj[] = new Object[2];
        aobj[0] = cj.a();
        aobj[1] = null;
        method.invoke(this, aobj);
        return this;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
_L2:
        execute(new Void[0]);
        return this;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected Object doInBackground(Object aobj[])
    {
        return b();
    }

    protected void onPostExecute(Object obj)
    {
        a((List)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        if (d.c() == null)
        {
            d.a(new Handler());
        }
    }

    public String toString()
    {
        return (new StringBuilder("{RequestAsyncTask:  connection: ")).append(c).append(", requests: ").append(d).append("}").toString();
    }

    static 
    {
        Method amethod[] = android/os/AsyncTask.getMethods();
        int i = amethod.length;
        int j = 0;
        do
        {
label0:
            {
                if (j < i)
                {
                    Method method = amethod[j];
                    if (!"executeOnExecutor".equals(method.getName()))
                    {
                        break label0;
                    }
                    Class aclass[] = method.getParameterTypes();
                    if (aclass.length != 2 || aclass[0] != java/util/concurrent/Executor || !aclass[1].isArray())
                    {
                        break label0;
                    }
                    b = method;
                }
                return;
            }
            j++;
        } while (true);
    }
}
