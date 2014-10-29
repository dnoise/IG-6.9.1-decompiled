// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.view.Window;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.creation.a.ah;
import com.instagram.base.activity.d;
import com.instagram.camera.h;
import com.instagram.creation.b.a.e;
import com.instagram.creation.base.a;
import com.instagram.creation.base.b;
import com.instagram.creation.photo.camera.c;
import com.instagram.creation.photo.camera.s;
import com.instagram.creation.photo.crop.m;
import com.instagram.creation.video.l.g;
import com.instagram.user.userservice.UserService;
import com.instagram.user.userservice.b.f;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.android.creation.activity:
//            a

public class MediaCaptureActivity extends d
    implements e, a, b, com.instagram.creation.photo.b.a, s, m, com.instagram.creation.video.k.a
{

    private static boolean p = true;
    private com.instagram.creation.b.c.a q;
    private boolean r;
    private int s;
    private float t;

    public MediaCaptureActivity()
    {
        s = -1;
        t = -99F;
    }

    private void b(Fragment fragment)
    {
        int l = 1;
        if (s == -1)
        {
            s = com.instagram.camera.h.a(getContentResolver());
        }
        if (s == l)
        {
            if (!(fragment instanceof com.instagram.creation.video.f.a) && !(fragment instanceof c))
            {
                l = 0;
            }
            if (l == 0)
            {
                com.instagram.m.c.c.g();
            }
            if (r)
            {
                float f1;
                if (l != 0)
                {
                    f1 = 0.7F;
                } else
                {
                    f1 = t;
                }
                if (f1 != -99F)
                {
                    float f2 = com.instagram.camera.h.a(getWindow(), f1);
                    if (t == -99F)
                    {
                        t = f2;
                    }
                }
            }
        }
    }

    private int j()
    {
        return getIntent().getIntExtra("mediaSource", 0);
    }

    private boolean k()
    {
        return getIntent().getExtras().getBoolean("directShare", false);
    }

    public final void a(int l, boolean flag)
    {
        Bundle bundle = new Bundle();
        bundle.putBoolean("directShare", flag);
        Object obj;
        if (l == com.instagram.creation.base.c.b)
        {
            obj = new com.instagram.creation.video.f.a();
        } else
        {
            obj = new c();
        }
        (new com.instagram.base.a.a.a(d())).a(((Fragment) (obj)), bundle).b().a();
    }

    public final void a(Uri uri, String s1, boolean flag)
    {
        com.instagram.p.a.j.c();
        com.instagram.creation.photo.crop.a a1 = com.instagram.creation.photo.crop.a.a(this, uri);
        a1.a(0);
        a1.a(s1);
        a1.a(flag);
        (new com.instagram.base.a.a.a(d())).a(new com.instagram.creation.photo.crop.b(), a1.a()).a();
    }

    public final void a(Bundle bundle)
    {
        com.instagram.b.c.a.a().a(this, "camera_capture");
        (new com.instagram.base.a.a.a(d())).a(new com.instagram.cliffjumper.edit.photo.a.a(), bundle).a();
    }

    public final void a(Fragment fragment)
    {
        super.a(fragment);
        b(fragment);
    }

    public final void a(com.instagram.creation.b.a.b b1)
    {
        com.instagram.creation.b.c.a _tmp = q;
        com.instagram.creation.b.c.a.b(b1);
    }

    public final void a(Runnable runnable)
    {
        com.instagram.creation.b.d.c.a().a(runnable);
    }

    public final void a(String s1, Bundle bundle)
    {
        com.instagram.p.a.k.c();
        bundle.putString("mediaFilePath", s1);
        (new com.instagram.base.a.a.a(d())).a(new com.instagram.cliffjumper.edit.photo.a.a(), bundle).a();
    }

    public final void a(String s1, boolean flag)
    {
        a(s1, flag, new Bundle());
    }

    public final void a(String s1, boolean flag, Bundle bundle)
    {
        bundle.putString("pendingMediaKey", s1);
        bundle.putBoolean("directShare", flag);
        android.support.v4.app.s s2 = d();
        com.instagram.p.a.b.c();
        if (s2.c())
        {
            (new com.instagram.base.a.a.a(s2)).a(new ah(), bundle).b("next").a("METADATA_FRAGMENT").a();
        }
    }

    public final com.instagram.creation.b.a.b b(String s1)
    {
        return com.instagram.creation.b.d.a.a().a(s1);
    }

    public final void b(com.instagram.creation.b.a.b b1)
    {
        q.c(b1);
    }

    public final void c(com.instagram.creation.b.a.b b1)
    {
        q.a(b1);
    }

    public final void d(com.instagram.creation.b.a.b b1)
    {
        q.d(b1);
    }

    public final void g()
    {
        onBackPressed();
    }

    public final void h()
    {
        com.instagram.creation.b.d.c.a().b();
    }

    public final void i()
    {
        q.b();
        q.c();
    }

    public void onBackPressed()
    {
        Fragment fragment = d().a(av.layout_container_main);
        boolean flag;
        if ((fragment instanceof com.instagram.common.t.a) && ((com.instagram.common.t.a)fragment).b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            super.onBackPressed();
        }
        b(d().a(av.layout_container_main));
    }

    public void onCreate(Bundle bundle)
    {
        Intent intent1;
        Bundle bundle1;
        super.onCreate(bundle);
        q = com.instagram.creation.b.c.a.a(this);
        com.instagram.service.a.a.a();
        if (!com.instagram.service.a.a.d())
        {
            com.instagram.android.activity.a.a(this);
        }
        com.instagram.share.b.a.g();
        getWindow().setFormat(1);
        getWindow().addFlags(4096);
        r = com.instagram.m.c.c.a();
        if (!r)
        {
            com.instagram.camera.h.a(getWindow(), getContentResolver());
        }
        setContentView(aw.activity_single_container);
        if (f.e() < System.currentTimeMillis())
        {
            Intent intent = new Intent(this, com/instagram/user/userservice/UserService);
            intent.setAction("suggestions");
            startService(intent);
        }
        intent1 = getIntent();
        bundle1 = intent1.getExtras();
        if (!intent1.hasExtra("isCrop")) goto _L2; else goto _L1
_L1:
        Object obj;
        obj = new com.instagram.creation.photo.crop.b();
        ((Fragment) (obj)).g(intent1.getExtras());
_L4:
        if (d().a(av.layout_container_main) == null)
        {
            ag ag1 = d().a();
            ag1.b(av.layout_container_main, ((Fragment) (obj)), "MediaCaptureActivity");
            ag1.b();
        }
        return;
_L2:
        if (intent1.hasExtra("videoFilePath"))
        {
            Uri uri = (Uri)intent1.getParcelableExtra("videoFilePath");
            String s1 = com.instagram.creation.video.l.g.a(getApplicationContext(), uri);
            if (!s1.equals("video_invalid_url"))
            {
                com.instagram.creation.video.i.a a1 = com.instagram.creation.video.i.a.a(s1);
                if (com.instagram.creation.video.l.g.a(a1))
                {
                    com.instagram.creation.b.a.b b1 = com.instagram.creation.video.l.g.a(getApplicationContext(), j());
                    String s2 = bundle1.getString("caption");
                    if (s2 != null)
                    {
                        b1.d(s2);
                    }
                    com.instagram.creation.b.d.a.a().a(b1.a(), b1);
                    com.instagram.creation.video.l.g.a(d(), b1.a(), a1, false, k());
                    return;
                } else
                {
                    finish();
                    return;
                }
            } else
            {
                com.instagram.creation.video.l.g.a(this);
                return;
            }
        }
        if (com.instagram.creation.b.d.a.a().c() != null)
        {
            obj = new com.instagram.creation.video.f.a();
        } else
        {
            obj = new c();
        }
        if (intent1.hasExtra("directShare"))
        {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("directShare", intent1.getBooleanExtra("directShare", false));
            ((Fragment) (obj)).g(bundle2);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onResume()
    {
        super.onResume();
        if (p)
        {
            com.instagram.common.y.c.a.a().execute(new com.instagram.android.creation.activity.a(this));
            p = false;
        }
    }

}
