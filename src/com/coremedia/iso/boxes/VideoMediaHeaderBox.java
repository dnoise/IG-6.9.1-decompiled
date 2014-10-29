// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes:
//            AbstractMediaHeaderBox

public class VideoMediaHeaderBox extends AbstractMediaHeaderBox
{

    public static final String TYPE = "vmhd";
    private int graphicsmode;
    private int opcolor[] = {
        0, 0, 0
    };

    public VideoMediaHeaderBox()
    {
        super("vmhd");
        graphicsmode = 0;
        setFlags(1);
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        graphicsmode = e.d(bytebuffer);
        opcolor = new int[3];
        for (int i = 0; i < 3; i++)
        {
            opcolor[i] = e.d(bytebuffer);
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, graphicsmode);
        int ai[] = opcolor;
        int i = ai.length;
        for (int j = 0; j < i; j++)
        {
            g.b(bytebuffer, ai[j]);
        }

    }

    protected long getContentSize()
    {
        return 12L;
    }

    public int getGraphicsmode()
    {
        return graphicsmode;
    }

    public int[] getOpcolor()
    {
        return opcolor;
    }

    public void setGraphicsmode(int i)
    {
        graphicsmode = i;
    }

    public void setOpcolor(int ai[])
    {
        opcolor = ai;
    }

    public String toString()
    {
        return (new StringBuilder("VideoMediaHeaderBox[graphicsmode=")).append(getGraphicsmode()).append(";opcolor0=").append(getOpcolor()[0]).append(";opcolor1=").append(getOpcolor()[1]).append(";opcolor2=").append(getOpcolor()[2]).append("]").toString();
    }
}
