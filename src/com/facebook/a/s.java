// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import android.content.Context;
import java.lang.reflect.Field;

// Referenced classes of package com.facebook.a:
//            a

public final class s
{

    public static String a(Context context)
    {
        StringBuilder stringbuilder;
        Field afield[];
        int i;
        int j;
        stringbuilder = new StringBuilder();
        afield = android/provider/Settings$System.getFields();
        i = afield.length;
        j = 0;
_L3:
        if (j >= i) goto _L2; else goto _L1
_L1:
        Field field;
        field = afield[j];
        if (field.isAnnotationPresent(java/lang/Deprecated) || field.getType() != java/lang/String)
        {
            continue; /* Loop/switch isn't completed */
        }
        String s1 = android.provider.Settings.System.getString(context.getContentResolver(), (String)field.get(null));
        if (s1 != null)
        {
            try
            {
                stringbuilder.append(field.getName()).append("=").append(s1).append("\n");
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                a.a;
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                a.a;
            }
        }
        j++;
          goto _L3
_L2:
        return stringbuilder.toString();
    }

    private static boolean a(Field field)
    {
        return field != null && !field.getName().startsWith("WIFI_AP");
    }

    public static String b(Context context)
    {
        StringBuilder stringbuilder;
        Field afield[];
        int i;
        int j;
        stringbuilder = new StringBuilder();
        afield = android/provider/Settings$Secure.getFields();
        i = afield.length;
        j = 0;
_L3:
        if (j >= i) goto _L2; else goto _L1
_L1:
        Field field;
        field = afield[j];
        if (field.isAnnotationPresent(java/lang/Deprecated) || field.getType() != java/lang/String || !a(field))
        {
            continue; /* Loop/switch isn't completed */
        }
        String s1 = android.provider.Settings.Secure.getString(context.getContentResolver(), (String)field.get(null));
        if (s1 != null)
        {
            try
            {
                stringbuilder.append(field.getName()).append("=").append(s1).append("\n");
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                a.a;
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                a.a;
            }
        }
        j++;
          goto _L3
_L2:
        return stringbuilder.toString();
    }
}
