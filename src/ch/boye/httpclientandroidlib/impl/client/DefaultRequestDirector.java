// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client;

import ch.boye.httpclientandroidlib.ConnectionReuseStrategy;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpException;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.auth.AuthScheme;
import ch.boye.httpclientandroidlib.auth.AuthScope;
import ch.boye.httpclientandroidlib.auth.AuthState;
import ch.boye.httpclientandroidlib.auth.AuthenticationException;
import ch.boye.httpclientandroidlib.client.AuthenticationHandler;
import ch.boye.httpclientandroidlib.client.CredentialsProvider;
import ch.boye.httpclientandroidlib.client.HttpRequestRetryHandler;
import ch.boye.httpclientandroidlib.client.NonRepeatableRequestException;
import ch.boye.httpclientandroidlib.client.RedirectException;
import ch.boye.httpclientandroidlib.client.RedirectHandler;
import ch.boye.httpclientandroidlib.client.RedirectStrategy;
import ch.boye.httpclientandroidlib.client.RequestDirector;
import ch.boye.httpclientandroidlib.client.UserTokenHandler;
import ch.boye.httpclientandroidlib.client.methods.AbortableHttpRequest;
import ch.boye.httpclientandroidlib.client.methods.HttpUriRequest;
import ch.boye.httpclientandroidlib.client.params.HttpClientParams;
import ch.boye.httpclientandroidlib.client.utils.URIUtils;
import ch.boye.httpclientandroidlib.conn.BasicManagedEntity;
import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.conn.ClientConnectionRequest;
import ch.boye.httpclientandroidlib.conn.ConnectionKeepAliveStrategy;
import ch.boye.httpclientandroidlib.conn.ManagedClientConnection;
import ch.boye.httpclientandroidlib.conn.params.ConnManagerParams;
import ch.boye.httpclientandroidlib.conn.routing.BasicRouteDirector;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import ch.boye.httpclientandroidlib.conn.routing.HttpRouteDirector;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoutePlanner;
import ch.boye.httpclientandroidlib.conn.scheme.Scheme;
import ch.boye.httpclientandroidlib.conn.scheme.SchemeRegistry;
import ch.boye.httpclientandroidlib.entity.BufferedHttpEntity;
import ch.boye.httpclientandroidlib.impl.conn.ConnectionShutdownException;
import ch.boye.httpclientandroidlib.message.BasicHttpRequest;
import ch.boye.httpclientandroidlib.params.HttpConnectionParams;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.params.HttpProtocolParams;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import ch.boye.httpclientandroidlib.protocol.HttpProcessor;
import ch.boye.httpclientandroidlib.protocol.HttpRequestExecutor;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client:
//            DefaultRedirectStrategyAdaptor, RoutedRequest, RequestWrapper, EntityEnclosingRequestWrapper, 
//            TunnelRefusedException

