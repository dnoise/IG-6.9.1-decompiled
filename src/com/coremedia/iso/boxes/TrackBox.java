// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            a, MediaBox, MediaInformationBox, TrackHeaderBox, 
//            SampleTableBox

public class TrackBox extends AbstractContainerBox
{

    public static final String TYPE = "trak";

    public TrackBox()
    {
        super("trak");
    }

    public MediaBox getMediaBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof MediaBox)
            {
                return (MediaBox)a1;
            }
        }

        return null;
    }

    public SampleTableBox getSampleTableBox()
    {
        MediaBox mediabox = getMediaBox();
        if (mediabox != null)
        {
            MediaInformationBox mediainformationbox = mediabox.getMediaInformationBox();
            if (mediainformationbox != null)
            {
                return mediainformationbox.getSampleTableBox();
            }
        }
        return null;
    }

    public TrackHeaderBox getTrackHeaderBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof TrackHeaderBox)
            {
                return (TrackHeaderBox)a1;
            }
        }

        return null;
    }
}
