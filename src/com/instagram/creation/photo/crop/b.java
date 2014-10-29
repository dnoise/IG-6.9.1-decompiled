// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.DocumentsContract;
import android.support.v4.app.an;
import android.support.v4.app.k;
import android.support.v4.view.ak;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.Toast;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.e.a.a;
import com.instagram.a.d;
import com.instagram.cliffjumper.edit.photo.jpeg.JpegBridge;
import com.instagram.cliffjumper.edit.photo.jpeg.NativeImage;
import com.instagram.creation.photo.c.e;
import com.instagram.creation.photo.gallery.c;
import com.instagram.creation.photo.gallery.p;
import com.instagram.ui.dialog.f;
import java.io.IOException;
import java.util.ArrayList;

// Referenced classes of package com.instagram.creation.photo.crop:
//            y, l, q, CropImageView, 
//            j, g, n, e, 
//            i, h, k, m, 
//            c, d

public class b extends y
{

    private static final Class c = com/instagram/creation/photo/crop/b;
    private static final android.graphics.Bitmap.CompressFormat d;
    boolean a;
    private CropImageView aa;
    private q ab;
    private f ac;
    private ContentResolver ad;
    private Bitmap ae;
    private c af;
    private com.instagram.creation.photo.c.b ag;
    private String ah;
    private m ai;
    Runnable b;
    private final Handler e = new Handler();
    private int f;
    private int g;
    private int h;
    private Uri i;

    public b()
    {
        b = new l(this);
    }

    private void V()
    {
        while (ab == null || a) 
        {
            return;
        }
        a = true;
        Rect rect = com.instagram.creation.photo.c.e.a(ab.c());
        aa.a.clear();
        boolean flag = j().getBoolean("CropFragment.requestCropRect", false);
        if (af.g() && flag)
        {
            b(rect);
            return;
        } else
        {
            a(rect);
            return;
        }
    }

    private static Bitmap a(int i1, int j1, Bitmap bitmap, Matrix matrix)
    {
        Bitmap bitmap1 = Bitmap.createBitmap(i1, j1, android.graphics.Bitmap.Config.ARGB_8888);
        (new Canvas(bitmap1)).drawBitmap(bitmap, matrix, null);
        return bitmap1;
    }

    static Bitmap a(b b1, Bitmap bitmap)
    {
        b1.ae = bitmap;
        return bitmap;
    }

    private Rect a(int i1, int j1, Rect rect)
    {
        return com.instagram.creation.photo.c.e.a(rect, (float)Math.min(i1, j1) / (float)h);
    }

    static com.instagram.creation.photo.c.b a(b b1, com.instagram.creation.photo.c.b b2)
    {
        b1.ag = b2;
        return b2;
    }

    static m a(b b1)
    {
        return b1.ai;
    }

    static q a(b b1, q q1)
    {
        b1.ab = q1;
        return q1;
    }

    static c a(b b1, c c1)
    {
        b1.af = c1;
        return c1;
    }

    private String a(Uri uri, String s, String as[])
    {
        String as1[] = {
            "_data"
        };
        Cursor cursor1 = ad.query(uri, as1, s, as, null);
        Cursor cursor;
        cursor = cursor1;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        String s1;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_78;
        }
        s1 = cursor.getString(cursor.getColumnIndexOrThrow("_data"));
        if (cursor != null)
        {
            cursor.close();
        }
        return s1;
        if (cursor != null)
        {
            cursor.close();
        }
        return "";
        Exception exception;
        exception;
        cursor = null;
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a(Bitmap bitmap)
    {
        Bundle bundle = new Bundle();
        c(bundle);
        a(bitmap, bundle);
    }

