// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import com.facebook.g.t;
import com.facebook.h.c;
import com.instagram.common.s.b;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            ak, ck, bn, ac, 
//            bc, bl, z

public final class cj
{

    private static final HashSet a;
    private static volatile Executor b;
    private static volatile boolean c;
    private static final Object d = new Object();
    private static final Uri e = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private static final BlockingQueue f = new LinkedBlockingQueue(10);
    private static final ThreadFactory g = new ck();

    private static String a(ContentResolver contentresolver)
    {
        String as[] = {
            "aid"
        };
        Cursor cursor = contentresolver.query(e, as, null, null, null);
        if (cursor == null || !cursor.moveToFirst())
        {
            return null;
        } else
        {
            String s = cursor.getString(cursor.getColumnIndex("aid"));
            cursor.close();
            return s;
        }
    }

    public static Executor a()
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        Object obj1;
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        obj1 = c();
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        obj1 = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, f, g);
        b = ((Executor) (obj1));
        obj;
        JVM INSTR monitorexit ;
        return b;
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean a(Context context, String s)
    {
        bn bn1 = b(context, s);
        return bn1 != null && bn1.a() == null;
    }

    public static final boolean a(ak ak1)
    {
        HashSet hashset = a;
        hashset;
        JVM INSTR monitorenter ;
        boolean flag;
        if (com.instagram.common.s.b.b() && a.contains(ak1))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hashset;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    private static bn b(Context context, String s)
    {
        if (context == null || s == null)
        {
            try
            {
                throw new IllegalArgumentException("Both context and applicationId must be non-null");
            }
            catch (Exception exception)
            {
                t.a(exception);
                return new bn(null, null, new ac(null, exception));
            }
        }
        String s1;
        SharedPreferences sharedpreferences;
        String s2;
        String s3;
        long l;
        String s4;
        bc bc1;
        s1 = a(context.getContentResolver());
        sharedpreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
        s2 = (new StringBuilder()).append(s).append("ping").toString();
        s3 = (new StringBuilder()).append(s).append("json").toString();
        l = sharedpreferences.getLong(s2, 0L);
        s4 = sharedpreferences.getString(s3, null);
        com.facebook.h.b b1 = com.facebook.h.c.a();
        bc1 = bc.a(String.format("%s/activities", new Object[] {
            s
        }), b1);
        if (l == 0L) goto _L2; else goto _L1
_L1:
        if (s4 == null) goto _L4; else goto _L3
_L3:
        com.facebook.h.b b4 = com.facebook.h.c.a(new JSONObject(s4));
        com.facebook.h.b b2 = b4;
_L5:
        com.facebook.h.b b3 = b2;
_L6:
        if (b3 != null)
        {
            break MISSING_BLOCK_LABEL_222;
        }
        return (bn)bn.a("true", null, new bl(new bc[] {
            bc1
        }), true).get(0);
        return new bn(null, null, b3, true);
_L2:
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_249;
        }
        throw new z("No attribution id returned from the Facebook application");
        bn bn1;
        if (!t.c(s))
        {
            throw new z("Install attribution has been disabled on the server.");
        }
        bn1 = bc1.b();
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putLong(s2, System.currentTimeMillis());
        if (bn1.b() != null && bn1.b().d() != null)
        {
            editor.putString(s3, bn1.b().d().toString());
        }
        editor.commit();
        return bn1;
_L4:
        b2 = null;
          goto _L5
        JSONException jsonexception;
        jsonexception;
        b3 = null;
          goto _L6
    }

    public static boolean b()
    {
        return c;
    }

    private static Executor c()
    {
        Field field;
        try
        {
            field = android/os/AsyncTask.getField("THREAD_POOL_EXECUTOR");
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            return null;
        }
        if (field == null)
        {
            return null;
        }
        Object obj;
        try
        {
            obj = field.get(null);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            return null;
        }
        if (obj == null)
        {
            return null;
        }
        if (!(obj instanceof Executor))
        {
            return null;
        } else
        {
            return (Executor)obj;
        }
    }

    static 
    {
        ak aak[] = new ak[1];
        aak[0] = ak.e;
        a = new HashSet(Arrays.asList(aak));
    }
}
