// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.opengl.ETC1Util;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import com.facebook.e.a.a;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public final class d
{

    private static android.graphics.BitmapFactory.Options a;

    public static int a(int i)
    {
        int ai[] = new int[1];
        GLES20.glGenTextures(1, ai, 0);
        GLES20.glBindTexture(i, ai[0]);
        GLES20.glTexParameteri(i, 10241, 9729);
        GLES20.glTexParameterf(i, 10240, 9729F);
        GLES20.glTexParameteri(i, 10242, 33071);
        GLES20.glTexParameteri(i, 10243, 33071);
        return ai[0];
    }

    public static int a(Context context, String s)
    {
        if (!s.startsWith("/")) goto _L2; else goto _L1
_L1:
        InputStream inputstream1;
        File file = new File(s);
        inputstream1 = context.getContentResolver().openInputStream(Uri.fromFile(file));
        InputStream inputstream = inputstream1;
_L3:
        IOException ioexception;
        int i;
        InputStream inputstream2;
        if (s.endsWith(".pkm"))
        {
            i = a(inputstream);
        } else
        {
            Bitmap bitmap = BitmapFactory.decodeStream(inputstream, null, a);
            i = a(bitmap);
            bitmap.recycle();
        }
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception1)
            {
                com.facebook.e.a.a.a("GLHelper", "Failed to close input stream", ioexception1);
                return i;
            }
        }
        return i;
_L2:
        inputstream2 = context.getAssets().open((new StringBuilder("filters/")).append(s).toString());
        inputstream = inputstream2;
          goto _L3
        ioexception;
        com.facebook.e.a.a.a("GLHelper", "Failed to open input stream", ioexception);
        inputstream = null;
          goto _L3
    }

    private static int a(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            return 0;
        }
        int ai[] = new int[1];
        GLES20.glGenTextures(1, ai, 0);
        int i = ai[0];
        GLES20.glBindTexture(3553, i);
        try
        {
            GLUtils.texImage2D(3553, 0, GLUtils.getInternalFormat(bitmap), bitmap, GLUtils.getType(bitmap), 0);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return 0;
        }
        GLES20.glTexParameterf(3553, 10241, 9729F);
        GLES20.glTexParameterf(3553, 10240, 9729F);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        a("makeBitmapTexture");
        return i;
    }

    private static int a(InputStream inputstream)
    {
        int ai[] = new int[1];
        GLES20.glGenTextures(1, ai, 0);
        int i = ai[0];
        GLES20.glBindTexture(3553, i);
        android.opengl.ETC1Util.ETC1Texture etc1texture;
        try
        {
            etc1texture = ETC1Util.createTexture(inputstream);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException((new StringBuilder("!!!!!>>>> ")).append(ioexception.getStackTrace()).toString());
        }
        ETC1Util.loadTexture(3553, 0, 0, 6407, 33635, etc1texture);
        GLES20.glTexParameterf(3553, 10241, 9729F);
        GLES20.glTexParameterf(3553, 10240, 9729F);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        return i;
    }

    public static void a(String s)
    {
        do
        {
            int i = GLES20.glGetError();
            if (i != 0)
            {
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(i);
                aobj[1] = s;
                com.facebook.e.a.a.a("GLHelper", "GL error 0x%x after %s", aobj);
            } else
            {
                return;
            }
        } while (true);
    }

    static 
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        a = options;
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
    }
}
