// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib;


// Referenced classes of package ch.boye.httpclientandroidlib:
//            HttpConnection, HttpEntityEnclosingRequest, HttpRequest, HttpResponse

public interface HttpServerConnection
    extends HttpConnection
{

    public abstract void flush();

    public abstract void receiveRequestEntity(HttpEntityEnclosingRequest httpentityenclosingrequest);

    public abstract HttpRequest receiveRequestHeader();

    public abstract void sendResponseEntity(HttpResponse httpresponse);

    public abstract void sendResponseHeader(HttpResponse httpresponse);
}
