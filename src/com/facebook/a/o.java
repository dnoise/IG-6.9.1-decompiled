// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import android.util.Log;
import com.facebook.a.a.b;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.facebook.a:
//            a, b

final class o
{

    protected static String a(String s)
    {
        ArrayList arraylist;
        arraylist = new ArrayList();
        arraylist.add("logcat");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        arraylist.add("-b");
        arraylist.add(s);
        int i = -1;
        ArrayList arraylist1;
        int j;
        arraylist1 = new ArrayList(Arrays.asList(com.facebook.a.a.a().b()));
        j = arraylist1.indexOf("-t");
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_142;
        }
        if (j < arraylist1.size())
        {
            i = Integer.parseInt((String)arraylist1.get(j + 1));
            if (b.a() < 8)
            {
                arraylist1.remove(j + 1);
                arraylist1.remove(j);
                arraylist1.add("-d");
            }
        }
        IOException ioexception1;
        com.facebook.a.c.b b1;
        com.facebook.a.c.b b2;
        IOException ioexception2;
        BufferedReader bufferedreader;
        String s1;
        if (i <= 0)
        {
            i = 100;
        }
        b2 = new com.facebook.a.c.b(i);
        arraylist.addAll(arraylist1);
        bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec((String[])arraylist.toArray(new String[arraylist.size()])).getInputStream()));
        a.a;
_L3:
        s1 = bufferedreader.readLine();
        if (s1 == null) goto _L2; else goto _L1
_L1:
        b2.add((new StringBuilder()).append(s1).append("\n").toString());
          goto _L3
        ioexception2;
        b1 = b2;
        ioexception1 = ioexception2;
_L7:
        Log.e(a.a, "LogCatCollector.collectLogcat could not retrieve data.", ioexception1);
_L5:
        return b1.toString();
_L2:
        b1 = b2;
        if (true) goto _L5; else goto _L4
_L4:
        IOException ioexception;
        ioexception;
        ioexception1 = ioexception;
        b1 = null;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
