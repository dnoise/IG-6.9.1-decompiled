// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import android.content.Context;
import android.text.format.Time;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

// Referenced classes of package com.facebook.a:
//            b, a

final class g
{

    private static final String a[] = {
        "system_app_anr", "system_app_wtf", "system_app_crash", "system_server_anr", "system_server_wtf", "system_server_crash", "BATTERY_DISCHARGE_INFO", "SYSTEM_RECOVERY_LOG", "SYSTEM_BOOT", "SYSTEM_LAST_KMSG", 
        "APANIC_CONSOLE", "APANIC_THREADS", "SYSTEM_RESTART", "SYSTEM_TOMBSTONE", "data_app_strictmode"
    };

    public static String a(Context context, String as[])
    {
        String s = b.b();
        if (s == null) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder;
        Object obj;
        Method method;
        stringbuilder = new StringBuilder();
        obj = context.getSystemService(s);
        Class class1 = obj.getClass();
        Class aclass[] = new Class[2];
        aclass[0] = java/lang/String;
        aclass[1] = Long.TYPE;
        method = class1.getMethod("getNextEntry", aclass);
        if (method == null) goto _L4; else goto _L3
_L3:
        Time time;
        long l;
        ArrayList arraylist;
        time = new Time();
        time.setToNow();
        int i = time.minute;
        com.facebook.a.a.a();
        time.minute = i - 5;
        time.normalize(false);
        l = time.toMillis(false);
        com.facebook.a.a.a();
        arraylist = new ArrayList();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        if (as.length > 0)
        {
            arraylist.addAll(Arrays.asList(as));
        }
        if (arraylist.size() <= 0) goto _L6; else goto _L5
_L5:
        Iterator iterator = arraylist.iterator();
_L11:
        if (!iterator.hasNext()) goto _L4; else goto _L7
_L7:
        String s2;
        Object obj1;
        s2 = (String)iterator.next();
        stringbuilder.append("Tag: ").append(s2).append('\n');
        Object aobj[] = new Object[2];
        aobj[0] = s2;
        aobj[1] = Long.valueOf(l);
        obj1 = method.invoke(obj, aobj);
        if (obj1 == null) goto _L9; else goto _L8
_L8:
        Method method1;
        Method method2;
        Method method3;
        Class class2 = obj1.getClass();
        Class aclass1[] = new Class[1];
        aclass1[0] = Integer.TYPE;
        method1 = class2.getMethod("getText", aclass1);
        method2 = obj1.getClass().getMethod("getTimeMillis", null);
        method3 = obj1.getClass().getMethod("close", null);
        Object obj2 = obj1;
_L12:
        if (obj2 == null) goto _L11; else goto _L10
_L10:
        long l1;
        String s3;
        l1 = ((Long)method2.invoke(obj2, null)).longValue();
        time.set(l1);
        stringbuilder.append("@").append(time.format2445()).append('\n');
        Object aobj1[] = new Object[1];
        aobj1[0] = Integer.valueOf(500);
        s3 = (String)method1.invoke(obj2, aobj1);
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_449;
        }
        stringbuilder.append("Text: ").append(s3).append('\n');
_L13:
        method3.invoke(obj2, null);
        Object aobj2[] = new Object[2];
        aobj2[0] = s2;
        aobj2[1] = Long.valueOf(l1);
        obj2 = method.invoke(obj, aobj2);
          goto _L12
        stringbuilder.append("Not Text!\n");
          goto _L13
        SecurityException securityexception;
        securityexception;
        a.a;
_L2:
        return "N/A";
_L9:
        stringbuilder.append("Nothing.\n");
          goto _L11
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        a.a;
          goto _L2
_L6:
        stringbuilder.append("No tag configured for collection.");
_L4:
        String s1 = stringbuilder.toString();
        return s1;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        a.a;
          goto _L2
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        a.a;
          goto _L2
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        a.a;
          goto _L2
        NoSuchFieldException nosuchfieldexception;
        nosuchfieldexception;
        a.a;
          goto _L2
    }

}
