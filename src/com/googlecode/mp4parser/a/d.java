// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.a;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.AbstractMediaHeaderBox;
import com.coremedia.iso.boxes.CompositionTimeToSample;
import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.HandlerBox;
import com.coremedia.iso.boxes.MediaBox;
import com.coremedia.iso.boxes.MediaHeaderBox;
import com.coremedia.iso.boxes.MediaInformationBox;
import com.coremedia.iso.boxes.SampleDependencyTypeBox;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.SampleTableBox;
import com.coremedia.iso.boxes.SyncSampleBox;
import com.coremedia.iso.boxes.TimeToSampleBox;
import com.coremedia.iso.boxes.TrackBox;
import com.coremedia.iso.boxes.TrackHeaderBox;
import com.coremedia.iso.boxes.b;
import com.coremedia.iso.boxes.fragment.MovieExtendsBox;
import com.coremedia.iso.boxes.fragment.MovieFragmentBox;
import com.coremedia.iso.boxes.fragment.TrackExtendsBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox;
import com.coremedia.iso.boxes.fragment.TrackRunBox;
import com.coremedia.iso.boxes.fragment.c;
import com.coremedia.iso.boxes.k;
import com.coremedia.iso.boxes.mdat.a;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.a:
//            a, f, b

public final class d extends com.googlecode.mp4parser.a.a
{

    private List a;
    private SampleDescriptionBox b;
    private List c;
    private List d;
    private long e[];
    private List f;
    private f g;
    private String h;
    private AbstractMediaHeaderBox i;

