.class public Lcom/instagram/ui/widget/webview/IgWebView;
.super Landroid/webkit/WebView;
.source "IgWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lcom/instagram/ui/widget/webview/IgWebView;->a()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {}, Lcom/instagram/ui/widget/webview/IgWebView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {}, Lcom/instagram/ui/widget/webview/IgWebView;->a()V

    .line 30
    return-void
.end method

.method private static a()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    .line 35
    return-void
.end method
