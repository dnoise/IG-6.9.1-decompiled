// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.f;

import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.net.Uri;
import com.instagram.common.l.a.i;
import com.instagram.creation.video.g.b.a;
import com.instagram.creation.video.g.b.f;
import com.instagram.creation.video.g.c.d;
import com.instagram.creation.video.g.c.e;
import com.instagram.creation.video.g.d.b;
import java.io.File;
import java.nio.ByteBuffer;

// Referenced classes of package com.instagram.creation.video.g.f:
//            h, d, e, g, 
//            b, a

public class c
{

    private static final Class a = com/instagram/creation/video/g/f/c;
    private final Context b;
    private final com.instagram.creation.video.g.a.d c;
    private final d d;
    private final g e;
    private final b f;
    private final com.instagram.common.x.a g;
    private final com.facebook.d.b.b h;
    private MediaExtractor i;
    private h j;
    private e k;
    private e l;
    private volatile boolean m;

    public c(Context context, com.instagram.creation.video.g.a.d d1, d d2, b b1, g g1, com.instagram.common.x.a a1, com.facebook.d.b.b b2)
    {
        b = context;
        c = d1;
        d = d2;
        f = b1;
        e = g1;
        g = a1;
        h = b2;
    }

    private void a(Uri uri)
    {
        i = new MediaExtractor();
        i.setDataSource(b, uri, null);
        k = d.a(i);
        l = d.b(i);
    }

    private void a(com.instagram.creation.video.g.a.c c1, long l1, long l2, com.instagram.creation.video.g.a.e e1)
    {
        boolean flag = false;
        int i1 = android.os.Build.VERSION.SDK_INT;
        flag = false;
        if (i1 >= 18)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        MediaFormat mediaformat = j.f();
        f.b(mediaformat);
        if (l != null)
        {
            f.a(l.b);
        }
        f.a();
        flag = true;
        boolean flag1;
        boolean flag2;
        byte byte0;
        long l3;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        flag1 = false;
        flag2 = false;
        if (l1 < 0L)
        {
            l1 = 0L;
        }
        if (l2 >= 0L)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        l2 = 1000L * c1.a;
        a;
        Long.valueOf(l1);
        Long.valueOf(l2);
        i.selectTrack(k.c);
        if (l != null)
        {
            i.selectTrack(l.c);
        }
        mediaextractor = i;
        if (l1 == 0L)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        mediaextractor.seekTo(l1, byte0);
        if (l != null)
        {
            i.unselectTrack(l.c);
        }
          goto _L1
_L27:
        if (m) goto _L3; else goto _L2
_L2:
        if (flag1) goto _L5; else goto _L4
_L4:
        f1 = j.a();
        if (f1 == null) goto _L5; else goto _L6
_L6:
        j1 = i.readSampleData(f1.a(), 0);
        l4 = i.getSampleTime();
        if (j1 <= 0 || l4 > l2) goto _L8; else goto _L7
_L7:
        f1.a(j1, l4 - l1, i.getSampleFlags());
        j.a(f1);
        i.advance();
        if (l4 < l1 || !flag4) goto _L10; else goto _L9
_L9:
        a;
        Long.valueOf(l4);
        flag4 = false;
          goto _L10
_L17:
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_347;
        }
        j.b();
        flag2 = j.d();
        if (flag3) goto _L12; else goto _L11
_L11:
        f2 = j.c();
_L16:
        if (f2 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (f2.d() || !f2.e()) goto _L14; else goto _L13
_L13:
        f.b(j.f());
        if (l != null)
        {
            f.a(l.b);
        }
        f.a();
        flag = true;
_L19:
        j.b(f2);
        f2 = j.c();
        if (true) goto _L16; else goto _L15
_L8:
        f1.a(0, 0L, 4);
        j.a(f1);
        flag1 = true;
        flag5 = flag4;
          goto _L17
_L14:
        if (!f2.d()) goto _L19; else goto _L18
_L18:
        if ((4 & f2.b().flags) == 0) goto _L21; else goto _L20
_L20:
        flag3 = true;
        flag4 = flag5;
          goto _L22
_L21:
        f.b(f2);
        if (e1 == null) goto _L19; else goto _L23
_L23:
        e1.a((double)f2.b().presentationTimeUs / (double)l3);
          goto _L19
        exception;
        if (flag)
        {
            f.b();
        }
        throw exception;
_L15:
        flag4 = flag5;
          goto _L22
_L3:
        j.e();
        if (l == null) goto _L25; else goto _L24
_L24:
        a;
        Long.valueOf(l1);
        Long.valueOf(l2);
        i.selectTrack(l.c);
        mediaextractor1 = i;
        if (l1 == 0L)
        {
            byte1 = 2;
        } else
        {
            byte1 = 0;
        }
        mediaextractor1.seekTo(l1, byte1);
        i.unselectTrack(k.c);
        d1 = new com.instagram.creation.video.g.f.d();
        bytebuffer = l.b.getByteBuffer("csd-0");
        d1.a(bytebuffer.limit(), 0L, 2);
        a(bytebuffer, d1.a());
        f.a(d1);
        flag6 = false;
        flag7 = true;
_L26:
        if (flag6)
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = i.readSampleData(d1.a(), 0);
        l5 = i.getSampleTime();
        if (k1 <= 0 || l5 > l2)
        {
            break MISSING_BLOCK_LABEL_852;
        }
        if (l5 < l1)
        {
            break MISSING_BLOCK_LABEL_835;
        }
        d1.a(k1, l5 - l1, i.getSampleFlags());
        if (!flag7)
        {
            break MISSING_BLOCK_LABEL_824;
        }
        a;
        Long.valueOf(l5);
        flag7 = false;
        f.a(d1);
        i.advance();
        continue; /* Loop/switch isn't completed */
        flag6 = true;
        if (true) goto _L26; else goto _L25
_L25:
        if (flag)
        {
            f.b();
        }
        return;
_L12:
        flag4 = flag5;
        continue; /* Loop/switch isn't completed */
_L5:
        flag5 = flag4;
          goto _L17
_L1:
        l3 = l2 - l1;
        flag3 = false;
        flag4 = true;
_L22:
        if (flag1 && flag2 && flag3) goto _L3; else goto _L27
_L10:
        flag5 = flag4;
          goto _L17
    }

