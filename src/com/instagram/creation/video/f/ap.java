// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.view.Surface;
import com.instagram.creation.b.a.a;
import com.instagram.creation.video.gl.j;
import com.instagram.creation.video.j.f;
import java.util.concurrent.ThreadPoolExecutor;

// Referenced classes of package com.instagram.creation.video.f:
//            ah, ao, aq

public final class ap extends ah
    implements android.graphics.SurfaceTexture.OnFrameAvailableListener
{

    long b;
    long c;
    long d;
    long e;
    long f;
    boolean g;
    final ao h;
    private volatile MediaExtractor i;
    private volatile MediaCodec j;
    private long k;
    private volatile long l;
    private volatile boolean m;
    private volatile boolean n;

    public ap(ao ao1, j j1)
    {
        h = ao1;
        super(ao1, j1);
        l = -1L;
        m = false;
        n = false;
        b = -1L;
        c = 0L;
        d = -1L;
        e = -1L;
        f = -1L;
        g = false;
    }

    private void a(long l1)
    {
        boolean flag;
        flag = true;
        if (l1 == l)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        this;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag1;
        Object aobj[];
        if (l >= 0L && l1 > l)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        n = flag1;
        l = l1;
        h;
        aobj = new Object[1];
        l;
        aobj[0] = r();
        ao.W();
        if (!m)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        m = true;
        if (Math.abs(l - b) <= 0xf4240L)
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        if (flag)
        {
            h.c();
        }
        ao.b(h).execute(new aq(this));
        return;
        exception;
        throw exception;
    }

    static void a(ap ap1)
    {
        ap1.q();
    }

    private static void b(int i1)
    {
        long l1 = i1;
        try
        {
            Thread.sleep(l1);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
    }

    private boolean b(long l1)
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        android.media.MediaCodec.BufferInfo bufferinfo;
        long l2;
        long l3;
        int i1;
        flag = false;
        flag1 = false;
        flag2 = false;
        bufferinfo = new android.media.MediaCodec.BufferInfo();
        l2 = SystemClock.elapsedRealtime();
        l3 = l2;
        i1 = 0;
_L23:
        if (flag || l1 != l || flag1 && flag2) goto _L2; else goto _L1
_L1:
        int j1;
label0:
        {
            synchronized (h.e)
            {
                if (h.d)
                {
                    break label0;
                }
            }
            return false;
        }
        j1 = -1;
        if (flag1) goto _L4; else goto _L3
_L3:
        j1 = j.dequeueInputBuffer(10000L);
        if (j1 < 0) goto _L4; else goto _L5
_L5:
        java.nio.ByteBuffer abytebuffer[];
        g = true;
        abytebuffer = j.getInputBuffers();
        if (abytebuffer != null)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        obj;
        JVM INSTR monitorexit ;
        return false;
        exception;
        throw exception;
        int k1 = i.readSampleData(abytebuffer[j1], 0);
        if (k1 >= 0) goto _L7; else goto _L6
_L6:
        j.queueInputBuffer(j1, 0, 0, i.getSampleTime(), 4);
        h;
        ao.W();
        int i2;
        boolean flag3;
        i2 = j1;
        flag3 = true;
_L14:
        int j2 = j.dequeueOutputBuffer(bufferinfo, 10000L);
        if (j2 == -1 || j2 == -3 || j2 == -2) goto _L9; else goto _L8
_L8:
        if (j2 >= 0) goto _L11; else goto _L10
_L10:
        (new Object[1])[0] = Integer.valueOf(j2);
        boolean flag4;
        boolean flag5;
        flag4 = flag2;
        flag5 = flag;
_L22:
        if (i2 != -1 || j2 != -1) goto _L13; else goto _L12
_L12:
        long l7 = SystemClock.elapsedRealtime() - l3;
        int i3;
        i3 = i1 + 1;
        if (i3 <= 5 || l7 <= 300L)
        {
            break MISSING_BLOCK_LABEL_842;
        }
        (new Object[1])[0] = Long.valueOf(l7);
        j();
        h.c();
        b(50);
        h.d = h();
        b(200);
        f = -1L;
        e = -1L;
        d = -1L;
        g = false;
        obj;
        JVM INSTR monitorexit ;
        return false;
_L7:
        long l8 = i.getSampleTime();
        j.queueInputBuffer(j1, 0, k1, l8, 0);
        i.advance();
        h;
        Object aobj2[] = new Object[3];
        aobj2[0] = r();
        i.getSampleTime();
        aobj2[1] = r();
        aobj2[2] = r();
        i2 = j1;
        flag3 = flag1;
        ao.W();
          goto _L14
_L11:
        g = true;
        long l6;
        int k2;
        boolean flag8;
        long l4;
        long l5;
        boolean flag6;
        Object aobj[];
        Object aobj1[];
        if ((4 & bufferinfo.flags) != 0)
        {
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        if (!flag6)
        {
            break MISSING_BLOCK_LABEL_480;
        }
        h;
        ao.W();
        if (!flag6)
        {
            break MISSING_BLOCK_LABEL_495;
        }
        if (bufferinfo.presentationTimeUs <= 0L)
        {
            break MISSING_BLOCK_LABEL_504;
        }
        d = bufferinfo.presentationTimeUs;
        h;
        aobj = new Object[1];
        d;
        aobj[0] = r();
        ao.W();
        break MISSING_BLOCK_LABEL_530;
_L24:
        if (flag8) goto _L16; else goto _L15
_L15:
        if (SystemClock.elapsedRealtime() - c <= 150L) goto _L16; else goto _L17
_L17:
        if (!n) goto _L19; else goto _L18
_L18:
        if (Math.abs(d - l1) < Math.abs(b - l1))
        {
            flag8 = true;
        } else
        {
            flag8 = false;
        }
_L16:
        j.releaseOutputBuffer(j2, flag8);
        if (!flag8) goto _L21; else goto _L20
_L20:
        b = d;
        c = SystemClock.elapsedRealtime();
        h;
        aobj1 = new Object[2];
        b;
        aobj1[0] = r();
        aobj1[1] = r();
        flag4 = flag6;
        flag5 = flag7;
        ao.W();
          goto _L22
_L19:
        if (d < b)
        {
            flag8 = true;
        } else
        {
            flag8 = false;
        }
          goto _L16
_L25:
        obj;
        JVM INSTR monitorexit ;
        l3 = l6;
        i1 = k2;
        flag2 = flag4;
        flag1 = flag3;
        flag = flag5;
          goto _L23
_L13:
        l5 = SystemClock.elapsedRealtime();
        l6 = l5;
        k2 = 0;
        break MISSING_BLOCK_LABEL_692;
_L2:
        l4 = SystemClock.elapsedRealtime();
        h;
        (new Object[1])[0] = Long.valueOf(l4 - l2);
        ao.W();
        return true;
_L21:
        flag4 = flag6;
        flag5 = flag7;
          goto _L22
_L9:
        flag4 = flag2;
        flag5 = flag;
          goto _L22
_L4:
        i2 = j1;
        flag3 = flag1;
          goto _L14
        boolean flag7;
        if (d >= l1 || flag6)
        {
            flag7 = true;
        } else
        {
            flag7 = false;
        }
        if (flag7 || flag3)
        {
            flag8 = true;
        } else
        {
            flag8 = false;
        }
          goto _L24
        k2 = i3;
        l6 = l3;
          goto _L25
    }

    private void q()
    {
        long l1 = -1L;
_L4:
        this;
        JVM INSTR monitorenter ;
        long l2 = l;
        if (l1 == l2)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        if (h.d)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        m = false;
        this;
        JVM INSTR monitorexit ;
        h.d();
        return;
        this;
        JVM INSTR monitorexit ;
        h;
        (new Object[1])[0] = r();
        ao.W();
        if (e != -1L && f != -1L && l2 >= e && l2 < f && d < l2)
        {
            break; /* Loop/switch isn't completed */
        }
        synchronized (h.e)
        {
            if (h.d)
            {
                break MISSING_BLOCK_LABEL_156;
            }
        }
        continue; /* Loop/switch isn't completed */
        exception1;
        throw exception1;
        Exception exception;
        exception;
        throw exception;
        long l3;
        if (g)
        {
            j.flush();
            g = false;
        }
        d = -1L;
        l3 = Math.min(k - 0x30d40L, l2);
        i.seekTo(l3, 1);
        f = i.getSampleTime();
        h;
        Object aobj[] = new Object[2];
        aobj[0] = r();
        f;
        aobj[1] = r();
        ao.W();
        if (f < l2)
        {
            f = 1L + l2;
        }
_L2:
        long l4 = l3;
        MediaExtractor mediaextractor = i;
        byte byte0;
        Object aobj1[];
        if (l4 == 0L)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        mediaextractor.seekTo(l4, byte0);
        e = i.getSampleTime();
        h;
        aobj1 = new Object[2];
        aobj1[0] = r();
        e;
        aobj1[1] = r();
        ao.W();
        l3 = l4 - 0x30d40L;
        if (e < 0L && l3 >= 0L) goto _L2; else goto _L1
_L1:
        obj;
        JVM INSTR monitorexit ;
_L6:
        if (b(l2))
        {
            l1 = l2;
        }
        if (true) goto _L4; else goto _L3
_L3:
        h;
        ao.W();
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L4; else goto _L7
_L7:
    }

    private static String r()
    {
        return "";
    }

    public final volatile void H_()
    {
        super.H_();
    }

    protected final void a(int i1)
    {
        a(1000L * (long)i1);
    }

    public final volatile void e()
    {
        super.e();
    }

    protected final boolean h()
    {
        int i1;
        MediaFormat mediaformat;
        i = new MediaExtractor();
        MediaFormat mediaformat1;
        String s;
        try
        {
            i.setDataSource(h.a.b());
        }
        catch (Exception exception)
        {
            (new Object[1])[0] = exception.getMessage();
            return false;
        }
        i1 = 0;
_L3:
        if (i1 >= i.getTrackCount())
        {
            break MISSING_BLOCK_LABEL_199;
        }
        mediaformat1 = i.getTrackFormat(i1);
        s = mediaformat1.getString("mime");
        if (!s.startsWith("video/")) goto _L2; else goto _L1
_L1:
        h;
        ao.W();
        i.selectTrack(i1);
        j = MediaCodec.createDecoderByType(s);
        k = mediaformat1.getLong("durationUs");
        g = false;
        mediaformat = mediaformat1;
_L4:
        if (j == null)
        {
            i.release();
            i = null;
            return false;
        } else
        {
            j.configure(mediaformat, new Surface(a().c()), null, 0);
            a().c().setOnFrameAvailableListener(this);
            j.start();
            return true;
        }
_L2:
        i1++;
          goto _L3
        mediaformat = null;
          goto _L4
    }

    protected final void i()
    {
        a().a(h.a);
    }

    protected final void j()
    {
        if (j != null)
        {
            j.stop();
            j.release();
            j = null;
            g = false;
        }
        if (i != null)
        {
            i.release();
            i = null;
        }
    }

    public final void onFrameAvailable(SurfaceTexture surfacetexture)
    {
        if (com.instagram.creation.video.f.ao.a(h) != null)
        {
            h.b = true;
            if (h.c)
            {
                k();
            }
            m();
        }
    }
}
