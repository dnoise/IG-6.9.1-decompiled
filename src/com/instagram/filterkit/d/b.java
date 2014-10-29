// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.d;

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
import java.nio.Buffer;

// Referenced classes of package com.instagram.filterkit.d:
//            d

public class b
{

    private static final Class a = com/instagram/filterkit/d/b;
    private static android.graphics.BitmapFactory.Options b;

    public b()
    {
    }

    private static com.instagram.filterkit.e.a a(InputStream inputstream)
    {
        android.opengl.ETC1Util.ETC1Texture etc1texture = ETC1Util.createTexture(inputstream);
        int i = b(3553);
        ETC1Util.loadTexture(3553, 0, 0, 6407, 33635, etc1texture);
        if (!a("makeETC1Texture"))
        {
            return new d(i, etc1texture.getWidth(), etc1texture.getHeight());
        } else
        {
            return null;
        }
    }

    public static com.instagram.filterkit.e.a a(Buffer buffer)
    {
        int i = b(3553);
        GLES20.glTexImage2D(3553, 0, 6409, 256, 2, 0, 6409, 5121, buffer);
        if (!a("loadTexture"))
        {
            return new d(i, 256, 2);
        } else
        {
            return null;
        }
    }

    public static void a(int i)
    {
        GLES20.glDeleteTextures(1, new int[] {
            i
        }, 0);
    }

    public static boolean a(String s)
    {
        boolean flag = false;
        do
        {
            int i = GLES20.glGetError();
            if (i != 0)
            {
                Class class1 = a;
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(i);
                aobj[1] = s;
                com.facebook.e.a.a.a(class1, "GL error 0x%x after %s", aobj);
                flag = true;
            } else
            {
                return flag;
            }
        } while (true);
    }

    public static int b(int i)
    {
        int ai[] = new int[1];
        GLES20.glGenTextures(1, ai, 0);
        GLES20.glBindTexture(3553, ai[0]);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        return ai[0];
    }

    private static com.instagram.filterkit.e.a b(InputStream inputstream)
    {
        Bitmap bitmap = BitmapFactory.decodeStream(inputstream, null, b);
        if (bitmap != null)
        {
            int i = b(3553);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
            bitmap.recycle();
            if (!a("makeBitmapTexture"))
            {
                return new d(i, bitmap.getWidth(), bitmap.getHeight());
            }
        }
        return null;
    }

    public static void c(int i)
    {
        GLES20.glDeleteProgram(i);
    }

    public final com.instagram.filterkit.e.a a(Context context, String s)
    {
        String s1 = s.toLowerCase();
        if (!s.startsWith("/")) goto _L2; else goto _L1
_L1:
        InputStream inputstream1;
        File file = new File(s);
        inputstream1 = context.getContentResolver().openInputStream(Uri.fromFile(file));
        InputStream inputstream = inputstream1;
_L5:
        if (!s1.endsWith(".pkm")) goto _L4; else goto _L3
_L3:
        com.instagram.filterkit.e.a a3 = a(inputstream);
        com.instagram.filterkit.e.a a1 = a3;
_L6:
        com.instagram.filterkit.e.a a2;
        InputStream inputstream2;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception3)
            {
                com.facebook.e.a.a.a(a, "Failed to close input stream", ioexception3);
                return a1;
            }
        }
_L8:
        return a1;
_L2:
        inputstream2 = context.getAssets().open((new StringBuilder("filters/")).append(s).toString());
        inputstream = inputstream2;
          goto _L5
_L4:
        a2 = b(inputstream);
        a1 = a2;
          goto _L6
        IOException ioexception1;
        ioexception1;
        inputstream = null;
_L11:
        com.facebook.e.a.a.a(a, "Failed to open input stream", ioexception1);
        a1 = null;
        if (inputstream == null) goto _L8; else goto _L7
_L7:
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception2)
        {
            com.facebook.e.a.a.a(a, "Failed to close input stream", ioexception2);
            return null;
        }
        return null;
        Exception exception;
        exception;
        Exception exception1;
        inputstream = null;
        exception1 = exception;
_L10:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception)
            {
                com.facebook.e.a.a.a(a, "Failed to close input stream", ioexception);
            }
        }
        throw exception1;
        exception1;
        if (true) goto _L10; else goto _L9
_L9:
        ioexception1;
          goto _L11
    }

    static 
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        b = options;
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
    }
}
