// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost.signature;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import oauth.signpost.OAuth;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;

// Referenced classes of package oauth.signpost.signature:
//            OAuthMessageSigner, SignatureBaseString

public class HmacSha1MessageSigner extends OAuthMessageSigner
{

    private static final String MAC_NAME = "HmacSHA1";

    public HmacSha1MessageSigner()
    {
    }

    public String getSignatureMethod()
    {
        return "HMAC-SHA1";
    }

    public String sign(HttpRequest httprequest, HttpParameters httpparameters)
    {
        String s1;
        try
        {
            SecretKeySpec secretkeyspec = new SecretKeySpec((new StringBuilder()).append(OAuth.percentEncode(getConsumerSecret())).append('&').append(OAuth.percentEncode(getTokenSecret())).toString().getBytes("UTF-8"), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretkeyspec);
            String s = (new SignatureBaseString(httprequest, httpparameters)).generate();
            OAuth.debugOut("SBS", s);
            s1 = base64Encode(mac.doFinal(s.getBytes("UTF-8"))).trim();
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new OAuthMessageSignerException(generalsecurityexception);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new OAuthMessageSignerException(unsupportedencodingexception);
        }
        return s1;
    }
}
