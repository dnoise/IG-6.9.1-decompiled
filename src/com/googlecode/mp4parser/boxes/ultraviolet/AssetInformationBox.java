// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.ultraviolet;

import com.coremedia.iso.e;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class AssetInformationBox extends AbstractFullBox
{

    static final boolean $assertionsDisabled;
    String apid;
    String profileVersion;

    public AssetInformationBox()
    {
        super("ainf");
        apid = "";
        profileVersion = "0000";
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        profileVersion = e.a(bytebuffer, 4);
        apid = e.g(bytebuffer);
    }

    public String getApid()
    {
        return apid;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(k.a(profileVersion), 0, 4);
        bytebuffer.put(k.a(apid));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(9 + k.b(apid));
    }

    public String getProfileVersion()
    {
        return profileVersion;
    }

    public void setApid(String s)
    {
        apid = s;
    }

    public void setProfileVersion(String s)
    {
        if (!$assertionsDisabled && (s == null || s.length() != 4))
        {
            throw new AssertionError();
        } else
        {
            profileVersion = s;
            return;
        }
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
