// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.a.a;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.CompositionTimeToSample;
import com.coremedia.iso.boxes.DataEntryUrlBox;
import com.coremedia.iso.boxes.DataInformationBox;
import com.coremedia.iso.boxes.DataReferenceBox;
import com.coremedia.iso.boxes.FileTypeBox;
import com.coremedia.iso.boxes.HandlerBox;
import com.coremedia.iso.boxes.MediaBox;
import com.coremedia.iso.boxes.MediaHeaderBox;
import com.coremedia.iso.boxes.MediaInformationBox;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.MovieHeaderBox;
import com.coremedia.iso.boxes.SampleDependencyTypeBox;
import com.coremedia.iso.boxes.SampleSizeBox;
import com.coremedia.iso.boxes.SampleTableBox;
import com.coremedia.iso.boxes.SampleToChunkBox;
import com.coremedia.iso.boxes.StaticChunkOffsetBox;
import com.coremedia.iso.boxes.SyncSampleBox;
import com.coremedia.iso.boxes.TimeToSampleBox;
import com.coremedia.iso.boxes.TrackBox;
import com.coremedia.iso.boxes.TrackHeaderBox;
import com.coremedia.iso.boxes.h;
import com.coremedia.iso.boxes.k;
import com.googlecode.mp4parser.a.b;
import com.googlecode.mp4parser.a.c;
import com.googlecode.mp4parser.a.e;
import com.googlecode.mp4parser.a.f;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.a.a:
//            d, b, c

public class a
{

    static final boolean e;
    private static Logger f = Logger.getLogger(com/googlecode/mp4parser/a/a/a.getName());
    public int a;
    Set b;
    HashMap c;
    HashMap d;
    private com.googlecode.mp4parser.a.a.c g;

    public a()
    {
        a = 64;
        b = new HashSet();
        c = new HashMap();
        d = new HashMap();
        g = new d();
    }

    private static long a(long l, long l1)
    {
        if (l1 == 0L)
        {
            return l;
        } else
        {
            return a(l1, l % l1);
        }
    }

    private static long a(e e1)
    {
        Iterator iterator = e1.g().iterator();
        long l;
        k k1;
        for (l = 0L; iterator.hasNext(); l += k1.a() * k1.b())
        {
            k1 = (k)iterator.next();
        }

        return l;
    }

    private static long a(int ai[])
    {
        long l = 0L;
        int i = ai.length;
        for (int j = 0; j < i; j++)
        {
            l += ai[j];
        }

        return l;
    }

    private List a(e e1, List list)
    {
        return (List)c.put(e1, list);
    }

    public static List a(List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            ByteBuffer bytebuffer = (ByteBuffer)iterator.next();
            int i = -1 + arraylist.size();
            if (i >= 0 && bytebuffer.hasArray() && ((ByteBuffer)arraylist.get(i)).hasArray() && bytebuffer.array() == ((ByteBuffer)arraylist.get(i)).array() && ((ByteBuffer)arraylist.get(i)).arrayOffset() + ((ByteBuffer)arraylist.get(i)).limit() == bytebuffer.arrayOffset())
            {
                ByteBuffer bytebuffer2 = (ByteBuffer)arraylist.remove(i);
                arraylist.add(ByteBuffer.wrap(bytebuffer.array(), bytebuffer2.arrayOffset(), bytebuffer2.limit() + bytebuffer.limit()).slice());
            } else
            if (i >= 0 && (bytebuffer instanceof MappedByteBuffer) && (arraylist.get(i) instanceof MappedByteBuffer) && ((ByteBuffer)arraylist.get(i)).limit() == ((ByteBuffer)arraylist.get(i)).capacity() - bytebuffer.capacity())
            {
                ByteBuffer bytebuffer1 = (ByteBuffer)arraylist.get(i);
                bytebuffer1.limit(bytebuffer.limit() + bytebuffer1.limit());
            } else
            {
                arraylist.add(bytebuffer);
            }
        }

