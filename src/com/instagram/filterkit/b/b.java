// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.b;

import android.opengl.GLES20;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.filterkit.b:
//            a, f, d, c

public class b
{

    private static final Class a = com/instagram/filterkit/b/b;
    private final int b;
    private final Map c;
    private final Map d;
    private final Set e = new HashSet();
    private final Map f = new HashMap();

    public b(int i)
    {
        b = i;
        c = a(b);
        d = b(b);
    }

    private a a(String s)
    {
        return (a)d.get(s);
    }

    private static Map a(int i)
    {
        int ai[] = new int[1];
        int ai1[] = new int[1];
        int ai2[] = new int[1];
        int ai3[] = new int[1];
        int ai4[] = new int[1];
        GLES20.glGetProgramiv(i, 35718, ai, 0);
        GLES20.glGetProgramiv(i, 35719, ai1, 0);
        ai1[0] = Math.max(ai1[0], 256);
        byte abyte0[] = new byte[ai1[0]];
        HashMap hashmap = new HashMap();
        for (int j = 0; j < ai[0]; j++)
        {
            GLES20.glGetActiveUniform(i, j, ai1[0], ai2, 0, ai3, 0, ai4, 0, abyte0, 0);
            String s = new String(abyte0, 0, ai2[0]);
            hashmap.put(s, new f(s, GLES20.glGetUniformLocation(i, s), ai3[0], ai4[0]));
        }

        return hashmap;
    }

    private static void a(f f1)
    {
        switch (f1.b())
        {
        default:
            throw new IllegalStateException("Unrecognized type of uniform");

        case 5126: 
            GLES20.glUniform1fv(f1.a(), 1, f1.d());
            return;

        case 35664: 
            GLES20.glUniform2fv(f1.a(), 1, f1.d());
            return;

        case 35665: 
            GLES20.glUniform3fv(f1.a(), 1, f1.d());
            return;

        case 35666: 
            GLES20.glUniform4fv(f1.a(), 1, f1.d());
            return;

        case 5124: 
        case 35670: 
        case 35678: 
        case 35680: 
            GLES20.glUniform1iv(f1.a(), 1, f1.c());
            return;

        case 35667: 
        case 35671: 
            GLES20.glUniform2iv(f1.a(), 1, f1.c());
            return;

        case 35668: 
        case 35672: 
            GLES20.glUniform3iv(f1.a(), 1, f1.c());
            return;

        case 35669: 
        case 35673: 
            GLES20.glUniform4iv(f1.a(), 1, f1.c());
            return;

        case 35674: 
            GLES20.glUniformMatrix2fv(f1.a(), 1, false, f1.d());
            return;

        case 35675: 
            GLES20.glUniformMatrix3fv(f1.a(), 1, false, f1.d());
            return;

        case 35676: 
            GLES20.glUniformMatrix4fv(f1.a(), 1, false, f1.d());
            break;
        }
    }

    private static Map b(int i)
    {
        int ai[] = new int[1];
        int ai1[] = new int[1];
        int ai2[] = new int[1];
        int ai3[] = new int[1];
        int ai4[] = new int[1];
        GLES20.glGetProgramiv(i, 35721, ai, 0);
        GLES20.glGetProgramiv(i, 35722, ai1, 0);
        ai1[0] = Math.max(ai1[0], 256);
        byte abyte0[] = new byte[ai1[0]];
        HashMap hashmap = new HashMap();
        for (int j = 0; j < ai[0]; j++)
        {
            GLES20.glGetActiveAttrib(i, j, ai1[0], ai2, 0, ai3, 0, ai4, 0, abyte0, 0);
            String s = new String(abyte0, 0, ai2[0]);
            hashmap.put(s, new a(s, GLES20.glGetAttribLocation(i, s), ai3[0], ai4[0]));
        }

        return hashmap;
    }

    private void c()
    {
        Iterator iterator = c.entrySet().iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            int j;
            if (((f)entry.getValue()).b() == 35678 && f.containsKey(entry.getKey()))
            {
                GLES20.glUniform1i(((f)entry.getValue()).a(), i);
                GLES20.glActiveTexture(33984 + i);
                GLES20.glBindTexture(3553, com.instagram.filterkit.b.d.a((d)f.get(entry.getKey())));
                GLES20.glTexParameteri(3553, 10241, com.instagram.filterkit.b.c.a(com.instagram.filterkit.b.d.b((d)f.get(entry.getKey()))));
                GLES20.glTexParameteri(3553, 10240, com.instagram.filterkit.b.c.a(com.instagram.filterkit.b.d.b((d)f.get(entry.getKey()))));
                j = i + 1;
            } else
            {
                j = i;
            }
            i = j;
        }
    }

    private void d()
    {
        for (Iterator iterator = e.iterator(); iterator.hasNext(); a((f)iterator.next())) { }
        e.clear();
    }

    public final int a()
    {
        return b;
    }

    public final void a(String s, int i)
    {
        f.put(s, new d(this, i, c.b));
    }

    public final void a(String s, int i, c c1)
    {
        f.put(s, new d(this, i, c1));
    }

    public final void a(String s, FloatBuffer floatbuffer)
    {
        f f1 = (f)c.get(s);
        if (f1 != null)
        {
            f1.a(floatbuffer);
            e.add(f1);
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Uniform named ")).append(s).append(" not found in program").toString());
        }
    }

    public final void a(String s, IntBuffer intbuffer)
    {
        f f1 = (f)c.get(s);
        if (f1 != null)
        {
            f1.a(intbuffer);
            e.add(f1);
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Uniform named ")).append(s).append(" not found in program").toString());
        }
    }

    public final boolean a(String s, Buffer buffer)
    {
        if (d.containsKey(s))
        {
            int i = a(s).a();
            GLES20.glVertexAttribPointer(i, 2, 5126, false, 8, buffer);
            GLES20.glEnableVertexAttribArray(i);
            return true;
        } else
        {
            Class _tmp = a;
            String.format("Attribute with name %s not found in program.", new Object[] {
                s
            });
            return false;
        }
    }

    public final void b()
    {
        GLES20.glUseProgram(b);
        d();
        c();
    }

}
