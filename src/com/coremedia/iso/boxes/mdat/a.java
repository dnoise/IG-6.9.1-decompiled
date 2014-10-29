// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.mdat;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.ChunkOffsetBox;
import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.SampleSizeBox;
import com.coremedia.iso.boxes.SampleTableBox;
import com.coremedia.iso.boxes.SampleToChunkBox;
import com.coremedia.iso.boxes.TrackBox;
import com.coremedia.iso.boxes.TrackHeaderBox;
import com.coremedia.iso.boxes.fragment.MovieExtendsBox;
import com.coremedia.iso.boxes.fragment.MovieFragmentBox;
import com.coremedia.iso.boxes.fragment.TrackExtendsBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox;
import com.coremedia.iso.boxes.fragment.TrackRunBox;
import com.coremedia.iso.boxes.fragment.c;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.coremedia.iso.boxes.mdat:
//            MediaDataBox

public final class a extends AbstractList
{

    long a[];
    long b[];
    IsoFile c;
    HashMap d;
    HashMap e;
    MediaDataBox f[];

    public a(TrackBox trackbox)
    {
        d = new HashMap();
        e = new HashMap();
        a(trackbox.getIsoFile());
        SampleSizeBox samplesizebox = trackbox.getSampleTableBox().getSampleSizeBox();
        ChunkOffsetBox chunkoffsetbox = trackbox.getSampleTableBox().getChunkOffsetBox();
        SampleToChunkBox sampletochunkbox = trackbox.getSampleTableBox().getSampleToChunkBox();
        long al[];
        if (chunkoffsetbox != null)
        {
            al = chunkoffsetbox.getChunkOffsets();
        } else
        {
            al = new long[0];
        }
        if (sampletochunkbox != null && sampletochunkbox.getEntries().size() > 0 && al.length > 0 && samplesizebox != null && samplesizebox.getSampleCount() > 0L)
        {
            long al1[] = sampletochunkbox.blowup(al.length);
            int i;
            if (samplesizebox.getSampleSize() > 0L)
            {
                b = new long[com.googlecode.mp4parser.c.b.a(samplesizebox.getSampleCount())];
                Arrays.fill(b, samplesizebox.getSampleSize());
            } else
            {
                b = samplesizebox.getSampleSizes();
            }
            a = new long[b.length];
            i = 0;
            for (int j = 0; j < al1.length; j++)
            {
                long l = al1[j];
                long l1 = al[j];
                for (int k = 0; (long)k < l;)
                {
                    long l2 = b[i];
                    a[i] = l1;
                    l1 += l2;
                    int i1 = i + 1;
                    k++;
                    i = i1;
                }

            }

        }
        List list = trackbox.getParent().getBoxes(com/coremedia/iso/boxes/fragment/MovieExtendsBox);
        if (list.size() > 0)
        {
            HashMap hashmap = new HashMap();
            Iterator iterator = ((MovieExtendsBox)list.get(0)).getBoxes(com/coremedia/iso/boxes/fragment/TrackExtendsBox).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                TrackExtendsBox trackextendsbox = (TrackExtendsBox)iterator.next();
                if (trackextendsbox.getTrackId() == trackbox.getTrackHeaderBox().getTrackId())
                {
                    Iterator iterator1 = trackbox.getIsoFile().getBoxes(com/coremedia/iso/boxes/fragment/MovieFragmentBox).iterator();
                    while (iterator1.hasNext()) 
                    {
                        hashmap.putAll(a((MovieFragmentBox)iterator1.next(), trackbox.getTrackHeaderBox().getTrackId(), trackextendsbox));
                    }
                }
            } while (true);
            if (b == null || a == null)
            {
                b = new long[0];
                a = new long[0];
            }
            a(hashmap);
        }
    }

    private ByteBuffer a(int i)
    {
        long l = a[i];
        int j = com.googlecode.mp4parser.c.b.a(b[i]);
        MediaDataBox amediadatabox[] = f;
        int k = amediadatabox.length;
        for (int i1 = 0; i1 < k; i1++)
        {
            MediaDataBox mediadatabox = amediadatabox[i1];
            long l1 = ((Long)d.get(mediadatabox)).longValue();
            long l2 = ((Long)e.get(mediadatabox)).longValue();
            if (l1 <= l && l + (long)j <= l2)
            {
                return mediadatabox.getContent(l - l1, j);
            }
        }

        throw new RuntimeException((new StringBuilder("The sample with offset ")).append(l).append(" and size ").append(j).append(" is NOT located within an mdat").toString());
    }

    private static Map a(MovieFragmentBox moviefragmentbox, long l, TrackExtendsBox trackextendsbox)
    {
        HashMap hashmap = new HashMap();
        Iterator iterator = moviefragmentbox.getBoxes(com/coremedia/iso/boxes/fragment/TrackFragmentBox).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            TrackFragmentBox trackfragmentbox = (TrackFragmentBox)iterator.next();
            if (trackfragmentbox.getTrackFragmentHeaderBox().getTrackId() == l)
            {
                long l1;
                Iterator iterator1;
                if (trackfragmentbox.getTrackFragmentHeaderBox().hasBaseDataOffset())
                {
                    l1 = trackfragmentbox.getTrackFragmentHeaderBox().getBaseDataOffset();
                } else
                {
                    l1 = moviefragmentbox.getOffset();
                }
                iterator1 = trackfragmentbox.getBoxes(com/coremedia/iso/boxes/fragment/TrackRunBox).iterator();
                while (iterator1.hasNext()) 
                {
                    TrackRunBox trackrunbox = (TrackRunBox)iterator1.next();
                    long l2 = l1 + (long)trackrunbox.getDataOffset();
                    TrackFragmentHeaderBox trackfragmentheaderbox = ((TrackFragmentBox)trackrunbox.getParent()).getTrackFragmentHeaderBox();
                    long l3 = 0L;
                    Iterator iterator2 = trackrunbox.getEntries().iterator();
                    while (iterator2.hasNext()) 
                    {
                        c c1 = (c)iterator2.next();
                        if (trackrunbox.isSampleSizePresent())
                        {
                            long l6 = c1.b();
                            hashmap.put(Long.valueOf(l3 + l2), Long.valueOf(l6));
                            l3 += l6;
                        } else
                        if (trackfragmentheaderbox.hasDefaultSampleSize())
                        {
                            long l5 = trackfragmentheaderbox.getDefaultSampleSize();
                            hashmap.put(Long.valueOf(l3 + l2), Long.valueOf(l5));
                            l3 += l5;
                        } else
                        {
                            if (trackextendsbox == null)
                            {
                                throw new RuntimeException("File doesn't contain trex box but track fragments aren't fully self contained. Cannot determine sample size.");
                            }
                            long l4 = trackextendsbox.getDefaultSampleSize();
                            hashmap.put(Long.valueOf(l3 + l2), Long.valueOf(l4));
                            l3 += l4;
                        }
                    }
                }
            }
        } while (true);
        return hashmap;
    }

    private void a(IsoFile isofile)
    {
        LinkedList linkedlist;
label0:
        {
            c = isofile;
            linkedlist = new LinkedList();
            Iterator iterator = c.getBoxes().iterator();
            long l = 0L;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                com.coremedia.iso.boxes.a a1 = (com.coremedia.iso.boxes.a)iterator.next();
                long l1 = a1.getSize();
                if ("mdat".equals(a1.getType()))
                {
                    if (!(a1 instanceof MediaDataBox))
                    {
                        break;
                    }
                    long l2 = l + (long)((MediaDataBox)a1).getHeader().limit();
                    d.put((MediaDataBox)a1, Long.valueOf(l2));
                    e.put((MediaDataBox)a1, Long.valueOf(l2 + l1));
                    linkedlist.add((MediaDataBox)a1);
                }
                l += l1;
            } while (true);
            throw new RuntimeException("Sample need to be in mdats and mdats need to be instanceof MediaDataBox");
        }
        f = (MediaDataBox[])linkedlist.toArray(new MediaDataBox[linkedlist.size()]);
    }

    private void a(Map map)
    {
        ArrayList arraylist = new ArrayList(map.keySet());
        Collections.sort(arraylist);
        long al[] = new long[b.length + arraylist.size()];
        System.arraycopy(b, 0, al, 0, b.length);
        long al1[] = new long[a.length + arraylist.size()];
        System.arraycopy(a, 0, al1, 0, a.length);
        for (int i = 0; i < arraylist.size(); i++)
        {
            al1[i + a.length] = ((Long)arraylist.get(i)).longValue();
            al[i + b.length] = ((Long)map.get(arraylist.get(i))).longValue();
        }

        b = al;
        a = al1;
    }

    public final Object get(int i)
    {
        return a(i);
    }

    public final int size()
    {
        return b.length;
    }
}
