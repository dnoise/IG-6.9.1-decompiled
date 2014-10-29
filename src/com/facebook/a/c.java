// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import android.content.res.Configuration;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;

// Referenced classes of package com.facebook.a:
//            a

public final class c
{

    private static SparseArray a;
    private static SparseArray b;
    private static SparseArray c;
    private static SparseArray d;
    private static SparseArray e;
    private static SparseArray f;
    private static SparseArray g;
    private static SparseArray h;
    private static SparseArray i;
    private static final HashMap j;

    public static String a(Configuration configuration)
    {
        StringBuilder stringbuilder;
        Field afield[];
        int k;
        int l;
        stringbuilder = new StringBuilder();
        afield = configuration.getClass().getFields();
        k = afield.length;
        l = 0;
_L7:
        if (l >= k) goto _L2; else goto _L1
_L1:
        Field field = afield[l];
        if (Modifier.isStatic(field.getModifiers()))
        {
            break MISSING_BLOCK_LABEL_168;
        }
        stringbuilder.append(field.getName()).append('=');
        if (!field.getType().equals(Integer.TYPE)) goto _L4; else goto _L3
_L3:
        stringbuilder.append(a(configuration, field));
_L5:
        stringbuilder.append('\n');
        break MISSING_BLOCK_LABEL_168;
_L4:
        IllegalArgumentException illegalargumentexception;
        if (field.get(configuration) == null)
        {
            stringbuilder.append("null");
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            stringbuilder.append(field.get(configuration).toString());
        }
        // Misplaced declaration of an exception variable
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.e(a.a, "Error while inspecting device configuration: ", illegalargumentexception);
            break MISSING_BLOCK_LABEL_168;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            Log.e(a.a, "Error while inspecting device configuration: ", illegalaccessexception);
            break MISSING_BLOCK_LABEL_168;
        }
        if (true) goto _L5; else goto _L2
_L2:
        return stringbuilder.toString();
        l++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static String a(Configuration configuration, Field field)
    {
        String s = field.getName();
        String s1;
        if (s.equals("mcc") || s.equals("mnc"))
        {
            s1 = Integer.toString(field.getInt(configuration));
        } else
        {
            if (s.equals("uiMode"))
            {
                return a((SparseArray)j.get("UI_MODE_"), field.getInt(configuration));
            }
            if (s.equals("screenLayout"))
            {
                return a((SparseArray)j.get("SCREENLAYOUT_"), field.getInt(configuration));
            }
            SparseArray sparsearray = (SparseArray)j.get((new StringBuilder()).append(s.toUpperCase()).append('_').toString());
            if (sparsearray == null)
            {
                return Integer.toString(field.getInt(configuration));
            }
            s1 = (String)sparsearray.get(field.getInt(configuration));
            if (s1 == null)
            {
                return Integer.toString(field.getInt(configuration));
            }
        }
        return s1;
    }

    private static String a(SparseArray sparsearray, int k)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int l = 0; l < sparsearray.size(); l++)
        {
            int i1 = sparsearray.keyAt(l);
            if (!((String)sparsearray.get(i1)).endsWith("_MASK"))
            {
                continue;
            }
            int j1 = k & i1;
            if (j1 <= 0)
            {
                continue;
            }
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append('+');
            }
            stringbuilder.append((String)sparsearray.get(j1));
        }

        return stringbuilder.toString();
    }

    static 
    {
        Field afield[];
        int k;
        int l;
        a = new SparseArray();
        b = new SparseArray();
        c = new SparseArray();
        d = new SparseArray();
        e = new SparseArray();
        f = new SparseArray();
        g = new SparseArray();
        h = new SparseArray();
        i = new SparseArray();
        HashMap hashmap = new HashMap();
        j = hashmap;
        hashmap.put("HARDKEYBOARDHIDDEN_", a);
        j.put("KEYBOARD_", b);
        j.put("KEYBOARDHIDDEN_", c);
        j.put("NAVIGATION_", d);
        j.put("NAVIGATIONHIDDEN_", e);
        j.put("ORIENTATION_", f);
        j.put("SCREENLAYOUT_", g);
        j.put("TOUCHSCREEN_", h);
        j.put("UI_MODE_", i);
        afield = android/content/res/Configuration.getFields();
        k = afield.length;
        l = 0;
_L2:
        Field field;
        String s;
        if (l >= k)
        {
            break MISSING_BLOCK_LABEL_527;
        }
        field = afield[l];
        if (!Modifier.isStatic(field.getModifiers()) || !Modifier.isFinal(field.getModifiers()))
        {
            break MISSING_BLOCK_LABEL_528;
        }
        s = field.getName();
        if (s.startsWith("HARDKEYBOARDHIDDEN_"))
        {
            a.put(field.getInt(null), s);
            break MISSING_BLOCK_LABEL_528;
        }
        IllegalArgumentException illegalargumentexception;
        if (s.startsWith("KEYBOARD_"))
        {
            b.put(field.getInt(null), s);
            break MISSING_BLOCK_LABEL_528;
        }
        IllegalAccessException illegalaccessexception;
        if (s.startsWith("KEYBOARDHIDDEN_"))
        {
            c.put(field.getInt(null), s);
            break MISSING_BLOCK_LABEL_528;
        }
        if (s.startsWith("NAVIGATION_"))
        {
            d.put(field.getInt(null), s);
            break MISSING_BLOCK_LABEL_528;
        }
        if (s.startsWith("NAVIGATIONHIDDEN_"))
        {
            e.put(field.getInt(null), s);
            break MISSING_BLOCK_LABEL_528;
        }
        if (s.startsWith("ORIENTATION_"))
        {
            f.put(field.getInt(null), s);
            break MISSING_BLOCK_LABEL_528;
        }
        if (s.startsWith("SCREENLAYOUT_"))
        {
            g.put(field.getInt(null), s);
            break MISSING_BLOCK_LABEL_528;
        }
        if (s.startsWith("TOUCHSCREEN_"))
        {
            h.put(field.getInt(null), s);
            break MISSING_BLOCK_LABEL_528;
        }
        try
        {
            if (s.startsWith("UI_MODE_"))
            {
                i.put(field.getInt(null), s);
            }
        }
        // Misplaced declaration of an exception variable
        catch (IllegalArgumentException illegalargumentexception)
        {
            a.a;
        }
        // Misplaced declaration of an exception variable
        catch (IllegalAccessException illegalaccessexception)
        {
            a.a;
        }
        break MISSING_BLOCK_LABEL_528;
        return;
        l++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