    private void a(File file)
    {
        f.a(file.getPath());
    }

    private static void a(ByteBuffer bytebuffer, ByteBuffer bytebuffer1)
    {
        bytebuffer1.position(0);
        bytebuffer.position(0);
        bytebuffer1.limit(bytebuffer.limit());
        bytebuffer1.put(bytebuffer);
    }

    private static boolean c()
    {
        return android.os.Build.VERSION.SDK_INT >= 16;
    }

    public final void a()
    {
        m = true;
    }

    public final void a(com.instagram.creation.video.g.f.e e1)
    {
        g;
        Exception exception;
        boolean flag;
        Throwable throwable;
        boolean flag1;
        boolean flag2;
        Uri uri;
        com.instagram.creation.video.g.a.c c1;
        if (!com.instagram.common.x.a.c())
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        com.instagram.common.l.a.f.b(flag2);
        com.instagram.common.l.a.f.b(c(), "Video Resizing is not supported for this OS version");
        com.instagram.common.l.a.f.a(e1.a.exists(), (new StringBuilder("Input file does not exist: ")).append(e1.a.getPath()).toString());
        uri = Uri.fromFile(e1.a);
        c1 = c.a(uri);
        a(uri);
        j = e.a();
        j.a(e1.f, e1.g);
        j.a(k.b);
        a(e1.b);
        a(c1, 1000 * e1.d, 1000 * e1.e, e1.h);
        if (!e1.b.exists())
        {
            throw new com.instagram.creation.video.g.f.b("No output file created");
        }
          goto _L1
        throwable;
        flag1 = false;
_L4:
        a;
        h.a("VideoResizeOperation_Exception", throwable);
        e1.b.delete();
        com.instagram.common.l.a.i.a(throwable, com/instagram/creation/video/g/f/b);
        if (!flag1) goto _L3; else goto _L2
_L2:
        throw new com.instagram.creation.video.g.f.a("Failed to init codecs to resize video", throwable);
        exception;
        flag = flag1;
_L5:
        if (!flag && e1.h != null)
        {
            e1.h.a();
        }
        if (i != null)
        {
            i.release();
            i = null;
        }
        throw exception;
        Throwable throwable1;
        throwable1;
        try
        {
            throw throwable1;
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            flag1 = true;
        }
        finally
        {
            flag = true;
        }
          goto _L4
_L1:
        if (e1.h != null)
        {
            e1.h.a();
        }
        if (i != null)
        {
            i.release();
            i = null;
        }
        return;
_L3:
        throw new com.instagram.creation.video.g.f.b("Failed to resize video", throwable);
        exception;
        flag = false;
          goto _L5
    }

    public final boolean b()
    {
        return m;
    }

}