    private void a(Bitmap bitmap, Bundle bundle)
    {
        java.io.OutputStream outputstream = null;
        outputstream = ad.openOutputStream(i);
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        bitmap.compress(d, 95, outputstream);
        p.a(outputstream);
_L2:
        e.post(new j(this, bitmap, bundle));
        return;
        IOException ioexception;
        ioexception;
        com.facebook.e.a.a.a(c, (new StringBuilder("Cannot open file: ")).append(i).toString(), ioexception);
        b(bitmap);
        p.a(outputstream);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        p.a(outputstream);
        throw exception;
    }

    private void a(Rect rect)
    {
        int i1 = az.processing;
        com.instagram.creation.photo.crop.n.a(this, o().getString(i1), new g(this, rect), e);
    }

    private void a(Uri uri)
    {
        z().a(com.instagram.common.y.e.a.a(), new com.instagram.creation.photo.crop.e(this, uri));
    }

    private void a(NativeImage nativeimage)
    {
        Bundle bundle = new Bundle();
        c(bundle);
        a(nativeimage, bundle);
    }

    private void a(NativeImage nativeimage, Bundle bundle)
    {
        String s = b(i);
        if (s == null || s.isEmpty())
        {
            Class class1 = c;
            Object aobj[] = new Object[1];
            aobj[0] = i;
            com.facebook.e.a.a.a(class1, "Failed to save native image to : %s", aobj);
        } else
        {
            if (JpegBridge.saveImage(nativeimage, i.getPath(), 95) == 1)
            {
                e.post(new h(this, bundle));
                return;
            }
            Class class2 = c;
            Object aobj1[] = new Object[1];
            aobj1[0] = i;
            com.facebook.e.a.a.a(class2, "Native jpeg save failed for file %s", aobj1);
        }
        e.post(new i(this));
    }

    static void a(b b1, Rect rect)
    {
        b1.d(rect);
    }

    static Bitmap b(b b1, Rect rect)
    {
        return b1.e(rect);
    }

    static Class b()
    {
        return c;
    }

