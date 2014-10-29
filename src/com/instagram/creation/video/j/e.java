// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.j;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.Surface;
import com.coremedia.iso.boxes.k;
import com.googlecode.mp4parser.a.c;
import com.googlecode.mp4parser.a.f;
import com.instagram.creation.b.a.a;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.gl.i;
import com.instagram.creation.video.gl.j;
import com.instagram.creation.video.gl.o;
import com.instagram.creation.video.gl.p;
import com.instagram.creation.video.jni.VideoBridge;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

// Referenced classes of package com.instagram.creation.video.j:
//            a, i, c, k

public final class e extends com.instagram.creation.video.j.a
    implements android.graphics.SurfaceTexture.OnFrameAvailableListener, android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnSeekCompleteListener
{

    private int A;
    private final Object B = new Object();
    private boolean C;
    private final String b;
    private final b c;
    private MediaPlayer d;
    private int e;
    private Queue f;
    private Queue g;
    private Queue h;
    private com.instagram.creation.video.j.k i;
    private com.instagram.creation.video.j.i j;
    private com.instagram.creation.video.j.c k;
    private volatile boolean l;
    private volatile boolean m;
    private volatile int n;
    private volatile int o;
    private i p;
    private final Object q = new Object();
    private boolean r;
    private boolean s;
    private int t;
    private final Object u = new Object();
    private boolean v;
    private Iterator w;
    private Iterator x;
    private long y;
    private a z;

    public e(Context context, b b1, com.instagram.creation.video.e.c c1)
    {
        super(new j(null, 480));
        e = 0;
        o = -1;
        y = 0x7fffffffffffffffL;
        z = b1.K();
        z.b();
        Integer.valueOf(b1.d());
        j = new com.instagram.creation.video.j.i();
        k = new com.instagram.creation.video.j.c(c1);
        p ap[] = new p[2];
        ap[0] = j;
        ap[1] = k;
        i = new com.instagram.creation.video.j.k(ap);
        l().a(i);
        c = b1;
        f = new LinkedList();
        g = new LinkedList();
        h = new LinkedList();
        b = com.instagram.creation.video.c.b.a(context, b1, "mkv");
    }

    private void a(long l1)
    {
        for (; y < l1; y = ((Long)x.next()).longValue())
        {
            ByteBuffer bytebuffer = (ByteBuffer)w.next();
            VideoBridge.writeAudioPacket(bytebuffer, bytebuffer.limit(), y - (long)A);
        }

    }

    private void k()
    {
        LinkedList linkedlist = new LinkedList();
        Iterator iterator = com.googlecode.mp4parser.a.b.a.a.a((new FileInputStream(z.b())).getChannel()).a().iterator();
_L5:
        com.googlecode.mp4parser.a.e e1;
        double d1;
        Iterator iterator1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_214;
            }
            e1 = (com.googlecode.mp4parser.a.e)iterator.next();
        } while (!e1.l().equals("soun"));
        d1 = 1000000D / (double)e1.k().b();
        iterator1 = e1.g().iterator();
        long l1 = 0L;
