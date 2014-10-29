// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            a, AbstractMediaHeaderBox, SampleTableBox

public class MediaInformationBox extends AbstractContainerBox
{

    public static final String TYPE = "minf";

    public MediaInformationBox()
    {
        super("minf");
    }

    public AbstractMediaHeaderBox getMediaHeaderBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof AbstractMediaHeaderBox)
            {
                return (AbstractMediaHeaderBox)a1;
            }
        }

        return null;
    }

    public SampleTableBox getSampleTableBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof SampleTableBox)
            {
                return (SampleTableBox)a1;
            }
        }

        return null;
    }
}
