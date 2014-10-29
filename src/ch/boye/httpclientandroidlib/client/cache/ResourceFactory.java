// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.cache;

import java.io.InputStream;

// Referenced classes of package ch.boye.httpclientandroidlib.client.cache:
//            Resource, InputLimit

public interface ResourceFactory
{

    public abstract Resource copy(String s, Resource resource);

    public abstract Resource generate(String s, InputStream inputstream, InputLimit inputlimit);
}
