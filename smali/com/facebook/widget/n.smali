.class final Lcom/facebook/widget/n;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# instance fields
.field final synthetic a:Lcom/facebook/widget/h;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/h;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/h;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/facebook/widget/n;-><init>(Lcom/facebook/widget/h;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->b(Lcom/facebook/widget/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->c(Lcom/facebook/widget/h;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->d(Lcom/facebook/widget/h;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 377
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->e(Lcom/facebook/widget/h;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->f(Lcom/facebook/widget/h;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webview loading URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/g/t;->a()V

    .line 360
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 361
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->b(Lcom/facebook/widget/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->c(Lcom/facebook/widget/h;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 364
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    new-instance v1, Lcom/facebook/y;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;Ljava/lang/Throwable;)V

    .line 341
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V

    .line 342
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 349
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 351
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    new-instance v1, Lcom/facebook/y;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;Ljava/lang/Throwable;)V

    .line 352
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 353
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V

    .line 355
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Redirect URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/g/t;->a()V

    .line 288
    const-string v0, "fbconnect://success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    invoke-static {p2}, Lcom/facebook/b/m;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 291
    const-string v0, "error"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    if-nez v0, :cond_0

    .line 293
    const-string v0, "error_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_0
    const-string v1, "error_msg"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    if-nez v1, :cond_1

    .line 298
    const-string v1, "error_description"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_1
    const-string v2, "error_code"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 304
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 310
    :goto_0
    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne v2, v3, :cond_2

    .line 312
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0, v5}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;Landroid/os/Bundle;)V

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V

    move v0, v4

    .line 333
    :goto_2
    return v0

    .line 306
    :catch_0
    move-exception v2

    move v2, v3

    goto :goto_0

    .line 313
    :cond_2
    if-eqz v0, :cond_4

    const-string v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "OAuthAccessDeniedException"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;)V

    goto :goto_1

    .line 317
    :cond_4
    new-instance v3, Lcom/facebook/ac;

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/ac;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    new-instance v2, Lcom/facebook/af;

    invoke-direct {v2, v3, v1}, Lcom/facebook/af;-><init>(Lcom/facebook/ac;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 323
    :cond_5
    const-string v0, "fbconnect://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;)V

    .line 325
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V

    move v0, v4

    .line 326
    goto :goto_2

    .line 327
    :cond_6
    const-string v0, "touch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 328
    const/4 v0, 0x0

    goto :goto_2

    .line 331
    :cond_7
    iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;

    invoke-virtual {v0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 333
    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_0
.end method
