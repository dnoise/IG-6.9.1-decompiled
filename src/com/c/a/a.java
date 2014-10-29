// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.c.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.c.a:
//            c, b, j, d, 
//            f, h, g

public final class a
    implements Closeable
{

    static final Pattern a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new c();
    final ThreadPoolExecutor b;
    private final File c;
    private final File d;
    private final File e;
    private final File f;
    private final int g = 0;
    private long h;
    private final int i = 1;
    private long j;
    private Writer k;
    private final LinkedHashMap l = new LinkedHashMap(0, 0.75F, true);
    private int m;
    private long n;
    private final Callable o = new b(this);

    private a(File file, int i1, int j1, long l1)
    {
        j = 0L;
        n = 0L;
        b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        c = file;
        d = new File(file, "journal");
        e = new File(file, "journal.tmp");
        f = new File(file, "journal.bkp");
        h = l1;
    }

    public static a a(File file, long l1)
    {
        a a1;
        if (l1 <= 0L)
        {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file1 = new File(file, "journal.bkp");
        if (file1.exists())
        {
            File file2 = new File(file, "journal");
            if (file2.exists())
            {
                file1.delete();
            } else
            {
                a(file1, file2, false);
            }
        }
        a1 = new a(file, 0, 1, l1);
        if (!a1.d.exists())
        {
            break MISSING_BLOCK_LABEL_188;
        }
        a1.c();
        a1.d();
        a1.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(a1.d, true), j.a));
        return a1;
        IOException ioexception;
        ioexception;
        System.out.println((new StringBuilder("DiskLruCache ")).append(file).append(" is corrupt: ").append(ioexception.getMessage()).append(", removing").toString());
        a1.i();
        file.mkdirs();
        a a2 = new a(file, 0, 1, l1);
        a2.e();
        return a2;
    }

    static Writer a(a a1)
    {
        return a1.k;
    }

    static void a(a a1, d d1, boolean flag)
    {
        a1.a(d1, flag);
    }

    private void a(d d1, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        f f1;
        f1 = com.c.a.d.a(d1);
        if (com.c.a.f.b(f1) != null && com.c.a.f.b(f1) != d1)
        {
            throw new IllegalStateException();
        }
        break MISSING_BLOCK_LABEL_38;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i1 = 0;
        if (!flag) goto _L2; else goto _L1
_L1:
        boolean flag1 = com.c.a.f.e(f1);
        i1 = 0;
        if (flag1) goto _L2; else goto _L3
_L3:
        int j1 = 0;
_L7:
        int k1 = i;
        i1 = 0;
        if (j1 >= k1) goto _L2; else goto _L4
_L4:
        if (!com.c.a.d.b(d1)[j1])
        {
            com.c.a.d.c(d1);
            throw new IllegalStateException((new StringBuilder("Newly created entry didn't create value for index ")).append(j1).toString());
        }
        if (f1.b(j1).exists()) goto _L6; else goto _L5
_L5:
        com.c.a.d.c(d1);
_L8:
        this;
        JVM INSTR monitorexit ;
        return;
_L6:
        j1++;
          goto _L7
_L2:
        long l1;
        File file;
        File file1;
        long l2;
        long l3;
        for (; i1 >= i; i1++)
        {
            break MISSING_BLOCK_LABEL_243;
        }

        file = f1.b(i1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_235;
        }
        if (file.exists())
        {
            file1 = f1.a(i1);
            file.renameTo(file1);
            l2 = com.c.a.f.c(f1)[i1];
            l3 = file1.length();
            com.c.a.f.c(f1)[i1] = l3;
            j = l3 + (j - l2);
        }
        break MISSING_BLOCK_LABEL_433;
        a(file);
        break MISSING_BLOCK_LABEL_433;
        m = 1 + m;
        com.c.a.f.a(f1, null);
        if (!(flag | com.c.a.f.e(f1)))
        {
            break MISSING_BLOCK_LABEL_384;
        }
        com.c.a.f.a(f1);
        k.write((new StringBuilder("CLEAN ")).append(com.c.a.f.d(f1)).append(f1.a()).append('\n').toString());
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_343;
        }
        l1 = n;
        n = 1L + l1;
        com.c.a.f.a(f1, l1);
