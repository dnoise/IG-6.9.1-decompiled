// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.PowerManager;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.common.y.c.d;
import com.instagram.common.y.c.e;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.d.c;
import com.instagram.creation.photo.c.g;
import com.instagram.feed.d.l;
import com.instagram.user.c.i;
import com.instagram.user.c.j;
import com.instagram.user.userservice.UserService;
import com.instagram.user.userservice.b.f;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.instagram.creation.b.c:
//            d, c, e, h, 
//            b

public final class a
{

    private static final com.instagram.creation.b.d.a a = com.instagram.creation.b.d.a.a();
    private static c b = com.instagram.creation.b.d.c.a();
    private static boolean c = false;
    private static a d;
    private final com.instagram.common.y.b.a e = com.instagram.common.y.b.a.a();
    private final Object f = new Object();
    private final Context g;
    private final d h = com.instagram.common.y.c.e.a().a("PendingMedia").c();
    private final List i = new LinkedList();
    private boolean j;
    private boolean k;
    private com.instagram.creation.video.j.b l;
    private volatile android.os.PowerManager.WakeLock m;
    private com.instagram.creation.b.c.d n;

    private a(Context context)
    {
        g = context.getApplicationContext();
        n = new com.instagram.creation.b.c.d(context);
    }

    public static a a(Context context)
    {
        com/instagram/creation/b/c/a;
        JVM INSTR monitorenter ;
        a a1;
        if (d == null)
        {
            d = new a(context);
        }
        a1 = d;
        com/instagram/creation/b/c/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    static List a(a a1)
    {
        return a1.i;
    }

    static void a(a a1, b b1)
    {
        a1.h(b1);
    }

    private void a(com.instagram.creation.b.c.c c1)
    {
        this;
        JVM INSTR monitorenter ;
        com.instagram.creation.b.c.c.a(c1).g(true);
        i.add(c1);
        h.execute(c1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(l l1, b b1)
    {
        l1.a(Uri.fromFile(new File(b1.k())));
        b1.g(l1.f());
        if (b1.O() && com.instagram.creation.c.a.f())
        {
            new File(b1.l());
            l1.f(b1.l());
        }
        if (!b1.P())
        {
            com.instagram.user.c.a a1 = l1.c();
            a1.q();
            if (a1.p().intValue() == 1)
            {
                com.instagram.user.c.j.a().b(a1);
            } else
            {
                a1.G();
            }
            h();
        } else
        {
            com.instagram.user.userservice.b.f.b(System.currentTimeMillis());
            Intent intent = new Intent(g, com/instagram/user/userservice/UserService);
            intent.setAction("suggestions");
            g.startService(intent);
        }
        if (!com.instagram.l.b.a.a().x())
        {
            com.instagram.creation.photo.c.g.d();
        }
    }

    private static void a(String s1, boolean flag)
    {
        Intent intent = new Intent("PendingMediaManager.BROADCAST_INTENT_CHECKPOINT_REQUIRED");
        intent.putExtra("checkpointUrl", s1);
        intent.putExtra("shouldShowWebviewCancelButton", flag);
        com.instagram.common.y.d.a(intent);
    }

    public static boolean a()
    {
        boolean flag = c;
        boolean flag1 = false;
        if (flag)
        {
            c = false;
            flag1 = true;
        }
        return flag1;
    }

    public static void b(b b1)
    {
        a.b();
        a.a(b1.a(), b1);
        com.instagram.creation.b.d.c.a().b();
    }

    static c d()
    {
        return b;
    }

    private android.os.PowerManager.WakeLock e()
    {
        if (m == null)
        {
            m = ((PowerManager)g.getSystemService("power")).newWakeLock(1, "PendingMediaManager.WakeLock");
            m.setReferenceCounted(false);
        }
        return m;
    }

    private void f()
    {
        synchronized (f)
        {
            if (!e().isHeld())
            {
                e().acquire();
            }
        }
    }

    private void g()
    {
        synchronized (f)
        {
            if (e().isHeld())
            {
                e().release();
            }
        }
    }

    private static void h()
    {
        com.instagram.common.y.d.a("PendingMediaManager.BROADCAST_INTENT_NEW_MEDIA");
    }

    private void h(b b1)
    {
        j = false;
        k = false;
        com.instagram.creation.b.a.d d1 = b1.z();
        com.instagram.common.y.b.a _tmp = e;
        long l1 = com.instagram.common.y.b.a.c();
        b.c();
        i(b1);
        if (j)
        {
            i(b1);
        }
        a.d();
        com.instagram.creation.b.a.d d2 = b1.z();
        com.instagram.common.y.b.a _tmp1 = e;
        long l2 = com.instagram.common.y.b.a.c() - l1;
        n.a(b1, d1, d2, l2);
    }

    private void i(b b1)
    {
        if (b1.n() == com.instagram.model.a.a.a)
        {
            j(b1);
        } else
        if (b1.n() == com.instagram.model.a.a.b)
        {
            k(b1);
            return;
        }
    }

    private void j(b b1)
    {
        if (b1.z() == com.instagram.creation.b.a.d.a && EnumSet.of(com.instagram.creation.b.a.d.b, com.instagram.creation.b.a.d.c).contains(b1.A()))
        {
            try
            {
                com.instagram.b.d.c.a().a("upload_photo");
                q(b1);
                com.instagram.b.d.c.a().b("upload_photo");
            }
            catch (IOException ioexception1)
            {
                n.a(b1, (new StringBuilder("Photo upload failed: ")).append(ioexception1.toString()).toString());
                com.facebook.e.a.a.a("PendingMediaManager", "Media failed upload", ioexception1);
            }
        }
        if (b1.z() != com.instagram.creation.b.a.d.b || b1.A() != com.instagram.creation.b.a.d.c)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        com.instagram.b.d.c.a().a("configure_media");
        r(b1);
        com.instagram.b.d.c.a().b("configure_media");
        return;
        IOException ioexception;
        ioexception;
        n.a(b1, (new StringBuilder("Failed on configure: ")).append(ioexception.toString()).toString());
        com.facebook.e.a.a.a("PendingMediaManager", "Media failed configure", ioexception);
        return;
    }

    private void k(b b1)
    {
        boolean flag;
        String s1;
        if (b1.z() == com.instagram.creation.b.a.d.d && EnumSet.of(com.instagram.creation.b.a.d.e, com.instagram.creation.b.a.d.b, com.instagram.creation.b.a.d.c).contains(b1.A()) && (b1.D() == null || b1.D().isEmpty() || ((com.instagram.creation.b.a.j)b1.D().get(0)).a().compareTo(new Date()) <= 0))
        {
            b1.a(null);
            b1.a(com.instagram.creation.b.a.d.a);
        }
        if (b1.z() == com.instagram.creation.b.a.d.a && EnumSet.of(com.instagram.creation.b.a.d.d, com.instagram.creation.b.a.d.e, com.instagram.creation.b.a.d.b, com.instagram.creation.b.a.d.c).contains(b1.A()))
        {
            try
            {
                l(b1);
            }
            catch (IOException ioexception3)
            {
                n.a(b1, "Video Upload URL request failed");
                com.facebook.e.a.a.a("PendingMediaManager", "Media failed new media request", ioexception3);
            }
        }
        if (b1.z() != com.instagram.creation.b.a.d.d || !EnumSet.of(com.instagram.creation.b.a.d.e, com.instagram.creation.b.a.d.b, com.instagram.creation.b.a.d.c).contains(b1.A())) goto _L2; else goto _L1
_L1:
        if (b1.l() != null && (new File(b1.l())).exists())
        {
            break MISSING_BLOCK_LABEL_611;
        }
        flag = m(b1);
_L10:
        if (b1.l() != null) goto _L4; else goto _L3
_L3:
        if (flag)
        {
            s1 = "Video canceled";
        } else
        {
            s1 = "Could not render video";
        }
        n.a(b1, s1);
        com.facebook.e.a.a.a("PendingMediaManager", s1);
_L8:
        return;
_L4:
        if (b1.l().contains(com.instagram.creation.video.c.b.d(g).getAbsolutePath()))
        {
            break MISSING_BLOCK_LABEL_321;
        }
        String s2 = "video/x-matroska";
        if (b1.l().endsWith("mp4"))
        {
            s2 = "video/mp4";
        }
        com.instagram.creation.base.f.a(g, b1.l(), s2);
        int i1;
        com.instagram.creation.b.c.e e1 = new com.instagram.creation.b.c.e(com.instagram.common.a.b.a.a(), n);
        com.instagram.b.d.c.a().a("upload_video");
        i1 = e1.a(b1);
        if (i1 != com.instagram.creation.b.c.h.b) goto _L6; else goto _L5
_L5:
        j = true;
        n.a(b1, "All video upload URLs expired");
_L2:
        IOException ioexception2;
        if (b1.z() == com.instagram.creation.b.a.d.e && EnumSet.of(com.instagram.creation.b.a.d.b, com.instagram.creation.b.a.d.c).contains(b1.A()))
        {
            try
            {
                com.instagram.b.d.c.a().a("upload_cover_photo");
                q(b1);
                com.instagram.b.d.c.a().b("upload_cover_photo");
            }
            catch (IOException ioexception1)
            {
                n.a(b1, (new StringBuilder("Cover photo upload failed: ")).append(ioexception1.toString()).toString());
                com.facebook.e.a.a.a("PendingMediaManager", "Media failed cover photo upload", ioexception1);
            }
        }
        if (b1.z() != com.instagram.creation.b.a.d.b || b1.A() != com.instagram.creation.b.a.d.c) goto _L8; else goto _L7
_L7:
        try
        {
            com.instagram.b.d.c.a().a("configure_media");
            r(b1);
            com.instagram.b.d.c.a().b("configure_media");
            return;
        }
        catch (IOException ioexception)
        {
            n.a(b1, (new StringBuilder("Failed on configure: ")).append(ioexception.toString()).toString());
            com.facebook.e.a.a.a("PendingMediaManager", "Media failed configure", ioexception);
            return;
        }
_L6:
        if (i1 != h.a) goto _L2; else goto _L9
_L9:
        com.instagram.b.d.c.a().b("upload_video");
        b.c();
          goto _L2
        ioexception2;
        n.a(b1, ioexception2.toString());
        com.facebook.e.a.a.a("PendingMediaManager", "Media failed video render/upload", ioexception2);
          goto _L2
        flag = false;
          goto _L10
    }

    private static void l(b b1)
    {
        com.instagram.creation.b.c.a.c c1 = new com.instagram.creation.b.c.a.c(b1);
        HttpResponse httpresponse = com.instagram.common.a.b.a.a().a(c1);
        if (httpresponse != null && httpresponse.getStatusLine() != null && httpresponse.getStatusLine().getStatusCode() == 200)
        {
            String s1 = EntityUtils.toString(httpresponse.getEntity());
            b1.a((new com.instagram.creation.b.c.b.a((JsonNode)com.instagram.service.b.a.a().readValue(s1, com/fasterxml/jackson/databind/JsonNode))).a());
            b1.a(com.instagram.creation.b.a.d.d);
            b.c();
        }
    }

    private boolean m(b b1)
    {
        f();
        if (!com.instagram.creation.c.a.e()) goto _L2; else goto _L1
_L1:
        n(b1);
_L3:
        g();
        boolean flag = l.b();
        l = null;
        b.c();
        return flag;
_L2:
        if (!com.instagram.creation.c.a.g())
        {
            break MISSING_BLOCK_LABEL_91;
        }
        if (p(b1) == com.instagram.creation.video.g.e.b.d)
        {
            o(b1);
        }
          goto _L3
        Exception exception;
        exception;
        g();
        l.b();
        l = null;
        throw exception;
        o(b1);
          goto _L3
    }

    private void n(b b1)
    {
        com.instagram.b.d.c.a().a("render_video");
        com.instagram.creation.video.e.c c1 = com.instagram.creation.video.e.e.a(g, b1.d());
        com.instagram.creation.video.j.e e1 = new com.instagram.creation.video.j.e(g, b1, c1);
        (new Thread(e1.l())).start();
        l = e1;
        e1.j();
        e1.G_();
        com.instagram.b.d.c.a().b("render_video");
    }

    private void o(b b1)
    {
        com.instagram.b.d.c.a().a("render_video");
        com.instagram.creation.video.e.c c1 = com.instagram.creation.video.e.e.a(g, b1.d());
        l = new com.instagram.creation.video.j.d(g, b1, c1);
        l.l().run();
        com.instagram.b.d.c.a().b("render_video");
    }

    private int p(b b1)
    {
        com.instagram.b.d.c.a().a("render_video");
        com.instagram.creation.video.e.c c1 = com.instagram.creation.video.e.e.a(g, b1.d());
        com.instagram.creation.video.g.e.a a1 = new com.instagram.creation.video.g.e.a(b1);
        l = a1;
        int i1 = a1.a(g, c1);
        com.instagram.b.d.c.a().b("render_video");
        return i1;
    }

    private void q(b b1)
    {
        HttpResponse httpresponse = null;
        com.instagram.creation.b.c.a.e e1 = new com.instagram.creation.b.c.a.e(b1);
        httpresponse = com.instagram.common.a.b.a.a().a(e1, new com.instagram.creation.b.c.b(this, b1));
        if (httpresponse == null) goto _L2; else goto _L1
_L1:
        if (httpresponse.getStatusLine() != null && httpresponse.getStatusLine().getStatusCode() == 200) goto _L3; else goto _L2
_L2:
        com.facebook.e.a.a.a("PendingMediaManager", (new StringBuilder("Bad response from server ")).append(httpresponse).toString());
        if (b1.n() != com.instagram.model.a.a.a) goto _L5; else goto _L4
_L4:
        n.a(b1, (new StringBuilder("Photo upload failed: ")).append(httpresponse).toString());
          goto _L6
_L11:
        boolean flag;
        k = flag;
_L7:
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        EntityUtils.consume(httpresponse.getEntity());
        return;
_L5:
        if (b1.n() == com.instagram.model.a.a.b)
        {
            n.a(b1, (new StringBuilder("Cover photo upload failed: ")).append(httpresponse).toString());
        }
          goto _L6
        Exception exception;
        exception;
        if (httpresponse != null)
        {
            try
            {
                EntityUtils.consume(httpresponse.getEntity());
            }
            catch (IOException ioexception) { }
        }
        throw exception;
_L9:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L3:
        b1.a(com.instagram.creation.b.a.d.b);
        b.c();
          goto _L7
        IOException ioexception1;
        ioexception1;
        return;
_L6:
        if (httpresponse == null) goto _L9; else goto _L8
_L8:
        flag = true;
        if (true) goto _L11; else goto _L10
_L10:
    }

    private void r(b b1)
    {
        com.instagram.h.a.a.b(b1.m());
        l l1 = s(b1);
        if (b1.z() == com.instagram.creation.b.a.d.c)
        {
            a(l1, b1);
        }
    }

    private l s(b b1)
    {
        l l1;
        com.instagram.common.a.a.a a1;
        l1 = null;
        a1 = t(b1);
        HttpResponse httpresponse = com.instagram.common.a.b.a.a().a(a1);
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_508;
        }
        HttpEntity httpentity1;
        if (httpresponse.getEntity() == null)
        {
            break MISSING_BLOCK_LABEL_508;
        }
        httpentity1 = httpresponse.getEntity();
        HttpEntity httpentity = httpentity1;
        InputStream inputstream;
        com.fasterxml.jackson.a.l l2;
        Boolean boolean1;
        Boolean boolean2;
        Bundle bundle;
        inputstream = httpentity.getContent();
        l2 = com.instagram.common.n.a.a.createParser(inputstream);
        boolean1 = Boolean.valueOf(false);
        boolean2 = Boolean.valueOf(true);
        bundle = new Bundle();
        String s1;
        String s2;
        s1 = null;
        s2 = null;
_L2:
        String s3;
        while (l2.nextToken() != r.c) 
        {
            s3 = l2.getCurrentName();
            if (!"media".equals(s3))
            {
                break MISSING_BLOCK_LABEL_134;
            }
            l2.nextToken();
            l1 = com.instagram.feed.d.l.a(l2);
        }
          goto _L1
label0:
        {
            if (!"message".equals(s3))
            {
                break label0;
            }
            l2.nextToken();
            s2 = l2.getText();
        }
          goto _L2
label1:
        {
            if (!"checkpoint_url".equals(s3))
            {
                break label1;
            }
            l2.nextToken();
            s1 = l2.getText();
        }
          goto _L2
        if (!"lock".equals(s3))
        {
            break MISSING_BLOCK_LABEL_226;
        }
        l2.nextToken();
        Exception exception;
        boolean flag;
        if (!l2.getBooleanValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        boolean2 = Boolean.valueOf(flag);
          goto _L2
        if (!"feedback_required".equals(s3)) goto _L4; else goto _L3
_L3:
        l2.nextToken();
        boolean1 = Boolean.valueOf(l2.getBooleanValue());
          goto _L2
_L4:
        if (s3 == null) goto _L2; else goto _L5
_L5:
        l2.nextToken();
        bundle.putString(s3, l2.getText());
          goto _L2
        exception;
_L11:
        Exception exception2;
        try
        {
            EntityUtils.consume(httpentity);
        }
        catch (Exception exception1) { }
        throw exception;
_L1:
        l2.close();
        inputstream.close();
        if (httpresponse.getStatusLine() != null && httpresponse.getStatusLine().getStatusCode() == 200) goto _L7; else goto _L6
_L6:
        com.facebook.e.a.a.a("PendingMediaManager", (new StringBuilder("Failure response on configure: ")).append(httpresponse).toString());
        if (!"checkpoint_required".equalsIgnoreCase(s2)) goto _L9; else goto _L8
_L8:
        n.a(b1, "Failed on configure: checkpoint required");
        a(s1, boolean2.booleanValue());
_L10:
        if (boolean1.booleanValue() || "feedback_required".equalsIgnoreCase(s2))
        {
            com.instagram.g.c.a(bundle);
        }
_L12:
        try
        {
            EntityUtils.consume(httpentity);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2)
        {
            return l1;
        }
        return l1;
_L9:
        n.a(b1, (new StringBuilder("Failed on configure: ")).append(httpresponse).toString());
          goto _L10
_L7:
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_481;
        }
        if (!"media_needs_reupload".equalsIgnoreCase(s2))
        {
            break MISSING_BLOCK_LABEL_481;
        }
        n.a(b1, "Failed on configure: Media needs reupload");
        u(b1);
          goto _L10
        b1.a(com.instagram.creation.b.a.d.c);
          goto _L10
        exception;
        httpentity = null;
          goto _L11
        httpentity = null;
        l1 = null;
          goto _L12
    }

    private static com.instagram.common.a.a.a t(b b1)
    {
        if (b1.P())
        {
            return new com.instagram.f.a.a.g(b1);
        } else
        {
            return new com.instagram.creation.b.c.a.b(b1);
        }
    }

    private void u(b b1)
    {
        b1.a(com.instagram.creation.b.a.d.a);
        a(new com.instagram.creation.b.c.c(this, 0, b1, (byte)0));
    }

    public final void a(b b1)
    {
        b1.b(com.instagram.creation.b.a.d.d);
        a(new com.instagram.creation.b.c.c(this, 0, b1, (byte)0));
    }

    public final void b()
    {
        if (l != null)
        {
            l.c();
        }
    }

    public final void c()
    {
        if (l != null)
        {
            l.G_();
        }
    }

    public final void c(b b1)
    {
        b1.b(com.instagram.creation.b.a.d.b);
        a(new com.instagram.creation.b.c.c(this, 0, b1, (byte)0));
    }

    public final void d(b b1)
    {
        b1.b(com.instagram.creation.b.a.d.b);
        b1.f(null);
        if (b1.z() != com.instagram.creation.b.a.d.a)
        {
            b1.a(com.instagram.creation.b.a.d.d);
        }
        a(new com.instagram.creation.b.c.c(this, 0, b1, (byte)0));
    }

    public final void e(b b1)
    {
        if (!b1.P())
        {
            c = true;
        }
        b1.b(com.instagram.creation.b.a.d.c);
        a(new com.instagram.creation.b.c.c(this, 0, b1, (byte)0));
        b.b();
    }

    public final void f(b b1)
    {
        a(new com.instagram.creation.b.c.c(this, 0, b1, (byte)0));
    }

    public final void g(b b1)
    {
        a(new com.instagram.creation.b.c.c(this, 1, b1, (byte)0));
    }

}
