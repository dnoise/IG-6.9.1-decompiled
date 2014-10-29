// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            a, c, TrackFragmentBox, TrackFragmentHeaderBox, 
//            TrackExtendsBox

public class TrackRunBox extends AbstractFullBox
{

    public static final String TYPE = "trun";
    private int dataOffset;
    private List entries;
    private a firstSampleFlags;

    public TrackRunBox()
    {
        super("trun");
        entries = new ArrayList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        long l = e.b(bytebuffer);
        if ((1 & getFlags()) == 1)
        {
            dataOffset = b.a(e.b(bytebuffer));
        } else
        {
            dataOffset = -1;
        }
        if ((4 & getFlags()) == 4)
        {
            firstSampleFlags = new a(bytebuffer);
        }
        for (int i = 0; (long)i < l; i++)
        {
            c c1 = new c();
            if ((0x100 & getFlags()) == 256)
            {
                c.a(c1, e.b(bytebuffer));
            }
            if ((0x200 & getFlags()) == 512)
            {
                com.coremedia.iso.boxes.fragment.c.b(c1, e.b(bytebuffer));
            }
            if ((0x400 & getFlags()) == 1024)
            {
                c.a(c1, new a(bytebuffer));
            }
            if ((0x800 & getFlags()) == 2048)
            {
                c.a(c1, bytebuffer.getInt());
            }
            entries.add(c1);
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, entries.size());
        int i = getFlags();
        if ((i & 1) == 1)
        {
            g.b(bytebuffer, dataOffset);
        }
        if ((i & 4) == 4)
        {
            firstSampleFlags.a(bytebuffer);
        }
        Iterator iterator = entries.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            c c1 = (c)iterator.next();
            if ((i & 0x100) == 256)
            {
                g.b(bytebuffer, c.a(c1));
            }
            if ((i & 0x200) == 512)
            {
                g.b(bytebuffer, com.coremedia.iso.boxes.fragment.c.b(c1));
            }
            if ((i & 0x400) == 1024)
            {
                c.c(c1).a(bytebuffer);
            }
            if ((i & 0x800) == 2048)
            {
                bytebuffer.putInt(c.d(c1));
            }
        } while (true);
    }

    protected long getContentSize()
    {
        long l = 8L;
        int i = getFlags();
        if ((i & 1) == 1)
        {
            l = 12L;
        }
        long l1;
        long l2;
        if ((i & 4) == 4)
        {
            l1 = l + 4L;
        } else
        {
            l1 = l;
        }
        l2 = 0L;
        if ((i & 0x100) == 256)
        {
            l2 = 4L;
        }
        if ((i & 0x200) == 512)
        {
            l2 += 4L;
        }
        if ((i & 0x400) == 1024)
        {
            l2 += 4L;
        }
        if ((i & 0x800) == 2048)
        {
            l2 += 4L;
        }
        return l1 + l2 * (long)entries.size();
    }

    public int getDataOffset()
    {
        return dataOffset;
    }

    public List getEntries()
    {
        return entries;
    }

    public a getFirstSampleFlags()
    {
        return firstSampleFlags;
    }

    public long[] getSampleCompositionTimeOffsets()
    {
        if (isSampleCompositionTimeOffsetPresent())
        {
            long al[] = new long[entries.size()];
            for (int i = 0; i < al.length; i++)
            {
                al[i] = ((c)entries.get(i)).d();
            }

            return al;
        } else
        {
            return null;
        }
    }

    public long getSampleCount()
    {
        return (long)entries.size();
    }

    public TrackExtendsBox getTrackExtendsBox()
    {
        TrackFragmentHeaderBox trackfragmentheaderbox = ((TrackFragmentBox)getParent()).getTrackFragmentHeaderBox();
        List list = trackfragmentheaderbox.getIsoFile().getBoxes(com/coremedia/iso/boxes/MovieBox);
        int i = list.size();
        TrackExtendsBox trackextendsbox = null;
        if (i != 0)
        {
            Iterator iterator = ((MovieBox)list.get(0)).getBoxes(com/coremedia/iso/boxes/fragment/TrackExtendsBox, true).iterator();
            while (iterator.hasNext()) 
            {
                TrackExtendsBox trackextendsbox1 = (TrackExtendsBox)iterator.next();
                if (trackextendsbox1.getTrackId() != trackfragmentheaderbox.getTrackId())
                {
                    trackextendsbox1 = trackextendsbox;
                }
                trackextendsbox = trackextendsbox1;
            }
        }
        return trackextendsbox;
    }

    public boolean isDataOffsetPresent()
    {
        return (1 & getFlags()) == 1;
    }

    public boolean isFirstSampleFlagsPresent()
    {
        return (4 & getFlags()) == 4;
    }

    public boolean isSampleCompositionTimeOffsetPresent()
    {
        return (0x800 & getFlags()) == 2048;
    }

    public boolean isSampleDurationPresent()
    {
        return (0x100 & getFlags()) == 256;
    }

    public boolean isSampleFlagsPresent()
    {
        return (0x400 & getFlags()) == 1024;
    }

    public boolean isSampleSizePresent()
    {
        return (0x200 & getFlags()) == 512;
    }

    public void setDataOffset(int i)
    {
        if (i == -1)
        {
            setFlags(0xfffffe & getFlags());
        } else
        {
            setFlags(1 | getFlags());
        }
        dataOffset = i;
    }

    public void setDataOffsetPresent(boolean flag)
    {
        if (flag)
        {
            setFlags(1 | getFlags());
            return;
        } else
        {
            setFlags(0xfffffe & getFlags());
            return;
        }
    }

    public void setEntries(List list)
    {
        entries = list;
    }

    public void setFirstSampleFlags(a a1)
    {
        if (a1 == null)
        {
            setFlags(0xfffffb & getFlags());
        } else
        {
            setFlags(4 | getFlags());
        }
        firstSampleFlags = a1;
    }

    public void setSampleCompositionTimeOffsetPresent(boolean flag)
    {
        if (flag)
        {
            setFlags(0x800 | getFlags());
            return;
        } else
        {
            setFlags(0xfff7ff & getFlags());
            return;
        }
    }

    public void setSampleDurationPresent(boolean flag)
    {
        if (flag)
        {
            setFlags(0x100 | getFlags());
            return;
        } else
        {
            setFlags(0xfffeff & getFlags());
            return;
        }
    }

    public void setSampleFlagsPresent(boolean flag)
    {
        if (flag)
        {
            setFlags(0x400 | getFlags());
            return;
        } else
        {
            setFlags(0xfffbff & getFlags());
            return;
        }
    }

    public void setSampleSizePresent(boolean flag)
    {
        if (flag)
        {
            setFlags(0x200 | getFlags());
            return;
        } else
        {
            setFlags(0xfffdff & getFlags());
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TrackRunBox");
        stringbuilder.append("{sampleCount=").append(entries.size());
        stringbuilder.append(", dataOffset=").append(dataOffset);
        stringbuilder.append(", dataOffsetPresent=").append(isDataOffsetPresent());
        stringbuilder.append(", sampleSizePresent=").append(isSampleSizePresent());
        stringbuilder.append(", sampleDurationPresent=").append(isSampleDurationPresent());
        stringbuilder.append(", sampleFlagsPresentPresent=").append(isSampleFlagsPresent());
        stringbuilder.append(", sampleCompositionTimeOffsetPresent=").append(isSampleCompositionTimeOffsetPresent());
        stringbuilder.append(", firstSampleFlags=").append(firstSampleFlags);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
