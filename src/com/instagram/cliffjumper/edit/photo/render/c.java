// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.render;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.opengl.GLES20;
import android.os.Handler;
import android.text.TextUtils;
import com.facebook.e.a.a;
import com.instagram.filterkit.a.b;
import com.instagram.filterkit.c.d;
import com.instagram.filterkit.filter.IgFilter;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.render:
//            RenderBridge, a, h, i, 
//            k, b, j, f, 
//            d, e, g

public class c
    implements d
{

    private static final Class a = com/instagram/cliffjumper/edit/photo/render/c;
    private final Handler b = new Handler();
    private final g c;
    private final IgFilter d;
    private final IgFilter e;
    private final b f;
    private final com.instagram.filterkit.e.a g;
    private final List h = new LinkedList();
    private final h i[];
    private final Context j;

    public c(Context context, g g1, b b1, IgFilter igfilter, IgFilter igfilter1, com.instagram.filterkit.e.a a1, h ah[])
    {
        j = context.getApplicationContext();
        c = g1;
        f = b1;
        d = igfilter;
        e = igfilter1;
        g = a1;
        i = ah;
    }

    static g a(c c1)
    {
        return c1.c;
    }

    static void a(c c1, String s)
    {
        c1.a(s);
    }

    private void a(String s)
    {
        File file = new File(s);
        String s1 = file.getName();
        String s2 = TextUtils.substring(s1, 0, s1.lastIndexOf('.'));
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("title", s2);
        contentvalues.put("_display_name", s1);
        contentvalues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        contentvalues.put("mime_type", "image/jpeg");
        contentvalues.put("_data", s);
        contentvalues.put("_size", Long.valueOf(file.length()));
        try
        {
            j.getContentResolver().insert(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentvalues);
            return;
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a(a, "Unable to insert media into media store");
        }
    }

    private com.instagram.cliffjumper.edit.photo.render.a b()
    {
        Object obj;
        Object obj1;
        com.instagram.cliffjumper.edit.photo.render.b b1;
        com.instagram.cliffjumper.edit.photo.render.b b2;
        int k1;
        boolean flag;
        int i2;
        com.instagram.cliffjumper.edit.photo.render.a a1;
        com.instagram.filterkit.d.c c1;
        int l;
        h h1;
        long l1;
        int i1;
        int j1;
        long l2;
        Object obj2;
        com.instagram.filterkit.e.b b3;
        try
        {
            if (!com.instagram.cliffjumper.edit.photo.render.RenderBridge.a())
            {
                return com.instagram.cliffjumper.edit.photo.render.a.b();
            }
            a1 = com.instagram.cliffjumper.edit.photo.render.a.a();
            c1 = f.b();
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a(a, String.format("ImageRenderer failed with exception: %s", new Object[] {
                exception
            }));
            return com.instagram.cliffjumper.edit.photo.render.a.a(exception);
        }
        l = 0;
        obj = null;
        if (l >= i.length) goto _L2; else goto _L1
_L1:
        h1 = i[l];
        if (h1.b == null) goto _L4; else goto _L3
_L3:
        k1 = h1.a;
        if (k1 != g.c())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!com.instagram.cliffjumper.edit.photo.render.i.a(h1)) goto _L6; else goto _L5
_L5:
        flag = false;
        i2 = g.c();
_L18:
        if (h1.c && obj != null) goto _L8; else goto _L7
_L7:
        obj2 = g;
        c1.a(((com.instagram.filterkit.e.g) (obj)), null);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        b3 = (com.instagram.filterkit.e.b)e.a(c1, ((com.instagram.filterkit.e.a) (obj2)), com.instagram.filterkit.e.d.b(i2));
        c1.a(((com.instagram.filterkit.e.g) (obj2)), null);
        obj2 = b3;
        if (l == -1 + i.length && (obj2 instanceof com.instagram.filterkit.d.d))
        {
            ((com.instagram.filterkit.d.d)obj2).a();
        }
        obj1 = (com.instagram.filterkit.e.b)d.a(c1, ((com.instagram.filterkit.e.a) (obj2)), com.instagram.filterkit.e.d.b(i2));
        obj = obj2;
_L13:
        c1.a(((com.instagram.filterkit.e.g) (obj)), null);
_L19:
        if (obj1 == null) goto _L10; else goto _L9
_L9:
        if (h1.b != null) goto _L11; else goto _L10
_L10:
        l1 = -1L;
        i1 = com.instagram.cliffjumper.edit.photo.render.k.b;
        if (a1.c() == b.e)
        {
            b1 = com.instagram.cliffjumper.edit.photo.render.b.b;
            break MISSING_BLOCK_LABEL_485;
        }
          goto _L12
_L16:
        a1.a(new j(h1.a, h1.b, l1, i1));
        a1.a(b2);
        l++;
        obj = obj1;
        break MISSING_BLOCK_LABEL_28;
_L8:
        obj1 = (com.instagram.filterkit.e.b)e.a(c1, ((com.instagram.filterkit.e.a) (obj)), com.instagram.filterkit.e.d.b(i2));
          goto _L13
_L12:
        b1 = a1.c();
        break MISSING_BLOCK_LABEL_485;
_L11:
        GLES20.glBindFramebuffer(36160, ((com.instagram.filterkit.e.b) (obj1)).a());
        j1 = RenderBridge.cacheImageInMemory(((com.instagram.filterkit.e.b) (obj1)).c());
        if (!h1.d) goto _L15; else goto _L14
_L14:
        l1 = -1L;
        h.add(new f(j1, h1.b, (byte)0));
_L17:
        c1.a(((com.instagram.filterkit.e.g) (obj1)), null);
        i1 = com.instagram.cliffjumper.edit.photo.render.k.a;
        b2 = com.instagram.cliffjumper.edit.photo.render.b.a;
          goto _L16
_L15:
        l2 = com.instagram.cliffjumper.edit.photo.render.RenderBridge.a(j1, h1.b);
        l1 = l2;
          goto _L17
_L2:
        return a1;
_L6:
        i2 = k1;
          goto _L18
_L4:
        obj1 = obj;
          goto _L19
        b2 = b1;
          goto _L16
    }

    static List b(c c1)
    {
        return c1.h;
    }

    public final void a()
    {
        com.instagram.cliffjumper.edit.photo.render.a a1 = b();
        b.post(new com.instagram.cliffjumper.edit.photo.render.d(this, a1));
        if (!h.isEmpty())
        {
            com.instagram.common.y.c.a.a().execute(new e(this));
        }
    }

}