_L9:
        k.flush();
        if (j > h || f())
        {
            b.submit(o);
        }
          goto _L8
        l.remove(com.c.a.f.d(f1));
        k.write((new StringBuilder("REMOVE ")).append(com.c.a.f.d(f1)).append('\n').toString());
          goto _L9
    }

    private static void a(File file)
    {
        if (file.exists() && !file.delete())
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    private static void a(File file, File file1, boolean flag)
    {
        if (flag)
        {
            a(file1);
        }
        if (!file.renameTo(file1))
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    static OutputStream b()
    {
        return p;
    }

    static void b(a a1)
    {
        a1.h();
    }

    private void c()
    {
        h h1 = new h(new FileInputStream(d), j.a);
        String s = h1.a();
        String s1 = h1.a();
        String s2 = h1.a();
        String s3 = h1.a();
        String s4 = h1.a();
        if (!"libcore.io.DiskLruCache".equals(s) || !"1".equals(s1) || !Integer.toString(g).equals(s2) || !Integer.toString(i).equals(s3) || !"".equals(s4))
        {
            throw new IOException((new StringBuilder("unexpected journal header: [")).append(s).append(", ").append(s1).append(", ").append(s3).append(", ").append(s4).append("]").toString());
        }
        break MISSING_BLOCK_LABEL_184;
        Exception exception;
        exception;
        com.c.a.j.a(h1);
        throw exception;
        int i1 = 0;
_L2:
        e(h1.a());
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        EOFException eofexception;
        eofexception;
        m = i1 - l.size();
        com.c.a.j.a(h1);
        return;
    }

    static boolean c(a a1)
    {
        return a1.f();
    }

    private void d()
    {
        a(e);
        for (Iterator iterator = l.values().iterator(); iterator.hasNext();)
        {
            f f1 = (f)iterator.next();
            if (com.c.a.f.b(f1) == null)
            {
                int j1 = 0;
                while (j1 < i) 
                {
                    j = j + com.c.a.f.c(f1)[j1];
                    j1++;
                }
            } else
            {
                com.c.a.f.a(f1, null);
                for (int i1 = 0; i1 < i; i1++)
                {
                    a(f1.a(i1));
                    a(f1.b(i1));
                }

                iterator.remove();
            }
        }

    }

    static void d(a a1)
    {
        a1.e();
    }

    static int e(a a1)
    {
        a1.m = 0;
        return 0;
    }

    private void e()
    {
        this;
        JVM INSTR monitorenter ;
        BufferedWriter bufferedwriter;
        if (k != null)
        {
            k.close();
        }
        bufferedwriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(e), j.a));
        Iterator iterator;
        bufferedwriter.write("libcore.io.DiskLruCache");
        bufferedwriter.write("\n");
        bufferedwriter.write("1");
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(g));
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(i));
        bufferedwriter.write("\n");
        bufferedwriter.write("\n");
        iterator = l.values().iterator();
_L1:
        f f1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_246;
            }
            f1 = (f)iterator.next();
            if (com.c.a.f.b(f1) == null)
            {
                break MISSING_BLOCK_LABEL_205;
            }
            bufferedwriter.write((new StringBuilder("DIRTY ")).append(com.c.a.f.d(f1)).append('\n').toString());
        } while (true);
        Exception exception1;
        exception1;
        bufferedwriter.close();
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        bufferedwriter.write((new StringBuilder("CLEAN ")).append(com.c.a.f.d(f1)).append(f1.a()).append('\n').toString());
          goto _L1
        bufferedwriter.close();
        if (d.exists())
        {
            a(d, f, true);
        }
        a(e, d, false);
        f.delete();
        k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d, true), j.a));
        this;
        JVM INSTR monitorexit ;
    }

    private void e(String s)
    {
        int i1;
        int j1;
        int k1;
        i1 = s.indexOf(' ');
        if (i1 == -1)
        {
            throw new IOException((new StringBuilder("unexpected journal line: ")).append(s).toString());
        }
        j1 = i1 + 1;
        k1 = s.indexOf(' ', j1);
        if (k1 != -1) goto _L2; else goto _L1
_L1:
        String s2;
        s2 = s.substring(j1);
        if (i1 != 6 || !s.startsWith("REMOVE"))
        {
            break MISSING_BLOCK_LABEL_286;
        }
        l.remove(s2);
_L4:
        return;
_L2:
        String s1 = s.substring(j1, k1);
_L5:
        f f1 = (f)l.get(s1);
        if (f1 == null)
        {
            f1 = new f(this, s1, (byte)0);
            l.put(s1, f1);
        }
        if (k1 != -1 && i1 == 5 && s.startsWith("CLEAN"))
        {
            String as[] = s.substring(k1 + 1).split(" ");
            com.c.a.f.a(f1);
            com.c.a.f.a(f1, null);
            com.c.a.f.a(f1, as);
            return;
        }
        if (k1 == -1 && i1 == 5 && s.startsWith("DIRTY"))
        {
            com.c.a.f.a(f1, new d(this, f1, (byte)0));
            return;
        }
        if (k1 == -1 && i1 == 4 && s.startsWith("READ")) goto _L4; else goto _L3
_L3:
        throw new IOException((new StringBuilder("unexpected journal line: ")).append(s).toString());
        s1 = s2;
          goto _L5
    }

    static int f(a a1)
    {
        return a1.i;
    }

    private d f(String s)
    {
        this;
        JVM INSTR monitorenter ;
        f f1;
        g();
        g(s);
        f1 = (f)l.get(s);
        if (-1L == -1L) goto _L2; else goto _L1
_L1:
        if (f1 == null) goto _L4; else goto _L3
_L3:
        long l1 = com.c.a.f.f(f1);
        if (l1 == -1L) goto _L2; else goto _L4
_L4:
        d d2 = null;
_L7:
        this;
        JVM INSTR monitorexit ;
        return d2;
_L2:
        if (f1 != null) goto _L6; else goto _L5
_L5:
        f f3;
        f3 = new f(this, s, (byte)0);
        l.put(s, f3);
        f f2 = f3;
_L9:
        d2 = new d(this, f2, (byte)0);
        com.c.a.f.a(f2, d2);
        k.write((new StringBuilder("DIRTY ")).append(s).append('\n').toString());
        k.flush();
          goto _L7
        Exception exception;
        exception;
        throw exception;
_L6:
        d d1 = com.c.a.f.b(f1);
label0:
        {
            if (d1 == null)
            {
                break label0;
            }
            d2 = null;
        }
        if (true) goto _L7; else goto _L8
_L8:
        f2 = f1;
          goto _L9
    }

    private boolean f()
    {
        return m >= 2000 && m >= l.size();
    }

    static File g(a a1)
    {
        return a1.c;
    }

    private void g()
    {
        if (k == null)
        {
            throw new IllegalStateException("cache is closed");
        } else
        {
            return;
        }
    }

    private static void g(String s)
    {
        if (!a.matcher(s).matches())
        {
            throw new IllegalArgumentException((new StringBuilder("keys must match regex [a-z0-9_-]{1,64}: \"")).append(s).append("\"").toString());
        } else
        {
            return;
        }
    }

    static LinkedHashMap h(a a1)
    {
        return a1.l;
    }

    private void h()
    {
        while (j > h) 
        {
            d((String)((java.util.Map.Entry)l.entrySet().iterator().next()).getKey());
        }
    }

    private void i()
    {
        close();
        com.c.a.j.a(c);
    }

    public final long a()
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = j;
        this;
        JVM INSTR monitorexit ;
        return l1;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        f f1;
        g();
        g(s);
        f1 = (f)l.get(s);
        if (f1 == null) goto _L2; else goto _L1
