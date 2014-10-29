.class final Lcom/instagram/android/feed/a/a/g;
.super Lcom/instagram/android/feed/a/a/h;
.source "FeedMediaCacheWarmer.java"


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/w;

.field final synthetic b:Lcom/instagram/android/feed/a/a/e;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/e;Lcom/instagram/feed/d/w;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/g;->b:Lcom/instagram/android/feed/a/a/e;

    iput-object p2, p0, Lcom/instagram/android/feed/a/a/g;->a:Lcom/instagram/feed/d/w;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/feed/a/a/h;-><init>(IB)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/g;->a:Lcom/instagram/feed/d/w;

    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/w;->d(Lcom/instagram/feed/d/l;)V

    .line 36
    return-void
.end method
