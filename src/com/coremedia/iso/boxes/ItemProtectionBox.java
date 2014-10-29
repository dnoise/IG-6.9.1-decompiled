// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.FullContainerBox;
import java.nio.ByteBuffer;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            SchemeInformationBox

public class ItemProtectionBox extends FullContainerBox
{

    public static final String TYPE = "ipro";

    public ItemProtectionBox()
    {
        super("ipro");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        e.d(bytebuffer);
        parseChildBoxes(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, getBoxes().size());
        writeChildBoxes(bytebuffer);
    }

    public SchemeInformationBox getItemProtectionScheme()
    {
        if (!getBoxes(com/coremedia/iso/boxes/SchemeInformationBox).isEmpty())
        {
            return (SchemeInformationBox)getBoxes(com/coremedia/iso/boxes/SchemeInformationBox).get(0);
        } else
        {
            return null;
        }
    }
}
