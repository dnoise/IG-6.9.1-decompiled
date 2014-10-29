// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.e;

import android.opengl.GLES20;
import com.instagram.creation.video.j.l;
import java.util.LinkedList;

// Referenced classes of package com.instagram.creation.video.e:
//            c

public final class b extends c
{

    private int e;

    public b()
    {
        super(null, -2, "OES", 0, "OES", new LinkedList());
    }

    public final void a(int i, l l1, float af[])
    {
        GLES20.glUseProgram(e());
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i);
        GLES20.glVertexAttribPointer(c, 2, 5126, false, 8, l1.a);
        GLES20.glVertexAttribPointer(b, 2, 5126, false, 8, l1.b);
        GLES20.glUniformMatrix4fv(e, 1, false, af, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public final void d()
    {
        e = GLES20.glGetUniformLocation(d, "transformMatrix");
    }
}
