// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c;

import android.os.SystemClock;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import com.facebook.e.a.a;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.j;
import com.instagram.creation.b.c.a.d;
import com.instagram.creation.b.c.a.f;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.instagram.creation.b.c:
//            f, d, h, g

final class e
{

    private static Comparator a = new com.instagram.creation.b.c.f();
    private final com.instagram.creation.b.c.d b;
    private final com.instagram.common.a.b.a c;

    public e(com.instagram.common.a.b.a a1, com.instagram.creation.b.c.d d1)
    {
        c = a1;
        b = d1;
    }

    private static d a(String s)
    {
        ArrayList arraylist = new ArrayList();
        int i = -1;
        String as[] = s.split(",");
        int k = as.length;
        for (int l = 0; l < k; l++)
        {
            String as1[] = as[l].split("(/|-)");
            arraylist.add(new d(Integer.valueOf(as1[0]).intValue(), Integer.valueOf(as1[1]).intValue()));
            i = Integer.valueOf(as1[2]).intValue();
        }

        Collections.sort(arraylist, a);
        d d1 = (d)arraylist.get(0);
        d d2;
        if (arraylist.size() > 1)
        {
            d2 = (d)arraylist.get(1);
        } else
        {
            d2 = null;
        }
        if (d1.a == 0)
        {
            int k1 = 1 + d1.b;
            int i1;
            int j1;
            if (d2 != null)
            {
                i1 = d2.a;
                j1 = k1;
            } else
            {
                i1 = i;
                j1 = k1;
            }
        } else
        {
            i1 = d1.a;
            j1 = 0;
        }
        return new d(j1, i1 - 1);
    }

