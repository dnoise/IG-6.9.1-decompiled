// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.j;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.view.Surface;
import com.instagram.creation.b.a.a;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.e.c;
import com.instagram.creation.video.gl.j;
import com.instagram.creation.video.gl.o;
import com.instagram.creation.video.jni.VideoBridge;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.Queue;

// Referenced classes of package com.instagram.creation.video.j:
//            a, f

public final class d extends com.instagram.creation.video.j.a
{

    private final String b;
    private final String c;
    private final b d;
    private final a e;
    private MediaFormat f;
    private MediaExtractor g;
    private ByteBuffer h;
    private MediaExtractor i;
    private MediaCodec j;
    private MediaFormat k;
    private ByteBuffer l[];
    private android.media.MediaCodec.BufferInfo m;
    private int n;
    private int o;
    private Queue p;
    private f q;
    private int r;
    private int s;

    public d(Context context, b b1, c c1)
    {
        super(new j(null, 640));
        h = ByteBuffer.allocateDirect(8192);
        m = new android.media.MediaCodec.BufferInfo();
        n = 0;
        o = 0;
        e = b1.K();
        e.b();
        Integer.valueOf(b1.d());
        q = new f();
        q.b();
        q.a(c1);
        l().a(q);
        d = b1;
        i = new MediaExtractor();
        g = new MediaExtractor();
        try
        {
            i.setDataSource(e.b());
            g.setDataSource(e.b());
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Error accessing disk for media extraction.", ioexception);
        }
        p = new LinkedList();
        b = com.instagram.creation.video.c.b.a(context, b1, "mkv");
        c = com.instagram.creation.video.c.b.a(context);
    }

    private void a(long l1)
    {
        do
        {
            long l2 = g.getSampleTime();
            if (l2 >= l1 || l2 == -1L)
            {
                break;
            }
            int i1 = g.readSampleData(h, 0);
            if (i1 < 0)
            {
                break;
            }
            VideoBridge.writeAudioPacket(h, i1, l2);
            g.advance();
        } while (true);
    }

