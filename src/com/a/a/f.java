// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Base64;
import java.net.Socket;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicLineParser;

// Referenced classes of package com.a.a:
//            k, b, a, c, 
//            i, g, h, e, 
//            j

public final class f
{

    private URI a;
    private k b;
    private Socket c;
    private Thread d;
    private Handler e;
    private HandlerThread f;
    private List g;
    private b h;
    private Object i;
    private e j;

    public f(URI uri, List list, e e1)
    {
        a = uri;
        i = new Object();
        b = new k(this, new Handler());
        g = list;
        h = new b(this, b);
        f = new HandlerThread("websocket-write-thread");
        f.start();
        e = new Handler(f.getLooper());
        if (e1 == null)
        {
            e1 = new a();
        }
        j = e1;
    }

    static Object a(f f1)
    {
        return f1.i;
    }

    static String a(c c1)
    {
        return b(c1);
    }

    static Socket a(f f1, Socket socket)
    {
        f1.c = socket;
        return socket;
    }

    private static String b(c c1)
    {
        int l = c1.read();
        if (l == -1)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder("");
        while (l != 10) 
        {
            if (l != 13)
            {
                stringbuilder.append((char)l);
            }
            l = c1.read();
            if (l == -1)
            {
                return null;
            }
        }
        return stringbuilder.toString();
    }

    static URI b(f f1)
    {
        return f1.a;
    }

    static StatusLine b(String s)
    {
        return e(s);
    }

    static e c(f f1)
    {
        return f1.j;
    }

    static Header c(String s)
    {
        return f(s);
    }

    static String d()
    {
        return e();
    }

    static String d(String s)
    {
        return g(s);
    }

    static Socket d(f f1)
    {
        return f1.c;
    }

    private static String e()
    {
        byte abyte0[] = new byte[16];
        for (int l = 0; l < 16; l++)
        {
            abyte0[l] = (byte)(int)(256D * Math.random());
        }

        return Base64.encodeToString(abyte0, 0).trim();
    }

    static List e(f f1)
    {
        return f1.g;
    }

    private static StatusLine e(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            return BasicLineParser.parseStatusLine(s, new BasicLineParser());
        }
    }

    static k f(f f1)
    {
        return f1.b;
    }

    private static Header f(String s)
    {
        return BasicLineParser.parseHeader(s, new BasicLineParser());
    }

    static b g(f f1)
    {
        return f1.h;
    }

    private static String g(String s)
    {
        String s1;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
            messagedigest.update((new StringBuilder()).append(s).append("258EAFA5-E914-47DA-95CA-C5AB0DC85B11").toString().getBytes());
            s1 = Base64.encodeToString(messagedigest.digest(), 0).trim();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception);
        }
        return s1;
    }

    static HandlerThread h(f f1)
    {
        return f1.f;
    }

    public final void a()
    {
        b.a(null);
    }

    public final void a(j j1)
    {
        b.a(j1);
    }

    public final void a(String s)
    {
        a(h.a(s));
    }

    final void a(byte abyte0[])
    {
        e.post(new i(this, abyte0));
    }

    public final void b()
    {
        if (d != null && d.isAlive())
        {
            return;
        } else
        {
            d = new Thread(new g(this));
            d.start();
            return;
        }
    }

    public final void c()
    {
        e.post(new h(this));
    }
}
