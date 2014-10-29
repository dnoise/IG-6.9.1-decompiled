// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.e;

import android.content.Context;
import android.opengl.GLES20;
import com.facebook.e.a.a;
import com.instagram.creation.base.d;
import com.instagram.creation.base.ui.h;
import com.instagram.creation.video.j.l;
import com.instagram.creation.video.jni.VideoBridge;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.e:
//            d, a

public class c extends h
{

    private static final int e[] = {
        33985, 33986, 33987, 33988
    };
    protected final Context a;
    protected int b;
    protected int c;
    protected int d;
    private final List f;
    private final int g[];
    private final String h;

    public c(Context context, int i, String s, int j, String s1, List list)
    {
        super(i, s, j);
        a = context;
        f = list;
        g = new int[list.size()];
        h = s1;
    }

    public static com.instagram.creation.video.e.d f()
    {
        return new com.instagram.creation.video.e.d();
    }

    public final void a(int i, l l1)
    {
        GLES20.glUseProgram(e());
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i);
        GLES20.glVertexAttribPointer(c, 2, 5126, false, 8, l1.a);
        GLES20.glVertexAttribPointer(b, 2, 5126, false, 8, l1.b);
        for (int j = 0; j < g.length; j++)
        {
            GLES20.glActiveTexture(e[j]);
            GLES20.glBindTexture(3553, g[j]);
        }

        GLES20.glDrawArrays(5, 0, 4);
    }

    protected void d()
    {
    }

    public final int e()
    {
        if (d != 0)
        {
            break MISSING_BLOCK_LABEL_227;
        }
        d = VideoBridge.compileProgram(h);
        GLES20.glUseProgram(d);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(d, "image"), 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(d, "u_filterStrength"), 1.0F);
        c = GLES20.glGetAttribLocation(d, "position");
        GLES20.glEnableVertexAttribArray(c);
        b = GLES20.glGetAttribLocation(d, "transformedTextureCoordinate");
        GLES20.glEnableVertexAttribArray(b);
        d();
        int i = 0;
_L2:
        if (i >= f.size())
        {
            break; /* Loop/switch isn't completed */
        }
        com.instagram.creation.video.e.a a1 = (com.instagram.creation.video.e.a)f.get(i);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(d, a1.a), i + 1);
        g[i] = com.instagram.creation.base.d.a(a, a1.b);
        i++;
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        com.facebook.e.a.a.a("VideoFilter", (new StringBuilder("Error initializing ")).append(a()).append(" program: ").toString(), exception);
_L1:
        (new StringBuilder("Using ")).append(a()).append(" program: ").append(d);
        return d;
    }

    protected void finalize()
    {
        if (d != 0)
        {
            GLES20.glDeleteProgram(d);
        }
    }

    public String toString()
    {
        return a();
    }

}
