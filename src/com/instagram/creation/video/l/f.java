// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.MovieHeaderBox;
import com.coremedia.iso.boxes.k;
import com.googlecode.mp4parser.a.b.a.a;
import com.googlecode.mp4parser.a.c;
import com.googlecode.mp4parser.a.c.b;
import com.googlecode.mp4parser.a.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class f
{

    public static transient float a(File afile[])
    {
        int i = -1 + afile.length;
        FileChannel afilechannel[] = new FileChannel[i];
        int j = 0;
_L2:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        (new StringBuilder("working with file: ")).append(afile[j].getAbsolutePath());
        afilechannel[j] = (new FileInputStream(afile[j])).getChannel();
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        c ac[] = new c[i];
        int l = 0;
_L4:
        if (l >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        ac[l] = com.googlecode.mp4parser.a.b.a.a.a(afilechannel[l]);
        l++;
        if (true) goto _L4; else goto _L3
_L3:
        LinkedList linkedlist;
        LinkedList linkedlist1;
        int i1;
        linkedlist = new LinkedList();
        linkedlist1 = new LinkedList();
        i1 = ac.length;
        int j1 = 0;
_L7:
        if (j1 >= i1) goto _L6; else goto _L5
_L5:
        Exception exception1;
        float f1;
        try
        {
            Iterator iterator = ac[j1].a().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    continue; /* Loop/switch isn't completed */
                }
                e e1 = (e)iterator.next();
                if (e1.l().equals("soun"))
                {
                    linkedlist1.add(e1);
                }
                if (e1.l().equals("vide"))
                {
                    linkedlist.add(e1);
                }
            } while (true);
        }
        catch (Exception exception)
        {
            exception1 = exception;
            f1 = 0.0F;
        }
_L8:
        com.facebook.e.a.a.a("VideoEditUtils", (new StringBuilder("Exception: ")).append(exception1.getMessage()).toString());
        return f1;
        j1++;
          goto _L7
_L6:
        c c1;
        ArrayList arraylist;
        c1 = new c();
        arraylist = new ArrayList();
        int k1 = 0;
_L9:
        e e3;
        if (k1 >= linkedlist1.size())
        {
            break MISSING_BLOCK_LABEL_359;
        }
        e e2 = (e)linkedlist.get(k1);
        e3 = (e)linkedlist1.get(k1);
        if (b(e3) > 1.0D)
        {
            arraylist.add(a(e3, e2));
            break MISSING_BLOCK_LABEL_552;
        }
        arraylist.add(e3);
        break MISSING_BLOCK_LABEL_552;
        IsoFile isofile;
        long l1;
        long l2;
        if (arraylist.size() > 0)
        {
            c1.a(new com.googlecode.mp4parser.a.c.a((e[])arraylist.toArray(new e[arraylist.size()])));
        }
        if (linkedlist.size() > 0)
        {
            c1.a(new com.googlecode.mp4parser.a.c.a((e[])linkedlist.toArray(new e[linkedlist.size()])));
        }
        isofile = (new com.googlecode.mp4parser.a.a.a()).a(c1);
        l1 = isofile.getMovieBox().getMovieHeaderBox().getDuration();
        l2 = isofile.getMovieBox().getMovieHeaderBox().getTimescale();
        FileChannel filechannel;
        if (l1 > 0L && l2 > 0L)
        {
            f1 = (float)l1 / (float)l2;
        } else
        {
            f1 = 0.0F;
        }
        filechannel = (new RandomAccessFile(afile[-1 + afile.length], "rw")).getChannel();
        filechannel.position(0L);
        isofile.getBox(filechannel);
        filechannel.close();
        return f1;
        exception1;
          goto _L8
        k1++;
          goto _L9
    }

    private static b a(e e1, e e2)
    {
        double d = b(e2);
        int i = 0;
        long l = -1L;
        long l1 = 0L;
        double d1 = 0.0D;
        double d2 = 0.0D;
        while (i < e1.g().size()) 
        {
            k k1 = (k)e1.g().get(i);
            int j = 0;
            while ((long)j < k1.a()) 
            {
                double d3;
                long l2;
                double d4;
                if (d1 <= d)
                {
                    d3 = d1 + (double)k1.b() / (double)e1.k().b();
                    l2 = l1;
                } else
                {
                    d3 = d1;
                    l2 = l;
                }
                l1++;
                d4 = d2 + (double)k1.b() / (double)e1.k().b();
                j++;
                d2 = d4;
                l = l2;
                d1 = d3;
            }
            i++;
        }
        (new StringBuilder("Cropped audio to ")).append(d1).append(" out of ").append(d2);
        return new b(e1, l);
    }

    public static double[] a(e e1)
    {
        double ad[] = new double[e1.i().length];
        long l = 0L;
        double d = 0.0D;
        for (int i = 0; i < e1.g().size(); i++)
        {
            k k1 = (k)e1.g().get(i);
            for (int j = 0; (long)j < k1.a();)
            {
                if (Arrays.binarySearch(e1.i(), l + 1L) >= 0)
                {
                    ad[Arrays.binarySearch(e1.i(), l + 1L)] = d;
                }
                double d1 = d + (double)k1.b() / (double)e1.k().b();
                l++;
                j++;
                d = d1;
            }

        }

        return ad;
    }

    private static double b(e e1)
    {
        double d = 0.0D;
        for (int i = 0; i < e1.g().size(); i++)
        {
            k k1 = (k)e1.g().get(i);
            d += (double)(k1.a() * k1.b()) / (double)e1.k().b();
        }

        return d;
    }
}
