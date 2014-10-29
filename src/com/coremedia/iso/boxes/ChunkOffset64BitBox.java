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

public class ChunkOffset64BitBox extends ChunkOffsetBox
{

    public static final String TYPE = "co64";
    private long chunkOffsets[];

    public ChunkOffset64BitBox()
    {
        super("co64");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i = b.a(e.b(bytebuffer));
        chunkOffsets = new long[i];
        for (int j = 0; j < i; j++)
        {
            chunkOffsets[j] = e.h(bytebuffer);
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
            g.a(bytebuffer, al[j]);
        }

    }

    protected long getContentSize()
    {
        return (long)(8 + 8 * chunkOffsets.length);
    }
}
