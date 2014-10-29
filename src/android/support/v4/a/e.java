// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package android.support.v4.a:
//            f, g, h

public final class e
{

    private static final Object f = new Object();
    private static e g;
    private final Context a;
    private final HashMap b = new HashMap();
    private final HashMap c = new HashMap();
    private final ArrayList d = new ArrayList();
    private final Handler e;

    private e(Context context)
    {
        a = context;
        e = new f(this, context.getMainLooper());
    }

    public static e a(Context context)
    {
        e e1;
        synchronized (f)
        {
            if (g == null)
            {
                g = new e(context.getApplicationContext());
            }
            e1 = g;
        }
        return e1;
    }

    private void a()
    {
_L4:
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        int i = d.size();
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        hashmap;
        JVM INSTR monitorexit ;
        return;
        g ag[];
        ag = new g[i];
        d.toArray(ag);
        d.clear();
        hashmap;
        JVM INSTR monitorexit ;
        int j = 0;
_L2:
        if (j < ag.length)
        {
            g g1 = ag[j];
            for (int k = 0; k < g1.b.size(); k++)
            {
                ((h)g1.b.get(k)).b.onReceive(a, g1.a);
            }

            break MISSING_BLOCK_LABEL_120;
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void a(e e1)
    {
        e1.a();
    }

    public final void a(BroadcastReceiver broadcastreceiver)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        ArrayList arraylist = (ArrayList)b.remove(broadcastreceiver);
        if (arraylist != null) goto _L2; else goto _L1
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
_L16:
        int i;
        if (i >= arraylist.size()) goto _L4; else goto _L3
_L3:
        IntentFilter intentfilter = (IntentFilter)arraylist.get(i);
        int j = 0;
_L14:
        String s;
        ArrayList arraylist1;
        if (j >= intentfilter.countActions())
        {
            break; /* Loop/switch isn't completed */
        }
        s = intentfilter.getAction(j);
        arraylist1 = (ArrayList)c.get(s);
        if (arraylist1 == null) goto _L6; else goto _L5
_L5:
        int k = 0;
_L12:
        if (k >= arraylist1.size()) goto _L8; else goto _L7
_L7:
        if (((h)arraylist1.get(k)).b != broadcastreceiver) goto _L10; else goto _L9
_L9:
        arraylist1.remove(k);
        int l = k - 1;
          goto _L11
_L8:
        if (arraylist1.size() <= 0)
        {
            c.remove(s);
        }
        break; /* Loop/switch isn't completed */
_L4:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
_L10:
        l = k;
          goto _L11
_L2:
        i = 0;
        continue; /* Loop/switch isn't completed */
_L11:
        k = l + 1;
        if (true) goto _L12; else goto _L6
_L6:
        j++;
        if (true) goto _L14; else goto _L13
_L13:
        i++;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public final void a(BroadcastReceiver broadcastreceiver, IntentFilter intentfilter)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        h h1;
        ArrayList arraylist;
        h1 = new h(intentfilter, broadcastreceiver);
        arraylist = (ArrayList)b.get(broadcastreceiver);
        if (arraylist != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        arraylist = new ArrayList(1);
        b.put(broadcastreceiver, arraylist);
        arraylist.add(intentfilter);
        int i = 0;
_L2:
        String s;
        ArrayList arraylist1;
        if (i >= intentfilter.countActions())
        {
            break; /* Loop/switch isn't completed */
        }
        s = intentfilter.getAction(i);
        arraylist1 = (ArrayList)c.get(s);
        if (arraylist1 != null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        arraylist1 = new ArrayList(1);
        c.put(s, arraylist1);
        arraylist1.add(h1);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final boolean a(Intent intent)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        String s;
        String s1;
        android.net.Uri uri;
        String s2;
        java.util.Set set;
        s = intent.getAction();
        s1 = intent.resolveTypeIfNeeded(a.getContentResolver());
        uri = intent.getData();
        s2 = intent.getScheme();
        set = intent.getCategories();
        ArrayList arraylist1;
        int j;
        ArrayList arraylist2;
        Exception exception;
        boolean flag;
        ArrayList arraylist;
        int i;
        h h1;
        int k;
        if ((8 & intent.getFlags()) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        (new StringBuilder("Resolving type ")).append(s1).append(" scheme ").append(s2).append(" of intent ").append(intent);
        arraylist = (ArrayList)c.get(intent.getAction());
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        (new StringBuilder("Action list: ")).append(arraylist);
          goto _L4
_L26:
        if (i >= arraylist.size()) goto _L6; else goto _L5
_L5:
        h1 = (h)arraylist.get(i);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_185;
        }
        (new StringBuilder("Matching against filter ")).append(h1.a);
        if (!h1.c) goto _L8; else goto _L7
_L7:
        if (!flag) goto _L10; else goto _L9
_L9:
        arraylist2 = arraylist1;
          goto _L11
_L8:
        k = h1.a.match(s, s1, s2, uri, set, "LocalBroadcastManager");
        if (k < 0) goto _L13; else goto _L12
_L12:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_255;
        }
        (new StringBuilder("  Filter matched!  match=0x")).append(Integer.toHexString(k));
        if (arraylist1 != null) goto _L15; else goto _L14
_L14:
        arraylist2 = new ArrayList();
_L25:
        arraylist2.add(h1);
        h1.c = true;
          goto _L11
        exception;
        throw exception;
_L13:
        if (!flag) goto _L10; else goto _L16
_L16:
        k;
        JVM INSTR tableswitch -4 -1: default 328
    //                   -4 457
    //                   -3 450
    //                   -2 464
    //                   -1 471;
           goto _L17 _L18 _L19 _L20 _L21
_L17:
        arraylist2 = arraylist1;
          goto _L11
_L24:
        if (j >= arraylist1.size()) goto _L23; else goto _L22
_L22:
        ((h)arraylist1.get(j)).c = false;
        j++;
          goto _L24
_L23:
        d.add(new g(intent, arraylist1));
        if (!e.hasMessages(1))
        {
            e.sendEmptyMessage(1);
        }
        hashmap;
        JVM INSTR monitorexit ;
        return true;
_L2:
        hashmap;
        JVM INSTR monitorexit ;
        return false;
_L10:
        arraylist2 = arraylist1;
          goto _L11
_L15:
        arraylist2 = arraylist1;
          goto _L25
_L4:
        arraylist1 = null;
        i = 0;
          goto _L26
_L11:
        i++;
        arraylist1 = arraylist2;
          goto _L26
_L19:
        arraylist2 = arraylist1;
          goto _L11
_L18:
        arraylist2 = arraylist1;
          goto _L11
_L20:
        arraylist2 = arraylist1;
          goto _L11
_L21:
        arraylist2 = arraylist1;
          goto _L11
_L6:
        if (arraylist1 == null) goto _L2; else goto _L27
_L27:
        j = 0;
          goto _L24
    }

    public final void b(Intent intent)
    {
        if (a(intent))
        {
            a();
        }
    }

}
