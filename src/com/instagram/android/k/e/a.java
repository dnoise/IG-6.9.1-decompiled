// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.e;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.instagram.android.k.e:
//            b, c, d, f, 
//            e

public final class a
{

    private static b a(HashMap hashmap, int i)
    {
        if (hashmap.containsKey(Integer.valueOf(i)))
        {
            return (b)hashmap.get(Integer.valueOf(i));
        } else
        {
            b b1 = new b();
            hashmap.put(Integer.valueOf(i), b1);
            return b1;
        }
    }

    public static String a(HashMap hashmap)
    {
        ObjectMapper objectmapper = new ObjectMapper();
        SimpleModule simplemodule = new SimpleModule("ContactModule", w.a());
        simplemodule.addSerializer(com/instagram/android/k/e/b, new c());
        objectmapper.registerModule(simplemodule);
        String s;
        try
        {
            s = objectmapper.writeValueAsString(hashmap.values());
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Error creating json string");
        }
        return s;
    }

    public static HashMap a(Context context)
    {
        HashMap hashmap = new HashMap();
        a(context, hashmap);
        b(context, hashmap);
        c(context, hashmap);
        return hashmap;
    }

    private static void a(Context context, HashMap hashmap)
    {
        ContentResolver contentresolver;
        android.net.Uri uri;
        contentresolver = context.getContentResolver();
        uri = android.provider.ContactsContract.CommonDataKinds.Email.CONTENT_URI;
        Cursor cursor1 = contentresolver.query(uri, d.a, null, null, null);
        Cursor cursor = cursor1;
        while (cursor.moveToNext()) 
        {
            int i = cursor.getInt(0);
            String s = cursor.getString(1);
            b b1 = a(hashmap, i);
            if (com.instagram.android.k.e.b.a(b1) == null)
            {
                com.instagram.android.k.e.b.a(b1, new ArrayList());
            }
            com.instagram.android.k.e.b.a(b1).add(s);
        }
          goto _L1
        Exception exception;
        exception;
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
_L1:
        if (cursor != null)
        {
            cursor.close();
        }
        return;
        exception;
        cursor = null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    private static void b(Context context, HashMap hashmap)
    {
        ContentResolver contentresolver;
        android.net.Uri uri;
        contentresolver = context.getContentResolver();
        uri = android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
        Cursor cursor1 = contentresolver.query(uri, f.a, null, null, null);
        Cursor cursor = cursor1;
        while (cursor.moveToNext()) 
        {
            int i = cursor.getInt(0);
            String s = cursor.getString(1);
            b b1 = a(hashmap, i);
            if (com.instagram.android.k.e.b.b(b1) == null)
            {
                com.instagram.android.k.e.b.b(b1, new ArrayList());
            }
            com.instagram.android.k.e.b.b(b1).add(s);
        }
          goto _L1
        Exception exception;
        exception;
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
_L1:
        if (cursor != null)
        {
            cursor.close();
        }
        return;
        exception;
        cursor = null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    private static void c(Context context, HashMap hashmap)
    {
        ContentResolver contentresolver;
        android.net.Uri uri;
        contentresolver = context.getContentResolver();
        uri = android.provider.ContactsContract.Data.CONTENT_URI;
        Cursor cursor1 = contentresolver.query(uri, e.a, "mimetype = ? AND data1 IS NOT NULL", new String[] {
            "vnd.android.cursor.item/name"
        }, null);
        Cursor cursor = cursor1;
        while (cursor.moveToNext()) 
        {
            b b1 = a(hashmap, cursor.getInt(0));
            com.instagram.android.k.e.b.a(b1, cursor.getString(1));
            com.instagram.android.k.e.b.b(b1, cursor.getString(2));
        }
          goto _L1
        Exception exception;
        exception;
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
_L1:
        if (cursor != null)
        {
            cursor.close();
        }
        return;
        exception;
        cursor = null;
        if (true) goto _L3; else goto _L2
_L2:
    }
}
