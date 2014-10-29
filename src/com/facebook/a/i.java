// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.Time;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.facebook.a.a.b;
import com.facebook.a.b.c;
import com.facebook.a.c.f;
import com.facebook.a.c.g;
import com.facebook.a.c.h;
import com.facebook.a.c.k;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;

// Referenced classes of package com.facebook.a:
//            l, a, d, k, 
//            r, p, m, c, 
//            h, o, g, e, 
//            j, q, f, s, 
//            n

public final class i
    implements Thread.UncaughtExceptionHandler
{

    private static AtomicBoolean D = new AtomicBoolean(false);
    private static final Pattern c = Pattern.compile("^\\d+-[a-zA-Z0-9_\\-]+-(\\d+)\\.(temp_stacktrace|stacktrace)$");
    private static final l j[];
    private static i n;
    private static int q = 5;
    private static int r = 20;
    private boolean A;
    private boolean B;
    private n C;
    Map a;
    Map b;
    private long d;
    private boolean e;
    private ArrayList f;
    private final Map g = new HashMap();
    private final Map h = new HashMap();
    private g i;
    private boolean k;
    private final Object l = new Object();
    private Thread.UncaughtExceptionHandler m;
    private Context o;
    private File p;
    private final k s;
    private String t;
    private String u;
    private volatile String v;
    private volatile boolean w;
    private boolean x;
    private String y;
    private final Time z = new Time();

    public i()
    {
        d = 51200L;
        e = false;
        f = new ArrayList();
        a = new ConcurrentHashMap();
        b = new ConcurrentHashMap();
        k = false;
        p = null;
        s = new k(r);
        w = false;
        A = false;
    }

    private int a(Context context, l l1)
    {
        int i1;
        String as[];
        i1 = 0;
        a.a;
        as = a(com.facebook.a.l.a(l1), com.facebook.a.l.b(l1));
        if (as == null || as.length <= 0) goto _L2; else goto _L1
_L1:
        int j1;
        d d1;
        String s2;
        int i2;
        Arrays.sort(as);
        d1 = new d();
        int k1;
        try
        {
            a("crash attachment", ((Throwable) (new com.facebook.a.k(this, (byte)0))), b, d1, null, null);
        }
        catch (Exception exception)
        {
            String s1 = (new StringBuilder("retrieve exception: ")).append(exception.getMessage()).toString();
            a(r.T, s1, d1, ((Writer) (null)));
        }
        k1 = as.length;
        j1 = 0;
        if (i1 >= k1)
        {
            break MISSING_BLOCK_LABEL_288;
        }
        s2 = as[i1];
        if (j1 < 5)
        {
            break; /* Loop/switch isn't completed */
        }
        b(context, "minidumps", s2);
        i2 = j1;
_L6:
        i1++;
        j1 = i2;
        if (true) goto _L4; else goto _L3
_L4:
        break MISSING_BLOCK_LABEL_75;
_L3:
        d d2 = a(context, s2, l1);
        String s3;
        s3 = "load failed";
        if (d2 == null)
        {
            break MISSING_BLOCK_LABEL_187;
        }
        s3 = (String)d2.get(com.facebook.a.l.c(l1));
        d1.a(r.a, s2.substring(0, s2.lastIndexOf('.')), null);
        d1.a(com.facebook.a.l.c(l1), s3, null);
        d1.a(r.S, "crash attachment", null);
        a(d1);
        b(context, com.facebook.a.l.a(l1), s2);
        i2 = j1 + 1;
        if (true) goto _L6; else goto _L5
_L5:
        c c1;
        c1;
        Log.e(a.a, (new StringBuilder("Failed to send crash attachment report ")).append(s2).toString(), c1);
_L8:
        a.a;
        (new StringBuilder("#checkAndSendCrashAttachments - finish, sent: ")).append(Integer.toString(j1));
        return j1;
        Throwable throwable;
        throwable;
        Log.e(a.a, (new StringBuilder("Failed on crash attachment file ")).append(s2).toString(), throwable);
        b(context, com.facebook.a.l.a(l1), s2);
        continue; /* Loop/switch isn't completed */
_L2:
        j1 = 0;
        if (true) goto _L8; else goto _L7
_L7:
    }

    static Context a(i i1)
    {
        return i1.o;
    }

    private d a(Context context, String s1)
    {
        return a(context, s1, l.a, d);
    }

    private d a(Context context, String s1, l l1)
    {
        return a(context, s1, l1, com.facebook.a.l.d(l1));
    }

    private d a(Context context, String s1, l l1, long l2)
    {
        d d1;
        File file;
        FileInputStream fileinputstream;
        boolean flag;
        d1 = new d();
        file = a(context, com.facebook.a.l.a(l1), s1);
        if (System.currentTimeMillis() - file.lastModified() > 0x5265c00L)
        {
            a.a;
            (new StringBuilder("crash report ")).append(s1).append(" was too old; deleted");
            b(context, com.facebook.a.l.a(l1), s1);
            return null;
        }
        if (s1.endsWith(".temp_stacktrace") && System.currentTimeMillis() - file.lastModified() < 0x927c0L)
        {
            a.a;
            (new StringBuilder("temp file ")).append(s1).append(" is too recent; skipping");
            return null;
        }
        if (file.length() > l2)
        {
            a.a;
            (new StringBuilder()).append(file.length()).append("-byte crash report ").append(s1).append(" exceeded max size of ").append(l2).append(" bytes; deleted");
            b(context, com.facebook.a.l.a(l1), s1);
            return null;
        }
        fileinputstream = new FileInputStream(file);
        flag = false;
        l l3 = l.a;
        flag = false;
        if (l1 != l3) goto _L2; else goto _L1
_L1:
        d1.a(fileinputstream);
_L6:
        fileinputstream.close();
_L4:
        d1.put(r.R, s1);
        b(d1);
        return d1;
_L2:
        String s2 = a(((InputStream) (fileinputstream)), (int)file.length());
        d1.put(com.facebook.a.l.c(l1), s2);
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        d1.put(r.T, (new StringBuilder("throwable: ")).append(throwable.getMessage()).toString());
        Log.e(a.a, (new StringBuilder("Could not load crash report:")).append(s1).append(" ").append(throwable).toString());
        fileinputstream.close();
        flag = true;
        context.deleteFile(s1);
        Log.e(a.a, (new StringBuilder("Crash report:")).append(s1).append(" deleted").toString());
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        if (!flag)
        {
            fileinputstream.close();
        }
        throw exception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static i a()
    {
        if (n == null)
        {
            n = new i();
        }
        return n;
    }

    private m a(Throwable throwable, Map map, r ar[], boolean flag)
    {
        d d1;
        File file;
        File file1;
        RandomAccessFile randomaccessfile;
        RandomAccessFile randomaccessfile1;
        Writer writer;
        RandomAccessFile randomaccessfile2;
        Throwable throwable1 = c(throwable);
        Class class1 = throwable1.getClass();
        if (!d(throwable1))
        {
            return null;
        }
        d1 = new d();
        String s1;
        String s2;
        String s3;
        FileChannel filechannel2;
        Writer writer1;
        if (throwable instanceof p)
        {
            s1 = ((p)throwable).a();
        } else
        {
            s1 = "crash";
        }
        a(a.a, (new StringBuilder("Handling exception for ")).append(s1).toString(), throwable, ((String) (null)));
        a.a;
        s2 = a(class1, ".temp_stacktrace");
        file = a(o, "acra-reports", s2);
        s3 = a(class1, ".stacktrace");
        file1 = a(o, "acra-reports", s3);
        randomaccessfile = null;
        if (A)
        {
            p.renameTo(file);
        }
        randomaccessfile2 = new RandomAccessFile(file, "rw");
        writer1 = com.facebook.a.d.a(new FileOutputStream(randomaccessfile2.getFD()));
        writer = writer1;
        randomaccessfile1 = randomaccessfile2;
_L1:
        a(r.R, s3, d1, writer);
        a(r.S, class1.getName(), d1, writer);
        a(a(throwable), throwable, ar, d1, writer, map);
        Exception exception;
        if (randomaccessfile1 != null)
        {
            try
            {
                filechannel2 = randomaccessfile1.getChannel();
                filechannel2.truncate(filechannel2.position());
                randomaccessfile1.close();
                file.renameTo(file1);
            }
            catch (Exception exception7)
            {
                Log.e(a.a, "An error occurred while deleting closing the report file ...", exception7);
            }
        }
_L2:
        if (flag)
        {
            Exception exception1;
            Exception exception2;
            FileChannel filechannel;
            Exception exception3;
            Exception exception4;
            Exception exception5;
            Exception exception6;
            m m1;
            FileChannel filechannel1;
            if (w)
            {
                m1 = new m(this, d1);
            } else
            {
                l al[] = new l[1];
                al[0] = l.a;
                m1 = new m(this, al);
            }
            a.a;
            m1.start();
            return m1;
        } else
        {
            a.a;
            return null;
        }
        exception;
_L4:
        Log.e(a.a, "An error occurred while creating the report file ...", exception);
        w = true;
        randomaccessfile1 = randomaccessfile;
        writer = null;
          goto _L1
        exception3;
        Log.e(a.a, "An error occurred while gathering crash data ...", exception3);
        a(r.N, a(((Throwable) (exception3))), d1, writer);
        Log.e(a.a, "An error occurred while gathering crash data ...", exception3);
_L3:
        if (randomaccessfile1 != null)
        {
            try
            {
                filechannel1 = randomaccessfile1.getChannel();
                filechannel1.truncate(filechannel1.position());
                randomaccessfile1.close();
                file.renameTo(file1);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception6)
            {
                Log.e(a.a, "An error occurred while deleting closing the report file ...", exception6);
            }
        }
          goto _L2
        exception5;
        Log.e(a.a, "An error occurred while gathering internal crash data ...", exception5);
        a(r.N, "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n", d1, writer);
        Log.e(a.a, "An error occurred while gathering crash data ...", exception3);
          goto _L3
        exception1;
        if (randomaccessfile1 != null)
        {
            try
            {
                filechannel = randomaccessfile1.getChannel();
                filechannel.truncate(filechannel.position());
                randomaccessfile1.close();
                file.renameTo(file1);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception2)
            {
                Log.e(a.a, "An error occurred while deleting closing the report file ...", exception2);
            }
        }
        throw exception1;
        exception4;
        Log.e(a.a, "An error occurred while gathering crash data ...", exception3);
        throw exception4;
        exception;
        randomaccessfile = randomaccessfile2;
          goto _L4
    }

    private transient m a(l al[])
    {
        m m1 = new m(this, al);
        m1.start();
        return m1;
    }

    private static File a(Context context, String s1, String s2)
    {
        return new File(context.getDir(s1, 0), s2);
    }

    private static String a(long l1)
    {
        Time time = new Time();
        time.set(l1);
        return time.format3339(false);
    }

    private static String a(Display display)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        display.getMetrics(displaymetrics);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("width=").append(display.getWidth()).append('\n').append("height=").append(display.getHeight()).append('\n').append("pixelFormat=").append(display.getPixelFormat()).append('\n').append("refreshRate=").append(display.getRefreshRate()).append("fps\nmetrics.density=x").append(displaymetrics.density).append('\n').append("metrics.scaledDensity=x").append(displaymetrics.scaledDensity).append('\n').append("metrics.widthPixels=").append(displaymetrics.widthPixels).append('\n').append("metrics.heightPixels=").append(displaymetrics.heightPixels).append('\n').append("metrics.xdpi=").append(displaymetrics.xdpi).append('\n').append("metrics.ydpi=").append(displaymetrics.ydpi);
        return stringbuilder.toString();
    }

    private static String a(InputStream inputstream, int i1)
    {
        byte abyte0[];
        ByteArrayOutputStream bytearrayoutputstream;
        int j1 = 0;
        abyte0 = new byte[i1];
        int k1 = 0;
        do
        {
            if (i1 - k1 <= 0)
            {
                break;
            }
            j1 = inputstream.read(abyte0, k1, i1 - k1);
            if (j1 == -1)
            {
                break;
            }
            k1 += j1;
        } while (true);
        if (j1 == 0)
        {
            return "";
        }
        bytearrayoutputstream = new ByteArrayOutputStream();
        GZIPOutputStream gzipoutputstream = new GZIPOutputStream(bytearrayoutputstream);
        String s1;
        gzipoutputstream.write(abyte0, 0, abyte0.length);
        gzipoutputstream.finish();
        s1 = Base64.encodeToString(bytearrayoutputstream.toByteArray(), 0);
        gzipoutputstream.close();
        return s1;
        Exception exception;
        exception;
        gzipoutputstream = null;
_L2:
        if (gzipoutputstream != null)
        {
            gzipoutputstream.close();
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String a(Class class1, String s1)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(Long.toString(System.currentTimeMillis())).append("-").append(class1.getSimpleName());
        String s2;
        if (t != null)
        {
            s2 = (new StringBuilder("-")).append(t).toString();
        } else
        {
            s2 = "";
        }
        return stringbuilder.append(s2).append(s1).toString();
    }

    private static String a(Throwable throwable)
    {
        if (throwable == null)
        {
            throwable = new Exception("Report requested by developer");
        }
        StringWriter stringwriter = new StringWriter();
        PrintWriter printwriter = new PrintWriter(stringwriter);
        throwable.printStackTrace(printwriter);
        printwriter.close();
        return stringwriter.toString();
    }

    private String a(Map map, Throwable throwable)
    {
        StringBuilder stringbuilder = new StringBuilder();
        b(stringbuilder, a);
        if (map != null)
        {
            b(stringbuilder, map);
        }
        a(stringbuilder, b);
        return stringbuilder.toString();
    }

    private void a(Context context)
    {
        int i1;
        String as[];
        String s1;
        int j1;
        int k1;
        i1 = 0;
        as = a("acra-reports", new String[] {
            ".stacktrace", ".temp_stacktrace"
        });
        Arrays.sort(as);
        s1 = h();
        j1 = as.length;
        k1 = 0;
_L2:
        String s2;
        if (k1 >= j1)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        s2 = as[k1];
        if (i1 < 5)
        {
            break; /* Loop/switch isn't completed */
        }
        b(context, "acra-reports", s2);
_L3:
        k1++;
        if (true) goto _L2; else goto _L1
_L1:
        a.a;
        d d1 = a(context, s2);
        if (d1 == null)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        d1.put(r.R, s2);
        d1.put(r.L, s1);
        a.a;
        a(d1);
        b(context, "acra-reports", s2);
        i1++;
          goto _L3
        RuntimeException runtimeexception;
        runtimeexception;
        Log.e(a.a, "Failed to send crash reports", runtimeexception);
        b(context, "acra-reports", s2);
        return;
        IOException ioexception;
        ioexception;
        Log.e(a.a, (new StringBuilder("Failed to load crash report for ")).append(s2).toString(), ioexception);
        b(context, "acra-reports", s2);
        return;
        c c1;
        c1;
        Log.e(a.a, (new StringBuilder("Failed to send crash report for ")).append(s2).toString(), c1);
        return;
    }

    private void a(Context context, Throwable throwable, r ar[], d d1, Writer writer)
    {
        List list = Arrays.asList(ar);
        if (list.contains(r.a))
        {
            a(r.a, UUID.randomUUID().toString(), d1, writer);
        }
        if (list.contains(r.J))
        {
            a(r.J, i(), d1, writer);
        }
        if (list.contains(r.u))
        {
            a(r.u, z.format3339(false), d1, writer);
        }
        if (list.contains(r.O))
        {
            a(r.O, Long.toString(k()), d1, writer);
        }
        if (list.contains(r.P))
        {
            a(r.P, Long.toString(l()), d1, writer);
        }
        if (list.contains(r.s))
        {
            android.content.res.Configuration configuration = context.getResources().getConfiguration();
            a(r.s, com.facebook.a.c.a(configuration), d1, writer);
        }
        if (list.contains(r.p))
        {
            String s3 = Long.toString(n());
            a(r.p, s3, d1, writer);
        }
        if (list.contains(r.w))
        {
            a(r.w, com.facebook.a.h.a(context), d1, writer);
        }
        if (list.contains(r.v))
        {
            Time time = new Time();
            time.setToNow();
            a(r.v, time.format3339(false), d1, writer);
        }
        if (list.contains(r.M))
        {
            com.facebook.a.c.i i1;
            String s1;
            String s2;
            if (throwable instanceof OutOfMemoryError)
            {
                s2 = s.toString();
            } else
            {
                s2 = s.a(q);
            }
            a(r.M, s2, d1, writer);
        }
        if (list.contains(r.K))
        {
            a(r.K, h(), d1, writer);
        }
        g();
        if (list.contains(r.V))
        {
            a(r.V, String.valueOf(com.facebook.a.c.h.a()), d1, writer);
        }
        if (list.contains(r.W) || list.contains(r.X))
        {
            i1 = com.facebook.a.c.h.b();
            if (i1 != null)
            {
                if (list.contains(r.W))
                {
                    a(r.W, i1.a, d1, writer);
                }
                if (list.contains(r.X))
                {
                    a(r.X, i1.b, d1, writer);
                }
            }
        }
        if (android.os.Build.VERSION.SDK_INT >= 16 && B)
        {
            if (list.contains(r.y))
            {
                a(r.y, com.facebook.a.o.a(null), d1, writer);
            }
            if (list.contains(r.z))
            {
                a(r.z, com.facebook.a.o.a("events"), d1, writer);
            }
            if (list.contains(r.A))
            {
                a(r.A, com.facebook.a.o.a("radio"), d1, writer);
            }
            if (list.contains(r.x))
            {
                s1 = com.facebook.a.g.a(o, com.facebook.a.a.a().a());
                a(r.x, s1, d1, writer);
            }
        }
        if (list.contains(r.ad) && android.os.Build.VERSION.SDK_INT >= 11)
        {
            a(r.ad, com.facebook.a.h.b(context), d1, writer);
        }
    }

    private void a(d d1)
    {
        Iterator iterator;
        boolean flag;
        iterator = f.iterator();
        flag = false;
_L2:
        com.facebook.a.b.b b1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        b1 = (com.facebook.a.b.b)iterator.next();
        b1.a(d1);
        flag = true;
        continue; /* Loop/switch isn't completed */
        c c1;
        c1;
        if (!flag)
        {
            throw c1;
        }
        a.a;
        (new StringBuilder("ReportSender of class ")).append(b1.getClass().getName()).append(" failed but other senders completed their task. ACRA will not send this report again.");
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a(d d1, Writer writer)
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = p().entrySet().iterator(); iterator.hasNext(); a((r)entry.getKey(), (String)entry.getValue(), d1, writer))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    private void a(r r1, String s1, d d1, Writer writer)
    {
        if (w)
        {
            writer = null;
        }
        try
        {
            d1.a(r1, s1, writer);
            return;
        }
        catch (IOException ioexception)
        {
            w = true;
        }
    }

    private void a(String s1, String s2, Throwable throwable, String s3)
    {
        if (d() != null)
        {
            return;
        } else
        {
            Log.e(s1, s2, throwable);
            return;
        }
    }

    private void a(String s1, Throwable throwable, r ar[], d d1, Writer writer, Map map)
    {
        r ar1[];
        if (ar == null)
        {
            ar1 = com.facebook.a.a.c;
        } else
        {
            ar1 = ar;
        }
        a(com.facebook.a.r.c, e(), d1, writer);
        a(r.r, s1, d1, writer);
        java.util.Map.Entry entry;
        for (Iterator iterator = g.entrySet().iterator(); iterator.hasNext(); a((r)entry.getKey(), (String)entry.getValue(), d1, writer))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        a(o, throwable, ar1, d1, writer);
        a(d1, writer);
        a(r.q, a(map, throwable), d1, writer);
    }

    private static void a(StringBuilder stringbuilder, String s1, String s2)
    {
        String s3;
        String s4;
        if (s1 != null)
        {
            s3 = s1.replace("\n", "\\n");
        } else
        {
            s3 = null;
        }
        s4 = null;
        if (s2 != null)
        {
            s4 = s2.replace("\n", "\\n");
        }
        stringbuilder.append(s3).append(" = ").append(s4).append("\n");
    }

    private static void a(StringBuilder stringbuilder, Map map)
    {
        Iterator iterator = map.entrySet().iterator();
_L2:
        java.util.Map.Entry entry;
        String s1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        entry = (java.util.Map.Entry)iterator.next();
        s1 = (String)entry.getKey();
        String s2 = ((e)entry.getValue()).a();
        if (s2 != null)
        {
            a(stringbuilder, s1, s2);
        }
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        Log.e(a.a, "Caught throwable while getting custom report data", throwable);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private transient String[] a(String s1, String as[])
    {
        String as1[];
        if (o == null)
        {
            Log.e(a.a, "Trying to get ACRA reports but ACRA is not initialized.");
            as1 = new String[0];
        } else
        {
            File file = o.getDir(s1, 0);
            if (file != null)
            {
                String _tmp = a.a;
                (new StringBuilder("Looking for error files in ")).append(file.getAbsolutePath());
                as1 = file.list(new j(this, as));
                if (as1 == null)
                {
                    return new String[0];
                }
            } else
            {
                String _tmp1 = a.a;
                return new String[0];
            }
        }
        return as1;
    }

    private String b(String s1)
    {
        return (String)a.remove(s1);
    }

    private static void b(Context context, String s1, String s2)
    {
        if (!a(context, s1, s2).delete())
        {
            String _tmp = a.a;
        }
    }

    private void b(com.facebook.a.b.b b1)
    {
        f.add(b1);
    }

    private void b(d d1)
    {
        boolean flag;
        String s1;
        if (!c(d1.a(r.R)).equals(t))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s1 = (String)d1.get(r.a);
        if (s1 == null || s1.length() == 0)
        {
            Iterator iterator = g.entrySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (((r)entry.getKey()).equals(r.e))
                {
                    if (!flag)
                    {
                        d1.put((Enum)entry.getKey(), entry.getValue());
                    }
                } else
                if (d1.get(entry.getKey()) == null)
                {
                    d1.put((Enum)entry.getKey(), entry.getValue());
                }
            } while (true);
        }
        String s2 = e();
        String s3 = (String)d1.get(com.facebook.a.r.c);
        if (!TextUtils.isEmpty(s2) && TextUtils.isEmpty(s3))
        {
            d1.put(com.facebook.a.r.c, s2);
        }
    }

    private static void b(StringBuilder stringbuilder, Map map)
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); a(stringbuilder, (String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    private static r[] b(Throwable throwable)
    {
        if (throwable instanceof OutOfMemoryError)
        {
            return com.facebook.a.a.c;
        } else
        {
            return b;
        }
    }

    private static String c(String s1)
    {
        if (s1 != null)
        {
            Matcher matcher = c.matcher(s1);
            if (matcher.matches())
            {
                return matcher.group(1);
            }
        }
        return "";
    }

    private static Throwable c(Throwable throwable)
    {
        if (!(throwable instanceof p))
        {
            while (throwable.getCause() != null) 
            {
                throwable = throwable.getCause();
            }
        }
        return throwable;
    }

    private n d()
    {
        return C;
    }

    private boolean d(Throwable throwable)
    {
label0:
        {
            synchronized (l)
            {
                if (!k)
                {
                    break label0;
                }
            }
            return false;
        }
        if (throwable instanceof OutOfMemoryError)
        {
            k = true;
        }
        obj;
        JVM INSTR monitorexit ;
        return true;
        exception;
        throw exception;
    }

    private String e()
    {
        return v;
    }

    private String f()
    {
        if (x)
        {
            return y;
        }
        y = null;
        int i1 = Process.myPid();
        ActivityManager activitymanager = (ActivityManager)o.getSystemService("activity");
        if (activitymanager == null)
        {
            return y;
        }
        List list = activitymanager.getRunningAppProcesses();
        if (list == null)
        {
            return y;
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
            if (runningappprocessinfo.pid != i1)
            {
                continue;
            }
            y = runningappprocessinfo.processName;
            break;
        } while (true);
        x = true;
        return y;
    }

    private void g()
    {
        y = null;
        x = false;
    }

    private String h()
    {
        String s1 = f();
        if (s1 == null)
        {
            s1 = "n/a";
        }
        return s1;
    }

    private String i()
    {
        String s1;
        BufferedReader bufferedreader;
        s1 = f();
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        bufferedreader = null;
        BufferedReader bufferedreader1 = new BufferedReader(new FileReader("/proc/self/cmdline"), 128);
        String s4 = bufferedreader1.readLine();
        String s2;
        s2 = s4;
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        String s5 = s2.trim();
        s2 = s5;
_L1:
        IOException ioexception;
        String s3;
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            catch (IOException ioexception1)
            {
                Log.e(a.a, "Failed to close file.", ioexception1);
            }
        }
_L3:
        if (s2 == null)
        {
            s2 = "";
        }
        return s2;
        ioexception;
        s3 = s1;
_L2:
        Log.e(a.a, "Failed to get process name.", ioexception);
        s2 = s3;
        bufferedreader1 = bufferedreader;
          goto _L1
        ioexception;
        bufferedreader = bufferedreader1;
        s3 = s1;
          goto _L2
        IOException ioexception2;
        ioexception2;
        bufferedreader = bufferedreader1;
        s3 = s2;
        ioexception = ioexception2;
          goto _L2
        s2 = s1;
          goto _L3
    }

    private static String j()
    {
        String s1 = Build.TAGS;
        if (s1 != null && s1.contains("test-keys"))
        {
            return "yes";
        }
        if ((new File("/system/app/Superuser.apk")).exists())
        {
            return "yes";
        }
        break MISSING_BLOCK_LABEL_54;
        Exception exception;
        exception;
        Log.e(a.a, "Failed to find Superuser.pak", exception);
        String as[];
        int i1;
        int j1;
        Map map = System.getenv();
        if (map == null)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        as = ((String)map.get("PATH")).split(":");
        i1 = as.length;
        j1 = 0;
_L3:
        if (j1 >= i1) goto _L2; else goto _L1
_L1:
        String s3;
        String s2 = as[j1];
        s3 = (new StringBuilder()).append(s2).append("/su").toString();
        if ((new File(s3)).exists())
        {
            return "yes";
        }
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Log.e(a.a, "Failed to find su binary in the PATH", exception1);
        j1++;
          goto _L3
_L2:
        return "no";
    }

    private static long k()
    {
        return Process.getElapsedCpuTime();
    }

    private static long l()
    {
        return SystemClock.elapsedRealtime();
    }

    private void m()
    {
        FileOutputStream fileoutputstream = null;
        if (p.exists()) goto _L2; else goto _L1
_L1:
        FileOutputStream fileoutputstream1;
        byte abyte0[];
        abyte0 = new byte[10240];
        fileoutputstream1 = new FileOutputStream(p);
        int i1 = 0;
_L4:
        if ((long)i1 >= 51200L)
        {
            break; /* Loop/switch isn't completed */
        }
        fileoutputstream1.write(abyte0);
        i1 += 10240;
        if (true) goto _L4; else goto _L3
_L2:
        fileoutputstream1 = null;
_L3:
        if (fileoutputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        fileoutputstream1.close();
_L6:
        return;
        IOException ioexception1;
        ioexception1;
        fileoutputstream1 = null;
_L9:
        Log.e(a.a, "Failed to pre-allocate crash report file", ioexception1);
        if (fileoutputstream1 == null) goto _L6; else goto _L5
_L5:
        try
        {
            fileoutputstream1.close();
            return;
        }
        catch (IOException ioexception2)
        {
            return;
        }
        Exception exception;
        exception;
_L8:
        IOException ioexception3;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
        ioexception3;
        return;
        exception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L8; else goto _L7
_L7:
        ioexception1;
          goto _L9
    }

    private static long n()
    {
        long l1;
        int i1;
        try
        {
            StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
            l1 = statfs.getBlockSize();
            i1 = statfs.getAvailableBlocks();
        }
        catch (Exception exception)
        {
            return -1L;
        }
        return l1 * (long)i1;
    }

    private static long o()
    {
        long l1;
        int i1;
        try
        {
            StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
            l1 = statfs.getBlockSize();
            i1 = statfs.getBlockCount();
        }
        catch (Exception exception)
        {
            return -1L;
        }
        return l1 * (long)i1;
    }

    private Map p()
    {
        Map map = h;
        map;
        JVM INSTR monitorenter ;
        String s1;
        if (!h.isEmpty())
        {
            break MISSING_BLOCK_LABEL_321;
        }
        h.put(r.l, com.facebook.a.q.a(android/os/Build));
        h.put(r.Q, j());
        h.put(r.D, com.facebook.a.c.f.a(o));
        h.put(r.o, Long.toString(o()));
        if (!i.a("android.permission.READ_PHONE_STATE"))
        {
            break MISSING_BLOCK_LABEL_144;
        }
        s1 = ((TelephonyManager)o.getSystemService("phone")).getDeviceId();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        h.put(r.C, s1);
        Display display = ((WindowManager)o.getSystemService("window")).getDefaultDisplay();
        h.put(r.t, a(display));
        h.put(r.G, com.facebook.a.q.b(android/os/Environment));
        h.put(r.F, com.facebook.a.f.a(o));
        h.put(r.H, com.facebook.a.s.a(o));
        h.put(r.I, com.facebook.a.s.b(o));
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            ActivityManager activitymanager = (ActivityManager)o.getSystemService("activity");
            h.put(r.ab, Boolean.toString(activitymanager.isLowRamDevice()));
        }
        h.put(r.ae, q());
        Map map1 = h;
        map;
        JVM INSTR monitorexit ;
        return map1;
        Exception exception;
        exception;
        throw exception;
    }

    private static String q()
    {
        if (android.os.Build.VERSION.SDK_INT < 19)
        {
            return "DALVIK";
        }
        String s1 = System.getProperty("java.boot.class.path");
        if (s1 != null)
        {
            if (s1.contains("/system/framework/core-libart.jar"))
            {
                return "ART";
            }
            if (s1.contains("/system/framework/core.jar"))
            {
                return "DALVIK";
            }
        }
        return "UNKNOWN";
    }

    private void r()
    {
        f.clear();
    }

    public final m a(Throwable throwable, Map map)
    {
        boolean flag;
        if (!(throwable instanceof OutOfMemoryError))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return a(throwable, map, b(throwable), flag);
    }

    public final String a(String s1, String s2)
    {
        if (s2 != null)
        {
            return (String)a.put(s1, s2);
        } else
        {
            return b(s1);
        }
    }

    final void a(Context context, d d1)
    {
        this;
        JVM INSTR monitorenter ;
        a.a;
        String s2;
        String s1 = h();
        d1.put(r.L, s1);
        a(d1);
        s2 = (String)d1.get(r.R);
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        a(context, "acra-reports", s2).delete();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        Log.e(a.a, "Failed to send in-memory crash report: ", exception1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(Context context, boolean flag)
    {
        if (m != null)
        {
            break MISSING_BLOCK_LABEL_407;
        }
        m = Thread.getDefaultUncaughtExceptionHandler();
        B = flag;
        o = context;
        PackageInfo packageinfo = (new g(context)).a();
        boolean flag1;
        if (packageinfo != null)
        {
            t = Integer.toString(packageinfo.versionCode);
            String s1;
            String s2;
            File file;
            String s3;
            if (packageinfo.versionName != null)
            {
                s3 = packageinfo.versionName;
            } else
            {
                s3 = "not set";
            }
            u = s3;
        }
        i = new g(context);
        s1 = System.getProperty("os.version");
        if (s1 != null)
        {
            flag1 = s1.contains("cyanogenmod");
        } else
        {
            flag1 = false;
        }
        z.setToNow();
        g.put(com.facebook.a.r.b, android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id"));
        g.put(r.d, t);
        g.put(r.e, u);
        g.put(com.facebook.a.r.f, context.getPackageName());
        g.put(com.facebook.a.r.h, Build.MODEL);
        g.put(r.i, android.os.Build.VERSION.RELEASE);
        g.put(r.j, s1);
        g.put(com.facebook.a.r.k, Boolean.toString(flag1));
        g.put(r.m, Build.BRAND);
        g.put(r.n, Build.PRODUCT);
        s2 = "n/a";
        file = context.getFilesDir();
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_306;
        }
        s2 = file.getAbsolutePath();
        g.put(com.facebook.a.r.g, s2);
        if (android.os.Build.VERSION.SDK_INT < 9)
        {
            break MISSING_BLOCK_LABEL_389;
        }
        g.put(r.aa, Build.SERIAL);
        if (packageinfo != null)
        {
            try
            {
                g.put(r.Y, a(packageinfo.firstInstallTime));
                g.put(r.Z, a(packageinfo.lastUpdateTime));
            }
            catch (Exception exception)
            {
                Log.e(a.a, "failed to install constants", exception);
            }
        }
        p = a(context, "acra-reports", "reportfile.prealloc");
        m();
    }

    final transient void a(Context context, l al[])
    {
        this;
        JVM INSTR monitorenter ;
        int i1;
        a.a;
        i1 = al.length;
        int j1 = 0;
_L2:
        if (j1 >= i1)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        l l1;
        l1 = al[j1];
        if (l.a == l1)
        {
            a(context);
            break MISSING_BLOCK_LABEL_65;
        }
        a(context, l1);
        break MISSING_BLOCK_LABEL_65;
        Exception exception;
        exception;
        throw exception;
        a.a;
        this;
        JVM INSTR monitorexit ;
        return;
        j1++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void a(com.facebook.a.b.b b1)
    {
        r();
        b(b1);
    }

    public final void a(String s1)
    {
        v = s1;
    }

    public final m b()
    {
        String as[] = a("acra-reports", new String[] {
            ".stacktrace"
        });
        String as1[] = a("minidumps", new String[] {
            ".dmp"
        });
        if (as != null && as.length > 0 || as1 != null && as1.length > 0)
        {
            String _tmp = a.a;
            if (as1 != null && as1.length > 0)
            {
                e = true;
            }
            return a(j);
        } else
        {
            return null;
        }
    }

    public final void c()
    {
        d = 0x100000L;
    }

    public final void uncaughtException(Thread thread, Throwable throwable)
    {
label0:
        {
            Log.e(a.a, (new StringBuilder("ACRA caught a ")).append(throwable.getClass().getSimpleName()).append(" exception for ").append(o.getPackageName()).append(". Building report.").toString());
            A = true;
            boolean flag = D.getAndSet(true);
            HashMap hashmap;
            m m1;
            Throwable throwable1;
            InterruptedException interruptedexception;
            try
            {
                hashmap = new HashMap();
            }
            catch (OutOfMemoryError outofmemoryerror1)
            {
                hashmap = null;
                if (false)
                {
                } else
                {
                    break label0;
                }
            }
            try
            {
                hashmap.put("IS_PROCESSING_ANOTHER_EXCEPTION", String.valueOf(flag));
            }
            catch (OutOfMemoryError outofmemoryerror) { }
        }
        m1 = a(throwable, hashmap);
        if (m1 != null)
        {
            while (m1.isAlive()) 
            {
                try
                {
                    Thread.sleep(100L);
                }
                // Misplaced declaration of an exception variable
                catch (InterruptedException interruptedexception)
                {
                    Log.e(a.a, "Error : ", interruptedexception);
                }
            }
            throwable1 = m1.a();
            if (throwable1 != null)
            {
                Log.e(a.a, "ReportsWorkerSender failed with exception", throwable1);
                a(throwable1, hashmap, b(throwable), false);
            }
        }
        if (m != null)
        {
            m.uncaughtException(thread, throwable);
        }
    }

    static 
    {
        l al[] = new l[3];
        al[0] = l.a;
        al[1] = com.facebook.a.l.b;
        al[2] = com.facebook.a.l.c;
        j = al;
    }
}
