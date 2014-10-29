// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            a, MovieHeaderBox, TrackBox, TrackHeaderBox

public class MovieBox extends AbstractContainerBox
{

    public static final String TYPE = "moov";

    public MovieBox()
    {
        super("moov");
    }

    public MovieHeaderBox getMovieHeaderBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof MovieHeaderBox)
            {
                return (MovieHeaderBox)a1;
            }
        }

        return null;
    }

    public int getTrackCount()
    {
        return getBoxes(com/coremedia/iso/boxes/TrackBox).size();
    }

    public long[] getTrackNumbers()
    {
        List list = getBoxes(com/coremedia/iso/boxes/TrackBox);
        long al[] = new long[list.size()];
        for (int i = 0; i < list.size(); i++)
        {
            al[i] = ((TrackBox)(AbstractBox)list.get(i)).getTrackHeaderBox().getTrackId();
        }

        return al;
    }
}
