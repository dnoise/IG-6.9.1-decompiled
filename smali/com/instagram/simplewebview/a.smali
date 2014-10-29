.class final Lcom/instagram/simplewebview/a;
.super Landroid/webkit/WebViewClient;
.source "SimpleWebViewFragment.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/simplewebview/SimpleWebViewFragment;


# direct methods
.method constructor <init>(Lcom/instagram/simplewebview/SimpleWebViewFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    iput-object p2, p0, Lcom/instagram/simplewebview/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 130
    const-string v0, "file:///android_asset/webview_error.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "javascript:document.getElementById(\"main\").innerHTML=\"<h3>%s</h3>\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v3}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->o()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/az;->request_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "file:///android_asset/webview_error.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 75
    iget-object v0, p0, Lcom/instagram/simplewebview/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/simplewebview/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    .line 117
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "instagram"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "checkpoint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/dismiss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "browser"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/dismiss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "SimpleWebViewFragment.ARGUMENT_DELEGATE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/simplewebview/SimpleWebViewFragment$DismissalDelegate;

    .line 90
    if-eqz v0, :cond_3

    .line 91
    iget-object v3, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-interface {v0, v3, v2}, Lcom/instagram/simplewebview/SimpleWebViewFragment$DismissalDelegate;->a(Landroid/support/v4/app/Fragment;Landroid/net/Uri;)V

    .line 95
    :cond_3
    const-string v0, "message"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    iget-object v2, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v2}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    :cond_5
    move v0, v1

    .line 105
    goto/16 :goto_0

    .line 106
    :cond_6
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "browser"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "uri"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 107
    const-string v0, "uri"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v2, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v2}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 109
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    iget-object v0, p0, Lcom/instagram/simplewebview/a;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0, v2}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a(Landroid/content/Intent;)V

    :cond_7
    move v0, v1

    .line 112
    goto/16 :goto_0

    .line 117
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method
