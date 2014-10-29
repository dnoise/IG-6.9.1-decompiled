// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.content.Context;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import com.instagram.common.a.b.a;
import com.instagram.common.i.c;
import com.instagram.common.s.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;

// Referenced classes of package com.instagram.common.analytics:
//            n, an, a, d, 
//            f

class m
{

    private static final Class a = com/instagram/common/analytics/m;
    private final File b;
    private final String c;
    private f d;

    public m(Context context, String s, String s1)
    {
        c = (new StringBuilder()).append(s).append("|").append(s1).toString();
        b = com.instagram.common.analytics.n.a(context);
    }

    private HttpResponse a(String s)
    {
        an an1 = new an(s, c, b());
        return com.instagram.common.a.b.a.a().a(an1);
    }

    private HttpResponse b(File file)
    {
        a;
        (new StringBuilder("Uploading file ")).append(file);
        HttpResponse httpresponse1 = a(c(file));
        HttpResponse httpresponse = httpresponse1;
_L1:
        IOException ioexception;
        if (httpresponse != null && httpresponse.getStatusLine().getStatusCode() == 200)
        {
            a;
            if (!file.delete())
            {
                a;
                new Object[] {
                    file
                };
            }
            return httpresponse;
        } else
        {
            a;
            return httpresponse;
        }
        ioexception;
        com.facebook.e.a.a.a(a, (new StringBuilder("Unable to read file ")).append(file).toString(), ioexception);
        httpresponse = null;
          goto _L1
    }

    private static String b()
    {
        if (!com.instagram.common.s.b.d())
        {
            String s = com.instagram.common.analytics.a.a().f();
            if (!s.isEmpty())
            {
                StringBuilder stringbuilder = new StringBuilder();
                if (!s.contains("://"))
                {
                    stringbuilder.append("http://");
                }
                stringbuilder.append(s);
                stringbuilder.append("/method/logging.clientevent");
                return stringbuilder.toString();
            }
        }
        return "https://logger.instagram.com/method/logging.clientevent";
    }

    private static String c(File file)
    {
        InputStreamReader inputstreamreader = new InputStreamReader(new FileInputStream(file), "UTF-8");
        StringBuilder stringbuilder;
        char ac[];
        stringbuilder = new StringBuilder();
        ac = new char[1024];
_L3:
        int i = inputstreamreader.read(ac);
        if (i == -1) goto _L2; else goto _L1
_L1:
        stringbuilder.append(ac, 0, i);
          goto _L3
        Exception exception;
        exception;
_L5:
        com.instagram.common.l.c.a.a(inputstreamreader);
        throw exception;
_L2:
        String s = stringbuilder.toString();
        com.instagram.common.l.c.a.a(inputstreamreader);
        return s;
        exception;
        inputstreamreader = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final HttpResponse a(File file)
    {
        return b(file);
    }

    public final boolean a()
    {
        a;
        if (b.exists()) goto _L2; else goto _L1
_L1:
        boolean flag;
        a;
        flag = true;
_L7:
        return flag;
_L2:
        File afile[];
        int i;
        afile = b.listFiles();
        if (afile == null)
        {
            a;
            if (!b.exists())
            {
                com.instagram.common.i.c.a().a("analytics_uploader", "directory_not_found");
            } else
            if (b.isFile())
            {
                com.instagram.common.i.c.a().a("analytics_uploader", "directory_is_file");
            } else
            {
                com.instagram.common.i.c.a().a("analytics_uploader", "directory_unknown_error");
            }
            return true;
        }
        i = 0;
_L5:
        HttpResponse httpresponse;
        if (i >= afile.length)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        httpresponse = b(afile[i]);
        flag = false;
        if (httpresponse == null) goto _L4; else goto _L3
_L3:
        if (httpresponse.getStatusLine().getStatusCode() == 200 && d != null)
        {
            d;
        }
        try
        {
            EntityUtils.consume(httpresponse.getEntity());
        }
        catch (IOException ioexception) { }
        i++;
          goto _L5
_L4:
        if (true) goto _L7; else goto _L6
_L6:
        return true;
    }

}
