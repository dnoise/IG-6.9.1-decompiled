// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes:
//            AbstractMediaHeaderBox

public class SoundMediaHeaderBox extends AbstractMediaHeaderBox
{

    public static final String TYPE = "smhd";
    private float balance;

    public SoundMediaHeaderBox()
    {
        super("smhd");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        balance = e.j(bytebuffer);
        e.d(bytebuffer);
    }

    public float getBalance()
    {
        return balance;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, balance);
        g.b(bytebuffer, 0);
    }

    protected long getContentSize()
    {
        return 8L;
    }

    public String toString()
    {
        return (new StringBuilder("SoundMediaHeaderBox[balance=")).append(getBalance()).append("]").toString();
    }
}
