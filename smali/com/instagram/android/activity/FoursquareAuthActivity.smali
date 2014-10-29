.class public Lcom/instagram/android/activity/FoursquareAuthActivity;
.super Lcom/instagram/base/activity/d;
.source "FoursquareAuthActivity.java"


# instance fields
.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/FoursquareAuthActivity;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/activity/FoursquareAuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/FoursquareAuthActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-class v2, Lcom/instagram/android/activity/FoursquareAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    .line 97
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/activity/FoursquareAuthActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/FoursquareAuthActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->finish()V

    .line 41
    return-void

    .line 34
    :cond_0
    new-instance v1, Lcom/instagram/share/d/a;

    invoke-direct {v1, p1}, Lcom/instagram/share/d/a;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Lcom/instagram/share/d/a;->c()V

    .line 37
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    const-string v0, "#access_token="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 45
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    :try_start_0
    const-string v1, "#access_token="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/instagram/android/activity/FoursquareAuthActivity;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to pull access_token from URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lcom/facebook/aw;->foursquare_auth:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->setContentView(I)V

    .line 68
    sget v0, Lcom/facebook/av;->webView:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 69
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    new-instance v1, Lcom/instagram/android/activity/k;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/k;-><init>(Lcom/instagram/android/activity/FoursquareAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://foursquare.com/oauth2/authenticate?client_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/share/d/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&response_type=token&redirect_uri=https://instagram.com/foursquare/oauth_callback/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    return-void
.end method
