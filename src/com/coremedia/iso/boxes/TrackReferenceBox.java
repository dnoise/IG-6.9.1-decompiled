// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractContainerBox;

public class TrackReferenceBox extends AbstractContainerBox
{

    public static final String TYPE = "tref";

    public TrackReferenceBox()
    {
        super("tref");
    }
}