public class DefaultRequestDirector
    implements RequestDirector
{

    protected final ClientConnectionManager connManager;
    private int execCount;
    protected final HttpProcessor httpProcessor;
    protected final ConnectionKeepAliveStrategy keepAliveStrategy;
    public HttpClientAndroidLog log;
    protected ManagedClientConnection managedConn;
    private int maxRedirects;
    protected final HttpParams params;
    protected final AuthenticationHandler proxyAuthHandler;
    protected final AuthState proxyAuthState;
    private int redirectCount;
    protected final RedirectHandler redirectHandler;
    protected final RedirectStrategy redirectStrategy;
    protected final HttpRequestExecutor requestExec;
    protected final HttpRequestRetryHandler retryHandler;
    protected final ConnectionReuseStrategy reuseStrategy;
    protected final HttpRoutePlanner routePlanner;
    protected final AuthenticationHandler targetAuthHandler;
    protected final AuthState targetAuthState;
    protected final UserTokenHandler userTokenHandler;
    private HttpHost virtualHost;

    public DefaultRequestDirector(HttpClientAndroidLog httpclientandroidlog, HttpRequestExecutor httprequestexecutor, ClientConnectionManager clientconnectionmanager, ConnectionReuseStrategy connectionreusestrategy, ConnectionKeepAliveStrategy connectionkeepalivestrategy, HttpRoutePlanner httprouteplanner, HttpProcessor httpprocessor, 
            HttpRequestRetryHandler httprequestretryhandler, RedirectStrategy redirectstrategy, AuthenticationHandler authenticationhandler, AuthenticationHandler authenticationhandler1, UserTokenHandler usertokenhandler, HttpParams httpparams)
    {
        redirectHandler = null;
        if (httpclientandroidlog == null)
        {
            throw new IllegalArgumentException("Log may not be null.");
        }
        if (httprequestexecutor == null)
        {
            throw new IllegalArgumentException("Request executor may not be null.");
        }
        if (clientconnectionmanager == null)
        {
            throw new IllegalArgumentException("Client connection manager may not be null.");
        }
        if (connectionreusestrategy == null)
        {
            throw new IllegalArgumentException("Connection reuse strategy may not be null.");
        }
        if (connectionkeepalivestrategy == null)
        {
            throw new IllegalArgumentException("Connection keep alive strategy may not be null.");
        }
        if (httprouteplanner == null)
        {
            throw new IllegalArgumentException("Route planner may not be null.");
        }
        if (httpprocessor == null)
        {
            throw new IllegalArgumentException("HTTP protocol processor may not be null.");
        }
        if (httprequestretryhandler == null)
        {
            throw new IllegalArgumentException("HTTP request retry handler may not be null.");
        }
        if (redirectstrategy == null)
        {
            throw new IllegalArgumentException("Redirect strategy may not be null.");
        }
        if (authenticationhandler == null)
        {
            throw new IllegalArgumentException("Target authentication handler may not be null.");
        }
        if (authenticationhandler1 == null)
        {
            throw new IllegalArgumentException("Proxy authentication handler may not be null.");
        }
        if (usertokenhandler == null)
        {
            throw new IllegalArgumentException("User token handler may not be null.");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            log = httpclientandroidlog;
            requestExec = httprequestexecutor;
            connManager = clientconnectionmanager;
            reuseStrategy = connectionreusestrategy;
            keepAliveStrategy = connectionkeepalivestrategy;
            routePlanner = httprouteplanner;
            httpProcessor = httpprocessor;
            retryHandler = httprequestretryhandler;
            redirectStrategy = redirectstrategy;
            targetAuthHandler = authenticationhandler;
            proxyAuthHandler = authenticationhandler1;
            userTokenHandler = usertokenhandler;
            params = httpparams;
            managedConn = null;
            execCount = 0;
            redirectCount = 0;
            maxRedirects = params.getIntParameter("http.protocol.max-redirects", 100);
            targetAuthState = new AuthState();
            proxyAuthState = new AuthState();
            return;
        }
    }

    public DefaultRequestDirector(HttpRequestExecutor httprequestexecutor, ClientConnectionManager clientconnectionmanager, ConnectionReuseStrategy connectionreusestrategy, ConnectionKeepAliveStrategy connectionkeepalivestrategy, HttpRoutePlanner httprouteplanner, HttpProcessor httpprocessor, HttpRequestRetryHandler httprequestretryhandler, 
            RedirectHandler redirecthandler, AuthenticationHandler authenticationhandler, AuthenticationHandler authenticationhandler1, UserTokenHandler usertokenhandler, HttpParams httpparams)
    {
        this(new HttpClientAndroidLog(ch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector), httprequestexecutor, clientconnectionmanager, connectionreusestrategy, connectionkeepalivestrategy, httprouteplanner, httpprocessor, httprequestretryhandler, ((RedirectStrategy) (new DefaultRedirectStrategyAdaptor(redirecthandler))), authenticationhandler, authenticationhandler1, usertokenhandler, httpparams);
    }

    private void abortConnection()
    {
        ManagedClientConnection managedclientconnection = managedConn;
        if (managedclientconnection == null) goto _L2; else goto _L1
_L1:
        managedConn = null;
        managedclientconnection.abortConnection();
_L4:
        managedclientconnection.releaseConnection();
_L2:
        return;
        IOException ioexception;
        ioexception;
        if (log.isDebugEnabled())
        {
            log.debug(ioexception.getMessage(), ioexception);
        }
        if (true) goto _L4; else goto _L3
_L3:
        IOException ioexception1;
        ioexception1;
        log.debug("Error releasing connection", ioexception1);
        return;
    }

    private void invalidateAuthIfSuccessful(AuthState authstate)
    {
        AuthScheme authscheme = authstate.getAuthScheme();
        if (authscheme != null && authscheme.isConnectionBased() && authscheme.isComplete() && authstate.getCredentials() != null)
        {
            authstate.invalidate();
        }
    }

    private void processChallenges(Map map, AuthState authstate, AuthenticationHandler authenticationhandler, HttpResponse httpresponse, HttpContext httpcontext)
    {
        AuthScheme authscheme = authstate.getAuthScheme();
        if (authscheme == null)
        {
            authscheme = authenticationhandler.selectScheme(map, httpresponse, httpcontext);
            authstate.setAuthScheme(authscheme);
        }
        AuthScheme authscheme1 = authscheme;
        String s = authscheme1.getSchemeName();
        Header header = (Header)map.get(s.toLowerCase(Locale.ENGLISH));
        if (header == null)
        {
            throw new AuthenticationException((new StringBuilder()).append(s).append(" authorization challenge expected, but not found").toString());
        } else
        {
            authscheme1.processChallenge(header);
            log.debug("Authorization challenge processed");
            return;
        }
    }

    private void tryConnect(RoutedRequest routedrequest, HttpContext httpcontext)
    {
        HttpRoute httproute;
        int i;
        httproute = routedrequest.getRoute();
        i = 0;
_L4:
        i++;
        if (managedConn.isOpen())
        {
            break MISSING_BLOCK_LABEL_45;
        }
        managedConn.open(httproute, httpcontext, params);
_L2:
        establishRoute(httproute, httpcontext);
        return;
        managedConn.setSocketTimeout(HttpConnectionParams.getSoTimeout(params));
        if (true) goto _L2; else goto _L1
_L1:
        IOException ioexception;
        ioexception;
        try
        {
            managedConn.close();
        }
        catch (IOException ioexception1) { }
        if (retryHandler.retryRequest(ioexception, i, httpcontext))
        {
            if (log.isInfoEnabled())
            {
                log.info((new StringBuilder("I/O exception (")).append(ioexception.getClass().getName()).append(") caught when connecting to the target host: ").append(ioexception.getMessage()).toString());
            }
            if (log.isDebugEnabled())
            {
                log.debug(ioexception.getMessage(), ioexception);
            }
            log.info("Retrying connect");
        } else
        {
            throw ioexception;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private HttpResponse tryExecute(RoutedRequest routedrequest, HttpContext httpcontext)
    {
        RequestWrapper requestwrapper;
        HttpRoute httproute;
        Object obj;
        requestwrapper = routedrequest.getRequest();
        httproute = routedrequest.getRoute();
        obj = null;
_L2:
        execCount = 1 + execCount;
        requestwrapper.incrementExecCount();
        if (!requestwrapper.isRepeatable())
        {
            log.debug("Cannot retry non-repeatable request");
            if (obj != null)
            {
                throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed.", ((Throwable) (obj)));
            } else
            {
                throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.");
            }
        }
label0:
        {
            if (!managedConn.isOpen())
            {
                if (httproute.isTunnelled())
                {
                    break label0;
                }
                log.debug("Reopening the direct connection.");
                managedConn.open(httproute, httpcontext, params);
            }
            if (log.isDebugEnabled())
            {
                log.debug((new StringBuilder("Attempt ")).append(execCount).append(" to execute request").toString());
            }
            return requestExec.execute(requestwrapper, managedConn, httpcontext);
        }
        log.debug("Proxied connection. Need to start over.");
        return null;
        obj;
        log.debug("Closing the connection.");
        try
        {
            managedConn.close();
        }
        catch (IOException ioexception) { }
        if (retryHandler.retryRequest(((IOException) (obj)), requestwrapper.getExecCount(), httpcontext))
        {
            if (log.isInfoEnabled())
            {
                log.info((new StringBuilder("I/O exception (")).append(obj.getClass().getName()).append(") caught when processing request: ").append(((IOException) (obj)).getMessage()).toString());
            }
            if (log.isDebugEnabled())
            {
                log.debug(((IOException) (obj)).getMessage(), ((Throwable) (obj)));
            }
            log.info("Retrying request");
        } else
        {
            throw obj;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void updateAuthState(AuthState authstate, HttpHost httphost, CredentialsProvider credentialsprovider)
    {
        AuthScheme authscheme;
        AuthScope authscope;
        ch.boye.httpclientandroidlib.auth.Credentials credentials;
        if (!authstate.isValid())
        {
            return;
        }
        String s = httphost.getHostName();
        int i = httphost.getPort();
        if (i < 0)
        {
            i = connManager.getSchemeRegistry().getScheme(httphost).getDefaultPort();
        }
        authscheme = authstate.getAuthScheme();
        authscope = new AuthScope(s, i, authscheme.getRealm(), authscheme.getSchemeName());
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Authentication scope: ")).append(authscope).toString());
        }
        credentials = authstate.getCredentials();
        if (credentials != null) goto _L2; else goto _L1
_L1:
        credentials = credentialsprovider.getCredentials(authscope);
        if (log.isDebugEnabled())
        {
            if (credentials != null)
            {
                log.debug("Found credentials");
            } else
            {
                log.debug("Credentials not found");
            }
        }
_L4:
        authstate.setAuthScope(authscope);
        authstate.setCredentials(credentials);
        return;
_L2:
        if (authscheme.isComplete())
        {
            log.debug("Authentication failed");
            credentials = null;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private RequestWrapper wrapRequest(HttpRequest httprequest)
    {
        if (httprequest instanceof HttpEntityEnclosingRequest)
        {
            return new EntityEnclosingRequestWrapper((HttpEntityEnclosingRequest)httprequest);
        } else
        {
            return new RequestWrapper(httprequest);
        }
    }

    protected HttpRequest createConnectRequest(HttpRoute httproute, HttpContext httpcontext)
    {
        HttpHost httphost = httproute.getTargetHost();
        String s = httphost.getHostName();
        int i = httphost.getPort();
        if (i < 0)
        {
            i = connManager.getSchemeRegistry().getScheme(httphost.getSchemeName()).getDefaultPort();
        }
        StringBuilder stringbuilder = new StringBuilder(6 + s.length());
        stringbuilder.append(s);
        stringbuilder.append(':');
        stringbuilder.append(Integer.toString(i));
        return new BasicHttpRequest("CONNECT", stringbuilder.toString(), HttpProtocolParams.getVersion(params));
    }

    protected boolean createTunnelToProxy(HttpRoute httproute, int i, HttpContext httpcontext)
    {
        throw new HttpException("Proxy chains are not supported.");
    }

    protected boolean createTunnelToTarget(HttpRoute httproute, HttpContext httpcontext)
    {
        HttpHost httphost;
        HttpHost httphost1;
        boolean flag;
        HttpResponse httpresponse;
        httphost = httproute.getProxyHost();
        httphost1 = httproute.getTargetHost();
        flag = false;
        httpresponse = null;
_L4:
        CredentialsProvider credentialsprovider;
        Map map;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_430;
        }
        if (!managedConn.isOpen())
        {
            managedConn.open(httproute, httpcontext, params);
        }
        HttpRequest httprequest = createConnectRequest(httproute, httpcontext);
        httprequest.setParams(params);
        httpcontext.setAttribute("http.target_host", httphost1);
        httpcontext.setAttribute("http.proxy_host", httphost);
        httpcontext.setAttribute("http.connection", managedConn);
        httpcontext.setAttribute("http.auth.target-scope", targetAuthState);
        httpcontext.setAttribute("http.auth.proxy-scope", proxyAuthState);
        httpcontext.setAttribute("http.request", httprequest);
        requestExec.preProcess(httprequest, httpProcessor, httpcontext);
        httpresponse = requestExec.execute(httprequest, managedConn, httpcontext);
        httpresponse.setParams(params);
        requestExec.postProcess(httpresponse, httpProcessor, httpcontext);
        if (httpresponse.getStatusLine().getStatusCode() < 200)
        {
            throw new HttpException((new StringBuilder("Unexpected response to CONNECT request: ")).append(httpresponse.getStatusLine()).toString());
        }
        credentialsprovider = (CredentialsProvider)httpcontext.getAttribute("http.auth.credentials-provider");
        if (credentialsprovider == null || !HttpClientParams.isAuthenticating(params))
        {
            break MISSING_BLOCK_LABEL_543;
        }
        if (!proxyAuthHandler.isAuthenticationRequested(httpresponse, httpcontext))
        {
            break MISSING_BLOCK_LABEL_535;
        }
        log.debug("Proxy requested authentication");
        map = proxyAuthHandler.getChallenges(httpresponse, httpcontext);
        processChallenges(map, proxyAuthState, proxyAuthHandler, httpresponse, httpcontext);
_L2:
        updateAuthState(proxyAuthState, httphost, credentialsprovider);
        HttpEntity httpentity;
        AuthenticationException authenticationexception;
        if (proxyAuthState.getCredentials() != null)
        {
            if (reuseStrategy.keepAlive(httpresponse, httpcontext))
            {
                log.debug("Connection kept alive");
                EntityUtils.consume(httpresponse.getEntity());
                flag = false;
            } else
            {
                managedConn.close();
                flag = false;
            }
        } else
        {
            flag = true;
        }
        continue; /* Loop/switch isn't completed */
        authenticationexception;
        if (!log.isWarnEnabled()) goto _L2; else goto _L1
_L1:
        log.warn((new StringBuilder("Authentication error: ")).append(authenticationexception.getMessage()).toString());
        if (httpresponse.getStatusLine().getStatusCode() > 299)
        {
            httpentity = httpresponse.getEntity();
            if (httpentity != null)
            {
                httpresponse.setEntity(new BufferedHttpEntity(httpentity));
            }
            managedConn.close();
            throw new TunnelRefusedException((new StringBuilder("CONNECT refused by proxy: ")).append(httpresponse.getStatusLine()).toString(), httpresponse);
        } else
        {
            managedConn.markReusable();
            return false;
        }
        proxyAuthState.setAuthScope(null);
        flag = true;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected HttpRoute determineRoute(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext)
    {
        if (httphost == null)
        {
            httphost = (HttpHost)httprequest.getParams().getParameter("http.default-host");
        }
        if (httphost == null)
        {
            throw new IllegalStateException("Target host must not be null, or set in parameters.");
        } else
        {
            return routePlanner.determineRoute(httphost, httprequest, httpcontext);
        }
    }

    protected void establishRoute(HttpRoute httproute, HttpContext httpcontext)
    {
        BasicRouteDirector basicroutedirector = new BasicRouteDirector();
_L9:
        HttpRoute httproute1;
        int i;
        httproute1 = managedConn.getRoute();
        i = basicroutedirector.nextStep(httproute, httproute1);
        i;
        JVM INSTR tableswitch -1 5: default 76
    //                   -1 235
    //                   0 123
    //                   1 108
    //                   2 108
    //                   3 129
    //                   4 165
    //                   5 218;
           goto _L1 _L2 _L3 _L4 _L4 _L5 _L6 _L7
_L1:
        throw new IllegalStateException((new StringBuilder("Unknown step indicator ")).append(i).append(" from RouteDirector.").toString());
_L4:
        managedConn.open(httproute, httpcontext, params);
_L3:
        if (i > 0) goto _L9; else goto _L8
_L8:
        return;
_L5:
        boolean flag1 = createTunnelToTarget(httproute, httpcontext);
        log.debug("Tunnel to target created.");
        managedConn.tunnelTarget(flag1, params);
          goto _L3
_L6:
        int j = -1 + httproute1.getHopCount();
        boolean flag = createTunnelToProxy(httproute, j, httpcontext);
        log.debug("Tunnel to proxy created.");
        managedConn.tunnelProxy(httproute.getHopTarget(j), flag, params);
          goto _L3
_L7:
        managedConn.layerProtocol(httpcontext, params);
          goto _L3
          goto _L9
_L2:
        throw new HttpException((new StringBuilder("Unable to establish route: planned = ")).append(httproute).append("; current = ").append(httproute1).toString());
    }

    public HttpResponse execute(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext)
    {
        boolean flag;
        RoutedRequest routedrequest;
        HttpResponse httpresponse;
        boolean flag1;
        flag = false;
        RequestWrapper requestwrapper = wrapRequest(httprequest);
        requestwrapper.setParams(params);
        HttpRoute httproute = determineRoute(httphost, requestwrapper, httpcontext);
        virtualHost = (HttpHost)httprequest.getParams().getParameter("http.virtual-host");
        if (virtualHost != null && virtualHost.getPort() == -1)
        {
            int i = httphost.getPort();
            if (i != -1)
            {
                virtualHost = new HttpHost(virtualHost.getHostName(), i, virtualHost.getSchemeName());
            }
        }
        routedrequest = new RoutedRequest(requestwrapper, httproute);
        httpresponse = null;
        flag1 = false;
_L20:
        if (flag) goto _L2; else goto _L1
_L1:
        RequestWrapper requestwrapper1;
        HttpRoute httproute1;
        Object obj;
        ClientConnectionRequest clientconnectionrequest;
        long l1;
        requestwrapper1 = routedrequest.getRequest();
        httproute1 = routedrequest.getRoute();
        obj = httpcontext.getAttribute("http.user-token");
        if (managedConn != null)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        clientconnectionrequest = connManager.requestConnection(httproute1, obj);
        if (httprequest instanceof AbortableHttpRequest)
        {
            ((AbortableHttpRequest)httprequest).setConnectionRequest(clientconnectionrequest);
        }
        l1 = ConnManagerParams.getTimeout(params);
        managedConn = clientconnectionrequest.getConnection(l1, TimeUnit.MILLISECONDS);
        if (HttpConnectionParams.isStaleCheckingEnabled(params) && managedConn.isOpen())
        {
            log.debug("Stale connection check");
            if (managedConn.isStale())
            {
                log.debug("Stale connection detected");
                managedConn.close();
            }
        }
        if (httprequest instanceof AbortableHttpRequest)
        {
            ((AbortableHttpRequest)httprequest).setReleaseTrigger(managedConn);
        }
        tryConnect(routedrequest, httpcontext);
        HttpHost httphost1;
        requestwrapper1.resetHeaders();
        rewriteRequestURI(requestwrapper1, httproute1);
        httphost1 = virtualHost;
        if (httphost1 != null)
        {
            break MISSING_BLOCK_LABEL_342;
        }
        httphost1 = httproute1.getTargetHost();
        HttpResponse httpresponse1;
        HttpHost httphost2 = httproute1.getProxyHost();
        httpcontext.setAttribute("http.target_host", httphost1);
        httpcontext.setAttribute("http.proxy_host", httphost2);
        httpcontext.setAttribute("http.connection", managedConn);
        httpcontext.setAttribute("http.auth.target-scope", targetAuthState);
        httpcontext.setAttribute("http.auth.proxy-scope", proxyAuthState);
        requestExec.preProcess(requestwrapper1, httpProcessor, httpcontext);
        httpresponse1 = tryExecute(routedrequest, httpcontext);
        if (httpresponse1 == null) goto _L4; else goto _L3
_L3:
        TunnelRefusedException tunnelrefusedexception;
        long l;
        String s;
        RoutedRequest routedrequest1;
        boolean flag2;
        Object obj1;
        InterruptedException interruptedexception;
        try
        {
            httpresponse1.setParams(params);
            requestExec.postProcess(httpresponse1, httpProcessor, httpcontext);
            flag1 = reuseStrategy.keepAlive(httpresponse1, httpcontext);
        }
        catch (ConnectionShutdownException connectionshutdownexception)
        {
            InterruptedIOException interruptedioexception = new InterruptedIOException("Connection has been shut down");
            interruptedioexception.initCause(connectionshutdownexception);
            throw interruptedioexception;
        }
        catch (HttpException httpexception)
        {
            abortConnection();
            throw httpexception;
        }
        catch (IOException ioexception)
        {
            abortConnection();
            throw ioexception;
        }
        catch (RuntimeException runtimeexception)
        {
            abortConnection();
            throw runtimeexception;
        }
        if (!flag1) goto _L6; else goto _L5
_L5:
        l = keepAliveStrategy.getKeepAliveDuration(httpresponse1, httpcontext);
        if (!log.isDebugEnabled()) goto _L8; else goto _L7
_L7:
        if (l <= 0L) goto _L10; else goto _L9
_L9:
        s = (new StringBuilder("for ")).append(l).append(" ").append(TimeUnit.MILLISECONDS).toString();
_L21:
        log.debug((new StringBuilder("Connection can be kept alive ")).append(s).toString());
_L8:
        managedConn.setIdleDuration(l, TimeUnit.MILLISECONDS);
_L6:
        routedrequest1 = handleResponse(routedrequest, httpresponse1, httpcontext);
        if (routedrequest1 != null) goto _L12; else goto _L11
_L11:
        RoutedRequest routedrequest2 = routedrequest;
        flag2 = true;
        routedrequest1 = routedrequest2;
_L22:
        if (managedConn == null || obj != null) goto _L14; else goto _L13
_L13:
        obj1 = userTokenHandler.getUserToken(httpcontext);
        httpcontext.setAttribute("http.user-token", obj1);
        if (obj1 == null) goto _L14; else goto _L15
_L15:
        managedConn.setState(obj1);
          goto _L14
        interruptedexception;
        InterruptedIOException interruptedioexception1 = new InterruptedIOException();
        interruptedioexception1.initCause(interruptedexception);
        throw interruptedioexception1;
        tunnelrefusedexception;
        if (log.isDebugEnabled())
        {
            log.debug(tunnelrefusedexception.getMessage());
        }
        httpresponse = tunnelrefusedexception.getResponse();
_L2:
        if (httpresponse == null) goto _L17; else goto _L16
_L16:
        if (httpresponse.getEntity() != null && httpresponse.getEntity().isStreaming()) goto _L18; else goto _L17
_L17:
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_787;
        }
        managedConn.markReusable();
        releaseConnection();
        return httpresponse;
_L12:
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_841;
        }
        EntityUtils.consume(httpresponse1.getEntity());
        managedConn.markReusable();
_L19:
        if (!routedrequest1.getRoute().equals(routedrequest.getRoute()))
        {
            releaseConnection();
        }
        break MISSING_BLOCK_LABEL_956;
        managedConn.close();
        invalidateAuthIfSuccessful(proxyAuthState);
        invalidateAuthIfSuccessful(targetAuthState);
          goto _L19
_L18:
        httpresponse.setEntity(new BasicManagedEntity(httpresponse.getEntity(), managedConn, flag1));
        return httpresponse;
_L4:
        httpresponse = httpresponse1;
          goto _L20
_L14:
        flag = flag2;
        routedrequest = routedrequest1;
        httpresponse = httpresponse1;
          goto _L20
_L10:
        s = "indefinitely";
          goto _L21
        flag2 = flag;
          goto _L22
    }

    protected RoutedRequest handleResponse(RoutedRequest routedrequest, HttpResponse httpresponse, HttpContext httpcontext)
    {
        HttpRoute httproute;
        RequestWrapper requestwrapper;
        HttpParams httpparams;
        httproute = routedrequest.getRoute();
        requestwrapper = routedrequest.getRequest();
        httpparams = requestwrapper.getParams();
        if (!HttpClientParams.isRedirecting(httpparams) || !redirectStrategy.isRedirected(requestwrapper, httpresponse, httpcontext)) goto _L2; else goto _L1
_L1:
        if (redirectCount >= maxRedirects)
        {
            throw new RedirectException((new StringBuilder("Maximum redirects (")).append(maxRedirects).append(") exceeded").toString());
        }
        redirectCount = 1 + redirectCount;
        virtualHost = null;
        HttpUriRequest httpurirequest = redirectStrategy.getRedirect(requestwrapper, httpresponse, httpcontext);
        httpurirequest.setHeaders(requestwrapper.getOriginal().getAllHeaders());
        URI uri = httpurirequest.getURI();
        if (uri.getHost() == null)
        {
            throw new ProtocolException((new StringBuilder("Redirect URI does not specify a valid host name: ")).append(uri).toString());
        }
        HttpHost httphost3 = new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme());
        targetAuthState.setAuthScope(null);
        proxyAuthState.setAuthScope(null);
        if (!httproute.getTargetHost().equals(httphost3))
        {
            targetAuthState.invalidate();
            AuthScheme authscheme = proxyAuthState.getAuthScheme();
            if (authscheme != null && authscheme.isConnectionBased())
            {
                proxyAuthState.invalidate();
            }
        }
        RequestWrapper requestwrapper1 = wrapRequest(httpurirequest);
        requestwrapper1.setParams(httpparams);
        HttpRoute httproute1 = determineRoute(httphost3, requestwrapper1, httpcontext);
        routedrequest = new RoutedRequest(requestwrapper1, httproute1);
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Redirecting to '")).append(uri).append("' via ").append(httproute1).toString());
        }
_L8:
        return routedrequest;
_L2:
        CredentialsProvider credentialsprovider = (CredentialsProvider)httpcontext.getAttribute("http.auth.credentials-provider");
        if (credentialsprovider == null || !HttpClientParams.isAuthenticating(httpparams))
        {
            break MISSING_BLOCK_LABEL_669;
        }
        if (!targetAuthHandler.isAuthenticationRequested(httpresponse, httpcontext))
        {
            break MISSING_BLOCK_LABEL_527;
        }
        HttpHost httphost1 = (HttpHost)httpcontext.getAttribute("http.target_host");
        HttpHost httphost;
        Map map;
        AuthenticationException authenticationexception;
        HttpHost httphost2;
        Map map1;
        AuthenticationException authenticationexception1;
        if (httphost1 == null)
        {
            httphost2 = httproute.getTargetHost();
        } else
        {
            httphost2 = httphost1;
        }
        log.debug("Target requested authentication");
        map1 = targetAuthHandler.getChallenges(httpresponse, httpcontext);
        processChallenges(map1, targetAuthState, targetAuthHandler, httpresponse, httpcontext);
_L4:
        updateAuthState(targetAuthState, httphost2, credentialsprovider);
        if (targetAuthState.getCredentials() == null)
        {
            return null;
        }
        continue; /* Loop/switch isn't completed */
        authenticationexception1;
        if (!log.isWarnEnabled()) goto _L4; else goto _L3
_L3:
        log.warn((new StringBuilder("Authentication error: ")).append(authenticationexception1.getMessage()).toString());
        return null;
        targetAuthState.setAuthScope(null);
        if (!proxyAuthHandler.isAuthenticationRequested(httpresponse, httpcontext))
        {
            break MISSING_BLOCK_LABEL_661;
        }
        httphost = httproute.getProxyHost();
        log.debug("Proxy requested authentication");
        map = proxyAuthHandler.getChallenges(httpresponse, httpcontext);
        processChallenges(map, proxyAuthState, proxyAuthHandler, httpresponse, httpcontext);
_L6:
        updateAuthState(proxyAuthState, httphost, credentialsprovider);
        if (proxyAuthState.getCredentials() == null)
        {
            return null;
        }
        continue; /* Loop/switch isn't completed */
        authenticationexception;
        if (!log.isWarnEnabled()) goto _L6; else goto _L5
_L5:
        log.warn((new StringBuilder("Authentication error: ")).append(authenticationexception.getMessage()).toString());
        return null;
        proxyAuthState.setAuthScope(null);
        return null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected void releaseConnection()
    {
        try
        {
            managedConn.releaseConnection();
        }
        catch (IOException ioexception)
        {
            log.debug("IOException releasing connection", ioexception);
        }
        managedConn = null;
    }

    protected void rewriteRequestURI(RequestWrapper requestwrapper, HttpRoute httproute)
    {
        URI uri;
        uri = requestwrapper.getURI();
        if (httproute.getProxyHost() != null && !httproute.isTunnelled())
        {
            if (!uri.isAbsolute())
            {
                requestwrapper.setURI(URIUtils.rewriteURI(uri, httproute.getTargetHost()));
                return;
            }
            break MISSING_BLOCK_LABEL_96;
        }
        try
        {
            if (uri.isAbsolute())
            {
                requestwrapper.setURI(URIUtils.rewriteURI(uri, null));
                return;
            }
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new ProtocolException((new StringBuilder("Invalid URI: ")).append(requestwrapper.getRequestLine().getUri()).toString(), urisyntaxexception);
        }
    }
}