    private static boolean a(HttpResponse httpresponse, int i)
    {
        boolean flag = false;
        if (httpresponse != null)
        {
            StatusLine statusline = httpresponse.getStatusLine();
            flag = false;
            if (statusline != null)
            {
                int k = httpresponse.getStatusLine().getStatusCode();
                flag = false;
                if (i == k)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public final int a(b b1)
    {
        int i;
        File file;
        i = 0;
        file = new File(b1.l());
        if (file.exists()) goto _L2; else goto _L1
_L1:
        int i1;
        com.facebook.e.a.a.a("VideoUploader", "Could not open pending media for reading");
        b.a(b1, "Rendered video doesn't exist");
        i1 = h.c;
_L13:
        return i1;
_L2:
        String s;
        long l;
        Iterator iterator;
        boolean flag;
        HttpResponse httpresponse;
        LinkedList linkedlist = new LinkedList(b1.D());
        s = (new StringBuilder()).append(b1.b()).append("-").append(b1.l().hashCode()).toString();
        l = file.length();
        iterator = linkedlist.iterator();
        flag = false;
        httpresponse = null;
_L11:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        j j1;
        int k;
        d d1;
        boolean flag1;
        boolean flag2;
        HttpResponse httpresponse1;
        j1 = (j)iterator.next();
        (new StringBuilder("Trying server: ")).append(j1.c());
        k = i + 1;
        b1.D().remove(j1);
        b1.D().add(0, j1);
        d1 = new d(0, -1 + (int)Math.min(l, 0x32000L));
        flag1 = flag;
        flag2 = true;
        httpresponse1 = httpresponse;
_L10:
        if (!flag2)
        {
            break; /* Loop/switch isn't completed */
        }
        Integer.valueOf(d1.a);
        Integer.valueOf(d1.b);
        Long.valueOf(l);
        long l2;
        f f1 = new f(s, j1, file, d1.a, d1.a());
        long l1 = SystemClock.elapsedRealtime();
        com.instagram.common.a.b.a a1 = c;
        g g1 = new g(this, b1);
        httpresponse1 = a1.a(f1, g1);
        l2 = SystemClock.elapsedRealtime() - l1;
        (new StringBuilder("Time to upload ")).append((double)l2 / 1000D).append("s");
        if (!a(httpresponse1, 200))
        {
            break MISSING_BLOCK_LABEL_418;
        }
        String s1 = EntityUtils.toString(httpresponse1.getEntity());
        b1.h(((JsonNode)com.instagram.service.b.a.a().readValue(s1, com/fasterxml/jackson/databind/JsonNode)).get("result").asText());
        b1.a(com.instagram.creation.b.a.d.e);
        i1 = com.instagram.creation.b.c.h.a;
        if (httpresponse1 != null)
        {
            try
            {
                EntityUtils.consume(httpresponse1.getEntity());
            }
            catch (IOException ioexception6)
            {
                return i1;
            }
            return i1;
        }
        continue; /* Loop/switch isn't completed */
        if (!a(httpresponse1, 201)) goto _L6; else goto _L5
_L5:
        d d2;
        double d3 = 5000D * Math.min((1.0D * (double)d1.a()) / (double)l2, 10485D);
        Double.valueOf(d3);
        int k1 = Math.max(0x32000, (int)d3);
        d d4 = a(httpresponse1.getFirstHeader("Range").getValue());
        int i2 = Math.min(d4.a(), k1);
        d2 = new d(d4.a, -1 + (i2 + d4.a));
        boolean flag3 = true;
_L8:
        if (httpresponse1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        IOException ioexception1;
        com.instagram.creation.b.c.a.a a2;
        HttpResponse httpresponse2;
        IOException ioexception3;
        IOException ioexception4;
        IOException ioexception5;
        try
        {
            EntityUtils.consume(httpresponse1.getEntity());
        }
        catch (IOException ioexception2)
        {
            d1 = d2;
            flag2 = flag3;
            continue; /* Loop/switch isn't completed */
        }
        d1 = d2;
        flag2 = flag3;
        continue; /* Loop/switch isn't completed */
_L6:
        if (!a(httpresponse1, 422))
        {
            break MISSING_BLOCK_LABEL_617;
        }
        b.a(b1, "Video is corrupt");
        b1.D().remove(j1);
        i1 = h.c;
        if (httpresponse1 != null)
        {
            try
            {
                EntityUtils.consume(httpresponse1.getEntity());
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception5)
            {
                return i1;
            }
            return i1;
        }
        continue; /* Loop/switch isn't completed */
        if (!a(httpresponse1, 403))
        {
            break MISSING_BLOCK_LABEL_668;
        }
        b1.a(null);
        b1.a(com.instagram.creation.b.a.d.a);
        i1 = com.instagram.creation.b.c.h.b;
        if (httpresponse1 != null)
        {
            try
            {
                EntityUtils.consume(httpresponse1.getEntity());
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception4)
            {
                return i1;
            }
            return i1;
        }
        continue; /* Loop/switch isn't completed */
        if (!a(httpresponse1, 503) && !a(httpresponse1, 500))
        {
            break MISSING_BLOCK_LABEL_763;
        }
        Integer.valueOf(httpresponse1.getStatusLine().getStatusCode());
        b1.D().remove(j1);
        if (k != 2)
        {
            break MISSING_BLOCK_LABEL_763;
        }
        b.a(b1, "Transient server error");
        i1 = h.c;
        if (httpresponse1 != null)
        {
            try
            {
                EntityUtils.consume(httpresponse1.getEntity());
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1)
            {
                return i1;
            }
            return i1;
        }
        continue; /* Loop/switch isn't completed */
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_860;
        }
        a2 = new com.instagram.creation.b.c.a.a();
        httpresponse2 = c.a(a2);
        if (httpresponse2 == null)
        {
            break MISSING_BLOCK_LABEL_821;
        }
        if (httpresponse2.getStatusLine() != null && httpresponse2.getStatusLine().getStatusCode() == 200)
        {
            break MISSING_BLOCK_LABEL_857;
        }
        com.facebook.e.a.a.a("VideoUploader", "No connectivity, failing.");
        i1 = h.c;
        if (httpresponse1 != null)
        {
            try
            {
                EntityUtils.consume(httpresponse1.getEntity());
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception3)
            {
                return i1;
            }
            return i1;
        }
        continue; /* Loop/switch isn't completed */
        flag1 = true;
        com.facebook.e.a.a.a("VideoUploader", "Have connectivity, trying next server");
        d2 = d1;
        flag3 = false;
        if (true) goto _L8; else goto _L7
        Exception exception;
        exception;
        if (httpresponse1 != null)
        {
            try
            {
                EntityUtils.consume(httpresponse1.getEntity());
            }
            catch (IOException ioexception) { }
        }
        throw exception;
_L7:
        d1 = d2;
        flag2 = flag3;
        if (true) goto _L10; else goto _L9
_L9:
        i = k;
        httpresponse = httpresponse1;
        flag = flag1;
          goto _L11
_L4:
        b1.a(null);
        b1.a(com.instagram.creation.b.a.d.a);
        return h.c;
        if (true) goto _L13; else goto _L12
_L12:
    }

}
