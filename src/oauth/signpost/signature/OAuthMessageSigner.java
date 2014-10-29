// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost.signature;

import b.a.a.a.a.a;
import java.io.ObjectInputStream;
import java.io.Serializable;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;

public abstract class OAuthMessageSigner
    implements Serializable
{

    private static final long serialVersionUID = 0x3db29529c4356102L;
    private transient a base64;
    private String consumerSecret;
    private String tokenSecret;

    public OAuthMessageSigner()
    {
        base64 = new a();
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.defaultReadObject();
        base64 = new a();
    }

    protected String base64Encode(byte abyte0[])
    {
        return new String(base64.b(abyte0));
    }

    protected byte[] decodeBase64(String s)
    {
        return base64.a(s.getBytes());
    }

    public String getConsumerSecret()
    {
        return consumerSecret;
    }

    public abstract String getSignatureMethod();

    public String getTokenSecret()
    {
        return tokenSecret;
    }

    public void setConsumerSecret(String s)
    {
        consumerSecret = s;
    }

    public void setTokenSecret(String s)
    {
        tokenSecret = s;
    }

    public abstract String sign(HttpRequest httprequest, HttpParameters httpparameters);
}
