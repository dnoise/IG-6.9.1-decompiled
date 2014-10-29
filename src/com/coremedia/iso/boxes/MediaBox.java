// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            a, HandlerBox, MediaHeaderBox, MediaInformationBox

public class MediaBox extends AbstractContainerBox
{

    public static final String TYPE = "mdia";

    public MediaBox()
    {
        super("mdia");
    }

    public HandlerBox getHandlerBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof HandlerBox)
            {
                return (HandlerBox)a1;
            }
        }

        return null;
    }

    public MediaHeaderBox getMediaHeaderBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof MediaHeaderBox)
            {
                return (MediaHeaderBox)a1;
            }
        }

        return null;
    }

    public MediaInformationBox getMediaInformationBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof MediaInformationBox)
            {
                return (MediaInformationBox)a1;
            }
        }

        return null;
    }
}