        return arraylist;
    }

    private long[] a(e e1, long al[])
    {
        return (long[])d.put(e1, al);
    }

    private MovieBox b(c c1)
    {
        MovieBox moviebox = new MovieBox();
        MovieHeaderBox movieheaderbox = new MovieHeaderBox();
        movieheaderbox.setCreationTime(com.googlecode.mp4parser.a.b.a(new Date()));
        movieheaderbox.setModificationTime(com.googlecode.mp4parser.a.b.a(new Date()));
        long l = c(c1);
        Iterator iterator = c1.a().iterator();
        long l1 = 0L;
        while (iterator.hasNext()) 
        {
            e e2 = (e)iterator.next();
            long l4 = (l * a(e2)) / e2.k().b();
            Iterator iterator1;
            long l2;
            Iterator iterator2;
            e e1;
            long l3;
            long l5;
            if (l4 > l1)
            {
                l5 = l4;
            } else
            {
                l5 = l1;
            }
            l1 = l5;
        }
        movieheaderbox.setDuration(l1);
        movieheaderbox.setTimescale(l);
        iterator1 = c1.a().iterator();
        l2 = 0L;
        while (iterator1.hasNext()) 
        {
            e1 = (e)iterator1.next();
            if (l2 < e1.k().g())
            {
                l3 = e1.k().g();
            } else
            {
                l3 = l2;
            }
            l2 = l3;
        }
        movieheaderbox.setNextTrackId(l2 + 1L);
        if (movieheaderbox.getCreationTime() >= 0x100000000L || movieheaderbox.getModificationTime() >= 0x100000000L || movieheaderbox.getDuration() >= 0x100000000L)
        {
            movieheaderbox.setVersion(1);
        }
        moviebox.addBox(movieheaderbox);
        for (iterator2 = c1.a().iterator(); iterator2.hasNext(); moviebox.addBox(b((e)iterator2.next(), c1))) { }
        return moviebox;
    }

    private TrackBox b(e e1, c c1)
    {
        f.info((new StringBuilder("Creating Mp4TrackImpl ")).append(e1).toString());
        TrackBox trackbox = new TrackBox();
        TrackHeaderBox trackheaderbox = new TrackHeaderBox();
        boolean flag = e1.a();
        int i = 0;
        if (flag)
        {
            i = 1;
        }
        if (e1.b())
        {
            i += 2;
        }
        if (e1.c())
        {
            i += 4;
        }
        if (e1.d())
        {
            i += 8;
        }
        trackheaderbox.setFlags(i);
        trackheaderbox.setAlternateGroup(e1.k().j());
        trackheaderbox.setCreationTime(com.googlecode.mp4parser.a.b.a(e1.k().c()));
        trackheaderbox.setDuration((a(e1) * c(c1)) / e1.k().b());
        trackheaderbox.setHeight(e1.k().f());
        trackheaderbox.setWidth(e1.k().d());
        trackheaderbox.setLayer(e1.k().h());
        trackheaderbox.setModificationTime(com.googlecode.mp4parser.a.b.a(new Date()));
        trackheaderbox.setTrackId(e1.k().g());
        trackheaderbox.setVolume(e1.k().i());
        trackheaderbox.setMatrix(e1.k().e());
        if (trackheaderbox.getCreationTime() >= 0x100000000L || trackheaderbox.getModificationTime() >= 0x100000000L || trackheaderbox.getDuration() >= 0x100000000L)
        {
            trackheaderbox.setVersion(1);
        }
        trackbox.addBox(trackheaderbox);
        MediaBox mediabox = new MediaBox();
        trackbox.addBox(mediabox);
        MediaHeaderBox mediaheaderbox = new MediaHeaderBox();
        mediaheaderbox.setCreationTime(com.googlecode.mp4parser.a.b.a(e1.k().c()));
        mediaheaderbox.setDuration(a(e1));
        mediaheaderbox.setTimescale(e1.k().b());
        mediaheaderbox.setLanguage(e1.k().a());
        mediabox.addBox(mediaheaderbox);
        HandlerBox handlerbox = new HandlerBox();
        mediabox.addBox(handlerbox);
        handlerbox.setHandlerType(e1.l());
        MediaInformationBox mediainformationbox = new MediaInformationBox();
        mediainformationbox.addBox(e1.m());
        DataInformationBox datainformationbox = new DataInformationBox();
        DataReferenceBox datareferencebox = new DataReferenceBox();
        datainformationbox.addBox(datareferencebox);
        DataEntryUrlBox dataentryurlbox = new DataEntryUrlBox();
        dataentryurlbox.setFlags(1);
        datareferencebox.addBox(dataentryurlbox);
        mediainformationbox.addBox(datainformationbox);
        SampleTableBox sampletablebox = new SampleTableBox();
        sampletablebox.addBox(e1.f());
        if (e1.g() != null && !e1.g().isEmpty())
        {
            TimeToSampleBox timetosamplebox = new TimeToSampleBox();
            timetosamplebox.setEntries(e1.g());
            sampletablebox.addBox(timetosamplebox);
        }
        List list = e1.h();
        if (list != null && !list.isEmpty())
        {
            CompositionTimeToSample compositiontimetosample = new CompositionTimeToSample();
            compositiontimetosample.setEntries(list);
            sampletablebox.addBox(compositiontimetosample);
        }
        long al[] = e1.i();
        if (al != null && al.length > 0)
        {
            SyncSampleBox syncsamplebox = new SyncSampleBox();
            syncsamplebox.setSampleNumber(al);
            sampletablebox.addBox(syncsamplebox);
        }
        if (e1.j() != null && !e1.j().isEmpty())
        {
            SampleDependencyTypeBox sampledependencytypebox = new SampleDependencyTypeBox();
            sampledependencytypebox.setEntries(e1.j());
            sampletablebox.addBox(sampledependencytypebox);
        }
        HashMap hashmap = new HashMap();
        e e3;
        for (Iterator iterator = c1.a().iterator(); iterator.hasNext(); hashmap.put(e3, a(e3, c1)))
        {
            e3 = (e)iterator.next();
        }

        int ai[] = (int[])hashmap.get(e1);
        SampleToChunkBox sampletochunkbox = new SampleToChunkBox();
        sampletochunkbox.setEntries(new LinkedList());
        long l = 0xffffffff80000000L;
        for (int j = 0; j < ai.length; j++)
        {
            if (l != (long)ai[j])
            {
                sampletochunkbox.getEntries().add(new h(j + 1, ai[j], 1L));
                l = ai[j];
            }
        }

        sampletablebox.addBox(sampletochunkbox);
        SampleSizeBox samplesizebox = new SampleSizeBox();
        samplesizebox.setSampleSizes((long[])d.get(e1));
        sampletablebox.addBox(samplesizebox);
        StaticChunkOffsetBox staticchunkoffsetbox = new StaticChunkOffsetBox();
        b.add(staticchunkoffsetbox);
        long l1 = 0L;
        long al1[] = new long[ai.length];
        if (f.isLoggable(Level.FINE))
        {
            f.fine((new StringBuilder("Calculating chunk offsets for track_")).append(e1.k().g()).toString());
        }
        for (int i1 = 0; i1 < ai.length;)
        {
            if (f.isLoggable(Level.FINER))
            {
                f.finer((new StringBuilder("Calculating chunk offsets for track_")).append(e1.k().g()).append(" chunk ").append(i1).toString());
            }
            Iterator iterator1 = c1.a().iterator();
            long l2;
            long l5;
            for (l2 = l1; iterator1.hasNext(); l2 = l5)
            {
                e e2 = (e)iterator1.next();
                if (f.isLoggable(Level.FINEST))
                {
                    f.finest((new StringBuilder("Adding offsets of track_")).append(e2.k().g()).toString());
                }
                int ai1[] = (int[])hashmap.get(e2);
                int j1 = 0;
                long l3;
                long l6;
                for (l3 = 0L; j1 < i1; l3 = l6)
                {
                    l6 = l3 + (long)ai1[j1];
                    j1++;
                }

                if (e2 == e1)
                {
                    al1[i1] = l2;
                }
                int k1 = com.googlecode.mp4parser.c.b.a(l3);
                long l4 = l2;
                int i2 = k1;
                l5 = l4;
                for (; (long)i2 < l3 + (long)ai1[i1]; i2++)
                {
                    l5 += ((long[])d.get(e2))[i2];
                }

            }

            i1++;
            l1 = l2;
        }

        staticchunkoffsetbox.setChunkOffsets(al1);
        sampletablebox.addBox(staticchunkoffsetbox);
        mediainformationbox.addBox(sampletablebox);
        mediabox.addBox(mediainformationbox);
        return trackbox;
    }

    private static long c(c c1)
    {
        long l = ((e)c1.a().iterator().next()).k().b();
        Iterator iterator = c1.a().iterator();
        long l1;
        for (l1 = l; iterator.hasNext(); l1 = a(((e)iterator.next()).k().b(), l1)) { }
        return l1;
    }

    public final IsoFile a(c c1)
    {
        f.fine((new StringBuilder("Creating movie ")).append(c1).toString());
        e e1;
        long al1[];
        for (Iterator iterator = c1.a().iterator(); iterator.hasNext(); a(e1, al1))
        {
            e1 = (e)iterator.next();
            List list = e1.e();
            a(e1, list);
            al1 = new long[list.size()];
            for (int j = 0; j < al1.length; j++)
            {
                al1[j] = ((ByteBuffer)list.get(j)).limit();
            }

        }

        IsoFile isofile = new IsoFile();
        LinkedList linkedlist = new LinkedList();
        linkedlist.add("isom");
        linkedlist.add("iso2");
        linkedlist.add("avc1");
        isofile.addBox(new FileTypeBox("isom", 0L, linkedlist));
        isofile.addBox(b(c1));
        com.googlecode.mp4parser.a.a.b b1 = new com.googlecode.mp4parser.a.a.b(this, c1, (byte)0);
        isofile.addBox(b1);
        long l = b1.a();
        for (Iterator iterator1 = b.iterator(); iterator1.hasNext();)
        {
            long al[] = ((StaticChunkOffsetBox)iterator1.next()).getChunkOffsets();
            int i = 0;
            while (i < al.length) 
            {
                al[i] = l + al[i];
                i++;
            }
        }

        return isofile;
    }

    final int[] a(e e1, c c1)
    {
        long al[] = g.a(e1, c1);
        int ai[] = new int[al.length];
        int i = 0;
        while (i < al.length) 
        {
            long l = al[i] - 1L;
            long l1;
            if (al.length == i + 1)
            {
                l1 = e1.e().size();
            } else
            {
                l1 = al[i + 1] - 1L;
            }
            ai[i] = com.googlecode.mp4parser.c.b.a(l1 - l);
            i++;
        }
        if (!e && (long)((List)c.get(e1)).size() != a(ai))
        {
            throw new AssertionError("The number of samples and the sum of all chunk lengths must be equal");
        } else
        {
            return ai;
        }
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/a/a/a.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
    }
}
