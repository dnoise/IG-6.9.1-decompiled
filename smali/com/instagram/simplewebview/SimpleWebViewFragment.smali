.class public final Lcom/instagram/simplewebview/SimpleWebViewFragment;
.super Lcom/instagram/base/a/b;
.source "SimpleWebViewFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 45
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleWebViewFragment.ARGUMENT_SHOW_REFRESH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    .line 167
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 168
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleWebViewFragment.ARGUMENT_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    new-instance v2, Lcom/instagram/ui/widget/webview/IgWebView;

    invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/ui/widget/webview/IgWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    .line 58
    iget-object v2, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 60
    iget-object v2, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 61
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    invoke-static {v1}, Lcom/instagram/api/h/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-static {}, Lcom/instagram/api/useragent/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/instagram/simplewebview/a;

    invoke-direct {v3, p0, v0}, Lcom/instagram/simplewebview/a;-><init>(Lcom/instagram/simplewebview/SimpleWebViewFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 140
    iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleWebViewFragment.ARGUMENT_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->c()Z

    move-result v0

    new-instance v1, Lcom/instagram/simplewebview/b;

    invoke-direct {v1, p0}, Lcom/instagram/simplewebview/b;-><init>(Lcom/instagram/simplewebview/SimpleWebViewFragment;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleWebViewFragment.ARGUMENT_TOGGLE_DISPLAY_BACK_BUTTON"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 184
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 156
    :cond_0
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string v0, "web_view"

    return-object v0
.end method
