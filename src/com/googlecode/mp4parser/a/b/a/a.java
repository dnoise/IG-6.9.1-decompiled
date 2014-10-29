// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.a.b.a;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.TrackBox;
import com.googlecode.mp4parser.a.c;
import com.googlecode.mp4parser.a.d;
import java.nio.channels.ReadableByteChannel;
import java.util.Iterator;
import java.util.List;

public final class a
{

    public static c a(ReadableByteChannel readablebytechannel)
    {
        IsoFile isofile = new IsoFile(readablebytechannel);
        c c1 = new c();
        for (Iterator iterator = isofile.getMovieBox().getBoxes(com/coremedia/iso/boxes/TrackBox).iterator(); iterator.hasNext(); c1.a(new d((TrackBox)iterator.next()))) { }
        return c1;
    }
}