_L4:
        k k1;
        if (!iterator1.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = (k)iterator1.next();
        int i1 = 0;
_L2:
        if ((long)i1 >= k1.a())
        {
            break; /* Loop/switch isn't completed */
        }
        linkedlist.add(Long.valueOf((long)(d1 * (double)l1)));
        l1 += k1.b();
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
        try
        {
            w = e1.e().iterator();
        }
        catch (IOException ioexception)
        {
            com.facebook.e.a.a.a("FinalRenderControllerICS", "Could not extract audio");
            throw new RuntimeException(ioexception);
        }
          goto _L5
        linkedlist.add(Long.valueOf(0x7fffffffffffffffL));
        x = linkedlist.iterator();
        y = ((Long)x.next()).longValue();
        for (A = 1000 * z.f(); y < (long)A;)
        {
            y = ((Long)x.next()).longValue();
            w.next();
        }

        VideoBridge.configureAACTrack(2, 48000);
        return;
    }

    private void q()
    {
        Object obj = B;
        obj;
        JVM INSTR monitorenter ;
        C = true;
        d = new MediaPlayer();
        d.setDataSource(z.b());
        d.setVolume(0.0F, 0.0F);
        d.setSurface(new Surface(j.c()));
        d.setOnCompletionListener(this);
        d.setOnSeekCompleteListener(this);
        d.prepare();
        j.c().setOnFrameAvailableListener(this);
        j.b(z);
        return;
        IOException ioexception;
        ioexception;
        throw new IllegalStateException("Could not create media player", ioexception);
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        IOException ioexception1;
        ioexception1;
        throw new IllegalStateException("Could not prepare player", ioexception1);
    }

    private void r()
    {
        int i1 = VideoBridge.configureVideoCodec(b, 480, 480);
        if (i1 != 0)
        {
            com.facebook.e.a.a.a("FinalRenderControllerICS", (new StringBuilder("Could not configure codec: ")).append(i1).toString());
        }
    }

    public final void H_()
    {
        for (int i1 = 0; i1 < 2; i1++)
        {
            f.offer(new i(480));
        }

        l().a(o.b);
        i.c(0);
        p = new i(480);
        k();
        q();
        r();
        if (z.f() > 3000)
        {
            d.seekTo(-3000 + z.f());
        }
        synchronized (q)
        {
            r = true;
            q.notifyAll();
        }
    }

    public final void a()
    {
        synchronized (u)
        {
            u.notifyAll();
        }
    }

    public final void e()
    {
        if (i.a(j))
        {
            if (l)
            {
                k.a((i)f.poll());
                g.offer(Integer.valueOf(o));
                if (t != -1)
                {
                    h.offer(Integer.valueOf(t));
                }
                (new StringBuilder("Enqueueing frame at time ")).append(o).append(" for ").append(t).append(" ms");
                l = false;
            }
            if (v)
            {
                v = false;
                l().a(p);
                l().a(o.a);
                i.c(1);
            }
        } else
        {
            e = 1 + e;
            i i1 = k.b();
            Object aobj[] = new Object[5];
            aobj[0] = Integer.valueOf(e);
            aobj[1] = g.peek();
            aobj[2] = h.peek();
            aobj[3] = Integer.valueOf(i1.a());
            aobj[4] = Integer.valueOf(i1.b());
            double d1 = (double)(((Integer)g.peek()).intValue() - z.f()) / (double)z.i();
            c.c((int)(d1 * 45D));
            a(1000 * ((Integer)g.peek()).intValue());
            VideoBridge.encodeFrame(1000 * ((Integer)g.poll()).intValue() - A, 1000 * ((Integer)h.poll()).intValue());
            f.offer(i1);
            if (h.isEmpty())
            {
                if (m)
                {
                    h();
                    p();
                } else
                {
                    l().a(o.b);
                    i.c(0);
                    j.d();
                }
                synchronized (u)
                {
                    u.notifyAll();
                }
                return;
            }
        }
    }

    public final void f()
    {
        VideoBridge.finishEncoding();
        synchronized (B)
        {
            C = false;
            d.stop();
            d.release();
        }
        if (!i())
        {
            (new File(b)).delete();
            return;
        } else
        {
            (new StringBuilder("Rendered to ")).append(b);
            c.f(b);
            return;
        }
    }

    public final boolean g()
    {
        if (i.a(j))
        {
            l().a((i)f.peek());
        }
        return false;
    }

    public final void j()
    {
        Object obj = q;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = r;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        Exception exception1;
        try
        {
            q.wait();
        }
        catch (Exception exception4) { }
        obj;
        JVM INSTR monitorexit ;
        d.start();
_L4:
        Exception exception;
        Object obj2;
        Exception exception3;
        synchronized (u)
        {
            try
            {
                u.wait();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1) { }
        }
        if (m || b())
        {
            break MISSING_BLOCK_LABEL_140;
        }
        obj2 = B;
        obj2;
        JVM INSTR monitorenter ;
        if (C)
        {
            if (!s)
            {
                break MISSING_BLOCK_LABEL_130;
            }
            d.seekTo(-1500 + o);
        }
_L2:
        continue; /* Loop/switch isn't completed */
        exception3;
        throw exception3;
        exception;
        throw exception;
        d.start();
        if (true) goto _L2; else goto _L1
_L1:
        return;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void onCompletion(MediaPlayer mediaplayer)
    {
        if (m)
        {
            return;
        }
        m = true;
        Object obj = B;
        obj;
        JVM INSTR monitorenter ;
        if (!C)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        h.offer(Integer.valueOf(d.getCurrentPosition() - n));
_L2:
        i.c(1);
        l().a(p);
        l().a(o.a);
        synchronized (u)
        {
            u.notifyAll();
        }
        return;
        h.offer(Integer.valueOf(42));
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void onFrameAvailable(SurfaceTexture surfacetexture)
    {
label0:
        {
            StringBuilder stringbuilder = new StringBuilder("Frame Available! ");
            String s1;
            if (i.a(j))
            {
                s1 = "P";
            } else
            {
                s1 = "C";
            }
            stringbuilder.append(s1);
            if (!i.a(j))
            {
                break MISSING_BLOCK_LABEL_284;
            }
            synchronized (B)
            {
                if (C)
                {
                    break label0;
                }
            }
            return;
        }
        n = d.getCurrentPosition();
        (new StringBuilder()).append(o).append("\t").append(n);
        if (n < z.f()) goto _L2; else goto _L1
_L1:
        if (n < z.g()) goto _L4; else goto _L3
_L3:
        d.stop();
        h.offer(Integer.valueOf(42));
        v = true;
        m = true;
_L2:
        obj;
        JVM INSTR monitorexit ;
_L7:
        m();
        return;
_L4:
        if (n <= o || s) goto _L2; else goto _L5
_L5:
        l = true;
        if (f.size() == 2)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        t = n - o;
_L6:
        o = n;
        if (f.size() == 1)
        {
            d.pause();
            v = true;
        }
          goto _L2
        exception;
        throw exception;
        t = -1;
          goto _L6
        s = true;
          goto _L7
    }

    public final void onSeekComplete(MediaPlayer mediaplayer)
    {
        (new StringBuilder("Seeked to ")).append(mediaplayer.getCurrentPosition()).append(", requested ").append(o);
        s = false;
        mediaplayer.start();
    }
}