    public d(TrackBox trackbox)
    {
        long l1;
        List list;
        e = new long[0];
        g = new f();
        l1 = trackbox.getTrackHeaderBox().getTrackId();
        a = new a(trackbox);
        SampleTableBox sampletablebox = trackbox.getMediaBox().getMediaInformationBox().getSampleTableBox();
        h = trackbox.getMediaBox().getHandlerBox().getHandlerType();
        i = trackbox.getMediaBox().getMediaInformationBox().getMediaHeaderBox();
        c = new LinkedList();
        d = new LinkedList();
        f = new LinkedList();
        c.addAll(sampletablebox.getTimeToSampleBox().getEntries());
        if (sampletablebox.getCompositionTimeToSample() != null)
        {
            d.addAll(sampletablebox.getCompositionTimeToSample().getEntries());
        }
        if (sampletablebox.getSampleDependencyTypeBox() != null)
        {
            f.addAll(sampletablebox.getSampleDependencyTypeBox().getEntries());
        }
        if (sampletablebox.getSyncSampleBox() != null)
        {
            e = sampletablebox.getSyncSampleBox().getSampleNumber();
        }
        b = sampletablebox.getSampleDescriptionBox();
        list = trackbox.getParent().getBoxes(com/coremedia/iso/boxes/fragment/MovieExtendsBox);
        if (list.size() <= 0) goto _L2; else goto _L1
_L1:
        Iterator iterator = list.iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L3
_L3:
        Iterator iterator1 = ((MovieExtendsBox)iterator.next()).getBoxes(com/coremedia/iso/boxes/fragment/TrackExtendsBox).iterator();
_L7:
        if (!iterator1.hasNext()) goto _L5; else goto _L4
_L4:
        TrackExtendsBox trackextendsbox = (TrackExtendsBox)iterator1.next();
        if (trackextendsbox.getTrackId() != l1) goto _L7; else goto _L6
_L6:
        LinkedList linkedlist;
        Iterator iterator2;
        long l2;
        linkedlist = new LinkedList();
        iterator2 = trackbox.getIsoFile().getBoxes(com/coremedia/iso/boxes/fragment/MovieFragmentBox).iterator();
        l2 = 1L;
_L11:
        if (!iterator2.hasNext()) goto _L9; else goto _L8
_L8:
        TrackFragmentBox trackfragmentbox;
        do
        {
            Iterator iterator4;
            for (iterator4 = ((MovieFragmentBox)iterator2.next()).getBoxes(com/coremedia/iso/boxes/fragment/TrackFragmentBox).iterator(); !iterator4.hasNext();)
            {
                continue; /* Loop/switch isn't completed */
            }

            trackfragmentbox = (TrackFragmentBox)iterator4.next();
        } while (trackfragmentbox.getTrackFragmentHeaderBox().getTrackId() != l1);
        break; /* Loop/switch isn't completed */
        if (true) goto _L11; else goto _L10
_L10:
        long l3;
        Iterator iterator5 = trackfragmentbox.getBoxes(com/coremedia/iso/boxes/fragment/TrackRunBox).iterator();
        long l4;
        for (l3 = l2; iterator5.hasNext(); l3 = l4)
        {
            TrackRunBox trackrunbox = (TrackRunBox)iterator5.next();
            TrackFragmentHeaderBox trackfragmentheaderbox = ((TrackFragmentBox)trackrunbox.getParent()).getTrackFragmentHeaderBox();
            Iterator iterator6 = trackrunbox.getEntries().iterator();
            boolean flag = true;
            l4 = l3;
            while (iterator6.hasNext()) 
            {
                c c1 = (c)iterator6.next();
                com.coremedia.iso.boxes.fragment.a a1;
                if (trackrunbox.isSampleDurationPresent())
                {
                    if (c.size() == 0 || ((k)c.get(-1 + c.size())).b() != c1.a())
                    {
                        c.add(new k(1L, c1.a()));
                    } else
                    {
                        k k1 = (k)c.get(-1 + c.size());
                        k1.a(1L + k1.a());
                    }
                } else
                if (trackfragmentheaderbox.hasDefaultSampleDuration())
                {
                    c.add(new k(1L, trackfragmentheaderbox.getDefaultSampleDuration()));
                } else
                {
                    c.add(new k(1L, trackextendsbox.getDefaultSampleDuration()));
                }
                if (trackrunbox.isSampleCompositionTimeOffsetPresent())
                {
                    if (d.size() == 0 || ((b)d.get(-1 + d.size())).b() != c1.d())
                    {
                        d.add(new b(1, com.googlecode.mp4parser.c.b.a(c1.d())));
                    } else
                    {
                        b b1 = (b)d.get(-1 + d.size());
                        b1.a(1 + b1.a());
                    }
                }
                if (trackrunbox.isSampleFlagsPresent())
                {
                    a1 = c1.c();
                } else
                if (flag && trackrunbox.isFirstSampleFlagsPresent())
                {
                    a1 = trackrunbox.getFirstSampleFlags();
                } else
                if (trackfragmentheaderbox.hasDefaultSampleFlags())
                {
                    a1 = trackfragmentheaderbox.getDefaultSampleFlags();
                } else
                {
                    a1 = trackextendsbox.getDefaultSampleFlags();
                }
                if (a1 != null && !a1.a())
                {
                    linkedlist.add(Long.valueOf(l4));
                }
                l4++;
                flag = false;
            }
        }

        break MISSING_BLOCK_LABEL_1179;
_L9:
        long al[] = e;
        e = new long[e.length + linkedlist.size()];
        System.arraycopy(al, 0, e, 0, al.length);
        Iterator iterator3 = linkedlist.iterator();
        int i1 = al.length;
        while (iterator3.hasNext()) 
        {
            Long long1 = (Long)iterator3.next();
            long al1[] = e;
            int j1 = i1 + 1;
            al1[i1] = long1.longValue();
            i1 = j1;
        }
          goto _L7
_L2:
        MediaHeaderBox mediaheaderbox = trackbox.getMediaBox().getMediaHeaderBox();
        TrackHeaderBox trackheaderbox = trackbox.getTrackHeaderBox();
        a(trackheaderbox.isEnabled());
        b(trackheaderbox.isInMovie());
        d(trackheaderbox.isInPoster());
        c(trackheaderbox.isInPreview());
        g.b(trackheaderbox.getTrackId());
        g.b(com.googlecode.mp4parser.a.b.a(mediaheaderbox.getCreationTime()));
        g.a(mediaheaderbox.getLanguage());
        g.a(com.googlecode.mp4parser.a.b.a(mediaheaderbox.getModificationTime()));
        g.a(mediaheaderbox.getTimescale());
        g.b(trackheaderbox.getHeight());
        g.a(trackheaderbox.getWidth());
        g.a(trackheaderbox.getLayer());
        g.a(trackheaderbox.getMatrix());
        return;
        l2 = l3;
          goto _L8
    }

    private AbstractMediaHeaderBox n()
    {
        return i;
    }

    public final List e()
    {
        return a;
    }

    public final SampleDescriptionBox f()
    {
        return b;
    }

    public final List g()
    {
        return c;
    }

    public final List h()
    {
        return d;
    }

    public final long[] i()
    {
        return e;
    }

    public final List j()
    {
        return f;
    }

    public final f k()
    {
        return g;
    }

    public final String l()
    {
        return h;
    }

    public final com.coremedia.iso.boxes.a m()
    {
        return n();
    }

    public final String toString()
    {
        return (new StringBuilder("Mp4TrackImpl{handler='")).append(h).append('\'').append('}').toString();
    }
}
