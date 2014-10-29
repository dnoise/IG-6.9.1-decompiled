// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractFullBox;

public abstract class ChunkOffsetBox extends AbstractFullBox
{

    public ChunkOffsetBox(String s)
    {
        super(s);
    }

    public abstract long[] getChunkOffsets();

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append("[entryCount=").append(getChunkOffsets().length).append("]").toString();
    }
}
