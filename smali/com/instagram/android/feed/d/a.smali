.class public final Lcom/instagram/android/feed/d/a;
.super Ljava/lang/Object;
.source "SponsoredAboutDialog.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/android/feed/d/a;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/d/a;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/d/a;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 46
    sget v0, Lcom/facebook/av;->button_cancel:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/d/c;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/d/c;-><init>(Lcom/instagram/android/feed/d/a;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v0, Lcom/facebook/av;->dialog_title:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->sponsored_label_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    sget v0, Lcom/facebook/av;->webView:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 58
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 59
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {}, Lcom/instagram/api/useragent/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 61
    const-string v1, "/xwoiynko"

    invoke-static {v1, v3}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 62
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/feed/d/a;->a:Landroid/content/Context;

    sget v2, Lcom/facebook/aw;->dialog_sponsored_about:I

    sget v3, Lcom/facebook/ba;->IgDialogActionBar:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/d/a;->b:Landroid/app/Dialog;

    .line 33
    iget-object v0, p0, Lcom/instagram/android/feed/d/a;->b:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/d/a;->a(Landroid/app/Dialog;)V

    .line 35
    iget-object v0, p0, Lcom/instagram/android/feed/d/a;->b:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/android/feed/d/b;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/d/b;-><init>(Lcom/instagram/android/feed/d/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 42
    iget-object v0, p0, Lcom/instagram/android/feed/d/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 43
    return-void
.end method
