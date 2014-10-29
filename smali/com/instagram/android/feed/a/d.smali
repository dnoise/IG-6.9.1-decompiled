.class final Lcom/instagram/android/feed/a/d;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;

.field final synthetic b:Lcom/instagram/android/feed/a/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/c;Lcom/instagram/feed/d/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/instagram/android/feed/a/d;->b:Lcom/instagram/android/feed/a/c;

    iput-object p2, p0, Lcom/instagram/android/feed/a/d;->a:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/d;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/l/b/a;->a(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method
