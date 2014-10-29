// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.os.Handler;
import android.os.Message;
import com.instagram.android.feed.a.b.ac;
import com.instagram.android.l.a.c;
import com.instagram.android.widget.MediaActionsView;
import com.instagram.android.widget.o;
import com.instagram.common.g.c.a;
import com.instagram.common.g.c.e;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

// Referenced classes of package com.instagram.android.feed.a.a:
//            m

final class s extends Handler
{

    final m a;

    private s(m m1)
    {
        a = m1;
        super();
    }

    s(m m1, byte byte0)
    {
        this(m1);
    }

    public final void a(String s1)
    {
        sendMessage(obtainMessage(1, s1));
    }

    public final void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 5: default 40
    //                   1 41
    //                   2 229
    //                   3 245
    //                   4 255
    //                   5 135;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return;
_L2:
        e e2 = com.instagram.common.g.c.a.a().b((String)message.obj);
        e e1 = e2;
        if (e1 == null) goto _L8; else goto _L7
_L7:
        m.j(a).a(e1.a());
_L8:
        com.instagram.common.l.c.a.a(e1);
        return;
        IOException ioexception1;
        ioexception1;
        e1 = null;
_L12:
        com.facebook.e.a.a.a(m.j(), (new StringBuilder("Unable to set video for uri ")).append(message.obj).toString());
        com.instagram.common.l.c.a.a(e1);
        return;
        Exception exception;
        exception;
        e1 = null;
_L10:
        com.instagram.common.l.c.a.a(e1);
        throw exception;
_L6:
        try
        {
            FileInputStream fileinputstream = new FileInputStream((String)message.obj);
            m.j(a).a(fileinputstream.getFD());
            fileinputstream.close();
            return;
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            com.facebook.e.a.a.a(m.j(), (new StringBuilder("Unable to play local video ")).append(message.obj).toString(), filenotfoundexception);
            return;
        }
        catch (IOException ioexception)
        {
            com.facebook.e.a.a.a(m.j(), (new StringBuilder("Unable to play local video ")).append(message.obj).toString(), ioexception);
        }
        return;
_L3:
        removeMessages(4);
        m.j(a).e();
        return;
_L4:
        com.instagram.android.feed.a.a.m.a(a, true);
        return;
_L5:
        m.d(a).a().startAnimation(m.k(a));
        m.d(a).d().a(o.d);
        return;
        exception;
        if (true) goto _L10; else goto _L9
_L9:
        IOException ioexception2;
        ioexception2;
        if (true) goto _L12; else goto _L11
_L11:
    }
}
