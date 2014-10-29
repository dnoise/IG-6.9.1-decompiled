// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.app;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Process;
import com.instagram.common.b.a;
import com.instagram.common.b.b;
import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.List;

public class InstagramAppShell extends Application
    implements a
{

    private b a;

    public InstagramAppShell()
    {
    }

    private b a(String s)
    {
        b b1;
        try
        {
            b1 = (b)Class.forName(s).getConstructor(new Class[] {
                android/content/Context
            }).newInstance(new Object[] {
                this
            });
        }
        catch (Exception exception)
        {
            throw new RuntimeException(exception);
        }
        return b1;
    }

    private String a()
    {
        int i = Process.myPid();
        for (Iterator iterator = ((ActivityManager)getSystemService("activity")).getRunningAppProcesses().iterator(); iterator.hasNext();)
        {
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
            if (runningappprocessinfo.pid == i)
            {
                return runningappprocessinfo.processName;
            }
        }

        throw new IllegalStateException("Can't find current process's name");
    }

    public Object getAppService(Class class1)
    {
        return a.getAppService(class1);
    }

    public void onCreate()
    {
        super.onCreate();
        com.instagram.e.a.a(this);
        String s;
        if (getPackageName().equals(a()))
        {
            s = "com.instagram.android.app.InstagramApplicationForMainProcess";
        } else
        {
            s = "com.instagram.android.app.InstagramApplicationForSecondaryProcess";
        }
        a = a(s);
        a.onCreate();
    }
}
