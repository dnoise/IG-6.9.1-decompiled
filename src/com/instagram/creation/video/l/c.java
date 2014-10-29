// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.TrackBox;
import com.coremedia.iso.boxes.TrackHeaderBox;
import com.instagram.camera.h;
import com.instagram.creation.b.a.a;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.Iterator;
import java.util.List;

public final class c
{

    private static final float a[] = {
        1.0F, 0.0F, 2.0F, 0.0F, 1.0F, 2.0F, 0.0F, 0.0F, 2.0F
    };
    private static final float b[] = {
        0.0F, 1.0F, 2.0F, -1F, 0.0F, 2.0F, 2.0F, 0.0F, 2.0F
    };
    private static final float c[] = {
        -1F, 0.0F, 2.0F, 0.0F, -1F, 2.0F, 2.0F, 2.0F, 2.0F
    };
    private static final float d[] = {
        0.0F, -1F, 2.0F, 1.0F, 0.0F, 2.0F, 0.0F, 2.0F, 2.0F
    };

    public static int a(a a1)
    {
        if (b(a1))
        {
            return a1.d();
        } else
        {
            return h.b(a1.c());
        }
    }

    public static int a(File file)
    {
        List list = (new IsoFile((new RandomAccessFile(file, "r")).getChannel())).getMovieBox().getBoxes(com/coremedia/iso/boxes/TrackBox);
        float af[] = new float[9];
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            TrackHeaderBox trackheaderbox = ((TrackBox)iterator.next()).getTrackHeaderBox();
            if (trackheaderbox.getWidth() > 0.0D)
            {
                long al[] = trackheaderbox.getMatrix();
                int i = 0;
                while (i < 9) 
                {
                    if (i % 3 == 2)
                    {
                        af[i] = (float)(int)al[i] / 1.073742E+09F;
                    } else
                    {
                        af[i] = (float)(int)al[i] / 65536F;
                    }
                    i++;
                }
            }
        } while (true);
        if (a(af))
        {
            return 0;
        }
        if (b(af))
        {
            return 3;
        }
        if (c(af))
        {
            return 2;
        }
        return !d(af) ? 0 : 1;
    }

    private static boolean a(float af[])
    {
        int i = af[0] != a[0];
        boolean flag = false;
        if (i == 0)
        {
            int j = af[4] != a[4];
            flag = false;
            if (j == 0)
            {
                flag = true;
            }
        }
        return flag;
    }

    public static boolean b(a a1)
    {
        return a1.c() == -1;
    }

    private static boolean b(float af[])
    {
        return af[1] == b[1] && af[3] == b[3];
    }

    private static boolean c(float af[])
    {
        int i = af[0] != c[0];
        boolean flag = false;
        if (i == 0)
        {
            int j = af[4] != c[4];
            flag = false;
            if (j == 0)
            {
                flag = true;
            }
        }
        return flag;
    }

    private static boolean d(float af[])
    {
        return af[1] == d[1] && af[3] == d[3];
    }

}
