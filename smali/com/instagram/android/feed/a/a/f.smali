.class final Lcom/instagram/android/feed/a/a/f;
.super Lcom/instagram/android/feed/a/a/h;
.source "FeedMediaCacheWarmer.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/g/b/h;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/instagram/android/feed/a/a/e;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/e;Lcom/instagram/common/g/b/h;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/f;->c:Lcom/instagram/android/feed/a/a/e;

    iput-object p2, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/common/g/b/h;

    iput-object p3, p0, Lcom/instagram/android/feed/a/a/f;->b:Landroid/content/Context;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/feed/a/a/h;-><init>(IB)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/feed/d/l;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/common/g/b/h;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/f;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/instagram/feed/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/g/b/h;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method