    private String b(Uri uri)
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if ("file".equals(uri.getScheme()))
        {
            return uri.getPath();
        }
        if (!flag)
        {
            return d(uri);
        } else
        {
            return c(uri);
        }
    }

    private void b(Bitmap bitmap)
    {
        e.post(new com.instagram.creation.photo.crop.k(this, bitmap));
    }

    private void b(Rect rect)
    {
        Class _tmp = c;
        Rect rect1 = a(af.e(), af.f(), rect);
        Bundle bundle = new Bundle();
        c(bundle);
        bundle.putParcelable("cropRect", rect1);
        bundle.putInt("cameraRotation", ag.a());
        if (ai != null)
        {
            ai.a(af.a(), bundle);
        }
    }

    static void b(b b1)
    {
        b1.V();
    }

    static void b(b b1, Bitmap bitmap)
    {
        b1.a(bitmap);
    }

    private NativeImage c(Rect rect)
    {
        Rect rect1 = a(af.e(), af.f(), rect);
        NativeImage nativeimage = JpegBridge.a(af.a(), rect1);
        nativeimage.assertDimensions(rect1.width(), rect1.height());
        int i1 = Math.min(rect1.width(), rect1.height());
        int j1 = Math.min(f, i1);
        NativeImage nativeimage1 = JpegBridge.scaleImage(nativeimage, j1, j1);
        nativeimage1.assertDimensions(j1, j1);
        JpegBridge.releaseNativeBuffer(nativeimage.getBufferId());
        return nativeimage1;
    }

    private String c(Uri uri)
    {
        if (!DocumentsContract.isDocumentUri(n(), uri))
        {
            Class _tmp = c;
            new Object[] {
                uri
            };
            return "";
        } else
        {
            String as[] = DocumentsContract.getDocumentId(uri).split(":");
            Uri uri1 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            String as1[] = new String[1];
            as1[0] = as[1];
            return a(uri1, "_id=?", as1);
        }
    }

    private void c()
    {
        if (ac != null)
        {
            ac.dismiss();
            ac = null;
        }
        if (ae == null)
        {
            Toast.makeText(l(), az.unable_to_load_image, 0).show();
            ai.g();
            return;
        } else
        {
            h = Math.min(ae.getWidth(), ae.getHeight());
            d();
            return;
        }
    }

    private void c(Bitmap bitmap)
    {
        if (aa != null)
        {
            aa.b();
        }
        if (bitmap != null)
        {
            bitmap.recycle();
        }
    }

    private void c(Bundle bundle)
    {
        bundle.putString("pendingMediaKey", ah);
        bundle.putInt("originalWidth", af.e());
        bundle.putInt("originalHeight", af.f());
        if (ag != null && ag.b() != null && ag.c() != null)
        {
            bundle.putDouble("latitude", ag.b().doubleValue());
            bundle.putDouble("longitude", ag.c().doubleValue());
        }
        if (j() != null)
        {
            bundle.putInt("mediaSource", j().getInt("mediaSource", 0));
            bundle.putBoolean("directShare", j().getBoolean("directShare", false));
        }
    }

    static void c(b b1)
    {
        b1.c();
    }

    static void c(b b1, Bitmap bitmap)
    {
        b1.c(bitmap);
    }

    static Handler d(b b1)
    {
        return b1.e;
    }

    private String d(Uri uri)
    {
        Cursor cursor1;
        String as[] = {
            "_data"
        };
        cursor1 = ad.query(uri, as, null, null, null);
        Cursor cursor = cursor1;
        if (cursor == null) goto _L2; else goto _L1
_L1:
        String s2;
        int i1 = cursor.getColumnIndexOrThrow("_data");
        cursor.moveToFirst();
        s2 = cursor.getString(i1);
        String s;
        boolean flag;
        s = s2;
        flag = true;
_L10:
        if (cursor != null)
        {
            cursor.close();
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        return s;
_L2:
        c;
        new Object[] {
            uri
        };
        if (!uri.getScheme().equals("file")) goto _L6; else goto _L5
_L5:
        String s1 = uri.getPath();
        s = s1;
        if (cursor == null) goto _L3; else goto _L7
_L7:
        cursor.close();
        return s;
        Exception exception;
        exception;
        cursor = null;
_L8:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
_L4:
        return "";
        exception;
        if (true) goto _L8; else goto _L6
_L6:
        s = null;
        flag = false;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private void d()
    {
        if (l() == null || l().isFinishing())
        {
            return;
        }
        CropImageView cropimageview = aa;
        com.instagram.creation.photo.c.f f1 = new com.instagram.creation.photo.c.f(ae, ag.a());
        boolean flag;
        if (ab == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        cropimageview.a(f1, flag);
        if (aa.d() == 1.0F)
        {
            aa.c();
        }
        b.run();
    }

    private void d(Rect rect)
    {
        com.instagram.common.l.a.f.b(JpegBridge.a());
        NativeImage nativeimage = c(rect);
        int i1 = ag.a();
        if (i1 != 0)
        {
            JpegBridge.rotateImage(nativeimage, i1);
        }
        a(nativeimage);
        JpegBridge.releaseNativeBuffer(nativeimage.getBufferId());
    }

    private Bitmap e(Rect rect)
    {
        Class _tmp = c;
        (new StringBuilder("Image is ")).append(af.d()).append(" using Java to write new JPEG");
        int i1 = (int)(0.37D * (double)(int)(Runtime.getRuntime().maxMemory() / 4L));
        Class _tmp1 = c;
        Bitmap bitmap = af.a(i1);
        if (bitmap == null)
        {
            throw new IllegalStateException((new StringBuilder("Image decoding failed. type: ")).append(af.d()).append(" path: ").append(af.a()).append(" height: ").append(af.f()).append(" width: ").append(af.e()).toString());
        }
        Rect rect1 = a(bitmap.getWidth(), bitmap.getHeight(), rect);
        int j1 = Math.min(rect1.width(), rect1.height());
        int k1 = Math.min(f, j1);
        Class _tmp2 = c;
        Integer.valueOf(k1);
        Matrix matrix = new Matrix();
        matrix.reset();
        float f1 = rect1.left;
        float f2 = rect1.top;
        matrix.postTranslate(-f1, -f2);
        if (ag.a() != 0)
        {
            matrix.postRotate(ag.a(), (float)rect1.width() / 2.0F, (float)rect1.height() / 2.0F);
        }
        float f3 = (float)k1 / (float)j1;
        matrix.postScale(f3, f3);
        Bitmap bitmap1 = a(k1, k1, bitmap, matrix);
        bitmap.recycle();
        return bitmap1;
    }

    static c e(b b1)
    {
        return b1.af;
    }

    static Uri f(b b1)
    {
        return b1.i;
    }

    static CropImageView g(b b1)
    {
        return b1.aa;
    }

    static Bitmap h(b b1)
    {
        return b1.ae;
    }

    static int i(b b1)
    {
        return b1.g;
    }

    static q j(b b1)
    {
        return b1.ab;
    }

    static com.instagram.creation.photo.c.b k(b b1)
    {
        return b1.ag;
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_crop, viewgroup, false);
        aa = (CropImageView)view.findViewById(av.image);
        aa.a(this);
        ak.a(aa, 1, null);
        ImageView imageview = (ImageView)view.findViewById(av.button_back);
        imageview.setOnClickListener(new com.instagram.creation.photo.crop.c(this));
        imageview.setBackgroundDrawable(new d(o(), com.instagram.a.e.a, 5));
        ImageView imageview1 = (ImageView)view.findViewById(av.save);
        imageview1.setOnClickListener(new com.instagram.creation.photo.crop.d(this));
        if (j().getBoolean("CropFragment.isAvatar"))
        {
            imageview.setImageResource(au.nav_cancel);
            imageview1.setImageResource(au.check);
            imageview1.setBackgroundResource(au.action_bar_light_blue_button_background);
        }
        return view;
    }

    public final void a(Context context)
    {
        super.a(context);
        try
        {
            ai = (m)context;
            return;
        }
        catch (ClassCastException classcastexception)
        {
            throw new ClassCastException((new StringBuilder()).append(context.toString()).append(" must implement CropFragmentListener").toString());
        }
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        ad = l().getContentResolver();
        l().getWindow().addFlags(1024);
        Bundle bundle1 = j();
        i = (Uri)bundle1.getParcelable("output");
        f = bundle1.getInt("CropFragment.largestDimension");
        g = bundle1.getInt("CropFragment.smallestDimension");
        a((Uri)j().getParcelable("CropFragment.imageUri"));
        ah = bundle1.getString("pendingMediaKey");
        if (bundle != null)
        {
            ah = bundle.getString("pendingMediaKey");
        }
        if (ah == null)
        {
            com.instagram.creation.b.a.b b1 = com.instagram.creation.b.a.b.a(String.valueOf(System.nanoTime()));
            if (l() instanceof com.instagram.creation.photo.b.a)
            {
                ((com.instagram.creation.photo.b.a)l()).a(b1);
            }
            ah = b1.a();
            String s = bundle1.getString("caption");
            if (s != null)
            {
                b1.d(s);
            }
        }
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        if (ae != null)
        {
            c();
            return;
        } else
        {
            ac = new f(n());
            ac.a(c(az.loading));
            ac.show();
            return;
        }
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        bundle.putString("pendingMediaKey", ah);
    }

    public final String j_()
    {
        return "crop";
    }

    public final void m_()
    {
        super.m_();
        a = false;
        aa.a(null);
        aa.a();
        aa = null;
        if (ac != null)
        {
            ac.dismiss();
            ac = null;
        }
    }

    public final void r_()
    {
        super.r_();
        ai = null;
    }

    static 
    {
        d = android.graphics.Bitmap.CompressFormat.JPEG;
    }
}
