// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4;

import com.googlecode.mp4parser.boxes.mp4.a.h;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4:
//            AbstractDescriptorBox

public class ESDescriptorBox extends AbstractDescriptorBox
{

    public static final String TYPE = "esds";

    public ESDescriptorBox()
    {
        super("esds");
    }

    public h getEsDescriptor()
    {
        return (h)super.getDescriptor();
    }
}