    private void a(String s1)
    {
        MediaCodec mediacodec;
        ByteBuffer abytebuffer[];
        android.media.MediaCodec.BufferInfo bufferinfo;
        int i1;
        int j1;
        ByteBuffer abytebuffer2[];
        int k1;
        mediacodec = k();
        mediacodec.start();
        abytebuffer = mediacodec.getInputBuffers();
        ByteBuffer abytebuffer1[] = mediacodec.getOutputBuffers();
        bufferinfo = new android.media.MediaCodec.BufferInfo();
        b(s1);
        i1 = 1000 * e.f();
        j1 = 1000 * e.g();
        g.seekTo(i1, 0);
        abytebuffer2 = abytebuffer1;
        k1 = 0;
_L2:
        int l1 = mediacodec.dequeueInputBuffer(10000L);
        int i2;
        int j2;
        if (l1 >= 0)
        {
            int l2 = g.readSampleData(abytebuffer[l1], 0);
            if (l2 < 0)
            {
                mediacodec.queueInputBuffer(l1, 0, 0, 0L, 4);
                i2 = 0;
            } else
            {
                mediacodec.queueInputBuffer(l1, 0, l2, g.getSampleTime(), 0);
                g.advance();
                i2 = 0;
            }
        } else
        {
            i2 = k1 + 1;
            if (k1 >= 200)
            {
                throw new RuntimeException("Could not decode audio because of unavailale codec buffers.");
            }
        }
        j2 = mediacodec.dequeueOutputBuffer(bufferinfo, 10000L);
        if ((4 & bufferinfo.flags) == 0)
        {
            if (j2 == -3)
            {
                abytebuffer2 = mediacodec.getOutputBuffers();
                k1 = i2;
            } else
            {
                if (j2 >= 0)
                {
                    ByteBuffer bytebuffer = abytebuffer2[j2];
                    bytebuffer.rewind();
                    bytebuffer.limit(bufferinfo.size);
                    if (bufferinfo.presentationTimeUs >= (long)i1 && bufferinfo.presentationTimeUs <= (long)j1)
                    {
                        h.clear();
                        h.put(bytebuffer);
                        VideoBridge.encodeAudioBuffer(h, bufferinfo.size);
                    }
                    mediacodec.releaseOutputBuffer(j2, false);
                }
                k1 = i2;
            }
            continue; /* Loop/switch isn't completed */
        }
        VideoBridge.finishEncodingAudio();
        g.release();
        mediacodec.stop();
        mediacodec.release();
        g = new MediaExtractor();
        int k2;
        try
        {
            g.setDataSource(s1);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Error accessing disk for media extraction.", ioexception);
        }
        k2 = 0;
        do
        {
label0:
            {
                if (k2 < g.getTrackCount())
                {
                    f = g.getTrackFormat(k2);
                    if (!f.getString("mime").startsWith("audio/"))
                    {
                        break label0;
                    }
                    f.toString();
                    g.selectTrack(k2);
                }
                return;
            }
            f = null;
            k2++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void b(String s1)
    {
        int i1 = VideoBridge.configureVorbisEncoder(s1, f.getInteger("channel-count"), f.getInteger("sample-rate"), 0.0D);
        if (i1 != 0)
        {
            com.facebook.e.a.a.a("FinalRenderController", (new StringBuilder("Could not configure audio codec: ")).append(i1).toString());
        }
    }

    private void j()
    {
        l().a(o.a);
        int i1 = 0;
        do
        {
label0:
            {
                if (i1 < i.getTrackCount())
                {
                    k = i.getTrackFormat(i1);
                    String s1 = k.getString("mime");
                    if (!s1.startsWith("video/"))
                    {
                        break label0;
                    }
                    i.selectTrack(i1);
                    j = MediaCodec.createDecoderByType(s1);
                    j.configure(k, new Surface(q.c()), null, 0);
                }
                r = 1000 * e.f();
                s = 1000 * e.g();
                i.seekTo(r, 0);
                o = 0;
                do
                {
                    long l1 = i.getSampleTime();
                    if (l1 <= (long)s && l1 != -1L)
                    {
                        if (i.getSampleTime() >= (long)r)
                        {
                            o = 1 + o;
                        }
                        i.advance();
                    } else
                    {
                        i.seekTo(r, 0);
                        j.start();
                        l = j.getInputBuffers();
                        q.b(e);
                        q.a(e);
                        return;
                    }
                } while (true);
            }
            k = null;
            i1++;
        } while (true);
    }

    private MediaCodec k()
    {
        for (int i1 = 0; i1 < g.getTrackCount(); i1++)
        {
            f = g.getTrackFormat(i1);
            String s1 = f.getString("mime");
            if (s1.startsWith("audio/"))
            {
                f.toString();
                g.selectTrack(i1);
                MediaCodec mediacodec = MediaCodec.createDecoderByType(s1);
                mediacodec.configure(f, null, null, 0);
                return mediacodec;
            }
            f = null;
        }

        return null;
    }

    private void q()
    {
        int i1 = VideoBridge.configureVideoCodec(b, 640, 640);
        if (i1 != 0)
        {
            com.facebook.e.a.a.a("FinalRenderController", (new StringBuilder("Could not configure codec: ")).append(i1).toString());
        }
    }

    public final void H_()
    {
        l().d();
        j();
        a(c);
        q();
    }

    public final void e()
    {
        long l1 = ((Long)p.poll()).longValue();
        VideoBridge.encodeFrame(m.presentationTimeUs - (long)r, l1);
        n = 1 + n;
        (new StringBuilder("Rendered frame number ")).append(n).append(" at time ").append(m.presentationTimeUs).append(" for ").append(l1).append("us");
        if (o != 0)
        {
            double d1 = (double)n / (double)o;
            d.c((int)(d1 * 45D));
        }
    }

    public final void f()
    {
        VideoBridge.finishEncoding();
        i.release();
        j.stop();
        j.release();
        if (!i())
        {
            (new File(b)).delete();
            (new File(c)).delete();
            return;
        } else
        {
            (new StringBuilder("Rendered to ")).append(b);
            d.f(b);
            return;
        }
    }

    public final boolean g()
    {
_L2:
        int j1;
        int i1 = j.dequeueInputBuffer(10000L);
        if (i1 >= 0)
        {
            ByteBuffer bytebuffer = l[i1];
            int k1 = i.readSampleData(bytebuffer, 0);
            if (k1 < 0)
            {
                j.queueInputBuffer(i1, 0, 0, 0L, 4);
            } else
            {
                long l1 = i.getSampleTime();
                j.queueInputBuffer(i1, 0, k1, i.getSampleTime(), 0);
                i.advance();
                p.offer(Long.valueOf(i.getSampleTime() - l1));
            }
        }
        j1 = j.dequeueOutputBuffer(m, 10000L);
        if ((4 & m.flags) != 0 || m.presentationTimeUs >= (long)s)
        {
            h();
            return true;
        }
        if (j1 < 0 || m.presentationTimeUs > (long)r)
        {
            break; /* Loop/switch isn't completed */
        }
        j.releaseOutputBuffer(j1, false);
        j1 = -1;
_L4:
        if (j1 >= 0)
        {
            a(m.presentationTimeUs - (long)r);
            return false;
        }
        if (true) goto _L2; else goto _L1
_L1:
        switch (j1)
        {
        default:
            j.releaseOutputBuffer(j1, true);
            try
            {
                Thread.sleep(12L, 0);
            }
            catch (InterruptedException interruptedexception) { }
            break;

        case -3: 
        case -2: 
        case -1: 
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
