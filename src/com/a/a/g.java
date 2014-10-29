// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;

import android.text.TextUtils;
import java.io.EOFException;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLException;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;

// Referenced classes of package com.a.a:
//            f, e, k, c, 
//            b

final class g
    implements Runnable
{

    final f a;

    g(f f1)
    {
        a = f1;
        super();
    }

    public final void run()
    {
        Object obj1 = f.a(a);
        obj1;
        JVM INSTR monitorenter ;
        String s;
        a;
        s = f.d();
        if (f.b(a).getPort() == -1) goto _L2; else goto _L1
_L1:
        int i = f.b(a).getPort();
_L10:
        if (!TextUtils.isEmpty(f.b(a).getPath())) goto _L4; else goto _L3
_L3:
        String s1 = "/";
_L11:
        if (TextUtils.isEmpty(f.b(a).getQuery())) goto _L6; else goto _L5
_L5:
        String s2 = (new StringBuilder()).append(s1).append("?").append(f.b(a).getQuery()).toString();
_L17:
        Exception exception;
        SSLException sslexception;
        EOFException eofexception;
        Object obj;
        Exception exception1;
        Exception exception2;
        String s3;
        URI uri;
        PrintWriter printwriter;
        c c1;
        StatusLine statusline;
        boolean flag;
        String s4;
        if (f.b(a).getScheme().equals("wss"))
        {
            s3 = "https";
        } else
        {
            s3 = "http";
        }
        uri = new URI(s3, (new StringBuilder("//")).append(f.b(a).getHost()).toString(), null);
        f.a(a, f.c(a).createSocket(f.b(a).getScheme().equals("wss")));
        f.c(a).connectSocket(f.d(a), f.b(a).getHost(), i);
        printwriter = new PrintWriter(f.d(a).getOutputStream());
        printwriter.print((new StringBuilder("GET ")).append(s2).append(" HTTP/1.1\r\n").toString());
        printwriter.print("Upgrade: websocket\r\n");
        printwriter.print("Connection: Upgrade\r\n");
        printwriter.print((new StringBuilder("Host: ")).append(f.b(a).getHost()).append("\r\n").toString());
        printwriter.print((new StringBuilder("Origin: ")).append(uri.toString()).append("\r\n").toString());
        printwriter.print((new StringBuilder("Sec-WebSocket-Key: ")).append(s).append("\r\n").toString());
        printwriter.print("Sec-WebSocket-Version: 13\r\n");
        if (f.e(a) != null)
        {
            Object aobj[];
            for (Iterator iterator = f.e(a).iterator(); iterator.hasNext(); printwriter.print(String.format("%s: %s\r\n", aobj)))
            {
                NameValuePair namevaluepair = (NameValuePair)iterator.next();
                aobj = new Object[2];
                aobj[0] = namevaluepair.getName();
                aobj[1] = namevaluepair.getValue();
            }

        }
          goto _L7
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
        eofexception;
        obj = f.a(a);
        obj;
        JVM INSTR monitorenter ;
        if (f.d(a) == null) goto _L9; else goto _L8
_L8:
        f.f(a).onDisconnect(-1200, "EOF");
_L16:
        return;
_L2:
        if (f.b(a).getScheme().equals("wss"))
        {
            i = 443;
        } else
        {
            i = 80;
        }
          goto _L10
_L4:
        s1 = f.b(a).getPath();
          goto _L11
_L7:
        printwriter.print("\r\n");
        printwriter.flush();
        c1 = new c(f.d(a).getInputStream());
        a;
        a;
        statusline = f.b(f.a(c1));
        if (statusline != null)
        {
            break MISSING_BLOCK_LABEL_649;
        }
        throw new HttpException("Received no reply from server.");
        if (statusline.getStatusCode() != 101)
        {
            throw new HttpResponseException(statusline.getStatusCode(), statusline.getReasonPhrase());
        }
          goto _L12
_L15:
        a;
        s4 = f.a(c1);
        if (TextUtils.isEmpty(s4)) goto _L14; else goto _L13
_L13:
        a;
        Header header = f.c(s4);
        if (header.getName().equals("Sec-WebSocket-Accept"))
        {
            a;
            if (!f.d(s).equals(header.getValue().trim()))
            {
                throw new HttpException("Bad Sec-WebSocket-Accept header value.");
            }
            break MISSING_BLOCK_LABEL_890;
        }
          goto _L15
_L14:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_781;
        }
        throw new HttpException("No Sec-WebSocket-Accept header.");
        f.f(a).onConnect();
        obj1;
        JVM INSTR monitorexit ;
        f.g(a).a(c1);
        return;
        sslexception;
        f.f(a).onDisconnect(-1100, "SSL");
        return;
_L9:
        f.f(a).onDisconnect(0, "EOF");
          goto _L16
        exception1;
        throw exception1;
        exception;
        f.f(a).onError(exception);
        return;
_L6:
        s2 = s1;
          goto _L17
_L12:
        flag = false;
          goto _L15
        flag = true;
          goto _L15
    }
}
