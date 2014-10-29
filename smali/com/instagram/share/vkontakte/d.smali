.class final Lcom/instagram/share/vkontakte/d;
.super Landroid/webkit/WebViewClient;
.source "VkontakteAuthActivity.java"


# instance fields
.field final synthetic a:Lcom/instagram/share/vkontakte/VkontakteAuthActivity;


# direct methods
.method constructor <init>(Lcom/instagram/share/vkontakte/VkontakteAuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/share/vkontakte/d;->a:Lcom/instagram/share/vkontakte/VkontakteAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter "url"
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/share/vkontakte/d;->a:Lcom/instagram/share/vkontakte/VkontakteAuthActivity;

    invoke-static {p2}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/instagram/share/vkontakte/d;->a:Lcom/instagram/share/vkontakte/VkontakteAuthActivity;

    iget-object v1, p0, Lcom/instagram/share/vkontakte/d;->a:Lcom/instagram/share/vkontakte/VkontakteAuthActivity;

    invoke-static {v1, p2}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->a(Lcom/instagram/share/vkontakte/VkontakteAuthActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->b(Lcom/instagram/share/vkontakte/VkontakteAuthActivity;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method
