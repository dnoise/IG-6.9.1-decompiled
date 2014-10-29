// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost.http;

import java.io.InputStream;

public interface HttpResponse
{

    public abstract InputStream getContent();

    public abstract String getReasonPhrase();

    public abstract int getStatusCode();

    public abstract Object unwrap();
}
