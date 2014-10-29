// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.SampleDependencyTypeBox;
import com.coremedia.iso.boxes.a;
import com.coremedia.iso.boxes.g;
import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            TrackFragmentBox, TrackFragmentHeaderBox, TrackRunBox

public class MovieFragmentBox extends AbstractContainerBox
{

    public static final String TYPE = "moof";

    public MovieFragmentBox()
    {
        super("moof");
    }

    public long getOffset()
    {
        long l;
        long l1;
        for (l = 0L; getParent() != null; l = l1)
        {
            Iterator iterator = getParent().getBoxes().iterator();
            l1 = l;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                a a1 = (a)iterator.next();
                if (this == a1)
                {
                    break;
                }
                l1 += a1.getSize();
            } while (true);
            this = getParent();
        }

        return l;
    }

    public List getSyncSamples(SampleDependencyTypeBox sampledependencytypebox)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = sampledependencytypebox.getEntries().iterator();
        for (long l = 1L; iterator.hasNext(); l++)
        {
            if (((g)iterator.next()).a() == 2)
            {
                arraylist.add(Long.valueOf(l));
            }
        }

        return arraylist;
    }

    public int getTrackCount()
    {
        return getBoxes(com/coremedia/iso/boxes/fragment/TrackFragmentBox, false).size();
    }

    public List getTrackFragmentHeaderBoxes()
    {
        return getBoxes(com/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox, true);
    }

    public long[] getTrackNumbers()
    {
        List list = getBoxes(com/coremedia/iso/boxes/fragment/TrackFragmentBox, false);
        long al[] = new long[list.size()];
        for (int i = 0; i < list.size(); i++)
        {
            al[i] = ((TrackFragmentBox)list.get(i)).getTrackFragmentHeaderBox().getTrackId();
        }

        return al;
    }

    public List getTrackRunBoxes()
    {
        return getBoxes(com/coremedia/iso/boxes/fragment/TrackRunBox, true);
    }
}
