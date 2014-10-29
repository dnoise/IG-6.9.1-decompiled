// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.Context;
import android.content.res.Resources;
import android.os.HandlerThread;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import com.facebook.as;
import com.facebook.at;
import com.instagram.common.j.b;
import com.instagram.common.j.g;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.instagram.feed.d:
//            t, x, z, y, 
//            l, aa

public final class w
{

    private static w a;
    private final Map b = new ConcurrentHashMap();
    private final Map c = new ConcurrentHashMap();
    private final Map d = new ConcurrentHashMap();
    private final Map e = new ConcurrentHashMap();
    private final z f;
    private final Resources g;
    private final y h;

    private w(Resources resources)
    {
        com.instagram.common.j.g.a().a(com/instagram/feed/d/t, new x(this));
        HandlerThread handlerthread = new HandlerThread("MediaRenderCacheWarm", 10);
        handlerthread.start();
        f = new z(this, handlerthread.getLooper());
        g = resources;
        TextPaint textpaint = new TextPaint(1);
        textpaint.density = g.getDisplayMetrics().density;
        textpaint.linkColor = g.getColor(as.blue_medium);
        textpaint.setTextSize(g.getDimension(at.font_medium));
        textpaint.setColor(g.getColor(as.grey_medium));
        h = new y(textpaint, g.getDisplayMetrics().widthPixels - 2 * g.getDimensionPixelSize(at.feed_content_padding), g.getDimension(at.feed_comment_text_extra_spacing), (byte)0);
    }

    public static w a(Context context)
    {
        if (a == null)
        {
            b(context.getApplicationContext());
        }
        return a;
    }

    static Map a(w w1)
    {
        return w1.b;
    }

    static Map b(w w1)
    {
        return w1.e;
    }

    private static void b(Context context)
    {
        com/instagram/feed/d/w;
        JVM INSTR monitorenter ;
        w w1 = a;
        if (w1 == null) goto _L2; else goto _L1
_L1:
        com/instagram/feed/d/w;
        JVM INSTR monitorexit ;
        return;
_L2:
        a = new w(context.getResources());
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static Map c(w w1)
    {
        return w1.c;
    }

    public final CharSequence a(l l1)
    {
        CharSequence charsequence = (CharSequence)b.get(l1.d());
        if (charsequence == null)
        {
            charsequence = com.instagram.feed.d.aa.b(g, l1);
            b.put(l1.d(), charsequence);
        }
        return charsequence;
    }

    public final void a(Collection collection)
    {
        f.sendMessage(f.obtainMessage(0, collection));
    }

    public final CharSequence b(l l1)
    {
        CharSequence charsequence = (CharSequence)c.get(l1.d());
        if (charsequence == null)
        {
            charsequence = aa.a(g, l1);
            c.put(l1.d(), charsequence);
        }
        return charsequence;
    }

    public final CharSequence c(l l1)
    {
        CharSequence charsequence = (CharSequence)d.get(l1.d());
        if (charsequence == null)
        {
            charsequence = aa.a(l1);
            d.put(l1.d(), charsequence);
        }
        return charsequence;
    }

    public final void d(l l1)
    {
        f.sendMessage(f.obtainMessage(1, l1));
    }

    public final Layout e(l l1)
    {
        Object obj = (Layout)e.get(l1.d());
        if (obj == null)
        {
            y y1 = h;
            obj = new StaticLayout(aa.a(g, l1, y.a(y1), com.instagram.feed.d.y.b(y1)), y.a(y1), com.instagram.feed.d.y.b(y1), android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, y.c(y1), true);
            e.put(l1.d(), obj);
        }
        return ((Layout) (obj));
    }
}
