// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.b;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.coremedia.iso.boxes:
//            ContainerBox

public interface a
{

    public abstract void getBox(WritableByteChannel writablebytechannel);

    public abstract ContainerBox getParent();

    public abstract long getSize();

    public abstract String getType();

    public abstract void parse(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, long l, b b);

    public abstract void setParent(ContainerBox containerbox);
}
