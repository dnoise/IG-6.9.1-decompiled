// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes:
//            ChunkOffsetBox

public class StaticChunkOffsetBox extends ChunkOffsetBox
{

    public static final String TYPE = "stco";
    private long chunkOffsets[];

    public StaticChunkOffsetBox()
    {
        super("stco");
        chunkOffsets = new long[0];
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i = b.a(e.b(bytebuffer));
        chunkOffsets = new long[i];
        for (int j = 0; j < i; j++)
        {
            chunkOffsets[j] = e.b(bytebuffer);
        }

    }

    public long[] getChunkOffsets()
    {
        return chunkOffsets;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, chunkOffsets.length);
        long al[] = chunkOffsets;
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            g.b(bytebuffer, al[j]);
        }

    }

    protected long getContentSize()
    {
        return (long)(8 + 4 * chunkOffsets.length);
    }

    public void setChunkOffsets(long al[])
    {
        chunkOffsets = al;
    }
}
