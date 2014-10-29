// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthNotAuthorizedException;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.http.HttpResponse;

// Referenced classes of package oauth.signpost:
//            OAuthProvider, OAuthConsumer, OAuth, OAuthProviderListener

public abstract class AbstractOAuthProvider
    implements OAuthProvider
{

    private static final long serialVersionUID = 1L;
    private String accessTokenEndpointUrl;
    private String authorizationWebsiteUrl;
    private Map defaultHeaders;
    private boolean isOAuth10a;
    private transient OAuthProviderListener listener;
    private String requestTokenEndpointUrl;
    private HttpParameters responseParameters;

    public AbstractOAuthProvider(String s, String s1, String s2)
    {
        requestTokenEndpointUrl = s;
        accessTokenEndpointUrl = s1;
        authorizationWebsiteUrl = s2;
        responseParameters = new HttpParameters();
        defaultHeaders = new HashMap();
    }

    protected void closeConnection(HttpRequest httprequest, HttpResponse httpresponse)
    {
    }

    protected abstract HttpRequest createRequest(String s);

    public String getAccessTokenEndpointUrl()
    {
        return accessTokenEndpointUrl;
    }

    public String getAuthorizationWebsiteUrl()
    {
        return authorizationWebsiteUrl;
    }

    public Map getRequestHeaders()
    {
        return defaultHeaders;
    }

    public String getRequestTokenEndpointUrl()
    {
        return requestTokenEndpointUrl;
    }

    protected String getResponseParameter(String s)
    {
        return responseParameters.getFirst(s);
    }

    public HttpParameters getResponseParameters()
    {
        return responseParameters;
    }

    protected void handleUnexpectedResponse(int i, HttpResponse httpresponse)
    {
        if (httpresponse == null)
        {
            return;
        }
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(httpresponse.getContent()));
        StringBuilder stringbuilder = new StringBuilder();
        for (String s = bufferedreader.readLine(); s != null; s = bufferedreader.readLine())
        {
            stringbuilder.append(s);
        }

        switch (i)
        {
        default:
            throw new OAuthCommunicationException((new StringBuilder("Service provider responded in error: ")).append(i).append(" (").append(httpresponse.getReasonPhrase()).append(")").toString(), stringbuilder.toString());

        case 401: 
            throw new OAuthNotAuthorizedException(stringbuilder.toString());
        }
    }

    public boolean isOAuth10a()
    {
        return isOAuth10a;
    }

    public void removeListener(OAuthProviderListener oauthproviderlistener)
    {
        listener = null;
    }

    public void retrieveAccessToken(OAuthConsumer oauthconsumer, String s)
    {
        if (oauthconsumer.getToken() == null || oauthconsumer.getTokenSecret() == null)
        {
            throw new OAuthExpectationFailedException("Authorized request token or token secret not set. Did you retrieve an authorized request token before?");
        }
        if (isOAuth10a && s != null)
        {
            retrieveToken(oauthconsumer, accessTokenEndpointUrl, new String[] {
                "oauth_verifier", s
            });
            return;
        } else
        {
            retrieveToken(oauthconsumer, accessTokenEndpointUrl, new String[0]);
            return;
        }
    }

    public String retrieveRequestToken(OAuthConsumer oauthconsumer, String s)
    {
        oauthconsumer.setTokenWithSecret(null, null);
        retrieveToken(oauthconsumer, requestTokenEndpointUrl, new String[] {
            "oauth_callback", s
        });
        String s1 = responseParameters.getFirst("oauth_callback_confirmed");
        responseParameters.remove("oauth_callback_confirmed");
        isOAuth10a = Boolean.TRUE.toString().equals(s1);
        if (isOAuth10a)
        {
            String s3 = authorizationWebsiteUrl;
            String as1[] = new String[2];
            as1[0] = "oauth_token";
            as1[1] = oauthconsumer.getToken();
            return OAuth.addQueryParameters(s3, as1);
        } else
        {
            String s2 = authorizationWebsiteUrl;
            String as[] = new String[4];
            as[0] = "oauth_token";
            as[1] = oauthconsumer.getToken();
            as[2] = "oauth_callback";
            as[3] = s;
            return OAuth.addQueryParameters(s2, as);
        }
    }

    protected transient void retrieveToken(OAuthConsumer oauthconsumer, String s, String as[])
    {
        HttpResponse httpresponse;
        Map map;
        httpresponse = null;
        map = getRequestHeaders();
        if (oauthconsumer.getConsumerKey() == null || oauthconsumer.getConsumerSecret() == null)
        {
            throw new OAuthExpectationFailedException("Consumer key or secret not set");
        }
        HttpRequest httprequest2 = createRequest(s);
        HttpRequest httprequest1 = httprequest2;
        Iterator iterator = map.keySet().iterator();
_L3:
        boolean flag = iterator.hasNext();
        httpresponse = null;
        if (!flag) goto _L2; else goto _L1
_L1:
        String s1 = (String)iterator.next();
        httprequest1.setHeader(s1, (String)map.get(s1));
          goto _L3
        OAuthNotAuthorizedException oauthnotauthorizedexception;
        oauthnotauthorizedexception;
        HttpResponse httpresponse1;
        HttpRequest httprequest;
        httpresponse1 = null;
        httprequest = httprequest1;
_L7:
        throw oauthnotauthorizedexception;
        Exception exception;
        exception;
        httprequest1 = httprequest;
        httpresponse = httpresponse1;
_L4:
        Exception exception2;
        OAuthExpectationFailedException oauthexpectationfailedexception;
        OAuthProviderListener oauthproviderlistener;
        OAuthProviderListener oauthproviderlistener1;
        HttpResponse httpresponse2;
        int i;
        OAuthProviderListener oauthproviderlistener2;
        boolean flag1;
        boolean flag2;
        HttpParameters httpparameters;
        String s2;
        String s3;
        Exception exception3;
        Exception exception4;
        HttpParameters httpparameters1;
        try
        {
            closeConnection(httprequest1, httpresponse);
        }
        catch (Exception exception1)
        {
            throw new OAuthCommunicationException(exception1);
        }
        throw exception;
_L2:
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        httpparameters1 = new HttpParameters();
        httpparameters1.putAll(as, true);
        oauthconsumer.setAdditionalParameters(httpparameters1);
        oauthproviderlistener = listener;
        httpresponse = null;
        if (oauthproviderlistener == null)
        {
            break MISSING_BLOCK_LABEL_201;
        }
        listener.prepareRequest(httprequest1);
        oauthconsumer.sign(httprequest1);
        oauthproviderlistener1 = listener;
        httpresponse = null;
        if (oauthproviderlistener1 == null)
        {
            break MISSING_BLOCK_LABEL_235;
        }
        listener.prepareSubmission(httprequest1);
        httpresponse2 = sendRequest(httprequest1);
        httpresponse1 = httpresponse2;
        i = httpresponse1.getStatusCode();
        oauthproviderlistener2 = listener;
        flag1 = false;
        if (oauthproviderlistener2 == null)
        {
            break MISSING_BLOCK_LABEL_289;
        }
        flag2 = listener.onResponseReceived(httprequest1, httpresponse1);
        flag1 = flag2;
        if (flag1)
        {
            try
            {
                closeConnection(httprequest1, httpresponse1);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception4)
            {
                throw new OAuthCommunicationException(exception4);
            }
        }
        if (i < 300)
        {
            break MISSING_BLOCK_LABEL_331;
        }
        handleUnexpectedResponse(i, httpresponse1);
        httpparameters = OAuth.decodeForm(httpresponse1.getContent());
        s2 = httpparameters.getFirst("oauth_token");
        s3 = httpparameters.getFirst("oauth_token_secret");
        httpparameters.remove("oauth_token");
        httpparameters.remove("oauth_token_secret");
        setResponseParameters(httpparameters);
        if (s2 != null && s3 != null)
        {
            break MISSING_BLOCK_LABEL_406;
        }
        throw new OAuthExpectationFailedException("Request token or token secret not set in server reply. The service provider you use is probably buggy.");
        oauthconsumer.setTokenWithSecret(s2, s3);
        try
        {
            closeConnection(httprequest1, httpresponse1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception3)
        {
            throw new OAuthCommunicationException(exception3);
        }
        oauthexpectationfailedexception;
        httprequest1 = null;
_L6:
        throw oauthexpectationfailedexception;
_L5:
        throw new OAuthCommunicationException(exception2);
        exception;
        httpresponse = null;
        httprequest1 = null;
          goto _L4
        exception;
        httpresponse = httpresponse1;
          goto _L4
        exception2;
        httpresponse = null;
          goto _L5
        exception2;
        httpresponse = httpresponse1;
          goto _L5
        oauthexpectationfailedexception;
        httpresponse = null;
          goto _L6
        oauthexpectationfailedexception;
        httpresponse = httpresponse1;
          goto _L6
        oauthnotauthorizedexception;
        httpresponse1 = null;
        httprequest = null;
          goto _L7
        oauthnotauthorizedexception;
        httprequest = httprequest1;
          goto _L7
        exception;
          goto _L4
        exception2;
        httpresponse = null;
        httprequest1 = null;
          goto _L5
    }

    protected abstract HttpResponse sendRequest(HttpRequest httprequest);

    public void setListener(OAuthProviderListener oauthproviderlistener)
    {
        listener = oauthproviderlistener;
    }

    public void setOAuth10a(boolean flag)
    {
        isOAuth10a = flag;
    }

    public void setRequestHeader(String s, String s1)
    {
        defaultHeaders.put(s, s1);
    }

    public void setResponseParameters(HttpParameters httpparameters)
    {
        responseParameters = httpparameters;
    }
}
