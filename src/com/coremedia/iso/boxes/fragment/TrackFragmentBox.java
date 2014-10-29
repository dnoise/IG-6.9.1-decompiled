// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.boxes.a;
import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            TrackFragmentHeaderBox

public class TrackFragmentBox extends AbstractContainerBox
{

    public static final String TYPE = "traf";

    public TrackFragmentBox()
    {
        super("traf");
    }

    public TrackFragmentHeaderBox getTrackFragmentHeaderBox()
    {
        for (Iterator iterator = getBoxes().iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof TrackFragmentHeaderBox)
            {
                return (TrackFragmentHeaderBox)a1;
            }
        }

        return null;
    }
}