_L1:
        boolean flag = com.c.a.f.e(f1);
        if (!flag) goto _L2; else goto _L3
_L3:
        boolean flag1 = true;
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        flag1 = false;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public final g b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        f f1;
        g();
        g(s);
        f1 = (f)l.get(s);
        if (f1 != null) goto _L2; else goto _L1
_L1:
        g g1 = null;
_L8:
        this;
        JVM INSTR monitorexit ;
        return g1;
_L2:
        if (!com.c.a.f.e(f1))
        {
            g1 = null;
            continue; /* Loop/switch isn't completed */
        }
        InputStream ainputstream[] = new InputStream[i];
        int i1 = 0;
_L4:
        if (i1 >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        ainputstream[i1] = new FileInputStream(f1.a(i1));
        i1++;
        if (true) goto _L4; else goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        int j1 = 0;
_L6:
        if (j1 >= i || ainputstream[j1] == null)
        {
            break; /* Loop/switch isn't completed */
        }
        com.c.a.j.a(ainputstream[j1]);
        j1++;
        if (true) goto _L6; else goto _L5
_L3:
        m = 1 + m;
        k.append((new StringBuilder("READ ")).append(s).append('\n').toString());
        if (f())
        {
            b.submit(o);
        }
        g1 = new g(this, s, com.c.a.f.f(f1), ainputstream, com.c.a.f.c(f1), (byte)0);
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
_L5:
        g1 = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public final d c(String s)
    {
        return f(s);
    }

    public final void close()
    {
        this;
        JVM INSTR monitorenter ;
        Writer writer = k;
        if (writer != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Iterator iterator = (new ArrayList(l.values())).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            f f1 = (f)iterator.next();
            if (com.c.a.f.b(f1) != null)
            {
                com.c.a.d.c(com.c.a.f.b(f1));
            }
        } while (true);
        break MISSING_BLOCK_LABEL_76;
        Exception exception;
        exception;
        throw exception;
        h();
        k.close();
        k = null;
          goto _L1
    }

    public final boolean d(String s)
    {
        this;
        JVM INSTR monitorenter ;
        f f1;
        g();
        g(s);
        f1 = (f)l.get(s);
        if (f1 == null) goto _L2; else goto _L1
_L1:
        d d1 = com.c.a.f.b(f1);
        int i1 = 0;
        if (d1 == null) goto _L3; else goto _L2
_L2:
        boolean flag = false;
_L7:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L5:
        j = j - com.c.a.f.c(f1)[i1];
        com.c.a.f.c(f1)[i1] = 0L;
        i1++;
_L3:
        File file;
        if (i1 >= i)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        file = f1.a(i1);
        if (!file.exists() || file.delete()) goto _L5; else goto _L4
_L4:
        throw new IOException((new StringBuilder("failed to delete ")).append(file).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        m = 1 + m;
        k.append((new StringBuilder("REMOVE ")).append(s).append('\n').toString());
        l.remove(s);
        if (f())
        {
            b.submit(o);
        }
        flag = true;
        if (true) goto _L7; else goto _L6
_L6:
    }

}
