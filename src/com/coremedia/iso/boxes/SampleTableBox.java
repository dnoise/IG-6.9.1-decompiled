// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            a, ChunkOffsetBox, CompositionTimeToSample, SampleDependencyTypeBox, 
//            SampleDescriptionBox, SampleSizeBox, SampleToChunkBox, SyncSampleBox, 
//            TimeToSampleBox

public class SampleTableBox extends AbstractContainerBox
{

    public static final String TYPE = "stbl";

    public SampleTableBox()
    {
        super("stbl");
    }

    public ChunkOffsetBox getChunkOffsetBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof ChunkOffsetBox)
            {
                return (ChunkOffsetBox)a1;
            }
        }

        return null;
    }

    public CompositionTimeToSample getCompositionTimeToSample()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof CompositionTimeToSample)
            {
                return (CompositionTimeToSample)a1;
            }
        }

        return null;
    }

    public SampleDependencyTypeBox getSampleDependencyTypeBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof SampleDependencyTypeBox)
            {
                return (SampleDependencyTypeBox)a1;
            }
        }

        return null;
    }

    public SampleDescriptionBox getSampleDescriptionBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof SampleDescriptionBox)
            {
                return (SampleDescriptionBox)a1;
            }
        }

        return null;
    }

    public SampleSizeBox getSampleSizeBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof SampleSizeBox)
            {
                return (SampleSizeBox)a1;
            }
        }

        return null;
    }

    public SampleToChunkBox getSampleToChunkBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof SampleToChunkBox)
            {
                return (SampleToChunkBox)a1;
            }
        }

        return null;
    }

    public SyncSampleBox getSyncSampleBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof SyncSampleBox)
            {
                return (SyncSampleBox)a1;
            }
        }

        return null;
    }

    public TimeToSampleBox getTimeToSampleBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof TimeToSampleBox)
            {
                return (TimeToSampleBox)a1;
            }
        }

        return null;
    }

    public void setChunkOffsetBox(ChunkOffsetBox chunkoffsetbox)
    {
        for (int i = 0; i < boxes.size(); i++)
        {
            if ((a)boxes.get(i) instanceof ChunkOffsetBox)
            {
                boxes.set(i, chunkoffsetbox);
            }
        }

    }
}
